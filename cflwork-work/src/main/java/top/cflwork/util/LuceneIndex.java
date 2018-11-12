package top.cflwork.util;

import org.apache.lucene.analysis.TokenStream;
import org.apache.lucene.analysis.cn.smart.SmartChineseAnalyzer;
import org.apache.lucene.document.Document;
import org.apache.lucene.document.Field;
import org.apache.lucene.document.StringField;
import org.apache.lucene.document.TextField;
import org.apache.lucene.index.*;
import org.apache.lucene.queryparser.classic.QueryParser;
import org.apache.lucene.search.*;
import org.apache.lucene.search.highlight.*;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;
import top.cflwork.vo.UserVo;

import java.io.StringReader;
import java.nio.file.Paths;
import java.util.LinkedList;
import java.util.List;

/**
 * 用户索引类
 * @author Administrator
 *
 */
public class LuceneIndex {

    private Directory dir = null;

    /**
     * 获取IndexWriter实例
     *
     * @return
     * @throws Exception
     */
    private IndexWriter getWriter() throws Exception {
        /**
         * 生成的索引我放在了C盘，可以根据自己的需要放在具体位置
         */
        dir = FSDirectory.open(Paths.get("C://lucene"));
        SmartChineseAnalyzer analyzer = new SmartChineseAnalyzer();
        IndexWriterConfig iwc = new IndexWriterConfig(analyzer);
        IndexWriter writer = new IndexWriter(dir, iwc);
        return writer;
    }

    /**
     * 添加用户索引
     *
     * @param userVo
     */
    public void addIndex(UserVo userVo) throws Exception {
        IndexWriter writer = getWriter();
        Document doc = new Document();
        doc.add(new StringField("id", String.valueOf(userVo.getId()), Field.Store.YES));
        /**
         * yes是会将数据存进索引，如果查询结果中需要将记录显示出来就要存进去，如果查询结果
         * 只是显示标题之类的就可以不用存，而且内容过长不建议存进去
         * 使用TextField类是可以用于查询的。
         */
        doc.add(new TextField("userVoname", userVo.getAccountName(), Field.Store.YES));
        doc.add(new TextField("description", userVo.getDescription(), Field.Store.YES));
        writer.addDocument(doc);
        writer.close();
    }

    /**
     * 更新用户索引
     *
     * @param userVo
     * @throws Exception
     */
    public void updateIndex(UserVo userVo) throws Exception {
        IndexWriter writer = getWriter();
        Document doc = new Document();
        doc.add(new StringField("id", String.valueOf(userVo.getId()), Field.Store.YES));
        doc.add(new TextField("userVoname", userVo.getAccountName(), Field.Store.YES));
        doc.add(new TextField("description", userVo.getDescription(), Field.Store.YES));
        writer.updateDocument(new Term("id", String.valueOf(userVo.getId())), doc);
        writer.close();
    }

    /**
     * 删除指定用户的索引
     *
     * @param userVoId
     * @throws Exception
     */
    public void deleteIndex(String userVoId) throws Exception {
        IndexWriter writer = getWriter();
        writer.deleteDocuments(new Term("id", userVoId));
        writer.forceMergeDeletes(); // 强制删除
        writer.commit();
        writer.close();
    }

    /**
     * 查询用户
     *
     * @param q 查询关键字
     * @return
     * @throws Exception
     */
    public List<UserVo> searchBlog(String q) throws Exception {
        /**
         * 注意的是查询索引的位置得是存放索引的位置，不然会找不到。
         */
        dir = FSDirectory.open(Paths.get("C://lucene"));
        IndexReader reader = DirectoryReader.open(dir);
        IndexSearcher is = new IndexSearcher(reader);
        BooleanQuery.Builder booleanQuery = new BooleanQuery.Builder();
        SmartChineseAnalyzer analyzer = new SmartChineseAnalyzer();
        /**
         * userVoname和description就是我们需要进行查找的两个字段
         * 同时在存放索引的时候要使用TextField类进行存放。
         */
        QueryParser parser = new QueryParser("userVoname", analyzer);
        Query query = parser.parse(q);
        QueryParser parser2 = new QueryParser("description", analyzer);
        Query query2 = parser2.parse(q);
        booleanQuery.add(query, BooleanClause.Occur.SHOULD);
        booleanQuery.add(query2, BooleanClause.Occur.SHOULD);
        TopDocs hits = is.search(booleanQuery.build(), 100);
        QueryScorer scorer = new QueryScorer(query);
        Fragmenter fragmenter = new SimpleSpanFragmenter(scorer);
        /**
         * 这里可以根据自己的需要来自定义查找关键字高亮时的样式。
         */
        SimpleHTMLFormatter simpleHTMLFormatter = new SimpleHTMLFormatter("<b><font color='red'>", "</font></b>");
        Highlighter highlighter = new Highlighter(simpleHTMLFormatter, scorer);
        highlighter.setTextFragmenter(fragmenter);
        List<UserVo> userVoList = new LinkedList<UserVo>();
        for (ScoreDoc scoreDoc : hits.scoreDocs) {
            Document doc = is.doc(scoreDoc.doc);
            UserVo userVo = new UserVo();
            userVo.setId(Long.parseLong(doc.get(("id"))));
            userVo.setDescription(doc.get(("description")));
            String userVoname = doc.get("userVoname");
            String description = doc.get("description");
            if (userVoname != null) {
                TokenStream tokenStream = analyzer.tokenStream("userVoname", new StringReader(userVoname));
                String huserVoname = highlighter.getBestFragment(tokenStream, userVoname);
                if (huserVoname == null || "".equals("")) {
                    userVo.setAccountName(userVoname);
                } else {
                    userVo.setAccountName(huserVoname);
                }
            }
            if (description != null) {
                TokenStream tokenStream = analyzer.tokenStream("description", new StringReader(description));
                String hContent = highlighter.getBestFragment(tokenStream, description);
                if (hContent == null || "".equals("")) {
                    if (description.length() <= 200) {
                        userVo.setDescription(description);
                    } else {
                        userVo.setDescription(description.substring(0, 200));
                    }
                } else {
                    userVo.setDescription(hContent);
                }
            }
            userVoList.add(userVo);
        }
        return userVoList;
    }
}

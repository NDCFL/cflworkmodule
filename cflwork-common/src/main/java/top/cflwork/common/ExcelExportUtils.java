package top.cflwork.common;

import com.alibaba.fastjson.JSON;
import top.cflwork.dto.ExcelExportDTO;
import top.cflwork.dto.ExcelImportDTO;

import java.io.IOException;
import java.io.InputStream;

/**
 * Excel导出工具类<br />
 * 创建于2017-12-18<br />
 *
 * @author 陈飞龙
 * @version 1.0
 */
public class ExcelExportUtils {

    /**
     * 根据JSON文件的输入流创建ExcelExportDTO对象
     * @param jsonInput json文件输入流
     * @return json文件对应的ExcelExportDTO
     */
    public static ExcelExportDTO buildExportDTO(InputStream jsonInput) {
        try {
            return JSON.parseObject(jsonInput, ExcelExportDTO.class);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 根据JSON文本创建ExcelExportDTO对象
     * @param jsonText json文本
     * @return json文本对应的ExcelExportDTO
     */
    public static ExcelExportDTO buildExportDTO(String jsonText) {
        return JSON.parseObject(jsonText, ExcelExportDTO.class);
    }

    /**
     * 根据JSON文件的输入流创建ExcelImportDTO对象
     * @param jsonInput json文件输入流
     * @return json文件对应的ExcelImportDTO
     */
    public static ExcelImportDTO buildImportDTO(InputStream jsonInput) {
        try {
            return JSON.parseObject(jsonInput, ExcelImportDTO.class);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 根据JSON文本创建ExcelImportDTO对象
     * @param jsonText json文本
     * @return json文本对应的ExcelExportDTO
     */
    public static ExcelImportDTO buildImportDTO(String jsonText) {
        return JSON.parseObject(jsonText, ExcelImportDTO.class);
    }

}

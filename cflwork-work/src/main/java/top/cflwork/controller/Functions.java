package top.cflwork.controller;

import java.util.Arrays;
import java.util.List;

public class Functions {

    @FunctionalInterface
    public interface MyFunction1{
        public String getValues(String str);
        default String str(String  str){
            return "9999999->>>"+str;
        }
    }
    public static String getvalue(String str, MyFunction1 my){
        System.out.println("=========");
        return my.str(str);
    }
    public static void main(String[] args) {
        String str = getvalue("hello world", t -> t.toUpperCase());
        System.out.println(str);
        List<Integer> list = Arrays.asList(1, 2, 3, 4, 5, 6, 7, 8, 9);
        Integer reduce = list.stream().reduce(0, (x, y) -> x + y);
        System.out.println(reduce+"=============");

    }
}

package util;

import com.alibaba.fastjson.JSONObject;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class PrintUtil {
    public static void print(HttpServletResponse response, String json){
        //创建打印
        PrintWriter out=null;
        if (response!=null){//当响应不是空的时候开始输出
            try {
                out=response.getWriter();
                //json打印出去
                out.print(json);
            } catch (IOException e) {
                e.printStackTrace();
            }finally {
                out.flush();
                out.close();
            }
        }
    }

    /**
     * 打出数据
     * @param object 数据
     * @param response 相应对象
     */
    public static void printData(Object object, HttpServletResponse response){
        //处理乱码
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        //转为json字符串
        String json= JSONObject.toJSONString(object);
        //调用打印方法
        print(response,json);
    }
}

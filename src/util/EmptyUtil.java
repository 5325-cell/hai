package util;

/**
 * 判断是否是空
 */
public class EmptyUtil {
    private EmptyUtil(){}
    public static boolean isEmpty(Object obj){
        return (obj==null?true:false);
    }
}

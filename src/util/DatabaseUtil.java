package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * 数据库连接与关闭工具类。
 * 
 * @author 北大青鸟
 */
public class DatabaseUtil {
    private static String driver = ConfigManager.getProperty("driver");// 数据库驱动字符串
    private static String url = ConfigManager.getProperty("url");// 连接URL字符串
    private static String user = ConfigManager.getProperty("user"); // 数据库用户名
    private static String password = ConfigManager.getProperty("password"); // 用户密码

    static {
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    /**
     * 获取数据库连接对象。
     * @throws SQLException 
     */
    public static Connection getConnection() throws SQLException {
        // 获取连接并捕获异常
        Connection conn = null;
        try {
            conn = DriverManager.getConnection(url, user, password);
        } catch (SQLException e) {
            e.printStackTrace();
            throw e;
        }
        return conn;// 返回连接对象
    }


    /**
     * 关闭数据库连接
     * @param conn 连接参数
     *
     */
    public static void closeConnection(Connection conn) {
        // 若结果集对象不为空，则关闭
        try {
            if (conn != null && !conn.isClosed())
                conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

}

package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import util.DatabaseUtil;

/**
 * 执行数据库操作的工具类�?
 * 
 * @author 北大青鸟
 */
public class BaseDao {
    private Connection conn = null;

    public BaseDao(Connection conn) {
        this.conn = conn;
    }

    /**
     * 增、删、改操作
     *
     * @param sql    sql语句
     * @param params 参数数组
     * @return 执行结果
     * @throws SQLException
     */
    protected int executeUpdate(String sql, Object... params) throws SQLException {
        int result = 0;
        PreparedStatement pstmt = null;
        try {
            pstmt = getPreparStatement(pstmt, sql, params);
            result = pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            throw e;
        } finally {
            closeResource(pstmt, null);
        }
        return result;
    }

    /**
     * 查询操作
     *
     * @param sql    sql语句
     * @param params 参数数组
     * @return 查询结果集
     * @throws SQLException
     */
    protected ResultSet executeQuery(String sql, Object... params) throws SQLException {
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            pstmt = getPreparStatement(pstmt, sql, params);
            rs = pstmt.executeQuery();
        } catch (SQLException e) {
            e.printStackTrace();
            throw e;
        }
        return rs;
    }

    //设计一个方法用于返回一个preparStatement
    private PreparedStatement getPreparStatement(PreparedStatement pstmt, String sql, Object... params) throws SQLException {
        pstmt = this.conn.prepareStatement(sql);
        for (int i = 0; i < params.length; i++) {
            pstmt.setObject(i + 1, params[i]);
        }
        return pstmt;
    }

    /**
     * 释放资源
     *
     * @param preparedStatement
     * @param resultSet
     */
    public static void closeResource(PreparedStatement preparedStatement, ResultSet resultSet) {
        if (preparedStatement != null) {
            try {
                preparedStatement.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (resultSet != null) {
            try {
                resultSet.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }


}

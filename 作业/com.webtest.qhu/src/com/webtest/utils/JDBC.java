package com.webtest.utils;
import java.sql.*;
public class JDBC {
    private static Connection conn =null;
    private static Statement st =null;
    private static ResultSet rs =null;
    
    public static Connection getConn(){
        //数据库连接
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");//装载驱动
            try {
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/web?serverTimezone=UTC&characterEncoding=utf8", "root", "");
            }
            catch (SQLException e) {
                System.out.println("连接失败，请检查用户名或密码是否正确，或是MySQL数据库是否已经启动");
            }
        }catch (ClassNotFoundException e) {
            System.out.println("驱动程序未找到，请检查是否将驱动程序copy到lib目录！");
        }
        return conn;
    }
    public static Statement getSt(){
        try {
            if(getConn()!=null){
                st = conn.createStatement();
            }
        }
        catch (SQLException e) {
        }
        return st;
    }
    public static ResultSet select(String sql){
        try {
            if(getSt()!=null){
                rs = st.executeQuery(sql);
            }
        }
        catch (SQLException e) {
            System.out.println("sql查询语句异常，请检查你的sql语句："+sql);
        }
        return rs;
    }
    
    //更新
    public static boolean Update(String sql){
        boolean flag = false;
        try {
            if(getSt()!=null){
                st.executeUpdate(sql);
                flag = true;
                close();
            }
        }
        catch (SQLException e) {
            System.out.println("sql语句异常，请检查你的sql语句："+sql);
        }
        return flag;
    }
    public static void close(){
        try {
            if(st!=null){
                st.close();
            }
            if(conn!=null){
                conn.close();
            }
        }
        catch (SQLException e) {
            System.out.println("关闭失败！");
        }
    }
}
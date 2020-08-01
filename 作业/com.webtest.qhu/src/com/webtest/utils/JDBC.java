package com.webtest.utils;
import java.sql.*;
public class JDBC {
    private static Connection conn =null;
    private static Statement st =null;
    private static ResultSet rs =null;
    
    public static Connection getConn(){
        //���ݿ�����
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");//װ������
            try {
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/web?serverTimezone=UTC&characterEncoding=utf8", "root", "");
            }
            catch (SQLException e) {
                System.out.println("����ʧ�ܣ������û����������Ƿ���ȷ������MySQL���ݿ��Ƿ��Ѿ�����");
            }
        }catch (ClassNotFoundException e) {
            System.out.println("��������δ�ҵ��������Ƿ���������copy��libĿ¼��");
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
            System.out.println("sql��ѯ����쳣���������sql��䣺"+sql);
        }
        return rs;
    }
    
    //����
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
            System.out.println("sql����쳣���������sql��䣺"+sql);
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
            System.out.println("�ر�ʧ�ܣ�");
        }
    }
}
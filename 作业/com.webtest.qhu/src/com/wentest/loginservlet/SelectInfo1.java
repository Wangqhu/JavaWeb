package com.wentest.loginservlet;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.webtest.user.student;
import com.webtest.utils.DBUtil;
import java.util.ArrayList;

public class SelectInfo1 {
	
	public ArrayList<student> getAllInfo() {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        
        ArrayList<student> list = new ArrayList<student>(); 
        try {
            conn = DBUtil.getConnection();
            String sql = "select * from student"; 
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery();
            while (rs.next()) {
                student stu = new student();
                stu.setId(rs.getInt("id"));
                stu.setStunum(rs.getInt("stunum"));
                stu.setUsername(rs.getString("username"));
                stu.setClass(rs.getString("class"));
                stu.setPassword(rs.getString("password"));
                stu.setQqnum(rs.getInt("qqnum"));
                stu.setEmail(rs.getString("email"));
                list.add(stu);
            }
            return list;
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
        } finally {
            if (rs != null) {
                try {
                    rs.close();
                    rs = null;
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
            }
            if (stmt != null) {
                try {
                    stmt.close();
                    stmt = null;
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
            }
        }
	}
}
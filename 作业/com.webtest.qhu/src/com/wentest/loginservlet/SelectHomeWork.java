package com.wentest.loginservlet;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.webtest.user.tea_file;
import com.webtest.utils.DBUtil;
import java.util.ArrayList;

public class SelectHomeWork{
	
	public ArrayList<tea_file> getAllInfo() {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        
        ArrayList<tea_file> list = new ArrayList<tea_file>(); 
        try {
            conn = DBUtil.getConnection();
            String sql = "select *from tea_file"; 
            
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery();
            while (rs.next()) {
            	tea_file tea = new tea_file();
                tea.setId(rs.getInt("id"));
                tea.setTitle(rs.getString("title"));
                tea.setTime(rs.getDate("Time"));
                tea.setFilename(rs.getString("filename"));
                tea.setFilepath(rs.getString("filepath"));
                list.add(tea);
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
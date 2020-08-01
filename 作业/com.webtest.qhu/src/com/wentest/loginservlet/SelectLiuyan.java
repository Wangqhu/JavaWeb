package com.wentest.loginservlet;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.webtest.user.liuyan;
import com.webtest.utils.DBUtil;
import java.util.ArrayList;

public class SelectLiuyan{
	
	public ArrayList<liuyan> getAllInfo() {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        
        ArrayList<liuyan> list = new ArrayList<liuyan>(); 
        try {
            conn = DBUtil.getConnection();
            String sql = "select *from liuyan "; 
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery();
            while (rs.next()) {
            	liuyan info = new liuyan();
            	info.setId(rs.getInt("id"));
            	info.setName(rs.getString("name"));
            	info.setAsk(rs.getString("ask"));
            	info.setAnswer(rs.getString("answer"));
                list.add(info);
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
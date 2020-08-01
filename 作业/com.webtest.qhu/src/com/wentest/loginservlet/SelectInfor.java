package com.wentest.loginservlet;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.webtest.user.Infor;
import com.webtest.utils.DBUtil;
import java.util.ArrayList;

public class SelectInfor{
	
	public ArrayList<Infor> getAllInfo() {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        
        ArrayList<Infor> list = new ArrayList<Infor>(); 
        try {
            conn = DBUtil.getConnection();
            String sql = "select *from information"; 
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery();
            while (rs.next()) {
            	Infor info = new Infor();
            	info.setId(rs.getInt("id"));
            	info.setInfo(rs.getString("info"));
            	info.setFilename(rs.getString("filename"));
            	info.setFilepath(rs.getString("filepath"));
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
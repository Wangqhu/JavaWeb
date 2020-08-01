package com.wentest.loginservlet;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.webtest.user.stu_file;
import com.webtest.utils.DBUtil;
import java.util.ArrayList;

public class SelectStuHome{
	
	public ArrayList<stu_file> getAllInfo() {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        
        ArrayList<stu_file> list = new ArrayList<stu_file>(); 
        try {
            conn = DBUtil.getConnection();
            String sql ="select tea_file.id,tea_file.title,stu_file.score,stu_file.filename,stu_file.filepath from tea_file,stu_file where tea_file.id=stu_file.id"; 
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery();
            while (rs.next()) {
            	stu_file stu = new stu_file();
                stu.setId(rs.getInt("tea_file.id"));
                stu.setTitle(rs.getString("tea_file.title"));
                stu.setScore(rs.getInt("stu_file.score"));
                stu.setFilename(rs.getString("stu_file.filename"));
                stu.setFilepath(rs.getString("stu_file.filepath"));
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
package com.wentest.loginservlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.webtest.utils.DBUtil;

@WebServlet("/delete_stu")
public class delete_stu extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		
		Connection conn = null;
        PreparedStatement stmt = null;
        boolean rs;
        
		String bianhao = req.getParameter("bianhao");
		try {
			conn = DBUtil.getConnection();
			String sql = "delete from student where id=?";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, bianhao);
            rs = stmt.execute();
            stmt.close(); 
            conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		RequestDispatcher rd=req.getRequestDispatcher("xueshengguanli_s.jsp");
    	rd.forward(req, resp);
	}
}

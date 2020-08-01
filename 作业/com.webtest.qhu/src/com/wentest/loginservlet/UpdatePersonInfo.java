package com.wentest.loginservlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.webtest.utils.DBUtil;

public class UpdatePersonInfo extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		String id = req.getParameter("id");
		String stunum = req.getParameter("stunum");
		String username = req.getParameter("username");
		String banji = req.getParameter("banji");
		String password = req.getParameter("password");
		String qnum = req.getParameter("qnum");
		String email = req.getParameter("email");
		Connection conn = null;
		boolean rs=true;
		PreparedStatement ps = null;
		
		try {
			String sql = "update student set stunum=?, username=?, class=?,password=?, qqnum=?, email=? where id=?";
			conn = DBUtil.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, stunum);
			ps.setString(2, username);
			ps.setString(3, banji);
			ps.setString(4, password);
			ps.setString(5, qnum);
			ps.setString(6, email);
			ps.setString(7, id);
			rs = ps.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		RequestDispatcher rd=req.getRequestDispatcher("gerenxinxi_t.jsp");
    	rd.forward(req, resp);
	}
}

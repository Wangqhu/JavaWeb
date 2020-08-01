package com.wentest.loginservlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.webtest.utils.DBUtil;

public class addstudent extends HttpServlet {
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
        
		String stunum = req.getParameter("stunum");
		String username = req.getParameter("username");
		String banji = req.getParameter("banji");
		String password = req.getParameter("password");
		String qnum = req.getParameter("qnum");
		String email = req.getParameter("email");
		try {
			conn = DBUtil.getConnection();
			String sql = "insert into student(stunum,username,class,password,qqnum,email) values (?,?,?,?,?,?)";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, stunum);
            stmt.setString(2, username);
            stmt.setString(3, banji);
            stmt.setString(4, password);
            stmt.setString(5, qnum);
            stmt.setString(6, email); 
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

package com.wentest.loginservlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.webtest.utils.DBUtil;

public class register extends HttpServlet {
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
		boolean rs;
		ResultSet rs1 = null;
		PreparedStatement ps = null;
		HttpSession session=req.getSession();
        
		String stunum = req.getParameter("stunum");
		String username = req.getParameter("username");
		String banji = req.getParameter("banji");
		String password = req.getParameter("password");
		String qnum = req.getParameter("qnum");
		String email = req.getParameter("email");
		try {
			String sql1 = "select stunum from student where stunum=?";
			conn = DBUtil.getConnection();
			ps = conn.prepareStatement(sql1);
			ps.setString(1, stunum);
			rs1 = ps.executeQuery();
            if(rs1.next()) {
            	  session.setAttribute("err", "用户名已存在,请重新注册");
            	  RequestDispatcher rd=req.getRequestDispatcher("login.jsp"); 
 				  rd.forward(req, resp);
              }else {
            	String sql = "insert into student(stunum,username,class,password,qqnum,email) values (?,?,?,?,?,?)";
          		conn = DBUtil.getConnection();
          		ps = conn.prepareStatement(sql);
          		ps.setString(1, stunum);
                  ps.setString(2, username);
                  ps.setString(3, banji);
                  ps.setString(4, password);
                  ps.setString(5, qnum);
                  ps.setString(6, email);
          		  rs = ps.execute();
                  session.setAttribute("err", "注册成功，请登录");
                  }
          		RequestDispatcher rd=req.getRequestDispatcher("login.jsp");
              	rd.forward(req, resp);
		}catch (SQLException e) {
			e.printStackTrace();
		}
	}
}

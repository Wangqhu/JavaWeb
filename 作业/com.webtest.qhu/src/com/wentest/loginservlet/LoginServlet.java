package com.wentest.loginservlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.webtest.user.student;
import com.webtest.user.teacher;
import com.webtest.utils.DBUtil;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		
		Connection conn = null;
		ResultSet rs = null;
		PreparedStatement ps = null;
		HttpSession session=request.getSession();
		
		int flag = 0;
        String username = request.getParameter("username");   				
        String password = request.getParameter("password");    
        String leixing = request.getParameter("leixing");
        if (leixing.equals("xuesheng")) {
		try {
			String sql = "SELECT id,stunum,username,Class,password,qqnum,email FROM student WHERE username=? and password=?";
			conn = DBUtil.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, username);
			ps.setString(2, password);
			rs = ps.executeQuery();
			
			if (rs.next()) {
                flag = 1;
                session.setAttribute("uid", rs.getString(1));
                session.setAttribute("ustunum", rs.getString(2));
                session.setAttribute("uname", rs.getString(3));
                session.setAttribute("uclass",rs.getString(4));
                session.setAttribute("upass",rs.getString(5));
                session.setAttribute("uqnum",rs.getString(6));
                session.setAttribute("uemail",rs.getString(7));
                session.setAttribute("uleixing", "学生"); 
            } else {
            	request.setAttribute("err", "错误的学生用户名及密码！");
            }
			 rs.close();
	            ps.close();
	            conn.close();
	        } catch (Exception e) { 
	        	e.printStackTrace();
	        }
		
		}else {
			try {
				String sql = "SELECT id,username,password,telnet,email FROM teacher WHERE username=? and password=?";
				conn = DBUtil.getConnection();
				ps = conn.prepareStatement(sql);
				ps.setString(1, username);
				ps.setString(2, password);
				rs = ps.executeQuery();
				if (rs.next()) {
	                flag = 2;
	                session.setAttribute("uid", rs.getString(1));
	                session.setAttribute("uname", rs.getString(2));
	                session.setAttribute("upass",rs.getString(3));
	                session.setAttribute("utel",rs.getString(4));
	                session.setAttribute("uemail",rs.getString(5));
	                session.setAttribute("uleixing", "老师"); 
	            } else {
	            	request.setAttribute("err", "错误的老师用户名及密码！");
	    		}
            rs.close();
            ps.close();
            conn.close();
        } catch (Exception e) { 
        	e.printStackTrace();
        }
		}
            if (flag==1) {
            	RequestDispatcher rd=request.getRequestDispatcher("Web_t.jsp");
            	rd.forward(request, response);
                }else if(flag==2){
                	RequestDispatcher rd=request.getRequestDispatcher("Web_s.jsp");
                	rd.forward(request, response);
                }else {
                	RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
                	rd.forward(request, response);
                  }
	      }
	 }

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
import com.webtest.user.student;
import com.webtest.utils.DBUtil;

@WebServlet("/update_stu")
public class update_stu extends HttpServlet {
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
        ResultSet rs = null;
        
		String id = req.getParameter("id");
		ArrayList<student> list = new ArrayList<student>(); 
		try {
			conn = DBUtil.getConnection();
			String sql = "select *from student where id=?";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, id);
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
            req.setAttribute("list", list); 
            System.out.println(list.size());
            rs.close(); 
            stmt.close(); 
            conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		RequestDispatcher rd=req.getRequestDispatcher("update_stu.jsp");
    	rd.forward(req, resp);
	}
}

package com.wentest.loginservlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.webtest.user.stu_file;
import com.webtest.utils.DBUtil;

public class SelectScore extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private static String driver = "com.mysql.cj.jdbc.Driver";
    private static String url = "jdbc:mysql://localhost:3306/web?serverTimezone=UTC";
    private static String user="root";
    private static String pass="";
	List<stu_file> perList=new ArrayList<stu_file>();
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		String scoretype = request.getParameter("score");
        
        if (scoretype.equals("pass")) {
		try {
			Class.forName(driver);
			Connection conn = DriverManager.getConnection(url, user, pass);
			Statement state = conn.createStatement();
			ResultSet rs = state.executeQuery("SELECT student.username,tea_file.title,stu_file.score FROM student,tea_file,stu_file WHERE student.stunum=stu_file.stunum AND stu_file.id=tea_file.id AND stu_file.score>=6");
			perList.clear();
			while(rs.next()){
                stu_file stu = new stu_file();
                stu.setUsername(rs.getString("student.username"));
                stu.setTitle(rs.getString("tea_file.title"));
                stu.setScore(rs.getInt("stu_file.score"));
                perList.add(stu);
            } 
			request.setAttribute("list", perList);
			request.getRequestDispatcher("tongzhichaxun_t.jsp").forward(request, response);
	        } catch (Exception e) { 
	        	e.printStackTrace();
	        }
		
		}else {
			try {
				Class.forName(driver);
				Connection conn = DriverManager.getConnection(url, user, pass);
				Statement state = conn.createStatement();
				ResultSet rs = state.executeQuery("SELECT student.username,tea_file.title,stu_file.score FROM student,tea_file,stu_file WHERE student.stunum=stu_file.stunum AND stu_file.id=tea_file.id AND stu_file.score<6");
				perList.clear();
				while(rs.next()){
	                stu_file stu = new stu_file();
	                stu.setUsername(rs.getString("student.username"));
	                stu.setTitle(rs.getString("tea_file.title"));
	                stu.setScore(rs.getInt("stu_file.score"));
	                perList.add(stu);
	            } 
				request.setAttribute("list", perList);
				request.getRequestDispatcher("tongzhichaxun_t.jsp").forward(request, response);
        } catch (Exception e) { 
        	e.printStackTrace();
        }
	  }
	}
 }

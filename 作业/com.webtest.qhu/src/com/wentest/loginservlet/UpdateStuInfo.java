package com.wentest.loginservlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.webtest.utils.DBUtil;

public class UpdateStuInfo extends HttpServlet { 
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {

		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("UTF-8");
    	Connection conn = null;
		boolean rs;
		PreparedStatement ps = null;   
		String id=request.getParameter("id"); 
		String stunum=request.getParameter("stunum");
		String username=request.getParameter("username");
		String banji=request.getParameter("banji");
		String password=request.getParameter("password");
		String qnum=request.getParameter("qnum");
		String email=request.getParameter("email");
        try {
            String sql = "update student set stunum=?, username=?, class=?, password=?,qqnum=?,email=? where id=?"; 
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
            conn.close();
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        request.getRequestDispatcher("xueshengguanli_s.jsp").forward(request, response);
    }
}

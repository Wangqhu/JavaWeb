package com.wentest.loginservlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.webtest.utils.DBUtil;

public class score extends HttpServlet { 
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
		String score=request.getParameter("score"); 
        try {
             
            String sql = "update stu_file set score=? where id=?"; 
            conn = DBUtil.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, score);
			ps.setString(2, id);
			rs = ps.execute();
            conn.close();
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        request.getRequestDispatcher("zuoyeguanli_s.jsp").forward(request, response);
    }
}

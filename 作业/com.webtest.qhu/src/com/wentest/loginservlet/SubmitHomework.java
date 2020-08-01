package com.wentest.loginservlet;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse; 
import com.jspsmart.upload.SmartUpload;
import com.webtest.utils.DBUtil;
 
public class SubmitHomework extends HttpServlet {
     /**
      * 
      */
     private static final long serialVersionUID = 1L;
 
     public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         doPost(req, resp);
     }
 
     public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
 
    	resp.setContentType("text/html");
 		resp.setCharacterEncoding("utf-8");
 		req.setCharacterEncoding("utf-8");
 		
 		Connection conn = null;
 		int rs = 0;
 		PreparedStatement ps = null;
         req.setCharacterEncoding("UTF-8");
         // �����ϴ��ı���·��
         String filePath="C:\\Users\\15110\\Desktop\\submit";
		/* String filePath = getServletContext().getRealPath("/WEB-INF") + "upload"; */
         // �����ļ����� ������ھͲ����������򴴽��ļ���
         File file = new File(filePath);
         if (file.exists()) {
             file.mkdir();
         }
         // ����SmartUpload����
         SmartUpload su = new SmartUpload();
         // ��ʼ������
         su.initialize(getServletConfig(), req, resp);
         // �����ϴ��ļ���С
         su.setTotalMaxFileSize(1024 * 1024 * 100);
         // �����ϴ��ļ�����
         // ������ʾ����
         String result = "�ϴ��ɹ�";
         try {
             su.upload();
             // �����ϴ��ļ�����
             int count = su.save(filePath);
             System.out.println("�ϴ��ɹ�" + count + "���ļ���");
             
             String filename = null;
			
			  for (int i = 0; i < su.getFiles().getCount(); i++) { com.jspsmart.upload.File
			  tempFile = su.getFiles().getFile(i);
			  filename=tempFile.getFilePathName(); 
			  filename = new String(filename.getBytes("UTF-8"));
			  }
			
		    String stunum=new String(su.getRequest().getParameter("stunum").getBytes(),"UTF-8");
 			String sql = "insert into stu_file(stunum,filename,filepath) values(?,?,?)";
 			conn = DBUtil.getConnection();
 			ps = conn.prepareStatement(sql);
 			ps.setString(1, stunum);
 			ps.setString(2, filename);
 			ps.setString(3, filePath);
 			rs = ps.executeUpdate();
         } catch (Exception e) {
             result = "�ϴ�ʧ��";
             e.printStackTrace();
         }
 
         // ��ȡ�ϴ��ɹ����ļ�������
         req.setAttribute("message", result);
         req.getRequestDispatcher("message.jsp").forward(req, resp);
     }

	private void String(byte[] bytes, String string) {
		// TODO Auto-generated method stub
		
	}
  }
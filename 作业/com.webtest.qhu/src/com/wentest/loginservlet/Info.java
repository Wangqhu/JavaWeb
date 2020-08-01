package com.wentest.loginservlet;

import java.io.File; 
import java.io.FileInputStream;
import java.io.IOException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream; 
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
 public class Info extends HttpServlet {
 
     /**
      * 
      */
     private static final long serialVersionUID = 1L;
 
     public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         doPost(req, resp);
     }
 
     public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         resp.setContentType("application/x-msdownload");
         // �Ը�������ʽ����
         resp.setHeader("Content-Disposition", "attachment;filename=download.zip");
 
         // ��ȡ����·��
         String path="C:\\Users\\15110\\Desktop\\Infor\\";
		/* String path = getServletContext().getRealPath("/") + "upload/"; */
         // ��ȡ�ļ�����
         String[] filenames = req.getParameterValues("filename");
         // �������ַ���
         String str = "";
         // ���з�
         String rt = "\r\n";
         // ����ѹ���������
         ZipOutputStream zos = new ZipOutputStream(resp.getOutputStream());
         // �����ļ�����
         for (String filename : filenames) {
            str += filename + rt;
             // �����ļ�����
             File file = new File(path + filename);
             zos.putNextEntry(new ZipEntry(filename));
             // �����ļ������
             FileInputStream fis = new FileInputStream(file);
             byte[] b = new byte[1024];
             int n = 0;
             while ((n = fis.read(b)) != -1) {
                 zos.write(b, 0, n);
             }
             zos.flush();
             fis.close();
         }
         zos.setComment("�ɹ�" + rt + str);
         zos.flush();
         zos.close();
     }
 }
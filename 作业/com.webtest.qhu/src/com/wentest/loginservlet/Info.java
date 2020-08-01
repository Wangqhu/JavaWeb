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
         // 以附件的形式下载
         resp.setHeader("Content-Disposition", "attachment;filename=download.zip");
 
         // 获取下载路径
         String path="C:\\Users\\15110\\Desktop\\Infor\\";
		/* String path = getServletContext().getRealPath("/") + "upload/"; */
         // 获取文件数组
         String[] filenames = req.getParameterValues("filename");
         // 创建空字符串
         String str = "";
         // 换行符
         String rt = "\r\n";
         // 创建压缩包输出流
         ZipOutputStream zos = new ZipOutputStream(resp.getOutputStream());
         // 遍历文件数组
         for (String filename : filenames) {
            str += filename + rt;
             // 创建文件对象
             File file = new File(path + filename);
             zos.putNextEntry(new ZipEntry(filename));
             // 创建文件输出流
             FileInputStream fis = new FileInputStream(file);
             byte[] b = new byte[1024];
             int n = 0;
             while ((n = fis.read(b)) != -1) {
                 zos.write(b, 0, n);
             }
             zos.flush();
             fis.close();
         }
         zos.setComment("成功" + rt + str);
         zos.flush();
         zos.close();
     }
 }
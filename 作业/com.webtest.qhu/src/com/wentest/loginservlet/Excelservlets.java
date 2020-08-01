package com.wentest.loginservlet;
 
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import jxl.Cell;
import jxl.Sheet;
import jxl.Workbook;
import jxl.read.biff.BiffException;
import com.webtest.user.Excel;
 
public class Excelservlets extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@SuppressWarnings("unchecked")
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
 
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		System.out.println("get請求");
		DiskFileItemFactory  fu =new DiskFileItemFactory ();
		ServletFileUpload upload = new ServletFileUpload(fu);
		List<FileItem> fileItems;
		try {
			fileItems = upload.parseRequest(request);
			upload.setHeaderEncoding("UTF-8");
			ArrayList al =new ArrayList();
			al.add(fileItems);
			
			Excel E = new Excel();
			for (int i = 0; i < al.size(); i++) {
				FileItem item =(FileItem)al.get(i);
				InputStream is=item.getInputStream();
				Workbook wb;
				try {
					wb = Workbook.getWorkbook(is);                                        
					Sheet st = wb.getSheet(0);
					Cell cell = null;
					
                      for(int m = 1; m < st.getRows(); m++) {
						String[][] ss = new String[st.getRows()][st.getColumns()];
						for (int j = 0; j < st.getColumns(); j++) {
							cell = st.getCell(j, m);
							String str = cell.getContents();
							ss[m][j] = str;
                            if (j == 0) {
								E.setStunum(Integer.parseInt(ss[m][j]));
							}else if(j==1){
								E.setUsername(ss[m][j]);
							}else if(j==2){
								E.setClass(ss[m][j]);
							}else if(j==3){
								E.setPassword(ss[m][j]);
							}else if(j==4){
								E.setQqnum(Integer.parseInt(ss[m][j]));
							}else if(j==5){
								E.setEmail(ss[m][j]);
							}
						}
						if(E.add()){
							if(m==st.getRows()-1){
								request.getRequestDispatcher("getexcel.jsp").forward(request, response);
							}
						}else{
							if(m==st.getRows()-1){
								request.getRequestDispatcher("getexcel.jsp?fa=ok").forward(request, response);
							}
						}
					}
					wb.close();
					is.close();
				} catch (BiffException e) {
					System.out.print("文件格式可能不对");
				}
			}
			out.flush();
			out.close();
		} catch (FileUploadException e1) {
			e1.printStackTrace();
		}
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		doGet(request,response);
		out.flush();
		out.close();
	}
}
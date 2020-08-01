<%@page import="java.io.InputStream"%>
<%@page import="com.webtest.user.Excel"%>
<%@ page language="java"
	import="java.util.*,com.*,java.io.*,jxl.*,jxl.read.biff.BiffException,java.sql.*"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
%>
 
<html>
<head>
<title>Excel文件读取</title>
</head>
<body>
	<div align="center">
	<form action="Excelservlets" method="post" enctype="multipart/form-data"> 
	   <input type="file" name="fileExcel">
	   <input type="submit" value="导入"/>
	</form>
	     
<!--  用于上显示数据库的数据，上传后显示出来 -->
	    <table border="1" width="50%">
	       <tr>
	          <th>学号</th>
	          <th>姓名</th>
	          <th>班级</th>
	          <th>密码</th>
	          <th>QQ号</th>
	          <th>邮箱</th>
	       </tr>
	       <%
	           Excel E =new Excel();
	           ResultSet rs = E.selectAll();
	           while(rs.next()){
	        %>
	            <tr>
	                <td><%=rs.getInt(2) %></td>
	                <td><%=rs.getString(3) %></td>
	                <td><%=rs.getString(4) %></td>
	                <td><%=rs.getString(5) %></td>
	                <td><%=rs.getInt(6) %></td>
	                <td><%=rs.getString(7) %></td>
	            </tr>
	        <%     
	           }
	        %>
	    </table>
	</div>
	<%String fa =request.getParameter("fa"); 
	    if(fa!=null){
	       out.print("添加失敗，是否重已複添加"); 
	    }
	%>
</body>
</html>
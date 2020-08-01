<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@ page import="com.webtest.user.stu_file"%>
<%@ page import="com.wentest.loginservlet.SelectStuHome"%>
<%@  page language="java" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <title>教师作业管理</title>
    <style type="text/css">
    	body,html{
    		height: calc(100% - 10px); 
    		background-color: #B2B8BE
    	}
		tr{
			height: 50px;
		}
		form{
			text-align: center;
		}
		.a1{
			margin-top: 20px;
		}
		input{ 
		width:50px;
		}
    </style>
</head>
<body>
<div class="a1">
   <form action="Stu_download">
	<table border="2" width="800px" height="auto" style=" margin: auto">
	<tr>
		<th>作业编号</th>
		<th>作业题目</th>
		<th>下载学生作业</th>
		<th>作业分数</th>
	</tr>
	<% 
		SelectStuHome stu = new SelectStuHome();
        ArrayList<stu_file> list = stu.getAllInfo();
        if(list!=null&&list.size()>0)
         {
           for(int i=0;i<list.size();i++)
            {
             stu_file stud = list.get(i);
       %> 
	<tr>
		<td><%=stud.getId() %> </td>
		<td><%=stud.getTitle() %> </td>
		<td><input type="checkbox" name="filename" value="<%=stud.getFilename() %>"/><input type="submit" value="下载"/></td>
		</form>
	    <form action="score" method="post">
	    <td>
	    <input type="hidden" name="id" value="<%=stud.getId() %>">
	    <input type="text" name="score" value="<% if(stud.getScore()==0)  
	    	                                         out.print("稍未打分"); 
	                                                         else 
	                                                        	 out.print(stud.getScore()); %>"> 
		<input type="submit" name="file_name" value="打分" >
	    </td>
	    </form>
	</tr>
<%
	}
 } 
 %>
		</table>
   </div>
</body>	
</html>
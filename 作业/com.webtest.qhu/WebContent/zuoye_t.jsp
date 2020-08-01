<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>    
<%@ page import="com.webtest.user.tea_file"%>
<%@ page import="com.wentest.loginservlet.SelectHomeWork"%>
<%@  page language="java" import="java.util.*"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<link rel="stylesheet" type="text/css">
	</head>
	<body>
	
	<style type="text/css">
			body,html{height: calc(100% - 10px); background-color: #B2B8BE}
			table{width: calc(100% - 10px); height: auto; margin-top: 2px; margin-left: 2px;}
			tr{border: 1px solid black;height: 100px;}
			td{border: 1px solid black;}
			p{width: 100%;height: 55px;text-align: center; font-size: 1.5em; display: block; font-weight: bold;position: fixed;top: 0px;left: 0;}
			div{overflow: auto;position: fixed;right: 55px;left: 55px;top: 45px;bottom: 10px;}textarea{resize: vertical;overflow: auto;}
			input{width: 70px;}
			form{text-align: center;}	
		.work-div{
				width: auto;
    			height: calc(100%);
    			position: fixed;
				}
		.work-table{
				border-right: 2px solid black;
				border-bottom: 2px solid black;
				margin: auto;
				}
		.work-table tr{		
				height: 50px;
				}
		.work-table td{
				border-left: 2px solid black;
				border-top: 2px solid black;
				font-size: 1.5em;
				font-family: 仿宋;
				text-align: center;
				}

	</style>
		<div class="work-div">
		  <form action="Tea_download">
		  <input type="submit" value="下载作业"/>
			<table class="work-table">
			
				<tr>
					<td>作业编号</td>
					<td>作业题目</td>
					<td>下载作业</td>
					<td>截止日期</td>
					<td>提交作业</td>
				</tr>
				<% 
					SelectHomeWork stu = new SelectHomeWork();
            	    ArrayList<tea_file> list = stu.getAllInfo();
              		if(list!=null&&list.size()>0)
              		 {
                   	  for(int i=0;i<list.size();i++)
                	   {
                      	tea_file tea = list.get(i);
           		   %> 
				<tr>
					<td><%=tea.getId() %></td>
					<td><%=tea.getTitle() %> </td>
					<td><input type="checkbox" name="filename" value="<%=tea.getFilename() %>"/><%=tea.getTitle() %></td>
					<td><%=tea.getTime() %> </td>
				</form>
			       <form action="SubmitHomework" method="post" enctype="multipart/form-data">
					<td>
						<input type="hidden" name="stunum" value="<%=session.getAttribute("ustunum") %>">
						<input type="file" name="<%=tea.getTitle() %>" value="上传作业">
						<input type="submit" name="submit" value="提交作业"/>
					</td>
				</tr>
				 <%
			      }
			        } 
			    %> 
				</form>
			</table>
		  </form>
		</div>
	</body>
</html>

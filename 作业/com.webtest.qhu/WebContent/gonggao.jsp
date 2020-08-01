<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.webtest.user.Infor"%>
<%@ page import="com.wentest.loginservlet.SelectInfor"%>
<%@  page language="java" import="java.util.*"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<style type="text/css">
			body,html{
				height: calc(100% - 10px); 
				background-color: #B2B8BE
			}
			div{overflow: auto;
				position: fixed;
				right: 55px;
				left: 55px;
				top: 45px;
				bottom: 10px;
			}
			form{
				text-align: center;
			}
			tr{
				height: 50px;
			}
			.message{
				height: auto;
				width: 800px;
				margin-left: 260px;
			}
			.message1{
				height: auto;
				width: 800px;
				margin-left: 260px;
				top: calc(100% - 400px);
			}
			.table{
				width: calc(100% - 10px); 
				height: auto; 
				margin-top: 2px; 
				margin-left: 2px; 
				border-right: 1px solid black;
				height: 20px;
				text-align: center;
			}
		</style>
	</head>
	<body>
		<div>
			<div class="message">
			<form>
				<table class="table" border="1">
				
					<tr>
						<td>通知</td>
					</tr>
					<% 
					SelectInfor stu = new SelectInfor();
            	    ArrayList<Infor> list = stu.getAllInfo();
              		if(list!=null&&list.size()>0)
              		 {
                   	  for(int i=0;i<list.size();i++)
                	   {
                   		Infor infor = list.get(i);
           		   %> 
					<tr>
						<td><%=infor.getInfo() %></td>
					</tr>
					
					<%
			      }
			        } 
			    %> 
				</table>
				</form>
			</div>
			<div class="message1">
			<form action="Info">
				<table class="table" border="1">
					<tr>
						<td>文件</td>
					</tr>
					<% 
					SelectInfor stu1 = new SelectInfor();
            	    ArrayList<Infor> list1 = stu.getAllInfo();
              		if(list1!=null&&list1.size()>0)
              		 {
                   	  for(int i=0;i<list1.size();i++)
                	   {
                   		Infor infor1 = list1.get(i);
           		   %>
					<tr>
						<td><input type="checkbox" name="filename" value="<%=infor1.getFilename() %>"/><%=infor1.getFilename() %> <input type="submit" value="下载文件"/></td>
					</tr>
				<%}}%> 
				</table>
				</form>
			</div>
		</div>
	</body>
</html>
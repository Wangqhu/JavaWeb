<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="com.webtest.user.stu_file"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="css/message.css">
</head>
<body>
	<TABLE class="table-parent">
		<TR> 
			<TD align="right">
				<form action="SelectScore" method="post">
					<select name="score">
						<option value="pass">及格</option>
						<option value="fail">不及格</option>
					</select>
					<input type="submit" value="查询">
				</form>
				<table class="table-child" border="1px">
				<%List list=(List)request.getAttribute("list");%>
					<tr class="nav-table-tr-td-tr">
						<td class="nav-table-tr-td-tr-td">姓名</td>
						<td class="nav-table-tr-td-tr-td">作业题目</td>
						<td class="nav-table-tr-td-tr-td">成绩</td>
						<td class="nav-table-tr-td-tr-td">状态</td>
					</tr>
					<%
					if(list.size()>0){
	         	    for(int i=0;i<list.size();i++){
	        		stu_file stu=(stu_file)list.get(i); 
	                %> 
					<tr class="nav-table-tr-td-tr">
					
						<td><%=stu.getUsername() %></td>
						<td><%=stu.getTitle() %></td>
						<td> <%=stu.getScore() %></td>
						<td>
					<%  if(stu.getScore()>=6)
						out.print("及格");
						else
						out.print("不及格"); %> 
						</td>
					</tr>
					
					<%} } %>
				</table>
					总人数:
				<% out.print("共有："+list.size()+"名同学");  %>
			</TD>
		</TR>
	</TABLE>
</body>
</html>
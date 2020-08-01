<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.webtest.user.student"%>
<%@ page language="java" import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <title>个人信息</title>
	<link rel="stylesheet" type="text/css" href="css/student-right-side-page.css">
</head>
<body>
<div>
<%List list=(List)request.getAttribute("list");%>
	<table class="student-message-table">
	<%if(list.size()>0){
	         	for(int i=0;i<list.size();i++){
	        		student stu=(student)list.get(i); 
	        %>
		<tr>
			<td>
			<form action="UpdateStuInfo" method="post" class="student-a2">
			ID:
			<input type="hidden" name="id" value="<%=stu.getId() %>"><br><br>
			学号：
			<input type="text" name="stunum" pattern="[0-9]{10}" value="<%=stu.getStunum() %>"><br><br>
			姓名：
			<input type="text" name="username" value="<%=stu.getUsername() %>"><br><br>
			班级：
			<input type="text" name="banji" value="<%=stu.getbanji() %>"><br><br>
			密码：
			<input type="text" name="password" maxlength ="20" value="<%=stu.getPassword() %>"><br><br>
			Q&nbsp;&nbsp;Q:&nbsp;
			<input type="text"  name="qnum" pattern="[0-9]{10}" value="<%=stu.getQqnum() %>"><br><br>
			邮箱：
			<input type="email" name="email" value="<%=stu.getEmail() %>"><br><br>
			<span><input type="submit" name="file_name" value="修改"></span>
			</form>
			</td>
		</tr>
		<%} }%>
	</table>
</div>
</body>	
</html>

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.webtest.user.student"%>
<%@  page language="java" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <title>个人信息</title>
	<link rel="stylesheet" type="text/css" href="css/student-right-side-page.css">
</head>
<body>
<div>
	<table class="student-message-table">
		<tr>
			<td>
			<form action="register" method="post" class="student-a2">
			<input type="hidden" name="id"  /><br><br>
			学号:
			<input type="text" name="stunum" pattern="[0-9]{10}"  required /><br><br>
			姓名:
			<input type="text" name="username"  required /><br><br>
			班级:
			<input type="text" name="banji" required /><br><br>
			密码:
			<input type="text" name="password" maxlength ="20"  required /><br><br>
			Q&nbsp;&nbsp;Q:
			<input type="text"  name="qnum" pattern="[0-9]{10}"  required /><br><br>
			邮箱:
			<input type="email" name="email"  required /><br><br>
			<input style="width:50px;" class="student-a3" type="submit" name="file_name" value="提交">
			</form>
			</td>
		</tr>
	</table>
</div>
</body>	
</html>

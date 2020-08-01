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
			<form action="UpdatePersonInfo" method="post" class="student-a2">
			<input type="hidden" name="id" value="<%=session.getAttribute("uid") %>" /><br><br>
			学号:
			<input type="text" name="stunum" pattern="[0-9]{10}" value="<%=session.getAttribute("ustunum")%>" required /><br><br>
			姓名:
			<input type="text" name="username" value="<%=session.getAttribute("uname")%>" required /><br><br>
			班级:
			<input type="text" name="banji" value="<%=session.getAttribute("uclass")%>" required /><br><br>
			密码:
			<input type="text" name="password" maxlength ="20" value="<%=session.getAttribute("upass")%>" required /><br><br>
			Q&nbsp;&nbsp;Q:
			<input type="text"  name="qnum" pattern="[0-9]{10}" value="<%=session.getAttribute("uqnum")%>" required /><br><br>
			邮箱:
			<input type="email" name="email" value="<%=session.getAttribute("uemail")%>" required /><br><br>
			<input style="width:50px" class="student-a3" type="submit" name="file_name" value="提交">
			</form>
			</td>
		</tr>
	</table>
</div>
</body>	
</html>

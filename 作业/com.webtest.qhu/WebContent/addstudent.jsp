<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			<form action="addstudent" method="post" class="student-a2">
			学号：
			<input type="text" name="stunum" pattern="[0-9]{10}" required /><br><br>
			姓名：
			<input type="text" name="username"  required /><br><br>
			班级：
			<input type="text" name="banji"  required /><br><br>
			密码：
			<input type="text" name="password" maxlength ="20"  required /><br><br>
			Q&nbsp;&nbsp;Q:&nbsp;
			<input type="text"  name="qnum" pattern="[0-9]{10}"  required /><br><br>
			邮箱：
			<input type="email" name="email"  required /><br><br>
			<span><input type="submit" name="file_name" value="添加"></span>
			</form>
			</td>
		</tr>
	</table>
</div>
</body>
</html>
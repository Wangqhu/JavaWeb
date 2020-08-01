<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.webtest.user.teacher"%>
<%@  page language="java" import="java.util.*"%> 
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="css/right-side-page.css">
</head>
<body>

	<div class="personal-div" >
		<TABLE class="personal-table">  
		<form action="UpdatePersonInfo" method="post">
			<TR> 
				<TD>
					姓&nbsp;&nbsp;&nbsp;&nbsp;名
				</TD>
				<TD colspan="4">
					<input type="text" class="size" name="username" value="<%=session.getAttribute("uname")%>">
				</TD>
			</TR>
			<TR>
				<TD>
					密&nbsp;&nbsp;&nbsp;&nbsp;码
				</TD>
				<TD>
					<input type="text" class="size" name="password" value="<%=session.getAttribute("upass")%>">
				</TD>
			</TR>
			<TR>
				<TD>
					联系方式
				</TD>
				<TD>
				
					<input type="text" class="size" name="telnet" value="<%=session.getAttribute("utel")%>">
				</TD>
			</TR>
			<TR>
				<TD>
					邮&nbsp;&nbsp;&nbsp;&nbsp;箱
				</TD>
				<TD>
				
					<input type="email" class="size" name="email" value="<%=session.getAttribute("uemail")%>">
				</TD>
			</TR>
			<TR>
				<TD>
				</TD>
				<TD>
					<input type="submit" class="input" value="修改保存">
				</TD>
			</TR>
			</form>
		</TABLE>
	</div>
</body>
</html>
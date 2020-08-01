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
					<tr class="nav-table-tr-td-tr">
						<td class="nav-table-tr-td-tr-td">姓名</td>
						<td class="nav-table-tr-td-tr-td">作业题目</td>
						<td class="nav-table-tr-td-tr-td">成绩</td>
						<td class="nav-table-tr-td-tr-td">状态</td>
					</tr>
					<tr class="nav-table-tr-td-tr">
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</table>
				<div>
				总人数:
				</div>
			</TD>
		</TR>
	</TABLE>
</body>
</html>
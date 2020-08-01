<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%> 
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <title>教师通知公告——作业</title>
	<link rel="stylesheet" type="text/css" href="css/message.css">
</head>
<body>
	<table class="work-table" border="2">
		<tr>
			<td>
			<form action="UploadFile" method="post" enctype="multipart/form-data">
				<span><p>题目:</p></span>
				<input type="text" name="title" required /><br><br>
				<span><p>上传作业:</p></span>
				<input type="file" name="file"><br><br>
				<span><p>截止日期:</p></span>
				<input type="date" name="time" min="2019-12-2" required /><br><br><br>
				<input type="submit" name="file_name" value="发布作业">
			</form>
			</td>
		</tr>
	</table>
</body>	
</html>

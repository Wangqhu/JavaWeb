<!-- <%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%> -->
<!DOCTYPE html>
<html>
<head>
	<title>信息</title>
	<meta charset="utf-8">
	<style type="text/css">
		body,html{
    		background-color: #B2B8BE;
		}
		.a1{
			text-align: center;
			margin-top: 100px;
		}
		.a2{
			width:700px;
			height:300px;
		}
		
	</style>
</head>
<body>
<div class="a1">
	<form action="Inform" method="post" enctype="multipart/form-data">
		上传文件
		<input type="file" name="InfomFile">
		<input type="submit" name="发布"><br><br>
		<textarea class="a2" name="information" cols ="100" rows = "20"></textarea>
	</form>
</div>
<div></div>
</body>
</html>
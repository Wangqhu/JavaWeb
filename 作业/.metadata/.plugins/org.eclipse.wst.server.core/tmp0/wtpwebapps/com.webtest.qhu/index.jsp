<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function zX(){
		
		sessionStorage.removeItem("username");				
		sessionStorage.removeItem("password");		
		window.location.href = "login.jsp";
	}
</script>

<body>
<button type="button" name="button1" value="注销" onClick="zX()">注销</button>
我是学生
</body>
</html>
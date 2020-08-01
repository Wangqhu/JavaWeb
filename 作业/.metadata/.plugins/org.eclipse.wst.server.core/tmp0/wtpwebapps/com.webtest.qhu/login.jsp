<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>欢迎登陆！</title>
		<link rel="stylesheet" type="text/css" href="css/login.css" />
	</head>
	 <SCRIPT>
        function isValid()
        {
            if (loginjudge.id.value == "")
            {
                window.alert("您必须完成帐号的输入!");
                document.loginjudge.elements(0).focus();
                return  false;
            }
            if (loginjudge.password.value == "")
            {
                window.alert("您必须完成密码的输入!");
                document.loginjudge.elements(1).focus();
                return  false;  
            }
            loginjudge.submit();
        }
    </SCRIPT>		
	<body>
	<%session.invalidate(); %>
	<form action="login1" method="post" name="loginjudge" onSubmit="return isValid(this);">
		<div class="bg-image"></div>
		<div class="gcs-login">
			<div class="gcs-login-panel">
				<div class="login-title">
					<h2>用户登陆</h2>
				</div>
				 <%
                  if (request.getAttribute("err") != null) {
                 %>
                 <h2><%=request.getAttribute("err")%></h2>
                 <%
                 //session.setAttribute("err", "");
                  }
                 %>
				<div class="gcs-login-container">
					<div class="gcs-login-container-title">
						用&nbsp;&nbsp;户&nbsp;&nbsp;名：
					</div>
						<input type="text" name="id" class="input" placeholder="请输入用户名" />
					<div class="gcs-login-container-title">
						密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：
					</div>
						<input type="password"  name="password" class="input" placeholder="请输入密码"/>
					<div class="gcs-login-container-title">
						登录方式:
					</div>
						<select class="input" name="leixing">
							<option style="width: 50px;"value="teacher">教师登录</option>
							<option value="xuesheng">学生登录</option>
						</select>
				</div>
				<div class="gcs-login-container">
					<input type="submit" value="立即登录" class="btn-login" />
				</div>
			</div>
		</div>
		</form>
	</body>
</html>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Web课程登录</title>
  <link rel="stylesheet" media="screen" href="css/style.css">
  <link rel="stylesheet" type="text/css" href="css/reset.css"/>
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
</head>
<body>
                   
	<div id="bg">
		<div id="sm">	
		    <table>
				<tr>
				<td id="Pic1">
					<table>	
					    <tr>
						<td><img id="img" src="img/3.jpg" onmouseover="mouseover(this)" onmouseout="mouseout(this)"/></td>
						<td><img id="img" src="img/2.jpg" onmouseover="mouseover(this)" onmouseout="mouseout(this)"/></td>
						</tr>
					</table>
			    	</td>
			      <td id="Pic2"></td>
				</tr>
		    </table>
			</div>
		</div>
	<script>
		Pic2.innerHTML=Pic1.innerHTML;
		function scrolltoleft(){
			sm.scrollLeft++;
			if(sm.scrollLeft>=Pic1.scrollWidth)
				sm.scrollLeft=0;
		}
		var MyMar=setInterval(scrolltoleft,20); 
		function mouseover(x){
			x.style.width="210";
			x.style.height="256"
			x.style.cursor="pointer"
		}
		function mouseout(x){
			x.style.width="105";
			x.style.height="128"
		}
		sm.onmouseover=function(){
			clearInterval(MyMar);
		}
		sm.onmouseout=function(){
			MyMar = setInterval(scrolltoleft,20);
		} 
	</script>	
	<form action="login1" method="post" name="loginjudge" onSubmit="return isValid(this);">
<div>
		<div class="login">
			<div class="login-top">
				登录<br><br>
              <%session.invalidate(); %>
				<span style=" font-size:25px;color:red;"><%
					 if (request.getAttribute("err") != null) {
					%>
					<h2><%=request.getAttribute("err")%></h2>
					<%
					 }
					%>
					</span>
			</div>
			
			<div class="login-center clearfix">
				<div class="login-center-img"><img src="img/name.png"/></div>
				<div class="login-center-input">
					<input type="text" name="username" placeholder="请输入您的用户名" onfocus="this.placeholder=''" onblur="this.placeholder='请输入您的用户名'"/>
					<div class="login-center-input-text">用户名</div>
				</div>
			</div>
			<div class="login-center clearfix">
				<div class="login-center-img"><img src="img/password.png"/></div>
				<div class="login-center-input">
					<input type="password" name="password"  placeholder="请输入您的密码" onfocus="this.placeholder=''" onblur="this.placeholder='请输入您的密码'"/>
					<div class="login-center-input-text">密码</div>
				</div>
			</div>
			<div class="login-center clearfix">
				<div class="login-center-img"><img src="img/name.png"/></div>
				<div class="login-center-input">
					<select name="leixing">
						<option style="width: 50px; color: #000000;" value="teacher">教师登录</option>
						<option style="width: 50px; color: #000000;" value="xuesheng">学生登录</option>
					</select>
					<div class="login-center-input-text">密码</div>
				</div>
			</div>
			<div class="button-div">
				<input class="login-button" type="submit" value="登录" />
			</div>
			</form>
			<form action="register.jsp" method="post">
			<div class="button-div1">
				<input class="login-button1" type="submit"   value="注册" />
			</div>
		</div>
		<div class="sk-rotating-plane"></div>
</div>
</form>
</body>
</html>
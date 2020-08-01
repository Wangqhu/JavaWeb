<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8"/>
		<link rel="stylesheet" type="text/css" href="css/right-side-page.css">
	</head>
    <body>
		<div class="FristPage-div">
			<!--<%
          if (session.getAttribute("uname") != null) {                     
        %>-->
       
		<div class="huanying">
			<h3>欢迎</h3>
			 <h2>
            <%=session.getAttribute("uname")%>
            <%="["%>
            <%=session.getAttribute("uleixing")%>
            <%="]"%></h2>
            <h3>进入Web课程管理系统</h3>
		<%
        } else {
            response.setHeader("refresh", "2;URL=login.jsp");
        %>
        	您还未登陆，请先登陆！！！<br>
       		 两秒后自动跳转到登陆窗口！！！<br>
        <%
         }
        %>
		</div>
		</div>
    </body>
</html> 
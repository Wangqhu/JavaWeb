<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.webtest.user.liuyan"%>
<%@ page import="com.wentest.loginservlet.SelectLiuyan"%>
<%@  page language="java" import="java.util.*"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<link rel="stylesheet" type="text/css" href="css/student-right-side-page.css">
	</head>
	<body>
	<form action="liuyan" method="post">
	<input type="hidden" class="size" name="username" value="<%=session.getAttribute("uname")%>">
		<textarea class="message-Frist-child-div-textarea" name="ask" placeholder="想对老师说些什么"></textarea>
		<div class="message-Frist-child-div">
			<div class="message-Second-child-div">
				<input type="submit" value="提交"/>
			</div>
		  </div>
		<div class="liuyan-title">我的留言</div>
		</form>
		<div class="liuyan-div">
		<% 
		SelectLiuyan stu = new SelectLiuyan();
        ArrayList<liuyan> list = stu.getAllInfo();
        if(list!=null&&list.size()>0)
         {
           for(int i=0;i<list.size();i++)
            {
             liuyan ly = list.get(i);
       %>
		<tr>
		<th>询问：<%=ly.getAsk() %></th><br><br>
		<th>答复：
		<% 
		if(ly.getAnswer()==null) out.print("");else out.print(ly.getAnswer());
		%>
		</th><br><br>
		
		</tr>
			<%
	}
 } 
 %>
 		</div>
	</body>
</html>

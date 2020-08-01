<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.webtest.user.stu_file"%>
<%@ page import="com.wentest.loginservlet.SelectStuHome"%>
<%@  page language="java" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <title>查看分数</title>
	<link rel="stylesheet" type="text/css" href="css/student-right-side-page.css">
</head>
<body>

       <% int sum=0;int count=0;%>
       
	<div>
		<table class="select-a2">
			<tr>
				<td>作业题目</td>
				<td>作业分数</td>
				<td>作业状态</td>
			</tr>
		<% 
		SelectStuHome stu = new SelectStuHome();
        ArrayList<stu_file> list = stu.getAllInfo();
        if(list!=null&&list.size()>0)
         {
           for(int i=0;i<list.size();i++)
            {
             stu_file stuf = list.get(i);
       %>
			<tr>
				<td><%=stuf.getTitle() %></td>
				<td><% if(stuf.getScore()==0) { 
	    	                  out.print("老师还未批改");
	    	                  count++;}
	                              else 
	                                 out.print(stuf.getScore()); %></td>
				<td>
	   <%       if(stuf.getScore()<6)
				out.write("不及格");
				else
				out.print("及格");  %>
				</td>
			</tr>
			<%sum+=stuf.getScore(); %>
	 	<%}} %>
		</table>
		<% out.print("当前累计分数为"+sum+"分");%><br>
		<span style="font-family:楷体;color:red;font-size:1.5em"><%if(sum<(6*(list.size()-count)) && sum>0)
			out.print(session.getAttribute("uname")+"同学，该门课程你的总分为"+sum+"分，请认真对待每次作业及大作业，否则你将挂科！");
		else if(sum==0)
			out.print("请认真对待每次作业及大作业的完成度与质量，本门课程六次课后作业占60%,大作业占40%,希望"+session.getAttribute("uname")+"同学及时查看自己的作业分数。");
			%> <span>
	</div>
</body>	
</html>

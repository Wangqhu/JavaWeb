<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="com.webtest.user.student"%>
<%@ page import="com.wentest.loginservlet.SelectInfo"%>
<%@  page language="java" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <title>教师学生管理</title>
	<link rel="stylesheet" type="text/css" href="css/right-side-page.css">
    <style type="text/css">
    </style>
</head>
<body>
	<table class="student-admin-table">
	<tr>
			<td>
				<form action="addstudent.jsp" method="post" enctype="multipart/form-data">
					添加学生：
					<input type="submit" value="添加学生"><br><br>
					批量上传：
					<input type="file"><br><br>
				</form>
					<table class="a2" border="2">
						<tr height="50px">
							<th>编号</th>
							<th>姓名</th>
							<th>学号</th>
							<th>班级</th>
							<th>密码</th>
							<th>邮箱</th>
							<th>QQ账号</th>
							<th>修改</th>
							<th>删除</th>
						</tr>	
				 <% 
					SelectInfo stu = new SelectInfo();
            	    ArrayList<student> list = stu.getAllInfo();
              		if(list!=null&&list.size()>0)
              		 {
                   	  for(int i=0;i<list.size();i++)
                	   {
                      	student stud = list.get(i);
           		   %>
						<tr>
							<th><%=stud.getId() %></th>
							<th><%=stud.getUsername() %></th>
							<th><%=stud.getStunum() %></th>
							<th><%=stud.getbanji() %></th>
							<th><%=stud.getPassword() %></th>
							<th><%=stud.getEmail() %></th>
							<th><%=stud.getQqnum()%></th>
							<th>
							<form action="update_stu" method="post">
							<input type="hidden" name="id" value="<%=stud.getId() %>">
							<input type="submit" value="修改">
							</form>
							</th>
							<th>
							<form action="delete_stu" method="post">
							<input type="hidden" name="bianhao" value="<%=stud.getId() %>">
							<input type="submit" value="删除">
							</form>
							</th>
						</tr>
						<%
			                   }
			              } 
			          %>
					</table>
			</td>
		</tr>
	</table>
</body>	
</html>

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>  
<%@ page import="com.webtest.user.liuyan"%>
<%@ page import="com.wentest.loginservlet.SelectLiuyan"%>
<%@  page language="java" import="java.util.*"%> 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<style type="text/css">
		body,html{
			height: calc(100% - 10px);
			background-color: #B2B8BE
		}
		form{
			width: 100%;
		}
		.input1{
			width: calc(100% - 500px);
			height: 50px;
		}
		.parent{
			width: calc(100%);
			height: calc(100%);
			overflow: auto;
		}
		.frist-child{
		    width: auto;
			height: auto;
		}
		.second-child-name{
    		width: auto;
    		height: 35px;
    		margin: 31px 50px 0px 250px;
		}
		.second-child-name span{
			font-size: 1.5em;
			font-family: 微软雅黑;
		}
		.reply{
			width: auto; 
			height: calc(100% - 180px);
			text-align: center;
		}
		.button-reply{
			width: auto; 
			height: calc(100% - 180px);
			text-align: center;
		}
		.huifu{
			
			width: calc(100% - 250px);
		}
		.huifu span{
		float:right;
		display:block;
		}
		</style>
	</head>
	<body>
		<div class="parent">
			<div class="frist-child">
			<% 
		SelectLiuyan stu = new SelectLiuyan();
        ArrayList<liuyan> list = stu.getAllInfo();
        if(list!=null&&list.size()>0)
         {
           for(int i=0;i<list.size();i++)
            {
             liuyan ly = list.get(i);
       %>
				<div class="second-child-name">
				
					<span>学生:<%=ly.getName() %></span>
				</div>
				<div class="reply">
					<input class="input1" type="text" value="<%=ly.getAsk() %>">
				</div>
				<div class="button-reply">
					<form action="huifu" method="post">
						<input  class="input1" type="text" name="Huifu" />
						<input type="hidden" name="id" value="<%=ly.getId() %>"/>
						<div class="huifu">
						<span><input type="submit" value="回复"/>	</span>
						</div>
					</form>	
				</div>
				
					<%}} %>		
			</div>
		</div>
	</body>
</html>

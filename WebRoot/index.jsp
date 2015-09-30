<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
	<h2>报课管理系统</h2>
	<hr>
	Welcome. <br>
    
   <form action="UploadServlet" method="post" enctype="multipart/form-data">
    	请选择excel文件<input id="myfile" name="myfile" type="file" >
    	<input type="submit" value="提交"/>
    </form>
    <br>
<!-- 	<a href="CourseTableServlet">servlet</a> -->
  </body>
</html>

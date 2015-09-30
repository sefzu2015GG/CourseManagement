<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>

<%@ page import="com.fzu.sqlutils.*"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'courseshow.jsp' starting page</title>

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

	<%
		List<CourseBean> list = (List<CourseBean>) request
				.getAttribute("coursetable");
	%>
	<table border="1">
		<thead>
			<td>年级</td>
			<td>专业</td>
			<td>专业人数</td>
			<td>课程名称</td>
			<td>选修类型</td>
			<td>学分</td>
			<td>学时</td>
			<td>实验学时</td>
			<td>上机学时</td>
			<td>起讫周序</td>
			<td>任课老师</td>
			<td>备注</td>

		</thead>
		<tbody>
			<%
				for (CourseBean bean : list) {
			%>
			<tr>
				<td><%=bean.getGrade()%></td>
				<td><%=bean.getMajor()%></td>
				<td><%=bean.getPeoplenum()%></td>
				<td><%=bean.getCoursename()%></td>
				<td><%=bean.getType()%></td>
				<td><%=bean.getCredit()%></td>
				<td><%=bean.getPeriod()%></td>
				<td><%=bean.getTestperiod()%></td>
				<td><%=bean.getFuckcomputerperiod()%></td>
				<td><%=bean.getWeektime()%></td>
				<td><%=bean.getTeachername()%></td>
				<td><%=bean.getRemark()%></td>

			</tr>
			<%
				}
			%>
		</tbody>
	</table>



</body>
</html>

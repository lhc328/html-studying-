<%@ page contentType="text/html;charset=utf-8" import="java.util.Date,java.text.DateFormat;"%>
<!DOCTYPE html>
<html>
<head>
	<title>page指令实例</title>
</head>
<body>
	<h3 align="center">使用page指令导入java.util.Date类</h3>
	<%
		Date date = new Date();
		String s = DateFormat.getDateInstance().format(date);
		String s2 = DateFormat.getDateInstance(DateFormat.FULL).format(date);
	%>
	<p align="center">现在时间是：<%=s%>
	<p align="center">现在时间是：<%=s2%>
</body>
</html>
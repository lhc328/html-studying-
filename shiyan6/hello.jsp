<%@ page contentType="text/html;charset=utf-8" %>
<%@ page errorPage="errorHandler.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<%
		String name = request.getParameter("name");
		if(name == null){
			throw new RuntimeException("没有指定name属性.");
		}
		else{
			name = new String(name.getBytes("iso-8859-1"),"utf-8");
		}
	%>
	Hello, <%= name %>
</body>
</html>
<%@ page contentType="text/html;charset=utf-8" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	请求不能被处理：<%= exception.getMessage()%><br>
	请重试
</body>
</html>
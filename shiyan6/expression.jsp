<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<%@ page language="java"%>
	<%!
		int anInt = 3;
		boolean aBool = true;
		Integer anIntOj = new Integer(3);
		Float aFloarOj = new Float(8.6);
		String str = "some string";
		StringBuffer sBuff = new StringBuffer();
		char getChar(){ return 'A';}
	%>
	<%= 500 %>
	<%= anInt*3.5/100-500 %>
	<%= aBool %>
	<%= false %>
	<%= true %>
	<%= getChar() %>
	<%= Math.random() %>

	<%= aFloarOj %>
	<%= aFloarOj.floatValue() %>
	<%= aFloarOj.toString() %>
	<%= aBool %>
	<%=20 %>
	<% sBuff.setLength(12); %>
</body>
</html>
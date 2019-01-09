<%@ page language="java" import="java.io.*"%>
<%!
	int count = 0;
	String dbPath;
	public void jspInit(){
		try{
			dbPath = getServletContext().getRealPath("/WEB-INF/counter.db");
			FileInputStream fis = new FileInputStream(dbPath);
			DataInputStream dis = new DataInputStream(fis);
			count = dis.readInt();
			dis.close();
		}catch(Exception e){
			log("Error loading persistent counter", e);
		}
	}
%>
<html>
<head>
	<title></title>
</head>
<body>
	<% count++; %>
	Welcome! You are <%= count %>th visitor(s).
</body>
</html>
<%!
	public void jspDestory(){
		try{
			FileOutputStream fos = new FileOutputStream(dbPath);
			DataOutputStream dos = new DataOutputStream(fos);
			dos.writeInt(count);
			dos.close();
		}catch(Exception e){
			log("Error storing persistent counter", e);
		}
	}
%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page errorPage="errorPage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%!
		String adminId;
		String adminPw;
		
		String testServerIP;
	%>
	
	<!-- config -->
	<%
		adminId = config.getInitParameter("adminId");
		adminPw = config.getInitParameter("adminPw");
	%>
	
	<p>adminId : <%= adminId %></p>
	<p>adminPw : <%= adminPw %></p>
	
	<!-- application -->
	<%
		testServerIP = application.getInitParameter("testServerIP");
	%>
	
	<p>testServerIP : <%= testServerIP %></p>
	
	<%
		application.setAttribute("connectedUser", "nyoung");
	%>
	
	<!-- out -->
	<%
		out.print("<p>Hello</p>");
	%>
	
</body>
</html>
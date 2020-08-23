<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h2>to servlet</h2>
	<form action="tSignUp" method="post">
		이름 : <input type="text" name="mName"><br>
		별명 : <input type="text" name="mNickname"><br>
		<input type="submit" value="sign up">
	</form>
	
	<h2>to jsp</h2>
	<form action="encodingTest.jsp" method="post">
		이름 : <input type="text" name="mName"><br>
		별명 : <input type="text" name="mNickname"><br>
		<input type="submit" value="sign up">
	</form>
</body>
</html>
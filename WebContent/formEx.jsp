<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<form action="mSignUp" method="post">
		name : <input type="text" name="mName"><br>
		password : <input type="password" name="mPassword"><br>
		gender : Man<input type="radio" name="mGender", value="M" checked="checked">, Woman<input type="radio" name="mGender", value="W" checked="checked"><br>
		hobby : Sport<input type="checkbox" name="mHobby" value="sport">
				Cooking<input type="checkbox" name="mHobby" value="cooking">
				Reading<input type="checkbox" name="mHobby" value="reading">
				Travel<input type="checkbox" name="mHobby" value="travel"><br>
		residence : <select name="mResidence">
						<option value="seoul" selected="selected">Seoul</option>
						<option value="gyeonggi">Gyeonggi</option>
						<option value="chungcheong">Chungcheong</option>
						<option value="jeonra">Jeonra</option>
						<option value="jeju">Jeju</option>
						<option value="gyeongsang">Gyeongsang</option>
						<option value="gangwon">Gangwon</option>
					</select><br>
		<input type="submit" value="sign up">
	</form>
	
</body>
</html>
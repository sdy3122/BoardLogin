<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입페이지</title>
</head>
<body>
    <form action="signup.do" method="post">
    	<table border="1">
    		<tr>
    			<td>아이디</td>
    			<td><input type="text" name="mid" required="required"></td>    			
    		</tr>
    		<tr>
    			<td>패스워드</td>
    			<td><input type="text" name="mpw" required="required"></td>    			
    		</tr>
    		<tr>
    			<td>이름</td>
    			<td><input type="text" name="mname" required="required"></td>    			
    		</tr>
    		<tr>
    			<td colspan="2" align="right"> <input type="submit" value="회원가입"></td>
    		</tr>
    	</table>
    	
    </form>
    <a href="login.jsp">로그인페이지</a>
</body>
</html>
<%@page import="kr.co.member.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="icon" type="image/png" sizes="16x16"
	href="/favicons/favicon-16x16.png">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="theme-color" content="#ffffff">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>마이페이지(회원정보상세페이지)</title>
</head>
<body>
	<form action="mupdate.do" method="post">
		<table border="1">
			<tr>
				<td>아이디</td>
				<!-- 세션값을 빼올때는 sessionScope.세션이름.세션에있는값 으로 작성하면된다 -->
				<td><input type="text" name="mid" value="${sessionScope.data.mid}"
					readonly="readonly"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="mpw" placeholder="변경할비밀번호입력"
					required="required"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="mname" value="${sessionScope.data.mname}"
					readonly="readonly"></td>
			</tr>
			<tr>
				<td><input type="submit" value="비밀번호변경"></td>
			</tr>
		</table>
	</form>
	<a href="main.do">메인화면</a>
	<a href="mdelete.do?mid=${sessionScope.data.mid}">회원탈퇴</a>
</body>
</html>
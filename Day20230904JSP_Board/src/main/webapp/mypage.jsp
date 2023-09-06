<%@page import="kr.co.member.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    MemberVO vo = (MemberVO)session.getAttribute("data");
    %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이페이지(회원정보상세페이지)</title>
</head>
<body>
    <form action="mupdate.do" method="post">
    	<table border="1">
    		<tr>
    			<td>아이디</td>
    			<td><input type="text" name="mid" value="<%=vo.getMid() %>" readonly="readonly"></td>
    		</tr>
    		<tr>
    			<td>비밀번호</td>
    			<td><input type="password" name="mpw" placeholder="변경할비밀번호입력" required="required"></td>
    		</tr>
    		<tr>
    			<td>이름</td>
    			<td><input type="text" name="mname" value="<%=vo.getMname() %>" readonly="readonly"></td>
    		</tr>
    		<tr>
    			<td><input type="submit" value="비밀번호변경"></td>
    		</tr>
    	</table>
    </form>
    <a href="main.do">메인화면</a>
    <a href="mdelete.do?mid=<%=vo.getMid()%>">회원탈퇴</a>
</body>
</html>
<%@page import="kr.co.board.BoardVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>게시판전체출력페이지</title>
</head>
<body>
	<%
	ArrayList<BoardVO> datas = (ArrayList<BoardVO>) request.getAttribute("data");
	%>
	<h1>게시판페이지</h1>
	<table border="1">
		<tr>
			<th>글번호</th>
			<th>글작성자</th>
			<th>작성일</th>
		</tr>
		<%
		for (int i = 0; i < datas.size(); i++) {
			BoardVO vo = datas.get(i);
		%>
		<tr>
			<td><a href="board.do?bid=<%=vo.getBid()%>" /><%=vo.getBid()%></td>
			<td><%=vo.getWriter()%></td>
			<td><%=vo.getRegdate()%></td>
		</tr>
		<%
		}
		%>
	</table>
	<%if (request.getSession(false).getAttribute("check") == null || !request.isRequestedSessionIdValid()) { %>
	<a href="login.do">로그인</a>
	<%} else { %>
	<a href="insert.jsp">글작성</a>
	<a href="logout.do">로그아웃</a>
	<a href="mypage.do">마이페이지</a>
	<%} %>
</body>
</html>
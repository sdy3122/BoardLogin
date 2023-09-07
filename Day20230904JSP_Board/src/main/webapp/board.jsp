<%@page import="kr.co.board.BoardVO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>게시판상세페이지</title>
</head>
<body>
<form action="boardupdate.do" method="post">
  <table border="1">
  <thead>
  	<tr>
  		<th>글번호</th>
  		<th>작성자</th>
  		<th>내용</th>
  		<th>작성일</th>
  	</tr>
  	</thead>
  	<tbody>
  	<tr>
  	<td><input type="text" name="bid" value="${dyoung.bid }" readonly="readonly"></td>
  	<td><input type="text" name="writer" value="${dyoung.writer }" required="required"></td>
  	<td><input type="text" name="content" value="${dyoung.content }" required="required"></td>
  	<td><input type="text" name="regdate" value="${dyoung.regdate }" readonly="readonly"></td>
  	</tr>
  	<tr>
  	<c:if test="${!empty check}">
  	<td colspan="4" align="right"><input type="submit" value="게시글내용변경하기"></td>
  	</c:if>
  	<%-- <%if (request.getSession(false) != null) {
  		if (request.getSession(false).getAttribute("check") != null){%>
		<td colspan="4" align="right"><input type="submit" value="게시글내용변경하기"></td>
	<%}} %> --%>
  	</tr>
  	</tbody>
  </table>  
  </form>
  <a href="main.do">메인화면</a>
</body>
</html>
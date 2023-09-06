<%@page import="kr.co.board.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	BoardVO vo = new BoardVO();
    	vo = (BoardVO)request.getAttribute("data");
    %>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>게시판상세페이지</title>
    <style type="text/css">
    #first{
    	width:10px;
    }
    </style>
</head>
<body>
<form action="boardupdate.do" method="post">
  <table border="1">
  <thead>
  	<tr>
  		<th id='first'>글번호</th>
  		<th>작성자</th>
  		<th>내용</th>
  		<th>작성일</th>
  	</tr>
  	</thead>
  	<tbody>
  	<tr>
  	<td><input type="text" name="bid" value="<%=vo.getBid() %>" readonly="readonly"></td>
  	<td><input type="text" name="writer" value="<%=vo.getWriter() %>" required="required"></td>
  	<td><input type="text" name="content" value="<%=vo.getContent() %>" required="required"></td>
  	<td><input type="text" name="regdate" value="<%=vo.getRegdate() %>" readonly="readonly"></td>
  	</tr>
  	<tr>
  	<%if (request.getSession(false) != null) {
  		if (request.getSession(false).getAttribute("check") != null){%>
		<td colspan="4" align="right"><input type="submit" value="게시글내용변경하기"></td>
	<%}} %>
  	</tr>
  	</tbody>
  </table>  
  </form>
  <a href="main.do">메인화면</a>
</body>
</html>
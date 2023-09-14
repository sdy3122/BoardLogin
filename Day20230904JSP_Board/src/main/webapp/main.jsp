<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<script type="text/javascript">
	function check(bid) {
		checkBid = prompt('상세페이지로 이동하기 위해 번호를 입력하세요');
		location.href = "board.do?bid=" + checkBid;
	}
</script>
<style type="text/css">
#bMargin{
position:absolute;
top : 0px;
left : 20px;
margin-bottom: 10px;
}
b{
color:#f5a8b6;
}
table{
position:relative;
}
a{
color : green;
text-decoration: none;
}
</style>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>게시판전체출력페이지</title>
</head>
<body>
	<!-- 어차피 action클래스에서 arraylist생성후 'data'에 담아서 만들필요없음 -->
	<%-- <jsp:useBean id="datas" class="java.util.ArrayList" scope="request"></jsp:useBean> --%>
	<%-- <%
	ArrayList<BoardVO> datas = (ArrayList<BoardVO>) request.getAttribute("data");
	%> --%>
	<h1>게시판페이지</h1>
	<c:if test="${!empty check}">
	<div id="bMargin">
	<b>${sessionScope.data.mname}님 환영합니다</b>
	</div>
	</c:if>
	<table border="1">
		<tr>
			<th>글번호</th>
			<th>글작성자</th>
			<th>작성일</th>
		</tr>
		<c:forEach var="sdy" items="${dyoung}">
			<%-- <%
		for (int i = 0; i < datas.size(); i++) {
			BoardVO vo = datas.get(i);
		%> --%>
			<tr>
				<td align="center"><a href="board.do?bid=${sdy.bid}">${sdy.bid}</a></td>
				<td>${sdy.writer}</td>
				<td>${sdy.regdate}</td>
			</tr>
		</c:forEach>

	</table>
	<!-- JSTL의 if, else if 문 -->
	<c:choose>
		<c:when test="${empty check}">
			<br>
			<a href="javascript:check(${sdy.bid})">게시판상세페이지</a>
			<a href="login.do">로그인</a>
		</c:when>
		<c:otherwise>
			<br>
			<a href="javascript:check(${sdy.bid})">게시판상세페이지</a>
			<a href="insert.jsp">글작성</a>
			<a href="logout.do">로그아웃</a>
			<a href="mypage.do">마이페이지</a>
		</c:otherwise>
	</c:choose>
	<%-- <%
	if (request.getSession(false).getAttribute("check") == null || !request.isRequestedSessionIdValid()) {
	%>
	<a href="javascript:check(${sdy.bid})">게시판상세페이지</a>
	<a href="login.do">로그인</a>
	<%
	} else {
	%>
	<a href="javascript:check(${sdy.bid})">게시판상세페이지</a>
	<a href="insert.jsp">글작성</a>
	<a href="logout.do">로그아웃</a>
	<a href="mypage.do">마이페이지</a>
	<%
	}
	%> --%>
</body>
</html>
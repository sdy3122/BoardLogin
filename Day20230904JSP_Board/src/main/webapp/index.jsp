<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>시작페이지</title>
</head>
<body>
  <%
  		//DB에 처음 방문할수 있도록 요청
  		
  		//페이지 이동에서도 값을 유지 ->forward요청
  		
  		pageContext.forward("main.do");
  		
  		//Controller에서 사용자의 요청을 분기처리하기위해 action의 파라미터를 사용할 예정!!!!!
  %>  
</body>
</html>
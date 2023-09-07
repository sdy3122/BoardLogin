<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>에러발생</title>
</head>
<body>
  <h1>죄송 에러뜸</h1>
  에러타입 <%=exception.getClass().getName() %><br>
  에러 메시지 <%= exception.getMessage() %>
</body>
</html>
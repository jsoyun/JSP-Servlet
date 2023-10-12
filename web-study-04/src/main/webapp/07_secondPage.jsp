<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
하나의페이지 속성:
<%=pageContext.getAttribute("name")%> <br>
<%= request.getAttribute("name") %> <br>
<%=session.getAttribute("name") %> <br>
<%= application.getAttribute("name") %>
<a href = "07_thirdPage.jsp">또다른 페이</a>

</body>
</html>
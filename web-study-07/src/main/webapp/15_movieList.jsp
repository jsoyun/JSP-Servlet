<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String[] movieList ={"해리포터","나니아 연대기","타이타닉","킹콩"};
pageContext.setAttribute("movieListname", movieList);
%>

<table border="1" style="width:100%; text-align: center;">
<tr>
<th>index</th> <th>count</th> <th>movie</th>
</tr>
<c:forEach var="movie" items="${movieListname}" varStatus="status">
<tr>
<td>${status.index}</td>
<td>${status.count}</td>
<td>${movie}</td>
</tr>
</c:forEach>



</table>

</body>
</html>
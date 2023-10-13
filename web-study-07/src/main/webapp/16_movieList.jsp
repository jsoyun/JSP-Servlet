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
<ul>
<c:forEach var= "movie" items="${movieListname}" varStatus="status">
<c:choose>
<c:when test="${status.first}}">
<li style="font-weight: bold; color:red;">${movie}</li>
</c:when>
<c:otherwise>
<li>${movie}</li>
</c:otherwise>
</c:choose>

</c:forEach>
</ul>

<c:forEach var= "movie" items="${movieListname}" varStatus="status">
${movie}

<c:if test="${not status.first}}">,</c:if>


</c:forEach>

</body>
</html>
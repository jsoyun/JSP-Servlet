<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix ="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="msg" value="hello"> </c:set>
\${msg} = ${msg} <br>
<c:set var="age">
30</c:set>
<c:set var="member" value="<%= new com.saeyan.javabeans.MemberBean() %>"></c:set>
<c:set target="${member}" property="name" value="유리유리윤윤"></c:set>
<c:set target="${member}" property="userid" value="parkpark"></c:set>
\${member} = ${member}<hr>

<c:set var="add" value="${10+5}"></c:set>
\${add} = ${add}<hr>
<c:set var="flag" value="${10 > 5}"></c:set>
\${flag} = ${flag}<hr>



</body>
</html>
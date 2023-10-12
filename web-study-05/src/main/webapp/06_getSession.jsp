<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>세션에 설정된 모든 값 얻어오기</h3>
<%
Enumeration names = session.getAttributeNames();
while(names.hasMoreElements()){
	String name = names.nextElement().toString();
	String value= session.getAttribute(name).toString();
	out.println(name+ ":"+ value + "<br>");
}

out.println("세션ID"+session.getId());
out.println("세션 유지시간"+session.getMaxInactiveInterval());
out.println("새 새션이니?"+session.isNew());
%>

</body>
</html>
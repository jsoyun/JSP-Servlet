<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>세션 정보를 얻어오는 메소드를 사용하기 </h3>
<%
String id_str = session.getId();
long lastTime = session.getLastAccessedTime();
long createdtime = session.getCreationTime();
long time_used = (lastTime - createdtime) / 60000;
int inactive = session.getMaxInactiveInterval() /60;
boolean b_new = session.isNew();

%>

[1] 세션 ID는  [ <%= session.getId() %>] 입니다. <br><hr> 
[2] 너가 웹사이트에 머문 시간<%=time_used %>
[3] 세션의 유효시간은 <%=inactive %>
[4] 세션이 새로 만들어 졌니?? <%=b_new %>
 

</body>
</html>
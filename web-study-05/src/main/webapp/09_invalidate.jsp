<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "java.util.Enumeration"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
session.setAttribute("s_name1" ,"저는 세션에 첫번째 값임다 ");
session.setAttribute("s_name2" ,"저는 세션에 두번째 값임다 ");
session.setAttribute("s_name3" ,"저는 세션에 세번째 값임다 ");

out.print(" <h3>세션값을 삭제하기 전</h3>");
Enumeration names;
names= session.getAttributeNames();
while(names.hasMoreElements()){
	String name = names.nextElement().toString();
	String value= session.getAttribute(name).toString();
	out.println(name+ ":" + value+"<br>");
	
}

//설정된 세션의 값들을 모두 사라지게 
session.invalidate();

out.print("<hr> <h3>세션값을 삭제한 후</h3> ");
out.print("Q: 과연 세션 아이디가 유효할까?");
if(request.isRequestedSessionIdValid()== true){
	out.print("세션아이디 유효해 ");
} else 	out.print("세션끝  ");

%>

</body>
</html>
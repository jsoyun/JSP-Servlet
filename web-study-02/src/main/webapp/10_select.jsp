<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SelectSevlet</title>
</head>
<body>
<form method="get" action="SelectSevlet">
<label for="job"> 직업</label>
<select id= "job" name ="job" size ="1">
<option value ="">선택하세요  </option>
<option value ="학생">학생 </option>
<option value ="컴퓨터">컴퓨터  </option>
<option value ="컴퓨터">컴퓨터  </option>
<option value ="컴퓨터">컴퓨터  </option>
<option value ="컴퓨터">컴퓨터  </option>
<option value ="컴퓨터">컴퓨터  </option>
</select>
</span>


<label for="interest" style="float:right;"> 관심분야</label>
<select id= "interest" name ="interest" size ="3" multiple="multiple">
<option value ="">선택하세요  </option>
<option value ="에스프레소">에스프레소 </option>
<option value ="생두">생두  </option>
<option value ="생두1">생두1  </option>
<option value ="생두2">생두 2 </option>
<option value ="생두3">생두  3</option>
<option value ="생두4">생두  4</option>


</select>


<input type="submit" value ="전송" style="float:right; margin-right:50px">
</form>


</select>

</body>
</html>
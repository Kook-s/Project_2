<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../js/jquery.serializejson.min.js" type="text/javascript"></script>
<script src="../js/jquery-3.6.4.min.js" type="text/javaScript"></script>

</head>
<body>
<form action="<%=request.getContextPath()%>/email.do">
<h3>여기에 메일 보내는 사람의 아이디 가져와서 넣기 </h3>
<h3>로그인 만들어 지면 아이디 입력이 아니라 자동 입력</h3>
id<input type ="text" name="id"><br>
sender<input type ="text" name="sender"><br>
title<input type ="text" name="title"><br>
content<input type ="text" name="content"><br>
date<input type ="text" name="date"><br>
<input type="submit" id="btn">
</form>

 
</body>
</html>
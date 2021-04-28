<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String name = "홍길동";
	pageContext.setAttribute("name", "A");
	session.setAttribute("name", "B");
	request.setAttribute("name", "C");
	application.setAttribute("name", "D");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>detail</title>
</head>
<body>
	<div>쿼리스트링 : ${param.no}, ${param.age}</div>
	<!--age는 값을 넣지 않았기 때문에 값이 출력되지 않는다.   -->
	<div>내장객체 : ${name}</div>
	<!-- A가 가장 먼저 출력된다.  -->
	<div>------------------------------</div>
	<form action="/del" method="post">
		<input type="hidden" name="no" value="${param.no}">
		<input type="submit" value="삭제">
	</form>
	<a href="/mod?no=${param.no}"><button>수정</button></a>
	<div>제목 : ${data.title}</div>
	<div>${data.ctnt}</div>
</body>
</html>
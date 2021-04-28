<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리스트</title>
</head>
<body>
	<a href="/write">글쓰기</a>
	<h1>list</h1>
	<div>
		<c:forEach var="i" begin="0" end="10">
			<span>${i}</span> <!-- pageContext(jsp파일만 응답)에 setAttribute로 값이 넣어져있다.-->
		</c:forEach>
	</div>
	
	<table>
		<tr>
			<td>no</td>
			<td>제목</td>
		</tr>
		
		<c:forEach var="item" items="${list}" varStatus="status">
		<tr>
			<td>${status.index}</td>
			<td><a href="/detail?no=${status.index}">${item.title}</a></td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>
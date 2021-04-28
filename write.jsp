<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>write</title>
</head>
<body>
	<h1>글쓰기</h1>
	<div><a href="/list">돌아가기</a></div>
	<div>
		<form action="/write" method="post">
			<div>
				제목 : <input type="text" name="title">
			</div>
			<div>
				내용 : <textarea name="ctnt"></textarea>
			</div>
			<div>
				<input type="submit" value="등록">
				<input type="reset" value="초기화">
			</div>	
		</form>
	</div>

</body>
</html>
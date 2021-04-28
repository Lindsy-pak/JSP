<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정</title>
</head>
<body>
	<h1>글 수정하기</h1>
	<div><a href="/list">돌아가기</a></div>
	<div>
		<form action="/mod" method="post">
			<div><input type="hidden" name="no" value="${param.no}"></div>
			<div>
				제목 : <input type="text" name="title" value="${data.title}">
			</div>
			<div>
				내용 : <textarea name="ctnt">${data.ctnt}</textarea>
			</div>
			<div>
				<input type="submit" value="수정">
				<input type="reset" value="초기화">
			</div>	
		</form>
	</div>
</body>
</html>
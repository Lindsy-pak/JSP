<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- jstl문법을 사용할수있다 url에 컨트롤 스페이스 core  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List</title>
<style>
* {
	margin: 0;
	padding: 0;
}

table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}

.record {
	cursor: pointer;
}

.record:hover {
	background-color: #ecf0f1;
}

#container {
	margin-top: 50px;
	display: flex;
	text-align: center;
	align-contents: center;
	justify-contents: center;
	flex-direction:column;
}
</style>
</head>
<body>
	<div id="container">
		<div>
			<a href="/write">글쓰기</a>
		</div>
		<div>리스트</div>
		<div>
			<table>
				<tr>
					<td>no</td>
					<td>제목</td>
					<td>작성일</td>
				</tr>
				<!-- 반복할 필요는 없는 테이블이기 때문에 forEach문 밖에 있다  -->

				<c:forEach items="${list}" var="item">
					<tr class="record" onclick="moveToDetail(${item.iboard})">
						<td>${item.iboard}</td>
						<td>${item.title}</td>
						<td>${item.regdt}</td>
				</c:forEach>
			</table>
		</div>
	</div>
	<script>
		function moveToDetail(iboard) {
			//console.log('iboard : %d', iboard);
			location.href='/detail?iboard=' + iboard;
			<!-- 기존에는 a태그로 들어갔다면 이번에는 리스트에 어딜 누르든 디테일로 이동-->
		}
	</script>
</body>
</html>
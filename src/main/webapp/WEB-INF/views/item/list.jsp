<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<title>Iruda WMS - 상품 목록</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="/js/delete.js"></script>
</head>
<body class="container mt-5">
	<h2 class="mb-4">📋 재고 목록</h2>
	<a href="/items/new" class="btn btn-success mb-3">+ 새 재고 등록</a>
	<table class="table table-striped">
		<thead>
			<tr>
				<th>이름</th>
				<th>수량</th>
				<th>위치</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="item" items="${items}">
				<tr>
					<td>${item.name}</td>
					<td>${item.quantity}</td>
					<td>${item.location}</td>
					<td><a href="/items/${item.id}/edit">수정</a></td>
					<td>
						<form id="deleteForm_${item.id}" action="/items/${item.id}/delete"
							method="post" style="display: inline;">
							<button type="button" class="btn btn-danger"
								onclick="confirmDelete(${item.id})">삭제</button>
						</form>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Iruda WMS - 상품 등록/수정</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container mt-5">
    <h2 class="mb-4">📦 재고 ${item.id == null ? "등록" : "수정"}</h2>

    <form action="/items" method="post">
        <c:if test="${item.id != null}">
            <input type="hidden" name="id" value="${item.id}" />
        </c:if>

        <div class="mb-3">
            <label for="name" class="form-label">이름</label>
            <input type="text" id="name" name="name" class="form-control" value="${item.name}" required />
        </div>

        <div class="mb-3">
            <label for="quantity" class="form-label">수량</label>
            <input type="number" id="quantity" name="quantity" class="form-control" value="${item.quantity}" required />
        </div>

        <div class="mb-3">
            <label for="location" class="form-label">위치</label>
            <input type="text" id="location" name="location" class="form-control" value="${item.location}" required />
        </div>

        <button type="submit" class="btn btn-primary">저장</button>
        <a href="/items" class="btn btn-secondary">목록으로</a>
    </form>
</body>

</html>

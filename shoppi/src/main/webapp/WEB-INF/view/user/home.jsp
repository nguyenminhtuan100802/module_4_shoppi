<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Product List</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f4f4f4;
        }
        tr:hover {
            background-color: #f9f9f9;
        }
    </style>
</head>
<body>
<h1>Product List</h1>
<!-- Form tìm kiếm -->
<form action="/products" method="get">
    <input
            type="text"
            name="search"
            placeholder="Enter product name..."
            value="${search}" />
    <button type="submit">Search</button>
</form>

<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Description</th>
        <th>Price</th>
        <th>Quantity</th>
        <th>Sold</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="product" items="${products}">
        <tr>
            <td>${product.id}</td>
            <td>${product.name}</td>
            <td>${product.description}</td>
            <td>${product.price}</td>
            <td>${product.quantity}</td>
            <td>${product.sold}</td>
            <td>
                <form action="/cart/add" method="post">
                    <input type="hidden" name="productId" value="${product.id}" />
                    <button type="submit">Add to Cart</button>
                </form>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<br>
<!-- Link tới trang giỏ hàng -->
<a href="/cart">Go to Cart</a>
</body>
</html>

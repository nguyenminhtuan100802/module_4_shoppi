<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin - Product Management</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .table-container {
            margin: 30px auto;
            padding: 20px;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color: #ff5722;
            font-weight: bold;
        }
        .btn-shopee {
            background-color: #ff5722;
            color: white;
            border: none;
        }
        .btn-shopee:hover {
            background-color: #e64a19;
        }
        .table th {
            background-color: #ff5722;
            color: white;
        }
        .actions a {
            margin-right: 10px;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="table-container">
        <h1>Product Management</h1>
        <div class="mb-3">
            <a href="/admin/home/add" class="btn btn-shopee">Add New Product</a>
        </div>
        <table class="table table-bordered table-hover">
            <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Description</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Sold</th>
                <th>Actions</th>
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
                    <td class="actions">
                        <a href="/admin/home/edit/${product.id}" class="btn btn-sm btn-warning">Edit</a>
                        <a href="/admin/home/delete/${product.id}"
                           class="btn btn-sm btn-danger"
                           onclick="return confirm('Are you sure?')">Delete</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

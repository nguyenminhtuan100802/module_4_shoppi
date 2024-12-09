<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Product</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
        }
        .container {
            margin-top: 50px;
        }
        h1 {
            color: #ff5722;
            font-weight: bold;
        }
        .form-container {
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .form-control {
            margin-bottom: 15px;
        }
        .btn-primary {
            background-color: #ff5722;
            color: white;
            border: none;
        }
        .btn-primary:hover {
            background-color: #e64a19;
        }
        .btn-secondary {
            margin-top: 15px;
            text-decoration: none;
        }
        /* Style to align buttons on the same row and space them */
        .button-container {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        .button-container a,
        .button-container button {
            width: 20%; /* Ensures both buttons are of the same width */
        }

    </style>
</head>
<body>

<div class="container">
    <div class="form-container">
        <h1>Edit Product</h1>
        <form action="/admin/home/edit" method="post">
            <input type="hidden" name="id" value="${product.id}">

            <div class="mb-3">
                <label for="name" class="form-label">Name:</label>
                <input type="text" id="name" name="name" class="form-control" value="${product.name}" required>
            </div>

            <div class="mb-3">
                <label for="description" class="form-label">Description:</label>
                <textarea id="description" name="description" class="form-control" required>${product.description}</textarea>
            </div>

            <div class="mb-3">
                <label for="price" class="form-label">Price:</label>
                <input type="number" step="0.01" id="price" name="price" class="form-control" value="${product.price}" required>
            </div>

            <div class="mb-3">
                <label for="quantity" class="form-label">Quantity:</label>
                <input type="number" id="quantity" name="quantity" class="form-control" value="${product.quantity}" required>
            </div>

            <div class="mb-3">
                <label for="sold" class="form-label">Sold:</label>
                <input type="number" id="sold" name="sold" class="form-control" value="${product.sold}" readonly>
            </div>

            <!-- Button Container -->
            <div class="button-container">
                <button type="submit" class="btn btn-primary">Update</button>
                <a href="/admin/home" class="btn btn-secondary">Cancel</a>
            </div>
        </form>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

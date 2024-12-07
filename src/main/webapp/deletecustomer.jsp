<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Student</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        body {
            background-color: #f7f7f7;
            font-family: Arial, sans-serif;
            color: #333;
        }

        h3 {
            text-align: center;
            font-size: 2em;
            color: #4CAF50;
            margin-top: 50px;
            font-weight: bold;
            text-shadow: 1px 1px 5px rgba(0, 0, 0, 0.1);
        }

        table {
            margin: 30px auto;
            width: 90%;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        th, td {
            text-align: center;
            padding: 12px;
        }

        th {
            background-color: #4CAF50;
            color: white;
            font-size: 1.2em;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #e0f7fa;
        }

        .btn-danger {
            color: white;
            background-color: #f44336;
            border: none;
            padding: 5px 10px;
            border-radius: 5px;
            text-decoration: none;
        }

        .btn-danger:hover {
            background-color: #d32f2f;
        }
    </style>

    <script>
        // Confirm before deleting
        function confirmDelete() {
            return confirm("Are you sure you want to delete this student?");
        }
    </script>
</head>
<body>

    <%@ include file="adminnavbar.jsp" %><br/>
    <h3>Delete Student</h3>
    
    <table class="table table-striped">
        <thead>
            <tr>
                <th>ID</th>
                <th>NAME</th>
                <th>GENDER</th>
                <th>DATE OF BIRTH</th>
                <th>EMAIL</th>
                <th>LOCATION</th>
                <th>CONTACT NO</th>
                <th>ACTION</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${customerlist}" var="customer">
                <tr>
                    <td><c:out value="${customer.id}"></c:out></td>
                    <td><c:out value="${customer.name}"></c:out></td>
                    <td><c:out value="${customer.gender}"></c:out></td>
                    <td><c:out value="${customer.dateofbirth}"></c:out></td>
                    <td><c:out value="${customer.email}"></c:out></td>
                    <td><c:out value="${customer.location}"></c:out></td>
                    <td><c:out value="${customer.contact}"></c:out></td>
                    <td>
                        <a href="<c:url value='delete?id=${customer.id}'></c:url>" class="btn btn-danger" onclick="return confirmDelete();">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

</body>
</html>

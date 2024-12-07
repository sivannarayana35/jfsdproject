<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Students</title>
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

        .container {
            padding: 20px;
        }
    </style>
</head>
<body>

    <%@ include file="adminnavbar.jsp" %>

    <div class="container">
        <h3>View All Students</h3>
        <p>Total Students: <c:out value="${count}"></c:out></p>

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
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        
        <button type="submit" style="background-color: #4CAF50; color: black; border: none; padding: 10px 20px; border-radius: 3px;">
    <a href="deletecustomer" style="color: white; font-size: 1.2em; text-decoration: none;">delete student</a>
</button>
    </div>

</body>
</html>

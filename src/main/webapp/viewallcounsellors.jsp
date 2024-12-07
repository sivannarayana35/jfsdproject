<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Counsellors</title>
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

        .btn {
            background-color: #4CAF50;
            color: white;
            font-size: 1.2em;
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 3px;
        }

        .btn:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

    <%@ include file="adminnavbar.jsp" %>

    <div class="container">
        <h3>View All Counsellors</h3>
        <p>Total Counsellors: <c:out value="${count}"></c:out></p>

        <table class="table table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Full Name</th>
                    <th>Contact No</th>
                    <th>Email</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${counsellorList}" var="counsellor">
                    <tr>
                        <td><c:out value="${counsellor.id}"></c:out></td>
                        <td><c:out value="${counsellor.fullName}"></c:out></td>
                        <td><c:out value="${counsellor.contactno}"></c:out></td>
                        <td><c:out value="${counsellor.email}"></c:out></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        
    </div>

</body>
</html>

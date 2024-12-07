<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        body {
            background: url('https://www.shutterstock.com/image-photo/career-businessman-on-blurred-abstract-260nw-1152345887.jpg') no-repeat center center fixed;
            background-size: cover;
            font-family: Arial, sans-serif;
            color: #f0f0f0;
        }

        .container {
            background: rgba(255, 255, 255, 0.8);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.5);
            max-width: 500px;
            margin-top: 50px;
            text-align: center;
        }

        h2 {
            font-size: 2.5em;
            color: #333;
        }

        .count {
            font-size: 2em;
            font-weight: bold;
            color: #28a745;
        }
    </style>
</head>
<body>

<%@ include file="adminnavbar.jsp" %>

<div class="container">
    <h2>Welcome to the Admin Dashboard</h2>
    <p>Total Student: <span class="count"><c:out value="${count}"></c:out></span></p>
</div>

</body>
</html>

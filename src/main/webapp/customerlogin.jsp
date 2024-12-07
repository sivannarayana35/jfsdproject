<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Login</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        body {
            background: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZxe9g1iyHvA8qVFY_wz2Lp1nA5IqG8dJjFw&amp;s') no-repeat center center fixed;
            background-size: cover;
            font-family: Arial, sans-serif;
            color: #f0f0f0;
        }

        .container {
            background: rgba(255, 255, 255, 0.8);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.5);
            max-width: 400px;
            margin-top: 50px;
        }

        h3, h4 {
            text-align: center;
        }

        .form-control {
            margin-bottom: 15px;
        }

        .btn {
            width: 100%;
            padding: 12px;
        }

        h4 {
            color: red;
        }
    </style>
</head>
<body>

<%@ include file="mainnavbar.jsp" %>

<h4 align="center" style="color:red">
    <c:out value="${message}"></c:out><br/>
</h4>

<h3 align="center">Student Login Form</h3>

<div class="container">
    <form method="post" action="checkcustomerlogin">

        <div class="form-group">
            <label for="cemail">Enter Email</label>
            <input type="text" class="form-control" name="cemail" id="cemail" required />
        </div>

        <div class="form-group">
            <label for="cpwd">Enter Password</label>
            <input type="password" name="cpwd" class="form-control" id="cpwd" required />
        </div>

        <div class="form-group">
            <input type="submit" value="Login" class="btn btn-success"/>
        </div>

        <div class="form-group">
            <input type="reset" value="Clear" class="btn btn-danger"/>
        </div>

    </form>
</div>

</body>
</html>

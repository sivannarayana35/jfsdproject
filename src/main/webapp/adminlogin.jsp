<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Login</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        body {
            background: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlFv_womOxxMZC7YSW1QIEWRdE94EaHle1XQ&amp;s') no-repeat center center fixed;
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

        h3 {
            text-align: center;
            color: #333;
        }

        .form-control {
            margin-bottom: 15px;
        }

        .btn {
            width: 100%;
            padding: 12px;
        }
    </style>
</head>
<body>

<%@ include file="mainnavbar.jsp" %>

<h3 align="center">Admin Login Form</h3>

<div class="container">
    <form method="post" action="checkadminlogin">

        <div class="form-group">
            <label for="auname">Enter Username</label>
            <input type="text" class="form-control" name="auname" id="auname" required />
        </div>

        <div class="form-group">
            <label for="apwd">Enter Password</label>
            <input type="password" name="apwd" class="form-control" id="apwd" required />
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

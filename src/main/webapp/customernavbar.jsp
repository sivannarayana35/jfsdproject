<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title>Career Guidance and Counseling</title>
    <style>
        body {
            background-color: #f4f6f9; /* Light grey background */
            font-family: Arial, sans-serif;
        }

        h2 {
            color: #2c3e50; /* Dark blue-grey color */
            margin-top: 30px;
        }

        .nav-links {
            text-align: center;
            margin-top: 20px;
        }

        .nav-links a {
            text-decoration: none;
            font-size: 18px;
            color: #007bff; /* Blue color */
            margin: 10px;
            padding: 10px;
            border-radius: 5px;
            background-color: #ffffff;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        .nav-links a:hover {
            background-color: #007bff; /* Blue color background on hover */
            color: #ffffff; /* White text on hover */
            text-decoration: underline;
        }

        .nav-links a:active {
            background-color: #0056b3; /* Darker blue when clicked */
        }
    </style>
</head>
<body>
    <h2 align="center">Career Guidance and Counseling</h2>
    
    <div class="nav-links">
        <a href="customerhome">Home</a>&nbsp;&nbsp;
        <a href="customerprofile">Student Profile</a>&nbsp;&nbsp;
        <a href="AppointmentScheduling">Appointment</a>&nbsp;&nbsp;
        <a href="updateprofile">Update Profile</a>&nbsp;&nbsp;
        <a href="customerlogout">Logout</a>
    </div>
</body>
</html>

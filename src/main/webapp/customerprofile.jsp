<%@page import="com.example.demo.model.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
Customer c = (Customer)session.getAttribute("customer");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Home</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://png.pngtree.com/thumb_back/fh260/background/20210902/pngtree-blue-cram-school-border-summer-training-course-image_789185.jpg'); /* Replace with your image URL */
            background-size: cover;
            background-position: center center;
            background-attachment: fixed; /* Keeps the background fixed when scrolling */
            margin: 0;
            padding: 0;
        }

        .container {
            margin-top: 50px;
            background-color: rgba(255, 255, 255, 0.9); /* White background with slight transparency */
            padding: 20px;
            border-radius: 10px; /* Rounded corners */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Subtle shadow effect */
            width: 80%;
            margin-left: auto;
            margin-right: auto;
        }

        h3 {
            text-align: center;
            color: #2c3e50; /* Dark text for the title */
        }

        .profile-info {
            margin-top: 20px;
            font-size: 18px;
            line-height: 1.8;
            color: #333; /* Dark text for readability */
        }

        .profile-info span {
            font-weight: bold; /* Make the labels bold */
        }

        .btn-back {
            display: block;
            width: 100px;
            margin: 20px auto;
            padding: 10px;
            background-color: #3498db;
            color: white;
            border: none;
            border-radius: 5px;
            text-align: center;
            cursor: pointer;
        }

        .btn-back:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>

<%@include file="customernavbar.jsp" %>

<div class="container">
    <h3>My Profile</h3>
    <div class="profile-info">
        <p><span>ID:</span> <%=c.getId()%></p>
        <p><span>Name:</span> <%=c.getName()%></p>
        <p><span>Gender:</span> <%=c.getGender()%></p>
        <p><span>DOB:</span> <%=c.getDateofbirth()%></p>
        <p><span>Email:</span> <%=c.getEmail()%></p>
        <p><span>Location:</span> <%=c.getLocation()%></p>
        <p><span>Contact:</span> <%=c.getContact()%></p>
    </div>
    <a href="customerhome" class="btn-back">Back</a>
</div>

</body>
</html>

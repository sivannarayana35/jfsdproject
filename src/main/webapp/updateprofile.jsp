<%@page import="com.example.demo.model.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
Customer c = (Customer)session.getAttribute("customer");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Profile</title>
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
            height: 100vh; /* Full height for the page */
        }

        .container {
            margin-top: 50px;
            background-color: rgba(255, 255, 255, 0.9); /* White background with slight transparency */
            padding: 30px;
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

        .form-control {
            margin-bottom: 10px;
        }

        .btn {
            width: 100%;
            padding: 10px;
            margin-top: 20px;
            font-size: 18px;
        }

        .btn-success {
            background-color: #3498db;
            color: white;
            border: none;
        }

        .btn-success:hover {
            background-color: #2980b9;
        }

        .btn-danger {
            background-color: #e74c3c;
            color: white;
            border: none;
        }

        .btn-danger:hover {
            background-color: #c0392b;
        }
    </style>
</head>
<body>

<%@include file="customernavbar.jsp" %>

<div class="container">
    <h3>Update Profile</h3>
    <form method="post" action="update">
        <div class="form-group">
            <label for="cid">ID</label>
            <input type="number" class="form-control" name="cid" value="<%=c.getId()%>" readonly required />
        </div>

        <div class="form-group">
            <label for="cname">Enter Name</label>
            <input type="text" class="form-control" name="cname" value="<%=c.getName()%>" required />
        </div>

        <div class="form-group">
            <label for="cgender">Enter Gender</label><br/>
            <input type="radio" name="cgender" class="form-check-input" value="Male" <%=c.getGender().equals("Male") ? "checked" : ""%> required /> Male
            <input type="radio" name="cgender" class="form-check-input" value="Female" <%=c.getGender().equals("Female") ? "checked" : ""%> required /> Female
            <input type="radio" name="cgender" class="form-check-input" value="Others" <%=c.getGender().equals("Others") ? "checked" : ""%> required /> Others
        </div>

        <div class="form-group">
            <label for="cdob">Enter Date of Birth</label>
            <input type="date" name="cdob" class="form-control" value="<%=c.getDateofbirth()%>" required />
        </div>

        <div class="form-group">
            <label for="cemail">Enter Email ID</label>
            <input type="email" name="cemail" class="form-control" value="<%=c.getEmail()%>" readonly required />
        </div>

        <div class="form-group">
            <label for="cpwd">Enter Password</label>
            <input type="password" name="cpwd" class="form-control" value="<%=c.getPassword()%>" required />
        </div>

        <div class="form-group">
            <label for="clocation">Enter Location</label>
            <input type="text" name="clocation" class="form-control" value="<%=c.getLocation()%>" required />
        </div>

        <div class="form-group">
            <label for="ccontact">Enter Contact</label>
            <input type="number" name="ccontact" class="form-control" value="<%=c.getContact()%>" required />
        </div>

        <div class="form-group">
            <input type="submit" value="Update" class="btn btn-success" />
            <input type="reset" value="Clear" class="btn btn-danger" />
        </div>
    </form>
</div>

</body>
</html>

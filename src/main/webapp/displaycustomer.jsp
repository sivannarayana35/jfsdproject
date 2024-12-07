<%@ page import="com.example.demo.model.Customer" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Display Student</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff;
            color: #333;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-top: 30px;
        }

        h3 {
            text-align: center;
            color: #007BFF;
            font-size: 2em;
        }

        .profile-details {
            font-size: 1.2em;
            margin: 20px 0;
        }

        .profile-details p {
            margin: 8px 0;
        }

        .profile-details label {
            font-weight: bold;
        }

        .profile-details span {
            color: #555;
        }

        .back-link {
            display: block;
            text-align: center;
            margin-top: 20px;
            font-size: 1.2em;
        }

        .back-link a {
            text-decoration: none;
            color: #28a745;
            font-weight: bold;
        }

        .back-link a:hover {
            color: #218838;
        }
    </style>
</head>
<body>
    <%@ include file="adminnavbar.jsp" %>
    
    <div class="container">
        <h3>Student Profile</h3>

        <div class="profile-details">
            <p><label>ID:</label> <span><c:out value="${c.id}"></c:out></span></p>
            <p><label>Name:</label> <span><c:out value="${c.name}"></c:out></span></p>
            <p><label>Gender:</label> <span><c:out value="${c.gender}"></c:out></span></p>
            <p><label>Date of Birth:</label> <span><c:out value="${c.dateofbirth}"></c:out></span></p>
            <p><label>Email:</label> <span><c:out value="${c.email}"></c:out></span></p>
            <p><label>Location:</label> <span><c:out value="${c.location}"></c:out></span></p>
            <p><label>Contact:</label> <span><c:out value="${c.contact}"></c:out></span></p>
        </div>

        <div class="back-link">
            <a href="viewallcustomers">Back to Students List</a>
        </div>
    </div>
</body>
</html>

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
            background-image: url('https://png.pngtree.com/thumb_back/fh260/background/20210902/pngtree-blue-cram-school-border-summer-training-course-image_789185.jpg'); /* Replace with your image URL */
            background-size: cover; /* Ensures the image covers the entire screen */
    		background-position: center center; /* Centers the image */
   			background-attachment: fixed; /* Keeps the background fixed while scrolling */
    		font-family: Arial, sans-serif;
    		color: #333; /* Dark text for readability */
    		height: 100vh; /* Makes sure the body takes up full height */
    		margin: 0; /* Removes default margin */
        }

        .welcome-message {
            text-align: center;
            font-size: 24px;
            color: #fff; /* White text for contrast against the background */
            margin-top: 50px;
        }

        .project-info {
            text-align: center;
            font-size: 18px;
            color: #fff; /* White text */
            margin-top: 30px;
            background-color: rgba(0, 0, 0, 0.5); /* Semi-transparent background */
            padding: 20px;
            border-radius: 10px;
            max-width: 80%;
            margin-left: auto;
            margin-right: auto;
        }

        .container {
            margin-top: 30px;
            text-align: center;
        }

        .btn-logout {
            background-color: #e74c3c;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .btn-logout:hover {
            background-color: #c0392b; /* Darker red on hover */
        }

        .footer {
            text-align: center;
            margin-top: 50px;
            color: #fff; /* White text */
            font-size: 14px;
             background-color: #000;
        }
    </style>
</head>
<body>
    <%@include file="customernavbar.jsp" %><br/><br/>
    
    <div class="welcome-message">
        Welcome, <%= c.getName() %>!
    </div>

    <!-- Project Information Section -->
    <div class="project-info">
        <h4>About the Career Guidance and Counseling Project</h4>
        <p>
            This project is designed to help students navigate their career journey by providing them with valuable resources and expert guidance. 
            It connects students with counselors who can assist them in making informed decisions based on their skills, interests, and career aspirations. 
            Through this platform, students can:
        </p>
        <ul>
            <li>Access personalized career advice from experienced mentors.</li>
            <li>Get insights into various career paths and opportunities.</li>
            <li>Enhance their skills and knowledge through educational resources and workshops.</li>
            <li>Receive one-on-one counseling sessions to make the best career choices.</li>
        </ul>
        <p>
            Our goal is to empower students to make well-informed decisions and set themselves up for success in their future careers.
        </p>
    </div>

  

    <!-- Copyright Section -->
    <div class="footer">
        <p>&copy; 2024 Career Guidance and Counseling. All rights reserved.</p>
    </div>
</body>
</html>

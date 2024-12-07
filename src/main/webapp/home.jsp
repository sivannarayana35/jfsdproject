<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <title>Career Guidance</title>
    <style>
        body {
            font-family: 'Helvetica Neue', sans-serif;
            margin: 0;
            padding: 0;
            background: url('https://babafaridgroup.edu.in/assets/img/bfgi/free-career-guidance.jpg') no-repeat center center fixed;
            background-size: cover;
            color: #f0f0f0;
        }

        .navbar {
            background-color: rgba(0, 0, 0, 0.9);
            padding: 20px;
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .navbar a {
            color: #fff !important;
            font-size: 18px;
            margin: 0 20px;
            text-transform: uppercase;
        }

        .navbar a:hover {
            color: #ff9800 !important;
            text-decoration: none;
        }

        .hero-section {
            text-align: center;
            margin-top: 100px;
            color: white;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.8);
        }

        .hero-section h2 {
            font-size: 3.5em;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .container {
            background: rgba(0, 0, 0, 0.6);
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.6);
            margin-top: 50px;
            color: white;
        }

        .container h3 {
            font-size: 2em;
            font-weight: bold;
            text-align: center;
        }

        .container p {
            font-size: 1.2em;
            text-align: center;
            margin-bottom: 30px;
        }

        .btn-custom {
            background-color: #ff9800;
            color: white;
            padding: 15px 30px;
            font-size: 18px;
            border-radius: 5px;
            text-decoration: none;
            text-transform: uppercase;
            letter-spacing: 2px;
        }

        .btn-custom:hover {
            background-color: #e68900;
        }

        footer {
            text-align: center;
            padding: 20px;
            background-color: rgba(0, 0, 0, 0.9);
            color: white;
            position: fixed;
            bottom: 0;
            width: 100%;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <div class="container-fluid text-center">
            <a href="/">Home</a>
            <a href="customerreg">Student Registration</a>
            <a href="customerlogin">Student Login</a>
            <a href="adminlogin">Admin Login</a>
        </div>
    </div>

    <div class="hero-section">
        <h2>Career Guidance & Counseling</h2>
        <p>Let us help you find the right career path and achieve your dreams.</p>
    </div>

    <div class="container">
        <h3>Explore Your Career Options</h3>
        <p>Connect with experts, explore career paths, and receive personalized guidance on your journey to success.</p>
        <div class="text-center">
            <a href="customerreg" class="btn-custom">Get Started</a>
        </div>
    </div>

    <footer>
        © 2024 Career Guidance. All rights reserved.
    </footer>
</body>
</html>

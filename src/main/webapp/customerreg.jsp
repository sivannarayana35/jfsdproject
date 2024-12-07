<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Student Registration</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        body {
            background: url('https://www.krctimes.com/wp-content/uploads/2024/02/rsz_career_counselling.jpg') no-repeat center center fixed;
            background-size: cover;
            font-family: Arial, sans-serif;
            color: #f0f0f0;
        }
        .container {
            background: rgba(255, 255, 255, 0.8);
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            margin-top: 50px;
        }
        .form-control {
            margin-bottom: 15px;
        }
        .form-check-inline {
            margin-right: 20px;
        }
        .btn {
            width: 100%;
            padding: 12px;
        }
        h3 {
            text-align: center;
            margin-bottom: 30px;
        }
    </style>
</head>
<body>

<%@ include file="mainnavbar.jsp" %>

<div class="container">
    <h3>Student Registration Form</h3>
    <form method="post" action="insertcustomer">

        <div class="form-group">
            <label for="cname">Enter Name</label>
            <input type="text" class="form-control" name="cname" id="cname" required />
        </div>

        <div class="form-group">
            <label>Enter Gender</label><br/>
            <div class="form-check form-check-inline">
                <input type="radio" name="cgender" class="form-check-input" value="Male" required />
                <label class="form-check-label">Male</label>
            </div>
            <div class="form-check form-check-inline">
                <input type="radio" name="cgender" class="form-check-input" value="Female" required />
                <label class="form-check-label">Female</label>
            </div>
            <div class="form-check form-check-inline">
                <input type="radio" name="cgender" class="form-check-input" value="Others" required />
                <label class="form-check-label">Others</label>
            </div>
        </div>

        <div class="form-group">
            <label for="cdob">Enter Date of Birth</label>
            <input type="date" name="cdob" class="form-control" id="cdob" required />
        </div>

        <div class="form-group">
            <label for="cemail">Enter Email ID</label>
            <input type="email" name="cemail" class="form-control" id="cemail" required />
        </div>

        <div class="form-group">
            <label for="cpwd">Enter Password</label>
            <input type="password" name="cpwd" class="form-control" id="cpwd" required />
        </div>

        <div class="form-group">
            <label for="clocation">Enter Location</label>
            <input type="text" name="clocation" class="form-control" id="clocation" required />
        </div>

        <div class="form-group">
            <label for="ccontact">Enter Contact</label>
            <input type="number" name="ccontact" class="form-control" id="ccontact" required />
        </div>

        <div class="form-group">
            <input type="submit" value="Register" class="btn btn-success"/>
        </div>

        <div class="form-group">
            <input type="reset" value="Clear" class="btn btn-danger"/>
        </div>

    </form>
</div>

</body>
</html>

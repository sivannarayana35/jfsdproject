<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Appointments</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        body {
            background-color: #f7f7f7;
            font-family: Arial, sans-serif;
            color: #333;
        }

        header {
            background-color: #4CAF50;
            color: white;
            padding: 20px;
            text-align: center;
            border-radius: 5px;
        }

        h1 {
            font-size: 2.5em;
            font-weight: bold;
            text-shadow: 1px 1px 5px rgba(0, 0, 0, 0.2);
        }

        .content {
            max-width: 1000px;
            margin: 30px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            text-align: center;
            padding: 12px;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #e0f7fa;
        }

        button {
            margin-top: 20px;
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }

        a.button-link {
            color: white;
            text-decoration: none;
            font-size: 1em;
        }
    </style>
</head>
<body>
<%@ include file="adminnavbar.jsp" %>

<header>
    <h1>Appointments</h1>
</header>

<div class="content">
    <table class="table table-striped">
        <thead>
            <tr>
                <th>ID</th>
                <th>Full Name</th>
                <th>Email</th>
                <th>Appointment Date</th>
                <th>Appointment Time</th>
                <th>Counsellor</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="appointment" items="${appointments}">
                <tr>
                    <td><c:out value="${appointment.id}" /></td>
                    <td><c:out value="${appointment.fullName}" /></td>
                    <td><c:out value="${appointment.email}" /></td>
                    <td><c:out value="${appointment.appointmentDate}" /></td>
                    <td><c:out value="${appointment.appointmentTime}" /></td>
                    <td><c:out value="${appointment.counsellor.name}"/></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <button>
        <a href="adminhome.jsp" class="button-link">Back to Home</a>
    </button>
</div>

</body>
</html>

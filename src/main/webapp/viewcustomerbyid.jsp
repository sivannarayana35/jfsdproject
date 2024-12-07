<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }

        .container {
            text-align: center;
            margin-top: 50px;
        }

        h3 {
            color: #4CAF50;
            font-size: 2em;
            font-weight: bold;
            text-decoration: underline;
            margin-bottom: 30px;
        }

        label {
            font-size: 1.2em;
            font-weight: bold;
            color: #333;
        }

        select {
            width: 250px;
            padding: 8px;
            border-radius: 4px;
            border: 1px solid #ccc;
            font-size: 1em;
            margin-bottom: 20px;
        }

        .btn {
            padding: 10px 20px;
            font-size: 1em;
            color: white;
            background-color: #28a745;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-decoration: none;
        }

        .btn:hover {
            background-color: #218838;
        }
    </style>
    <title>Admin - View Student by ID</title>
</head>
<body>
    <%@ include file="adminnavbar.jsp" %>

    <h3>View Student by ID</h3>

    <div class="container">
        <form method="post" action="displaycustomer">
            <label for="id">Select Student ID</label><br/><br/>
            <select name="id" class="form-select" required>
                <option value="">--Select--</option>
                <c:forEach items="${customerlist}" var="customer">
                    <option value="<c:out value="${customer.id}"/>">
                        <c:out value="${customer.id}"/>
                    </option>
                </c:forEach>
            </select>
            <br/><br/>
            <input type="submit" value="View" class="btn btn-success"/>
        </form>
    </div>
</body>
</html>

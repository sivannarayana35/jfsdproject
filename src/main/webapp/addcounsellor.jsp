<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>counsellor List</title>
    <style>
        h1 {
            text-align: center;
            margin-top: 20px;
            color: #3498db;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 12px;
            text-align: left;
        }
        th {
            background-color: #3498db;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8); /* Transparent background color */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
        }
        label {
            font-weight: bold;
        }
        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-bottom: 10px;
        }
        button[type="submit"] {
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body style="background-color: #f4f4f4;">
<%@ include file="adminnavbar.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
<div class="container">
    <h1>Counsellor List</h1>
    
        <!-- Assuming a JSP backend with a list of students -->
        <c:forEach var="counsellor" items="${counsellor}">
            <tr>
                <td>${counsellor.id}</td>
                <td>${counsellor.fullName}</td>
                <td>${counsellor.contactno}</td>
                <td>${counsellor.email}</td>
            </tr>
        </c:forEach>
    </table>
</div>

<div class="container">
    <h2>Add Counsellor</h2>
    <form action="/counsellordata" method="post">
        <div>
            <label for="fullName">Full Name:</label>
            <input type="text" id="fullName" name="fullName" required>
        </div>
        
        <div>
            <label for="contactno">Mobile Number:</label>
            <input type="number" id="contactno" name="contactno" required>
        </div>
        <div>
            <label for="email">Email:</label>
            <input type="text" id="email" name="email" required>
        </div>
        <button type="submit">Add Counsellor</button>
    </form>
</div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Enquiry Page</title>
 <style>
        body {
            font-family: "Roboto", Sans-serif;
            background-color: #660d10;
            color: #ffffff;
        }
        h1 {
            text-align: center;
        }
        .form-container {
            margin: 50px auto;
            width: 50%;
            background-color: #d9d9d9;
            color: #000;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        }
        input, textarea, button {
            display: block;
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: none;
            border-radius: 5px;
            box-sizing: border-box;
        }
        button {
            background-color: darkred;
            color: white;
            font-weight: bold;
            cursor: pointer;
        }
        button:hover {
            background-color: crimson;
        }
    </style>
</head>
<body>
    
    <h1>Student Enquiry Page</h1>
    <div class="form-container">
    
        <form action="college" method="post">
        
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>
            
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>
            
            <label for="id">Roll Number:</label>
            <input type="number" id="id" name="id" required>
            
            <label for="message">Message:</label>
            <textarea id="message" name="message" rows="5" required></textarea>
            
            <button type="submit">Submit Enquiry</button>
        </form>
    </div>
    
 
</body>
</html>
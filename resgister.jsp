<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Course Registration Form</title>
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
        input, textarea,select, button {
            display: block;
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: none;
            border-radius: 5px;
            box-sizing: border-box;
        }
        select {
        background-color: #fff;
        color: #333;
        appearance: none; /* Remove default arrow for better customization */
        cursor: pointer;
    }

    select:focus {
        border-color: #007bff;
        outline: none;
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
<h1>Course Registration Form</h1>
    <div class="form-container">
        <form action="register" method="post">
        
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>
            
            <label for="phoneno">Phone Number</label>
            <input type="number" id="phoneno" name="phoneno" required>
            
            <label for="fname">father's Name:</label>
            <input type="text" id="fname" name="fname" required>
            
            <label for="mname">Mother's Name:</label>
            <input type="text" id="mname" name="mname" required>
            
            <label for="email">Personal Email:</label>
            <input type="email" id="email" name="email" required>
            
            <label for="courses">Course:</label>
        <select id="courses" name="course" required>
        <optgroup label="B.Tech">
                <option value="B.Tech-CS">Computer Science</option>
                <option value="B.Tech-ME">Mechanical Engineering</option>
                <option value="B.Tech-EE">Electrical Engineering</option>
                <option value="B.Tech-CE">Civil Engineering</option>
                <option value="B.Tech-ECE">Electronics and Communication</option>
            </optgroup>
        <option value="BBA (Business Administration)">BBA (Bachelor of Business Administration)</option>
        <option value="MBA (Management)">MBA (Master of Management)</option>
        <option value="BCA (Computer Applications)">BCA (Bachelor of Computer Applications)</option>
        <option value="BPT (Physiotherapy)">BPT (Bachelor of Physiotherapy)</option>
    </select><br><br>
            
            <button type="submit">Submit</button>
        </form>
    </div>
</body>
</html>
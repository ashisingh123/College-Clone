
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>College Enquiry Page</title>
<style>
        body{
            background-color: #660d10;
            
        }
        *{
            font-family: "Roboto", Sans-serif;
        }
        header{
            /*border: 1px solid black;*/
            display: flex;
            flex-direction: column;
            align-content: center;
            justify-content: center;
            text-align: center;
            /*margin-right: 20px;*/
            /*margin-left: 20px;*/
            padding: 10px;
            background-color: darkred;
            color: white;
            font-size: larger;
        }
        header h3 {
            margin: 0 0 0;
            font-size: 1.2em;
            font-weight: normal;
        }
        .main{
            /*border: 1px solid black;*/
            display: flex;
            margin: 5px 0 0 ;
        }
        .college{
            /*border: 1px solid black;*/
            /*display: block;*/
            /*width: 100%;*/
            /*height: 300px;*/
            /*overflow: hidden;*/
            padding: 5px;
            margin: 5px;
        }
        .college img{
            height: 500px;
            width: 500px;
            /*width: 100%;*/
            /*height: 100%; */
            /*object-fit:contain;*/
            padding: 2px;
            margin: 2px;
        }
        .epr{
            /*border: 1px solid black;*/
            padding: 5px;
            margin:5px 5px 5px 300px;
        }
        .menu li {
            margin-bottom: 5px; /* Adds spacing between items */
            font-size: 20px; /* Increases the text size */
        }
        .sub-title{
            font-size:30px;
            color: #ffff;
            /*border: 1px solid black;*/
            background-color: darkred;
            padding: 15px;
            margin: 0 0 10px;

        }
        .menu a{
            color: #d5d0d0;
            text-decoration: none;
            /*border: 1px solid black;*/
            background-color: darkred;
            padding: 10px;
            margin-bottom: 5px;
            margin-top: 5px;
        }
        .menu a:hover{
            color: #242424;
        }
        .menu li{
            color: #d5d0d0;
            text-decoration: none;
            padding: 10px;
            margin-bottom: 5px;
            margin-top: 5px;
        }
        .footer{
            display: flex;
            justify-content: space-around;
            background-color: #121212;
            width: 100%;
        }
        .aboutus{
            /*border: 1px solid black;*/
            margin: 5px 0 0 0;
            padding: 20px;
        }
        .aboutus h2, p{
            text-align: center;
            color: #d5d0d0;
        }
        p{
            font-size: large;
            font-weight: bold;
        }
        .aboutus a{
            color: red;
            text-decoration: none;
            font-weight: bold;
        }
        .clickLinks{
            /*border: 1px solid black;*/
            margin: 5px 0 0 0;
            padding: 20px;
        }
        .clickLinks h2,p{
            text-align: center;
            color: #d5d0d0;
        }
        .clickLinks a{
            color: #d5d0d0;
            text-decoration: none;
            font-weight: bold;
        }
        .clickLinks li{
            color: rgba(218, 218, 47, 0.73);
            margin: 10px;
        }
        .contactus{
            /*border: 1px solid black;*/
            margin: 5px 0 0 0;
            padding: 20px;
        }
        .contactus h2,p{
            text-align: center;
            color: #d5d0d0;
        }
        .contactus a{
            color: #d5d0d0;
            text-decoration: none;
            font-weight: bold;
        }
        .contactus li{
            list-style-type: none;
            margin: 10px;
        }
    </style>
</head>
<body>

<header>
    <h1>I.T.S COLLEGE OF PROFESSIONAL STUDIES,GREATER NOIDA</h1>
    <h3>Associated with CCS University</h3>
</header>
<div class="main">

    <div class="college">
        <img src="college.jpg" />

    </div>

    <div class="epr">
        <h1 class="sub-title">STUDENT ERP PORTAL</h1>
        <ul class="menu">
            <li><a href="academic.html">Student Academic Performance</a></li>
            <li><a href="enquiry.jsp">Student Enquiry Form</a></li>
            <li><a href="resgister.jsp">Student Course Registration</a></li>
            <li><a href="enquiry.jsp">Student Academic Performance</a></li>
            <li><a href="enquiry.jsp">Student Academic Performance</a></li>
        </ul>
    </div>
</div>

<footer>
    <div class="footer">

        <div class="aboutus">
            <h2>About Us</h2>
            <p style="white-space: pre;">I.T.S - The Education Group is a 29 years' old
                leading educational group of the country.
                Its various programmers are NBA and NAAC
                (A-Grade) accredited.
                <a href="https://example.com/page3">IT - Social Media Policy</a></p>
        </div>

        <div class="clickLinks">
            <h2>Quick Links</h2>
            <ul class="foot">
                <li><a href="https://example.com/page1">About</a></li>
                <li><a href="https://example.com/page2">Chairman Message</a></li>
                <li><a href="https://example.com/page3">Vice Chairman Message</a></li>
                <li><a href="https://example.com/page3">Admission</a></li>
                <li><a href="https://example.com/page3">Placements</a></li>
                <li><a href="https://example.com/page3">Personality Development Program</a></li>
                <li><a href="https://example.com/page3">Campus Life</a></li>
                <li><a href="https://example.com/page3">Contact</a></li>
            </ul>
        </div>

        <div class="contactus">
            <h2>Contact Us</h2>
            <p style="white-space: pre;">46, Knowledge Park III, Greater Noida -
                201310</p>
            <ul>
                <li> <a  href="https://example.com/page3">+91 9565956500</a></li>
                <li><a  href="https://example.com/page3">18001800840</a></li>
                <li> <a  href="https://example.com/page3">admission.cps@its.edu.in</a></li>
            </ul>
        </div>

    </div>
</footer>
  
</body>
</html>
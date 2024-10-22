<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Attendance Management</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            position: relative;
            overflow: hidden; /* Prevent scrollbars from the pseudo-element */
        }
        
        /* Background and overlay styling */
        .background {
            position: relative;
            height: 100vh; /* Full viewport height */
            width: 100%;
            background: url('images/courier.jpeg.jpeg') no-repeat center center fixed;
            background-size: cover;
            background-position: left;
            opacity: 0.6;
           
            display: flex;
            align-items: center; /* Vertically centers content */
            justify-content: flex-start; /* Aligns content to the start (left) */
            padding-left: 50px; /* Adds space from the left edge */
            box-sizing: border-box; /* Includes padding in width calculation */
            z-index: 0;
            text-align: left;
        }
        .background .text-container {
            display: flex;
            flex-direction: column; /* Stacks text vertically */
            justify-content: center; /* Centers text vertically within its container */
        }
        .background p {
            font-size: 100px; /* Adjust font size as needed */
            font-weight: 800;
            margin: 0;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.6); /* Adds a shadow to improve readability */
        }
        
        /* Navigation styling */
        .navigation {
            position: absolute;
            top: 20px; /* Distance from the top of the page */
            right: 90px; /* Distance from the right edge of the page */
            display: flex; /* Use Flexbox for horizontal layout */
            gap: 60px; /* Space between links */
            z-index: 1; /* Ensure it is above the background */
            ; /* Optional: Background to improve visibility */
            padding: 10px; /* Optional: Add padding */
            border-radius: 5px; /* Optional: Rounded corners */
        }
        .navigation a {
             display: block; /* Display links as block for vertical stacking */
            margin: 0 0 10px 0; /* Space between links */
            text-decoration: none;
            color: Black;
            font-size: 30px;
            font-weight: bold; /* Make the text bold */
        }
        .navigation a:hover {
            text-decoration: underline;
        }

        /* Content styling */
        .content {
            position: relative;
            margin: 20px;
            z-index: 1; /* Ensure it is above the background */
            padding-top: 200px; /* Ensure content appears below the background */
            text-align: left;
        }
    </style>
</head>
<body>
    <div class="background">
    
        <div class="text-container">
            <p>Courier</p>
            <p>Management</p>
            <p>System</p>
        </div>
    </div>
    <div class="navigation">
      
        <a href="admin_login.jsp">ADMIN</a>
        <a href="staff_login.jsp">STAFF</a>
        <a href="users_login.jsp">USERS</a>
         
    </div>
    <div class="content">
        <p>Welcome to the Student Attendance Management System.</p>
    </div>
</body>
</html>

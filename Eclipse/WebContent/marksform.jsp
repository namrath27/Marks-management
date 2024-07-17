<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Add Marks</title>
		
		<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background: #fff;
            padding: 20px 40px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 100%;
            max-width: 400px;
        }
        h2 {
            color: #4CAF50;
            margin-bottom: 20px;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        label {
            margin-bottom: 5px;
            text-align: left;
        }
        input[type="number"],
        input[type="text"] {
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            width: calc(100% - 22px);
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        .home-link {
            margin-top: 20px;
            display: inline-block;
            text-decoration: none;
            color: #4CAF50;
            transition: color 0.3s ease;
        }
        .home-link:hover {
            color: #388E3C;
        }
    </style>
		
	</head>
	<body>
		<div class="container">
        <h2>Add Marks</h2>
        <form method="post" action="addmarks.jsp">
            <label for="regno">Register No.</label>
            <input type="number" id="regno" name="regno" required>
            
            <label for="student_name">Student Name</label>
            <input type="text" id="student_name" name="student_name" required>
            
            <label for="marks">Marks</label>
            <input type="number" id="marks" name="marks" required>
            
            <input type="submit" value="Submit">
        </form>
        <a class="home-link" href="index.jsp">Home</a>
    </div>
	</body>
</html>
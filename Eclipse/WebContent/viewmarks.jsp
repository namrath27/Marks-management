<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>View Marks</title>
		
		<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
            margin: 0;
        }
        h1 {
            color: #4CAF50;
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            max-width: 800px;
            border-collapse: collapse;
            margin-bottom: 20px;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        a {
            display: inline-block;
            margin: 10px;
            padding: 10px 20px;
            text-decoration: none;
            color: white;
            background-color: #4CAF50;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        a:hover {
            background-color: #45a049;
        }
        .actions a {
            color: #4CAF50;
            background-color: transparent;
            padding: 5px 10px;
            border: 1px solid #4CAF50;
        }
        .actions a:hover {
            background-color: #4CAF50;
            color: white;
        }
    </style>
		
	</head>
	<body>
		
		<%@ page import="com.dao.StudentDao, com.bean.*, java.util.*" %>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
		
		
		<h1>Mark List</h1>
		
		<%
			List<Student> list = StudentDao.getAllRecords();
			request.setAttribute("list", list);
		%>
		
		<table border="1" cellpadding="5">
			<tr>
				<th>Reg No.</th>
				<th>Student Name</th>
				<th>Marks</th>
				<th>Delete</th>
			</tr>
			<c:forEach items="${list}" var="s">
				<tr>
					<td>${s.getId()}</td>
					<td>${s.getName()}</td>
					<td>${s.getMarks()}</td>
					<td><a href="deletestudent.jsp?id=${s.getId()}">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
		<br>
		<a href="marksform.jsp">Add Marks</a>
		<br>
		<a href="index.jsp">Home</a>
		
	</body>
</html>
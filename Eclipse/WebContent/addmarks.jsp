<%@page import="java.sql.*" %>
<%
String regno = request.getParameter("regno");
String student_name = request.getParameter("student_name");
String marks = request.getParameter("marks");

Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentmarks","root", "root");
Statement st = con.createStatement();

int i = st.executeUpdate("insert into studentmarks(id,student_name, marks) values ('"+ regno +"','"+ student_name + "','" + marks + "')");

if (i > 0) {
	response.sendRedirect("viewmarks.jsp");
} 
else {
	response.sendRedirect("index.jsp");
}
%>
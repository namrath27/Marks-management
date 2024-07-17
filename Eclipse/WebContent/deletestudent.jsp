<%@page import="com.dao.StudentDao"%>

<jsp:useBean id="s" class="com.bean.Student"></jsp:useBean>
<jsp:setProperty property="*" name="s" />

<%  
StudentDao.delete(s);  
response.sendRedirect("viewmarks.jsp");  
%>

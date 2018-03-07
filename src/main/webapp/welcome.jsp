<%--
  Created by IntelliJ IDEA.
  User: shreyansh
  Date: 6/3/18
  Time: 11:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome</title>
</head>
<body>
    <%
        if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
    %>
    You are not logged in<br/>
    <a href="index.jsp">Please Login</a>
    <%} else {
    %>
    Welcome <%=session.getAttribute("userid")%>
    <a href='logout.jsp'>Log out</a>
    <%
        }
    %>
</body>
</html>

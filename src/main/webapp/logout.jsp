<%--
  Created by IntelliJ IDEA.
  User: shreyansh
  Date: 6/3/18
  Time: 11:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Logout</title>
</head>
<body>
    <%
        session.setAttribute("userid", null);
        session.invalidate();
        response.sendRedirect("Ques3.jsp");
    %>
</body>
</html>

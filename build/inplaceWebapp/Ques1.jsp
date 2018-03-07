<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: shreyansh
  Date: 6/3/18
  Time: 5:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Question 1</title>
</head>
<body>
<% SimpleDateFormat simpleDateFormat = new SimpleDateFormat("HH:mm:ss");
    String time = simpleDateFormat.format(new Date());
    out.print("<p>Hello! The time is now " + time + "</p>");
%>
</body>
</html>

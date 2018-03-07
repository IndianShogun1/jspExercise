<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %><%--
  Created by IntelliJ IDEA.
  User: shreyansh
  Date: 6/3/18
  Time: 11:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
</head>
<body>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    int age = Integer.valueOf(request.getParameter("age"));
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/jsp",
            "root", "test");
    Statement st = con.createStatement();
    int i = st.executeUpdate("INSERT INTO user_details VALUES ('" + username + "','" + password + "','" + name + "','" + email + "','" + age + "')");
    if (i > 0) {
        response.sendRedirect("register-success.jsp");
    } else {
        response.sendRedirect("register-failure.jsp");
    }
%>
</body>
</html>

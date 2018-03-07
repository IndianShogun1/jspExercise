<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %><%--
  Created by IntelliJ IDEA.
  User: shreyansh
  Date: 6/3/18
  Time: 11:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Login</title>
</head>
<body>
    <%
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/jsp",
                "root", "test");
        Statement statement = connection.createStatement();
        ResultSet resultSet;
        resultSet = statement.executeQuery("SELECT * FROM user_details WHERE username='" + username + "' AND password='" + password + "'");
        if (resultSet.next()) {
            session.setAttribute("userid", username);
            response.sendRedirect("welcome.jsp");
        } else {
            out.println("Invalid password <a href='Ques3.jsp'>try again</a>");
        }
    %>
</body>
</html>

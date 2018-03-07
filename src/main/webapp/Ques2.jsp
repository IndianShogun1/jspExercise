<%--
  Created by IntelliJ IDEA.
  User: shreyansh
  Date: 6/3/18
  Time: 5:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Question 2</title>
</head>
<body>
    <form>
        Enter the number<input type="number" name="element">
        <input type="submit">
    </form>
    <%
        String n = request.getParameter("element");
        if(n==null){

        } else {
            int number = Integer.valueOf(n);
            for(int i = 1; i <= number; i++ ) {
                out.println(i);
            }
        }
    %>
</body>
</html>

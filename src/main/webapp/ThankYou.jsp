<%@ page import="reviewer.User" %>
<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: K00280943
  Date: 11/09/2025
  Time: 10:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thank You</title>
</head>
<body>
<%

    String name = request.getParameter("name");
    String address = request.getParameter("address");
    String city = request.getParameter("city");
    String country = request.getParameter("city");
    String phone = request.getParameter("phone");
    String email = request.getParameter("email");
    String eu = request.getParameter("eu");
    String[] socialList = request.getParameterValues("check");
    String comment = request.getParameter("comments");

    User user = new User(name, address, city, country, phone, email, eu, socialList, comment);
    HttpSession session1 = request.getSession();
    session1.setAttribute("user", user);
//    session.setAttribute(address, user);
//    session.setAttribute(city, user);
//    session.setAttribute(country, user);
//    session.setAttribute(phone, user);
//    session.setAttribute(email, user);
//    session.setAttribute(eu, user);
//    session.setAttribute(Arrays.toString(socialList), user);
//    session.setAttribute(comment, user);
%>
<h1> Thanks for your review <%=name%> </h1>
<form id="editForm" name="editForm" method="post" action="EditForm.jsp">
    <td><input type="submit" name="submit" id="edit" value="Edit" /></td>
</form>
<form id="submitForm" name="submitForm" method="post" action="SummaryPage.jsp">

    <td><input type="submit" name="submit" id="submit" value="Save Response" /></td>
</form>
</body>
</html>

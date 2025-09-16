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
<h2> Here's a Summary of Your Review - Would you like to edit or save?</h2>
<table width="730" border="0">
    <tr>
        <td width="266">Name</td>
        <td width="454"><%= user.getName()%></td>
    </tr>
    <tr>
        <td height="31">Address</td>
        <td><%= user.getAddress()%> </td>
    </tr>
    <tr>
        <td>City</td>
        <td><%= user.getCity()%></td>
    </tr>
    <tr>
        <td>Country</td>
        <td><%= user.getCountry()%> </td>
    </tr>
    <tr>
        <td>Phone</td>
        <td><input type="text" name="phone" id="phone" value="<%= user.getPhone()%>" /> </td>
    </tr>
    <tr>
        <td>Email</td>
        <td> <%= user.getEmail()%> </td>
    </tr>
    <tr>
        <td>EU Status</td>
        <td><p>
            <label>
                <label>EU</label><input type="radio" name="eu" value="eu" disabled <%= "eu".equals(eu) ? "checked" : "" %>>
                <label>Non EU</label> <input type="radio" name="eu" value="noneu" disabled <%= "noneu".equals(eu) ? "checked" : "" %>>



        </p></td>
    </tr>
    <tr>
        <td>How Did You Hear About Us?</td>


        <td>Twitter<input name="check" type="checkbox" id="check" value="twitter" disabled <%= Arrays.asList(socials).contains("twitter") ? "checked" : "" %>>
            Facebook   <input name="check" type="checkbox" id="check" value="facebook" disabled<%= Arrays.asList(socials).contains("facebook") ? "checked" : "" %>>
            Newspaper<input name="check" type="checkbox" id="check" value="newspaper" disabled <%= Arrays.asList(socials).contains("newspaper") ? "checked" : "" %>>
            Radio<input name="check" type="checkbox" id="check" value="radio" disabled<%= Arrays.asList(socials).contains("radio") ? "checked" : "" %>>
            Other<input name="check" type="checkbox" id="check" value="other" disabled<%= Arrays.asList(socials).contains("other") ? "checked" : "" %>>
    </tr>
    <tr>
        <td>Comments</td>
        <td><label for="comments"></label>
            <textarea name="comments" id="comments" cols="45" rows="5" disabled><%=comment%></textarea></td>
    </tr>
</table>
<form id="submitForm" name="submitForm" method="post" action="index.jsp">

    <td><input type="submit" name="submit" id="submit" value="Home" /></td>
</form>
<form id="editForm" name="editForm" method="post" action="EditForm.jsp">
    <td><input type="submit" name="submit" id="edit" value="Edit" /></td>
</form>
<form id="submitForm" name="submitForm" method="post" action="SummaryPage.jsp">

    <td><input type="submit" name="submit" id="submit" value="Save Response" /></td>
</form>
</body>
</html>

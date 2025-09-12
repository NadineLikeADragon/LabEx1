<%@ page import="reviewer.User" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="data.UserIO" %>
<%@ page import="java.io.IOException" %>
<%--
  Created by IntelliJ IDEA.
  User: Nadine
  Date: 12/09/2025
  Time: 23:02
  To change this template use File | Settings | File Templates.
--%>
<%
    HttpSession session1 = request.getSession();
    User user = (User) session1.getAttribute("user");
    String eu = user.getEUOrNonEu();
    String[] socials = user.getSocials();
    String comment = user.getComment();
    String path = ("C:/Users/sonic/IdeaProjects/LabEx1/src/main/webapp/WEB-INF/ReviewList.txt");
    UserIO.add(user, path);
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Summary Page</title>
</head>
<body>
    <h2>Thank you so much for Reviewing - Here's a Summary of Your Review</h2>
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
</body>
</html>

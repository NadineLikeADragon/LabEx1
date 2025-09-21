<%@ page import="reviewer.User" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<%--
  Created by IntelliJ IDEA.
  User: K00280943
  Date: 11/09/2025
  Time: 09:59
  To change this template use File | Settings | File Templates.
--%>
<%
    HttpSession session1 = request.getSession();
    User user = (User) session1.getAttribute("user");
    String eu = user.getEUOrNonEu();
    String[] socials = user.getSocials();
    String comment = user.getComment();
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit View</title>

</head>
<body>
<form id="detailsForm" name="detailsForm" method="post" action="ThankYou.jsp">
    <h2>Please Send Us Your Details.</h2>
    <table width="730" border="0">
        <tr>
            <td width="266">Name</td>
            <td width="454"><input name="name" type="text" id="name" size="50" value="<%= user.getName()%>" /> </td>
        </tr>
        <tr>
            <td height="31">Address</td>
            <td><input name="address" type="text" id="address" size="50" value="<%= user.getAddress()%> " /></td>
        </tr>
        <tr>
            <td>City</td>
            <td><input type="text" name="city" id="city" value="<%= user.getCity()%>" /> </td>
        </tr>
        <tr>
            <td>Country</td>
            <td><input type="text" name="country" id="country" value="<%= user.getCountry()%>" /> </td>
        </tr>
        <tr>
            <td>Phone</td>
            <td><input type="text" name="phone" id="phone" value="<%= user.getPhone()%>" /> </td>
        </tr>
        <tr>
            <td>Email</td>
            <td><input type="text" name="email" id="email" value="<%= user.getEmail()%>" /> </td>
        </tr>
        <tr>
            <td>EU Status</td>
            <td><p>
                <label>
                    <label>EU</label><input type="radio" name="eu" value="eu" <%= "eu".equals(eu) ? "checked" : "" %>>
                    <label>Non EU</label> <input type="radio" name="eu" value="noneu" <%= "noneu".equals(eu) ? "checked" : "" %>>



            </p></td>
        </tr>
        <tr>
            <td>How Did You Hear About Us?</td>


            <td>Twitter<input name="check" type="checkbox" id="check" value="twitter"<%= Arrays.asList(socials).contains("twitter") ? "checked" : "" %>>
                Facebook   <input name="check" type="checkbox" id="check" value="facebook"<%= Arrays.asList(socials).contains("facebook") ? "checked" : "" %>>
                Newspaper<input name="check" type="checkbox" id="check" value="newspaper"<%= Arrays.asList(socials).contains("newspaper") ? "checked" : "" %>>
                Radio<input name="check" type="checkbox" id="check" value="radio"<%= Arrays.asList(socials).contains("radio") ? "checked" : "" %>>
                Other<input name="check" type="checkbox" id="check" value="other"<%= Arrays.asList(socials).contains("other") ? "checked" : "" %>>
            </td>
        </tr>
        <tr>
            <td>Comments</td>
            <td><label for="comments"></label>
                <textarea name="comments" id="comments" cols="45" rows="5"><%=comment%></textarea></td>
        </tr>
        <tr>
            <td><input type="submit" name="submit" id="submit" value="Submit" /></td>
            <td><input type="reset" name="clear" id="clear" value="Clear" /></td>
        </tr>
    </table>
</form>
</body>
</html>

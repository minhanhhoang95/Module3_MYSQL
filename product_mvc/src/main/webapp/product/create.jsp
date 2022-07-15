<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 7/15/2022
  Time: 4:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new Product</title>
</head>
<body>
<h1>Create new product</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="/products">Back to products list</a>
</p>
<form method="post">
    <fieldset>
        <legend>Product information</legend>
        <table>
            <tr>
                <td>Name:</td>
                <td><input type="text" name="name" id="name"></td>
            </tr>
            <tr>
                <td>Price:</td>
                <td><input type="number" name="price" id="price"></td>
            </tr>
            <tr>
                <td>Amount:</td>
                <td><input type="number" name="amount" id="amount"></td>
            </tr>
            <tr>
                <td>Description:</td>
                <td>
                    <textarea name="description" id="description" cols="30" rows="10"></textarea>
                </td>
            </tr>
            <tr>
                <td>Producer</td>
                <td><input type="text" value="producer" id="producer"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" name="Create product"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>

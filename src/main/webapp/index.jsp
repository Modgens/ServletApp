<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Fill inputs" %>
</h1>
<br/>
<form action="http://localhost:8080/demo4-1.0-SNAPSHOT/hello" method="post">
    <input type="text" name="start" placeholder="start" pattern="[0-9]+(\.[0-9]+)?">
    <input type="text" name="end" placeholder="end" pattern="[0-9]+(\.[0-9]+)?">
    <input type="text" name="step" placeholder="step" pattern="[0-9]+(\.[0-9]+)?">
    <input type="submit" value="Submit">
</form>
</body>
</html>
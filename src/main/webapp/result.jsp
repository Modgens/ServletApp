<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "All Y" %>
</h1>
<jsp:useBean id="calculator" class="com.example.demo4.Calculator" scope="request"/>

Start = ${calculator.start}
End = ${calculator.end}
Step = ${calculator.step}

<p>Arr of X:</p>

<c:forEach var="x" items="${calculator.fillX()}">
    X: ${x}<br/>
</c:forEach>

<p>Arr of Y:</p>

<c:forEach var="y" items="${calculator.result}">
    Y: ${y}<br/>
</c:forEach>
</body>
</html>
<%--
  Created by IntelliJ IDEA.
  User: takgyun
  Date: 2024/03/27
  Time: 9:55 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<html>
<head>
    <title>Chart</title>
</head>
<body>
<ul class="nav nav-pills flex-column">
    <li class="nav-item">
        <a class="nav-link" href="<c:url value="/chart/chart1"/>">Chart1</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="<c:url value="/chart/chart2"/>">Chart2</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="<c:url value="/chart/chart3"/>">Chart3</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="<c:url value="/chart/chart4"/>">Chart4</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="<c:url value="/chart/chart5"/>">Chart5</a>
    </li>
</ul>
</body>
</html>

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
    <title>HTML</title>
</head>
<body>
<ul class="nav nav-pills flex-column">
    <li class="nav-item">
        <a class="nav-link" href="<c:url value="/html/html1"/>">HTML1</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="<c:url value="/html/html2"/>">HTML2</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="<c:url value="/html/html3"/>">HTML3</a>
    </li>
</ul>
</body>
</html>

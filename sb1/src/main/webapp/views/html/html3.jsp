<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2024-03-27
  Time: 오전 9:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
    let html3 = {

    }
    $(function(){
        html3.init();
    });
</script>
<div class="container">
    <h2>HTML3 Page</h2>
    <button id="btn" type="button" class="btn btn-success">Success</button>
    <table class="table table-striped" id="cust_tb">
        <thead>
        <tr>
            <th>ID</th>
            <th>PWD</th>
            <th>Name</th>
        </tr>
        </thead>
        <tbody>
            <c:forEach var="c" items="${custs}">
                <tr>
                    <td><a href="<c:url value="/html/get"/>?id=${c.id}"/>${c.id}</td>
                    <td>${c.pwd}</td>
                    <td>${c.name}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
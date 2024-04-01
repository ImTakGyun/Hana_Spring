<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<script>
    $(function() {
        register.init('<c:url value="/register"/>');
    });
</script>

<div class="container">
    <h2>Register Page</h2>

    <form id="register_form">
        <div class="form-group">
            <label for="id">ID:</label>
            <input type="text" class="form-control" id="id" placeholder="Enter id" name="id">
            <%--            <span id="id_span"></span>--%>
        </div>
        <div class="form-group">
            <label for="pwd">Password:</label>
            <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
            <%--            <span id="pwd_span"></span>--%>
        </div>
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="name" class="form-control" id="name" placeholder="Enter name" name="name">
            <%--            <span id="pwd_span"></span>--%>
        </div>

        <button type="button" class="btn btn-primary">Submit</button>
    </form>
</div>
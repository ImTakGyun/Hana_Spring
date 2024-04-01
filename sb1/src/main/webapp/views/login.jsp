<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script>
    $(function() {
        login.init('<c:url value="/login"/>');
    });
</script>
<div class="container">
    <h2>Login Page</h2>

    <form id="login_form">
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
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>







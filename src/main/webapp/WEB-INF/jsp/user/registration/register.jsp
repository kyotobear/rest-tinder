<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="../../common/header.jsp" %>

<c:url var="registerUrl" value="/register"/>


<form:form class="row justify-content-center w-50 mx-auto mt-5 border-white rounded p-5 form-bg shadow"
           action="${registerUrl}" method="POST" modelAttribute="user">
    <h1 class="text-center salmon-text-color">register</h1>
    <div class="form-group">
        <label for="username" class="font-weight-bold">Username</label>
        <form:input class="form-control" path="username" placeholder="enter username"/>
        <form:errors path="username" cssClass="bg-danger"/>
    </div>
    <div class="form-group">
        <label for="password">
            <div>Password</div>
        </label>
        <form:password class="form-control" path="password" placeholder="enter password"/>
        <form:errors path="password" cssClass="bg-danger"/>
        <div class="form-text">
            <span>Requirements:</span>
            <ul>
                <li>at least one uppercase letter</li>
                <li>at least one lowercase letter</li>
                <li>at least one digit</li>
                <li>no whitespace</li>
                <li>at least 8 characters</li>
            </ul>
        </div>
    </div>
    <div class="form-group">
        <label for="confirmPassword">Confirm Password</label>
        <form:password class="form-control" path="confirmPassword" placeholder="confirm password"/>
        <form:errors path="passwordMatching" cssClass="bg-danger"/>
    </div>
    <fieldset>
        <div class="checkbox">
            <div class="radio">
                <label>
                    <form:radiobutton path="role" value="user" checked="checked"/>
                    User
                </label>
            </div>
        </div>
    </fieldset>
    <button type="submit" class="btn btn-default btn-color w-25 mt-3">Sign Up</button>
</form:form>

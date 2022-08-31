<%@ include file = "../../common/header.jsp" %>

<c:url var="loginUrl" value="/login"/>
<form class="row justify-content-center w-50 mx-auto mt-5 border-white rounded p-5 form-bg shadow" action="${loginUrl}" method="POST">
    <h1 class="text-center salmon-text-color">login</h1>
    <div class="form-group">
        <label for="username">Username</label>
        <input type="text" class="form-control" id="username" name="username" placeholder="enter username">
    </div>
    <div class="form-group">
        <label for="password">Password</label>
        <input type="password" class="form-control" id="password" name="password" placeholder="enter password">
    </div>
    <button type="submit" class="btn btn-default btn-color w-25 mt-3">Login</button>
</form>


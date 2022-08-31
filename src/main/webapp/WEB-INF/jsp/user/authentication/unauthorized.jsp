<%@ include file = "../../common/header.jsp" %>

<c:url var="cssUrl" value="/css/home.css"/>
<link rel="stylesheet" href="${cssUrl}" />
<body>
<div class="d-flex align-items-center justify-content-center vh-100">
    <div class="text-center">
        <h1 class="display-1 fw-bold"> <span class="text-danger">Whoops!</span></h1>
<%--        <div class="burger">--%>
            <img class="burger" src="images/sad_burger.png" alt="sad burger"/>
<%--        </div>--%>
        <p class="lead">
            To create an event, please log in or register first.
        </p>
        <p class="lead">If you think you received this in error, please contact your application administrator.</p>
        <c:url var="homeUrl" value="/"/>
        <a href="${homeUrl}" class="btn btn-default btn-color w-25 mt-3">Go Home</a>
    </div>
</div>
</body>



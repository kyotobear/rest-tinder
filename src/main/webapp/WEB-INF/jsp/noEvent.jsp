<%@ include file = "common/header.jsp" %>

<%--<h1>No event found.</h1>--%>

<%--<body>--%>
<%--<c:url var="searchForEvent" value="/searchForEvent"/>--%>
<%--<h1>Please check your event ID and <a href="${searchForEvent}">try again</a>!</h1>--%>
<%--</body>--%>

<body>
<div class="d-flex align-items-center justify-content-center vh-100">
    <div class="text-center">
        <h1>No event found.</h1>
        <img class="error-img" src="images/taco.png" alt="taco"/>
        <c:url var="searchForEvent" value="/searchForEvent"/>
        <h3>Please check your event ID and <a href="${searchForEvent}">try again</a>!</h3>
        <%--        <h2 class="display-1 fw-bold"> <span class="salmon-text-color">Registration is Successful!</span></h2>--%>
    </div>
</div>
</body>
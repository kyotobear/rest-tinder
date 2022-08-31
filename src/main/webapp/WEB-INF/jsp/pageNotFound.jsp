<%@ include file = "common/header.jsp" %>

<h1>Page not found</h1>

<body>
<c:url var="home" value="/home"/>
<h3>We're sorry, we couldn't find the page you requested.
    <br>
    Browse our <a href="${home}">homepage</a>!
</h3>
<img src="images/idiot_sandwich.jpg" alt="idiot sandwich"/>
</body>


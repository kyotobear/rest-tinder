<%@ include file = "common/header.jsp" %>

<%--<body>--%>
<%--<c:url var="noResultsUrl" value="/noResults"/>--%>
<%--<c:url var="viewRestaurantsUrl" value="/viewRestaurants"/>--%>
<%--<h1>No Results :( - Please choose a different <a href="${viewRestaurantsUrl}">category</a>!</h1>--%>
<%--</body>--%>

<body>
<div class="d-flex align-items-center justify-content-center vh-100">
    <div class="text-center">
        <h1>View Restaurants</h1>
        <c:url var="noResultsUrl" value="/noResults"/>
        <c:url var="viewRestaurantsUrl" value="/viewRestaurants"/>
        <h2>No Results :( - Please choose a different <a href="${viewRestaurantsUrl}">category</a>!</h2>
        <img class="error-img" src="images/sad_egg.png" alt="sad egg"/>
        <c:url var="searchForEvent" value="/searchForEvent"/>
    </div>
</div>
</body>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><c:out value="${pageTitle}"/> - WebApplication.Web</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" defer></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@700;800&display=swap" rel="stylesheet">
    <c:url var="cssUrl" value="/css/home.css"/>
    <link rel="stylesheet" href="${cssUrl}" />
    <script src="https://kit.fontawesome.com/3ea53c1d6b.js" crossorigin="anonymous"></script>

</head>
<body>
<nav class="navbar navbar-expand-lg nav-color">
    <div class="container-fluid">
        <c:url var="homeUrl" value="/"/>
        <a class="navbar-brand nav-link" href="${homeUrl}"><img src="images/white_logo.png"/></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <c:url var="aboutUrl" value="/about"/>
                <c:url var="viewRestaurantsUrl" value="/viewRestaurants"/>
                <c:url var="searchEvents" value="/searchForEvent"/>
                <c:url var="privateUrl" value="/private"/>
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="${homeUrl}">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${aboutUrl}">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${privateUrl}">Kick off Event</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${searchEvents}">Search for an Event</a>
                </li>
              <%--  <c:if test="${appCurrentUser.role == 'admin'}">
                    <c:url var="administrationUrl" value="/admin"/>
                    <li class="nav-item">
                        <a class="nav-link" href="${administrationUrl}">Administration</a>
                    </li>
                </c:if>--%>
            </ul>
            <ul class="navbar-nav d-flex">
                <c:if test="${empty appCurrentUser}">
                    <c:url var="loginUrl" value="/login"/>
                    <li class="nav-item"><a class="nav-link" href="${loginUrl}">Login</a></li>
                    <c:url var="registerUrl" value="/register"/>
                    <li class="nav-item"><a class="nav-link" href="${registerUrl}">Register</a></li>
                </c:if>
                <c:if test="${not empty appCurrentUser}">
                    <li class="nav-item">${appCurrentUser.username}&ensp;</li>
                    <c:url var="logoffUrl" value="/logoff"/>
                    <li class="nav-item">
                        <form action="${logoffUrl}" method="POST" class="navbar-link">
                            <button type="submit" class="log-off-btn btn btn-outline-light">Log Off</button>
                        </form>
                    </li>
                </c:if>
            </ul>
        </div>
    </div>
</nav>
<%--<div class="container body-content">--%>
<c:if test="${not empty message}">
    <div class="message alert alert-danger" role="alert">
        <c:out value="${message}"/>
    </div>
</c:if>
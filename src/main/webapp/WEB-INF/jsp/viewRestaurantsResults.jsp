<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%--<!DOCTYPE html>--%>
<html>
<head>
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@700;800&display=swap" rel="stylesheet">
    <c:url var="cssUrl" value="/css/viewRestaurants.css"/>
    <link rel="stylesheet" href="${cssUrl}" />
</head>
<body>
<nav class="navbar">
    <nav class="navbar navbar-default nav-color text-white" role="navigation">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header text-white">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="${homeUrl}"><img src="images/white_logo.png"/></a>
            </div>
            <c:url var="homeUrl" value="/"/>
            <c:url var="aboutUrl" value="/about"/>
            <c:url var="viewRestaurantsUrl" value="/viewRestaurants"/>
            <c:url var="searchEvents" value="/searchForEvent"/>
            <c:url var="privateUrl" value="/private"/>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse text-white" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav text-white">
                    <li><a href="${homeUrl}">Home</a></li>
                    <li><a href="${aboutUrl}">About</a></li>
                    <li><a href="${viewRestaurantsUrl}">Kick off Event</a></li>
                    <li><a href="${searchEvents}">Search for an Event</a></li>
                </ul>

                <ul class="nav navbar-nav navbar-right">
                    <c:if test="${empty appCurrentUser}">
                        <c:url var="loginUrl" value="/login"/>
                        <li class="nav-item"><a class="nav-link" href="${loginUrl}">Login</a></li>
                        <c:url var="registerUrl" value="/register"/>
                        <li class="nav-item"><a class="nav-link" href="${registerUrl}">Register</a></li>
                    </c:if>
                    <c:if test="${not empty appCurrentUser}">
                        <li class="nav-item"><a class="nav-link"><c:out value="${appCurrentUser.username}" /></a></li>
                        <c:url var="logoffUrl" value="/logoff"/>
                        <li class="nav-item">
                            <form action="${logoffUrl}" method="POST" class="navbar-link">
                                <button type="submit" class="btn btn-default">Log Off</button>
                            </form>
                        </li>
                    </c:if>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
</nav>


<div class="container text-center">
    <div class="panel panel-default shadow rounded">
        <div class="panel-body">
            <h3>Share the following info with your friends to get their votes!</h3>
            <p>Link: http://localhost:8080/capstone_war_exploded/searchForEvent</p>
            <p>Event ID: ${eventId}</p>
            <button type="button" class="btn btn-lg btn-salmon-color" data-toggle="modal" data-target="#ModalCarousel">
                View Restaurants
            </button>
        </div>
    </div>

    <!-- Button trigger modal -->


<%--    <ul>--%>
<%--        <li>Link: http://localhost:8080/capstone_war_exploded/searchForEvent</li>--%>
<%--        <li>Event ID: ${eventId}</li>--%>
<%--    </ul>--%>

    <!-- Modal -->
    <div class="modal fade" id="ModalCarousel" tabindex="-1" role="dialog" aria-labelledby="ModalCarouselLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div id="carousel-modal-demo" class="carousel slide" data-ride="false" data-interval="false"
                     data-wrap="false">
                    <!-- Sliding images statring here -->
                    <div class="carousel-inner">
                        <c:forEach var="index" begin="0" end="${restaurantList.size()-1}">
                            <c:choose>
                                <c:when test="${index ==  0}">
                                    <c:set var="activeOrNot" value="item active"/>
                                </c:when>
                                <c:otherwise>
                                    <c:set var="activeOrNot" value=""/>
                                </c:otherwise>
                            </c:choose>
                            <div class="item ${activeOrNot}">
                                <div class="card" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false"
                                     tabindex="-1"
                                     aria-labelledby="staticBackdropLabel1" aria-hidden="true">
                                    <div class="card-dialog">
                                        <div class="card-content">
                                            <div class="card-header">
                                                <button type="button" class="close" data-dismiss="modal">X</button>
                                                <h2 class="card-title"
                                                    id="staticBackdropLabel1">${restaurantList.get(index).name}</h2>
                                            </div>
                                            <div class="card-body">
                                                <c:url var="restaurantImage"
                                                       value="/images/restaurant_${restaurantList.get(index).restaurantId}.png"></c:url>
                                                <img class="img-thumbnail w-50" src="${restaurantImage}"
                                                     alt="restaurant image"/>

                                                <c:forEach items="${allRestaurantSchedule.get(index)}" var="schedule">
                                                        <c:if test="${schedule.dayOfWeek == dateNow && schedule.timeOpen <= timeNow && schedule.timeClosed >= timeNow}">
                                                            <div class="label label-success">Open Now!</div>
                                                        </c:if>
                                                </c:forEach>

                                                <h5>Stars:</h5>
                                                <c:url var="star" value="/images/star.png" />
                                                <c:forEach begin="1" end="${restaurantList.get(index).stars}">
                                                    <img id = "starImage" src="${star}" alt="star">
                                                </c:forEach>
                                                <p>Category: ${restaurantList.get(index).category}</p>
                                                <p>Address: ${restaurantList.get(index).streetAddress}, ${restaurantList.get(index).city}, ${restaurantList.get(index).state} ${restaurantList.get(index).zipcode}</p>
                                                <c:forEach items="${allRestaurantSchedule.get(index)}" var="schedule">
                                                    <ul id="schedule">
                                                        <li><c:choose>
                                                            <c:when test="${schedule.dayOfWeek == 1}">
                                                                <strong>Monday:</strong> ${schedule.timeOpen} - ${schedule.timeClosed}
                                                            </c:when>
                                                            <c:when test="${schedule.dayOfWeek == 2}">
                                                                <strong>Tuesday:</strong> ${schedule.timeOpen} - ${schedule.timeClosed}
                                                            </c:when>
                                                            <c:when test="${schedule.dayOfWeek == 3}">
                                                                <strong>Wednesday:</strong> ${schedule.timeOpen} - ${schedule.timeClosed}
                                                            </c:when>
                                                            <c:when test="${schedule.dayOfWeek == 4}">
                                                                <strong>Thursday:</strong> ${schedule.timeOpen} - ${schedule.timeClosed}
                                                            </c:when>
                                                            <c:when test="${schedule.dayOfWeek == 5}">
                                                                <strong>Friday:</strong> ${schedule.timeOpen} - ${schedule.timeClosed}
                                                            </c:when>
                                                            <c:when test="${schedule.dayOfWeek == 6}">
                                                                <strong>Saturday:</strong> ${schedule.timeOpen} - ${schedule.timeClosed}
                                                            </c:when>
                                                            <c:otherwise>
                                                                <strong>Sunday:</strong> ${schedule.timeOpen} - ${schedule.timeClosed}
                                                            </c:otherwise>
                                                        </c:choose></li>
                                                    </ul>
                                                </c:forEach>
                                                <!--start of button -->

                                                <c:set var="restaurant" value="${restaurantList.get(index).restaurantId}"></c:set>
                                                <c:url var="viewRestaurantsResultsUrl1" value="/viewRestaurantsResults">
                                                    <c:param value="${restaurant}" name="restaurant"></c:param>
                                                    <c:param name="reaction" value="true"></c:param>
                                                    <c:param name="eventId" value="${eventId}"></c:param>
                                                </c:url>
                                                <c:url var="viewRestaurantsResultsUrl2" value="/viewRestaurantsResults">
                                                    <c:param value="${restaurant}" name="restaurant"></c:param>
                                                    <c:param name="reaction" value="false"></c:param>
                                                    <c:param name="eventId" value="${eventId}"></c:param>
                                                </c:url>

                                                <div class="card-footer">
                                                    <div class="row">
                                                        <form class="col-md-6" method="POST"
                                                              action="${viewRestaurantsResultsUrl2}">
                                                            <button id='dislike${index}' type="submit"
                                                                    class="btn btn-danger bi bi-heartbreak-fill"
                                                                    data-bs-target="#staticBackdrop"
                                                                    onclick="disable('like${index}', 'dislike${index}')">
                                                                Dislike
                                                            </button>
                                                        </form>
                                                        <form class="col-md-6" method="POST"
                                                              action="${viewRestaurantsResultsUrl1}">
                                                            <button id='like${index}' type="submit"
                                                                    class="btn btn-primary bi bi-heart-fill"
                                                                    data-bs-target="#staticBackdrop"
                                                                    onclick="disable('like${index}', 'dislike${index}')">
                                                                Like
                                                            </button>
                                                        </form>
                                                    </div>


                                                    <br>

                                                    <div class="row btn-group dropup">
                                                        <c:if test="${restaurantList.get(index).phoneNumber != null}">
                                                            <div class="dropdown mr-5 col-md-6">
                                                                <button class="btn btn-success" type="button" id="dropdownMenuButton1" data-toggle="dropdown" aria-expanded="false">
                                                                    Call To Order
                                                                </button>
                                                                <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                                                    <li><a class="dropdown-item">${restaurantList.get(index).phoneNumber}</a></li>
                                                                </ul>
                                                            </div>
                                                        </c:if>

                                                    <!--next and previous button -->
                                                        <c:choose>
                                                            <c:when test="${index == restaurantList.size()-1}">
                                                                <a class="right fix-bottom col-md-6" href="#carousel-modal-demo" data-slide="next">
                                                                    <button type="submit" class="btn btn-secondary" data-dismiss="modal"
                                                                            data-bs-target="#staticBackdrop"> Submit & Close
                                                                    </button>
                                                                </a>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <a class="right fix-bottom col-md-6" href="#carousel-modal-demo" data-slide="next">
                                                                    <button type="submit" class="btn btn-secondary"
                                                                            data-bs-target="#staticBackdrop" > Next
                                                                    </button>
                                                                </a>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="//code.jquery.com/jquery.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

<script>
    function disable(likeId, dislikeId) {
// submit or validate here , disable after that using below

        document.getElementById(likeId).classList.add('disabled');
        document.getElementById(dislikeId).classList.add('disabled');
    }

</script>
</body>
</html>
<%@ include file="common/header.jsp" %>

<body>
<section class="salmon-section" id="front-page-heading">
    <div class="container-fluid">
        <div class="row">
            <div class="about-column col lg-6">
                <h1 class="front-page-title">restaurant tinder</h1>
                <h2>Swiping right has never tasted better.
                </h2>
                <c:url var="registerUrl" value="/register"/>
                <form action="${registerUrl}" method="GET">
                <button type="submit" class="btn btn-outline-light btn-lg join-now-button"><i class="fa-thin fa-fire-flame-curved"></i>Join Now</button>
                    <h6 class="text-white"><em>Warning: may become pregnant (with a food baby)</em></h6>
                </form>


            </div>

            <div class="about-column col lg-6 .larger-img">
                <img class="front-cover-img" src="images/color_logo.png" width="500" height="600" alt="colored logo"/>
            </div>
        </div>
    </div>
</section>

<%--middle-one--%>
<section class="white-section" id="middle-features">
    <div class="container-fluid">
        <div class="row">
    <div class="middle-display-left col-lg-6 showcase-img">
        <img class="cover-img" src="images/together-2.png" alt="colored logo">
    </div>

            <div class="middle-display-right col-lg-6 my-auto showcase-text">
                <i class="fas fa-solid fa-gem fa-4x icon"></i>
                <h3 class="feature-title">It&#39s all here.
                    All in one app.</h3>
                <p>Discover local, on-demand delivery or Pickup from restaurants, nearby grocery and convenience stores, and more
                    .</p>
            </div>
        </div>
    </div>
</section>

<%--middle-two--%>
<section class="white-section" id="middle-features">
    <div class="container-fluid">
        <div class="row">
                <div class="middle-display-right col-lg-6 my-auto showcase-text">
                <i class="fas fa-solid fa-seedling fa-4x icon"></i>
                <h3 class="feature-title">As Real As It Gets.</h3>
                <p>We partner with restaurants that have Real Ingredients. Real Purpose. And Real Flavor.</p>
            </div>

                <div class="middle-display-left col-lg-6 showcase-img">
                    <img class="cover-img" src="images/real-food.jpg" alt="colored logo">
            </div>
        </div>
    </div>
</section>

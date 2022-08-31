<%@ include file = "common/header.jsp" %>

<%--<h1>Search for your Event!</h1>--%>

<body>

<%--<div>Please enter the following information to gain access to your event!</div>--%>
<%--<br>--%>

<c:url var="formAction" value="/searchForEvent"/>
<%--<form id="main-content" method="POST" action="${formAction}">--%>
<%--    <label for="guestName">Enter your name: </label>--%>
<%--    <input type="text" id="guestName" name="guestName"/>--%>
<%--    <br>--%>

<%--    <label for="eventNumber">Enter your event number: </label>--%>
<%--    <input type="number" id="eventNumber" name="eventNumber"/>  &lt;%&ndash; change type? &ndash;%&gt;--%>
<%--    <br>--%>

<%--    <button type="submit">Submit</button>--%>

<%--</form>--%>


<form id="main-content" class="row justify-content-center w-50 mx-auto mt-5 border-white rounded p-5 form-bg shadow" action="${formAction}" method="POST">
    <h1 class="text-center salmon-text-color">search for your event</h1>
    <h6 class="text-center">Please enter the following information to gain access to your event!</h6>
    <div class="form-group">
        <label for="guestName">Enter your name: </label>
        <input type="text" class="form-control" id="guestName" name="guestName" placeholder="enter name" required>
    </div>
    <div class="form-group">
        <label for="eventNumber">Enter your event number: </label>
        <input type="number" class="form-control" id="eventNumber" name="eventNumber" placeholder="enter event number" min="0" required>
    </div>
    <button type="submit" class="btn btn-default btn-color w-25 mt-3">Submit</button>
</form>


</body>


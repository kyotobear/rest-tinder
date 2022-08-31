<%@ include file = "common/header.jsp" %>

  <body>
  <c:url var="formAction" value="/viewRestaurants"/>
  <form class="row justify-content-center text-center w-50 mx-auto mt-5 border-white rounded p-5 form-bg shadow" action="${formAction}" method="POST">
    <h1 class="text-center salmon-text-color">kick off an event</h1>
    <div class="form-group mb-3">
      <label class="form-label" for="cuisine">Cuisine Preference: </label>
      <select id="cuisine" name="cuisine">
        <option value = "American">American</option>
        <option value = "Spanish">Spanish</option>
        <option value = "Barbeque">Barbeque</option>
        <option value = "Cafes">Cafes</option>
        <option value = "Italian">Italian</option>
        <option value = "Chinese">Chinese</option>
        <option value = "Japanese">Japanese</option>
        <option value = "Thai">Thai</option>
        <option value = "Mexican">Mexican</option>
        <option value = "Any Category">Any Category</option>
      </select>
    </div>
    <div class="form-group mb-3">
      <label class="form-label" for="city">City: </label>
      <select id="city" name="city">
        <option value = "Mountain View">Mountain View, CA</option>
        <option value = "Palo Alto">Palo Alto, CA</option>
      </select>
    </div>
    <div class="form-group mb-3">
      <label class="form-label" for="deadline"> Voting Deadline: </label>
      <input type="date" id="deadline" name="deadline" min="${todayDate}" required/>
    </div>
    <button type="submit" class="btn btn-default btn-color w-25 mt-3">Submit</button>
  </form>

  </body>


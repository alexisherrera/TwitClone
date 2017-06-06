<html>

<head>
  <title>Search TwitClone</title>
  <meta name="layout" content="main" />
</head>

<body>
  <!--<g:link controller = "Profile" action="index" id ="${session.user.userId}">profile</g:link> -->
  <g:link controller = "Timeline" action="index">timeline</g:link>
  <g:link controller = "Auth" action="logout">logout</g:link>
  <formset>
    <legend>Search for Users or Tweets!</legend>

    <!-- this g:form action indicates that this form should be sent to
    the results action in the user controller -->
    <g:form action="searchUser">
      <label for="userId">User Id</label>
      <!-- g:textField indicates that the name of the textbox is
      userId, so we can handle it's input in in the results action in our
      controller -->
      <g:textField name="userId" />
      <g:submitButton name="search" value="Search" />
    </g:form>
  </formset>
  <div class="allUsers">
    <g:each in="${users}" var="user">
      <div class="userEntry">
        <div class="userId">
          ${user.userId}
        </div>
      </div>
    </g:each>
  </div>
</body>

</html>

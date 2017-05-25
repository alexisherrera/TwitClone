<html>

<head>
  <title>Search Results for TwitClone</title>
  <meta name="layout" content="main" />
</head>

<body>

  <legend>Search Results</legend>

  <div class="allUsers">
    <g:each in="${users}" var="user">
      <div class="userEntry">
        <div class="userId">
          ${user.userId}
        </div>
        <g:form action = "follow">
          <dl>
            <dt>User Id:</dt>
            <dt name ="userId">${user.userId}
            <g:radio name="userId" value="${user.userId}"/>
            <g:submitButton name = "register" value = "Follow" />
            </dt>
          </dl>
        </g:form>

      </div>
    </g:each>
  </div>
</body>

</html>

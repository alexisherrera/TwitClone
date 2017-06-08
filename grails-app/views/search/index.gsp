<html>

<head>
  <title>Search TwitClone</title>
  <meta name="layout" content="main" />
</head>

<body>

  <!-- this g:form action indicates that this form should be sent to
    the results action in the user controller -->
  <div class="container">
    <br />
    <div class="jumbotron">
      <h3>Search for users!</strong></h3>
      <p>
        Lookup a person's username:
      </p>
      <form action="/twitclone/search/searchUser">
        <div class="input-group input-group-md">
          <span class="input-group-addon" id="sizing-addon1">@</span>
          <input type="text" class="form-control" placeholder="Username" aria-describedby="sizing-addon1" name="userId">
        </div>
        <input class="btn btn-primary" type="submit" value="search!" style="background-color: ${session.user.favColor};">
      </form>

    </div>
  </div>

  <g:if test="${users}">
    <div class="container">
      <h3>Search Results:</h3>

      <div class="allUsers">

        <g:each in="${users}" var="user">
          <div class="card text">
            <div class="card-header">
              <a href="/twitclone/profile/index/${user.userId}"> <button type="button" class="btn btn-primary" style="background-color: ${user.favColor};"><strong>${user.profile.fullName}</strong>
              <br /> @${user.userId}</button></a>

            </div>
            <div class="card-block">
              <p class="card-text"><strong>Bio: </strong>${user.profile.bio}</p>

              <g:if test="${followingMap[user.userId]}">
                  <button type="button" class="btn btn-primary disabled" style="background-color: ${user.favColor};"><strong>following</strong></button>
              </g:if>
              <g:else>
                <form action="follow">
                  <button type="submit" name = "userId" value="${user.userId}" class="btn btn-primary" style="background-color: ${user.favColor};">Follow</button>
                  <form/>
              </g:else>

            </div>
          </div>
        </g:each>

      </div>
    </div>
  </g:if>

</body>

</html>

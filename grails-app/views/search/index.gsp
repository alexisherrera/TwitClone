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
        <input class="btn btn-primary" type="submit" value="search!">
      </form>

    </div>
  </div>


  <div class="container">

    <g:each in="${tweets}" var="post">
      <div class="card text">
        <div class="card-header">
          ${post.user.profile.fullName}
        </div>
        <div class="card-block">
          <p class="card-text">${post.content}</p>
        </div>
        <div class="card-footer text-muted">
          ${post.dateCreated}
        </div>
      </div>
      <br />
    </g:each>

  </div>
  <g:if test="${users}">
    <div class="container">
      <h3>Search Results:</h3>

      <div class="allUsers">

        <g:each in="${users}" var="user">
          <div class="card text">
            <div class="card-header">
              <strong>${user.profile.fullName}</strong>
              <br /> @${user.userId}
            </div>
            <div class="card-block">
              <p class="card-text"><strong>Bio: </strong>${user.profile.bio}</p>
              <g:form action="follow">
                <g:radio name="userId" value="${user.userId}" />
                <g:submitButton name="register" value="Follow" />
                </dt>
                </dl>
              </g:form>
            </div>
          </div>
        </g:each>

      </div>
    </div>
  </g:if>

</body>

</html>

<html>

<head>
  <title>Search TwitClone</title>
  <meta name="layout" content="main" />
</head>

<body>

  <!-- this g:form action indicates that this form should be sent to
    the results action in the user controller -->
  <div class="container">
    <div class="jumbotron">
      <h3>Search for users!</strong></h3>
      <p>
        Lookup a person's username:
      </p>
      <form action = "/twitclone/search/searchUser">
        <div class="input-group input-group-md">
          <span class="input-group-addon" id="sizing-addon1">@</span>
          <input type="text" class="form-control" placeholder="Username" aria-describedby="sizing-addon1" name = "userId">
        </div>
        <input class="btn btn-primary" type="submit" value="search!">
    </form>

    </div>
  </div>
</body>

</html>

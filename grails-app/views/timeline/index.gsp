<html>

<head>
  <meta name="layout" content="main" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
  <title>Timeline for ${session.user.profile.fullName}</title>
</head>

<body>


  <div class="container">
    <div class="row">
      <div class="col-md-6 col-md-offset-3">
        <div id="newPost">
          <g:if test="${flash.message}">
            <div class="flash">
              ${flash.message}
            </div>
          </g:if>

        </div>
      </div>
    </div>
  </div>
  <div class="container">
    <div class="jumbotron">
      <h3>Welcome ${session.user.profile.fullName}. What's on your mind?</h3>
      <form action = "/twitclone/timeline/addPost" id = "${session.user.userId}">
        <div class="input-group">
          <span class="input-group-addon" id="basic-addon1">&#129300;</span>
          <input type="text" class="form-control" placeholder="Tell the world something" aria-describedby="basic-addon1" rows="3 " cols="50" name = "content" id = "postContent">
        </div>
        <input class="btn btn-primary" type="submit" value="Tweet!">
      </form>
    </div>
  </div>

  <div class="container">

    <g:each in="${tweets}" var="post">
      <div class="card text-center">
        <div class="card-header">
          ${post.user.profile.fullName}
        </div>
        <div class="card-block">
          <p class="card-text">${post.content}</p>
          <a href="#" class="btn btn-primary">Go somewhere</a>
        </div>
        <div class="card-footer text-muted">
          ${post.dateCreated}
        </div>
      </div>
    </g:each>

  </div>




</body>

</html>

<html>

<head>
  <link rel="shortcut icon" href="/web-app/images/favicon.ico"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
  <title>Twitclone - Login</title>
</head>

<body>
  <g:if test="${flash.message}">
    <div class="message" style="display: block">${flash.message}</div>
  </g:if>

  <div class="container">
    <br />
    <div class="jumbotron">
      <div class="col-md-6 col-md-offset-3">
      <div class="col-md-6 col-md-offset-3">
        <h2>Sign in</h2>
        <form action="auth/login">
          <label>Username: <input type="text" name="userId" /></label><br />
          <label>Password: <input type="password" name="password" /></label><br />
          <input type="submit" value="login" />
        </form>
        <a href="register">I do not not have an account</a>
      </div>
    </div>
  </div>
  </div>

</body>

</html>

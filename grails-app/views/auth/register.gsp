<html>
  <head>
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" />
    <title>Register New User</title>
  </head>

  <body>
    <g:if test="${flash.message}">
      <div class="message" style="display: block">${flash.message}</div>
    </g:if>

    <div class="col-md-6 col-md-offset-3">
    <h2>Register New User</h2>
    <form action = "/twitclone/auth/registerNewUser">
      <label>Username: <input type="text" name="userId" /></label><br />
      <label>Password: <input type="text" name="password" /></label><br />
      <label>Full Name: <input type="text" name= "profile.fullName" /></label><br />
      <label>Bio: <input type="text" name="profile.bio" /></label><br />
      <label>Email: <input type="text" name="profile.email" /></label><br />
      <label>Pick your favorite color: <input type="color" name ="favColor"></label><br/>
      <input type="submit" value="Register" />
  </form>
  <a href ="/twitclone/">I have an account</a>
  </div>

  </body>
</html>

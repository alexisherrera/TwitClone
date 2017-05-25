<html>
  <head>
    <title>Register New User</title>
    <meta name = "layout" content = "main"/>
  </head>

  <body>
    <h1>Register New User</h1>

    <g:if test="${flash.message}">
      <div class="message" style="display: block">${flash.message}</div>
    </g:if>

    <g:form action = "registerNewUser">
      <dl>
        <dt>User Id</dt>
        <dd><g:textField name = "userId" value = "${user?.userId}" /></dd>

        <dt>Password</dt>
        <dd><g:passwordField name = "password" value = "${user?.password}" /></dd>

        <dt>Full Name</dt>
        <dd><g:textField name = "profile.fullName" value = "${user?.profile?.fullName}" /></dd>

        <dt>Bio</dt>
        <dd><g:textField name = "profile.bio" value = "${user?.profile?.bio}" /></dd>

        <dt>Email Address</dt>
        <dd><g:textField name = "profile.email" value = "${user?.profile?.email}" /></dd>

        <dt><g:submitButton name = "register" value = "Register New User" /></dt>

      </dl>
    </g:form>
    <g:link controller = "Auth" action="register">I have an account</g:link>

  </body>
</html>

<html>
  <head>
    <title>Login</title>
    <meta name = "layout" content = "main"/>
  </head>

  <body>
    <h1>Sign in</h1>
    <g:if test="${flash.message}">
      <div class="message" style="display: block">${flash.message}</div>
    </g:if>

    <g:form action = "login">
      <dl>
        <dt>User Id</dt>
        <dd><g:textField name = "userId" /></dd>

        <dt>Password</dt>
        <dd><g:passwordField name = "password"/></dd>

        <dt><g:submitButton name = "register" value = "Log in" /></dt>
      </dl>
    </g:form>
    <g:link controller = "Auth" action="register">I don't have an account</g:link>

  </body>
</html>

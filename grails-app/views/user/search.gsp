<html>

<head>
  <title>Search TwitClone</title>
  <meta name="layout" content="main" />
</head>

<body>
  <formset>
    <legend>Search for Friends</legend>

    <!-- this g:form action indicates that this form should be sent to
    the results action in the user controller -->
    <g:form action="results">
      <label for="userId">User Id</label>
      <!-- g:textField indicates that the name of the textbox is
      userId, so we can handle it's input in in the results action in our
      controller -->
      <g:textField name="userId" />
      <g:submitButton name="search" value="Search" />
    </g:form>
  </formset>
</body>

</html>

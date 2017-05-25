<head>
  <title>Form to Upload Image</title>
  <meta name = "layout" content = "main"/>
</head>

<body>
  <h1>Upload Image</h1>

  <g:uploadForm action = "upload">
    User Id:
    <g:select name = "userId" from = "${userList}" optionKey = "userId" optionValue = "userId" />
    Photo:<input name = "photo" type = "file" />
    <g:submitButton name = "upload" value = "Upload" />
  </g:uploadForm>


</body>
</html>

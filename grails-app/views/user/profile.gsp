<head>
  <title>${session.user.profile.fullName}'s profile'</title>
  <meta name = "layout" content = "main"/>
</head>

<body>
  <div class = "profilePic">
    <g:if test = "${profile.photo}">
    <img src="${createLink(controller: 'image', action: 'renderImage', id: userId)}"/>
    </g:if>
    <p>Profile for <strong>${session.user.profile.fullName} </strong></p>
    <p>Bio: ${session.user.profile.bio}</p>

  </div>

</body>
</html>

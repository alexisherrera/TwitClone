<head>
  <title>${session.user.profile.fullName}'s profile'</title>
  <meta name = "layout" content = "main"/>
</head>

<body>
  <g:link controller = "Timeline" action="index">timeline</g:link>
  <g:link controller = "Search" action="index">search</g:link>
  <g:link controller = "Auth" action="logout">logout</g:link>
  <div class = "profilePic">
    <g:if test = "${session.user.profile.photo}">
    <img src="${createLink(controller: 'image', action: 'renderImage', id: userId)}"/>
    </g:if>
    <p>Profile for <strong>${session.user.profile.fullName} </strong></p>
    <p>Bio: ${session.user.profile.bio}</p>
  </div>

  <div class = "personalTweets">
    <g:each in="${tweets}" var="post">
      <div class="postEntry">
        <div class="postText">
          ${post.content}
        </div>
        <div class="postDate">
          ${post.dateCreated}
        </div>
      </div>
    </g:each>
  </div>

</body>
</html>

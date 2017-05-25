<html>

<head>
  <title>Timeline for ${session.user.profile.fullName}</title>
  <meta name="layout" content="main" />
</head>

<body>
  <g:link controller = "Auth" action="logout">logout</g:link>
  <g:link controller = "Search" action="index">search</g:link>
  <g:link controller = "Profile" action="index" id ="${session.user.userId}">profile</g:link>
  <h2>Who I follow</h2>
  <div class="following">
    <g:each in="${following}" var="user">
      <div class="userEntry">
        <div class="userplaceholder">
          ${user.userId}
        </div>
      </div>
    </g:each>
  </div>

  <h1>Timeline for ${session.user.profile.fullName}</h1>
  <div id="newPost">
    <g:if test="${flash.message}">
      <div class="flash">
        ${flash.message}
      </div>
    </g:if>
    <h3>What is ${session.user.profile.fullName} thinking of right now?</h3>
    <p>
      <g:form action="addPost" id="${session.user.userId}">
        <g:textArea id="postContent " name="content" rows="3 " , cols="50" />
        <br/>
        <g:submitButton name="post " value="Post " />
      </g:form>
    </p>
  </div>
  <div class="allPosts">
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

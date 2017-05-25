package twitclonepractice

class AuthController {

  //this will be our action for default page where we will handle log ins
  def index() { }

  //this will be our action to log in users
  def login() {
    def user = User.findByUserId(params?.userId)

    //if we found the user and the password matches, authenticate
    if (user && user.password == params?.password) {
      authent(user)
      //redirect to our new timeline
      redirect(controller:'timeline', action: 'index')
    }
    else {
      flash.message = "We couldn't log you in"
      redirect(action: "index")
    }
  }

  //registeration action page
  def register() {

  }

  //actually register user into our webpage. use this method to avoid
  //initial flash messages
  def registerNewUser() {
    def user = new User(params)
    if (user.validate()) {
      user.save()

      //set up our new message
      flash.message ="Successfully created user"

      //authenticate newly created user
      authent(user)

      //redirect to our new timeline
      redirect(controller:'timeline', action: 'index')
    }
    else {
      //redirect to our register page with the errors displayed
      flash.message = "Error registering the user"
      redirect(action: "register")
    }
  }

  //action to log a user out
  def logout() {
    session.invalidate()
    redirect(uri: '/')
  }

  //action to authenticate user, aka set them as session.user
  def authent(user) {
    //create user as session user and reattatch lazy relationships
    session.user = user
    if (!session.user.isAttached()) {
      session.user.attach()
    }
  }

}

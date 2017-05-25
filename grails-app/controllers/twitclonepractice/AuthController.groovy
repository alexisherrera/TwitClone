package twitclonepractice

class AuthController {
  def loginService
  def registerService
  def logoutService

  //this will be our action for default page where we will handle log ins
  def index() { }

  //this will be our action to log in users
  def login() {
    try {
      def user = loginService.login(params?.userId)
      session.user = user
      if (!session.user.isAttached()) { session.user.attach() }
      //redirect to our new timeline
      redirect(controller:'timeline', action: 'index')
    }
    catch(LoginException e) {
      flash.message = e.message
      redirect(action: "index")
    }
  }

  //registeration action page
  def register() { }

  //actually register user into our webpage. use this method to avoid
  //initial flash messages
  def registerNewUser() {
    try {
      def user = registerService.registerUser(params)
      session.user = user
      if (!session.user.isAttached()) { session.user.attach() }
      redirect(controller:'timeline', action: 'index')
      flash.message ="Successfully created user"
    }
    catch(RegisterException e) {
      flash.message = e.message
      redirect(action: "register")
    }
  }

  //action to log a user out
  def logout() {
    logoutService.logout()
    redirect(uri: '/')
  }
}

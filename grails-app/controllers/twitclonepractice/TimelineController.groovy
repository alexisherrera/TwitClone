package twitclonepractice

class TimelineController {

  def postService

  //main page for displaying your tweets as well as the tweets of
  //everyone else that you follow
  def index() {
    
    def user = User.findByUserId(session.user.userId)

    //retrieve values from the database
    def tweets = Post.createCriteria()
    def timelineTweets =  tweets.list {
      or {
          eq('user', user)
        if (user.following) {
          inList('user', user.following)
          println(user.following)
        }
      }
      maxResults(10)
      order('dateCreated', 'desc')
    }

    return [following: user.following, tweets: timelineTweets]
  }

  //if the session user decides to tweet
  def addPost() {
    try {
      def newPost = postService.createPost(session.user.userId, params.content)
      flash.message = "Added the tweet successfully"
    }
    catch (PostException pe) {
      flash.message = pe.message
    }
    redirect(action: "index")
  }
}

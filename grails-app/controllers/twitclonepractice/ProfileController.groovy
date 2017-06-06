package twitclonepractice
import grails.converters.JSON

class ProfileController {

  def index() {
    def user = User.findByUserId(params.id)
    //retrieve values from the database
    def tweets = Post.createCriteria()
    def timelineTweets = tweets.list {
      eq('user', user)
      maxResults(10)
      order('dateCreated', 'desc')
    }
    return [tweets: timelineTweets] as JSON
  }
}

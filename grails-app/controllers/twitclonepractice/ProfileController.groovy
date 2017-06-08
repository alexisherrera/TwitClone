package twitclonepractice
import grails.converters.JSON
import groovy.time.TimeCategory
import groovy.time.TimeDuration

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
    return [name: user.profile.fullName, bio: user.profile.bio, tweets: timelineTweets,
    color: user.favColor, followingSize: user.following.size(), followersSize: user.followers.size()]
  }
}

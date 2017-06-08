package twitclonepractice
import grails.converters.JSON

class SearchController {
  def followService
  def usersToDisplay

  def index() {
    if (usersToDisplay) {
      def usersMap = usersToDisplay
      this.usersToDisplay = null
      def followingMap = [:]
      def sesUser = User.findByUserId(session.user.userId)
      usersMap.each {

        sesUser.following.each { ses ->
          if (ses.userId == it.userId) {
            followingMap[it.userId] = true;
          }
          else {
            followingMap[it.userId] = false;
          }
        }
      }
      return [users: usersMap, followingMap: followingMap]
    }

  }

  def searchUser() {
    def users = User.findAllByUserIdLike("%${params.userId}%")
    this.usersToDisplay = users
    redirect(controller: 'search')
  }

  def follow() {
    try {
      followService.follow(session.user.userId, params.userId)
    }
    catch(FollowException e) {
      flash.message = e.message
    }
    redirect(action: 'index')
  }
}

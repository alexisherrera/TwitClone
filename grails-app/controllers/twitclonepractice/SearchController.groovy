package twitclonepractice

class SearchController {
  def followService

  def index() {

  }

  def searchUser() {
    def users = User.findAllByUserIdLike("%${params.userId}%")
    return [users: users]
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

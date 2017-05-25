package twitclonepractice
import twitclonepractice.*

class UserController {
  def scaffold = true

  def search = {

  }

  def results = {
    def users = User.findAllByUserIdLike("%${params.userId}%")
    return [users: users, term: params.userId]
  }

  def register = {
    def user = new User(params)
    if (user.validate()) {
      user.save()
      flash.message ="Successfully created user"
      redirect(uri: '/')
    }
    else {
      flash.message = "Error registering the user"
      return [user: user]
    }
  }

  def profile = {
    def user = User.findByUserId(params.id)
    return[profile: user.profile, userId: user.userId]
  }
}

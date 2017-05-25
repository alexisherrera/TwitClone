package twitclonepractice

class PostController {
  def scaffold = true
  def postService


  def timeline = {
    def user = User.findByUserId(params.id)
    return [user: user]
  }

  def addPost = {
    try {
      def newPost = postService.createPost(id, content)
      flash.message = "Added the post successfully"
    }
    catch (PostException pe) {
      flash.message = pe.message
    }
    redirect(action: timeline, id: id)


    /*def user = User.findByUserId(params.id)
    if (user != null) {
      def post = new Post(params)
      user.addToPosts(post)
      if (user.save(flush:true, failOnError:true)) {
        flash.message = "Successfully created post!"
      }
      else {
        user.discard()
        flash.message = "Invalid or empty post!"
      }
    }
    else {
      flash.message = "Invalid User Id"
    }
    redirect(action: 'timeline', id: params.id)
  }*/
  }
}

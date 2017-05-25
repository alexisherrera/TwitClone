package twitclonepractice

class PhotoUploadCommand {
  byte[] photo
  String userId
}

class ImageController {

  //action to handle uploading an image
  def upload = { PhotoUploadCommand puc ->
    def user = User.findByUserId(puc.userId)
    user.profile.photo = puc.photo
    redirect(controller: "user", action: "profile", id: puc.userId)
  }

  //pass all the users in the program over to the view
  def form = {
    return [userList: User.list()]
  }


  //action to view image. We will also redirect to this after we upload our image
  def renderImage = {
    def user = User.findByUserId(params.id)
    if (user?.profile?.photo) {
      response.setContentLength(user.profile.photo.length)
      response.outputStream.write(user.profile.photo)
    }
    else {
      response.sendError(404)
    }
  }
}

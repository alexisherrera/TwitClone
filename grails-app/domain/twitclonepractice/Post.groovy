package twitclonepractice
import groovy.time.TimeCategory
import groovy.time.TimeDuration

class Post {
  String content
  Date dateCreated

  static constraints = {
    content(blank: false, maxSize: 160)
    dateCreated()
  }

  //create mapping from Post back to corresponding User, which is also the owner
  static belongsTo = [user: User]

  static mapping = {
  }
}

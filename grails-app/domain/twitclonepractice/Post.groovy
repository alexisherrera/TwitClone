package twitclonepractice

class Post {

  String content
  Date dateCreated

  static constraints = {
    content(blank: false, maxSize: 160)
    dateCreated()
  }

  //create mapping from Post back to corresponding User, which is also the owner
  static belongsTo = [user: User]

  //specify ordering of our mapping returned of Post objects when accessed
  //by the owner, a User instance
  static mapping = {
    dateCreated: "desc"
  }
}

package twitclonepractice

class Tag {

  String tagName
  User user

  static constraints = {
    tagName(blank: false)
  }

  static hasMany = [posts: Post]

  //Although we have declared a many-to-many relationship,
  //we designate belongs to between tag and post to declare
  //from which "side" we can declare new tags
  //in this case, Tags can only be created from User and Post instances
  static belongsTo = [User, Post]
}

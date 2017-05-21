package twitclonepractice

class User {
  String userID
  String password
  String homepage
  Date dateCreated

  Profile profile

  static constraints = {
    userID(size: 3..20, unique: true)
    password(size: 6..8, validator: { pass, user -> pass != user.userID})
    homepage(url: true, nullable: true)
    dateCreated()
  }

  //load our profile with our user
  static mapping = {
    profile lazy: false
  }

  //declare 1:many relationship between User and Post classes
  static hasMany = [posts: Post]
}

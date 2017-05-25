package twitclonepractice

class User {
  String userId
  String password
  String homepage
  Date dateCreated

  Profile profile

  static constraints = {
    userId(size: 3..20, unique: true)
    password(size: 6..8, validator: { pass, user -> pass != user.userId})
    homepage(url: true, nullable: true)
    dateCreated()
  }

  //load our profile with our user
  static mapping = {
    profile lazy: false
    posts lazy: false
    tags lazy: false
    following lazy: false
    posts sort: 'dateCreated', order: 'desc'
  }

  //declare 1:many relationship between User and Post classes
  //declare 1: many relationship between User and Tag classes
  static hasMany = [following: User, posts: Post, tags: Tag]
  //static mappedBy = [following: 'following']
}

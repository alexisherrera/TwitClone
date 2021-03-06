package twitclonepractice

import grails.rest.Resource

class User {
  String userId
  String password
  String homepage
  String favColor
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
    table 'person'
    profile lazy: false
    posts lazy: false
    following lazy: false
    posts sort: 'dateCreated', order: 'desc'
  }

  //declare 1:many relationship between User and Post classes
  //declare 1: many relationship between User and Tag classes
  static hasMany = [following: User, followers: User, posts: Post]
  //static mappedBy = [following: 'following']


  //method to check if user follows another userId
  boolean follows(String home, String otherId) {
    def userHome = User.findByUserId(home)

    userHome.following.each {

      if (it.userId == otherId) { return true }
    }
    return false
  }
}

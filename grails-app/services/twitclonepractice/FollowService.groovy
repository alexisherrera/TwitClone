package twitclonepractice

import grails.transaction.Transactional

class FollowException extends RuntimeException {
  String message
}

@Transactional
class FollowService {
  boolean transactional = true

  //service method to follow another user
  void follow(String userIdUser, String userIdPersonToFollow) {
    def user = User.findByUserId(userIdUser)
    def personToFollow = User.findByUserId(userIdPersonToFollow)

    if (user && personToFollow) {
      user.addToFollowing(personToFollow)
      user.save(flush: true, failOnError: true)
    }
    else {
      throw new FollowException(message: "Couldn't find user")
    }

  }
}

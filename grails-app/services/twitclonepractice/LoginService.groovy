package twitclonepractice

import grails.transaction.Transactional

class LoginException extends RuntimeException {
  String message
}

@Transactional
class LoginService {

  //service to log a user in
  boolean login(String userId) {
    def user = User.findByUserId(userId)
    //if we found the user and the password matches, authenticate
    if (user && user.password == params?.password) {
      return user
      else { throw new LoginException(message: "We couldn't log you in!"); return null }
    }
    else { throw new LoginException(message: "We couldn't log you in"); return null }
  }
}

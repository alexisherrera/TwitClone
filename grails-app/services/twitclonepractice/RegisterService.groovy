package twitclonepractice

import grails.transaction.Transactional

class RegisterException extends RuntimeException {
  String message
}


@Transactional
class RegisterService {
  //service to register a user to the platform
  User registerUser(Map data) {
    def user = new User(data)
    //validate new user
    if (user.validate()) {
      user.save()
      return user
    }
    else { throw new RegisterException(message: "We couldn't register you!"); return null }

  }
}

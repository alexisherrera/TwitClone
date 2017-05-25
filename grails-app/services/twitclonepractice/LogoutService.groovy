package twitclonepractice

import grails.transaction.Transactional

@Transactional
class LogoutService {

  boolean logout() {
    def session = WebUtils.retrieveGrailsWebRequest().session
    session.invalidate()
  }
}

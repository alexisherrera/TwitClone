package twitclonepractice

import grails.test.*

class UserIntegration extends GrailsUnitTestCase {

  //test to check whether testing has gone all well for one user
  void testSaveUser() {
    def user = User([userId: 'Alexis', password: 'password'])
    assertNotNull(user.save())
    assertNotNull (user.id)

    def foundUser = User.get(user.id)
    assertEquals ('Alexis', foundUser.userId)
  }

  //test with multiple users and update certain fields
  void testSaveUsers() {
    def user1 = User([userId: 'Alexis', password: 'password'])
    def user2 = User([userId: 'Lily', password: 'password'])
    assertNotNull(user1.save())
    assertNotNull(user2.save())
    assertNotNull (user1.id)
    assertNotNull (user2.id)

    def foundUser1 = User.get(user1.id)
    assertEquals ('Alexis', foundUser.user1.Id)
    assertEquals('Lily', foundUser.user2.Id)
  }

}

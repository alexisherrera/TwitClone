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
    def foundUser2 = User.get(user2.id)
    assertEquals ('Alexis', foundUser1.userId)
    assertEquals('Lily', foundUser2.userId)

    user2.userId = "Maria"
    user2.save()
    foundUser2 = User.get(user2.id)
    assertEquals("Maria", foundUser2.userId)
  }

  //test our constraints our working
  void testUserConstraints() {
    def user1 = User([userId: 'Alexis', password: 'pass'])
    assertFalse(user1.validate())
    assertTrue(user1.hasErrors())
  }

  //test following
  void testFollowing() {
    def user1 = User([userId: 'Alexis', password: 'password'])
    def user2 = User([userId: 'Lily', password: 'password'])
    def user3 = User([userId: 'Yessy', password: 'password'])

    user1.save()
    user2.save()
    user3.save()

    user1.addToFollowing(user2)
    user1.addToFollowing(user3)

    assertEquals(2, user1.following.size())
    def list = [user1.following[0].userId, user1.following[1].userId]
    list.sort()
    assertEquals(['Lily', 'Yessy'], list)

    user2.addToFollowing(user1)
    assertEquals(1, user2.following.size())
    assertEquals(['Alexis'], [user2.following[0].userId])
  }

}

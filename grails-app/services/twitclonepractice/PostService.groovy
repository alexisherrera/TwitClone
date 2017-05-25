package twitclonepractice

import grails.transaction.Transactional

class PostException extends RuntimeException {
  String message
  Post post
}

@Transactional
class PostService {
  boolean transactional = true
  Post createPost(String userId, String content) {
    def user = User.findByUserId(userId)
    //if we found user, create post with message
    if (user) {
      Post post = new Post([content: content])
      user.addToPosts(post)
      if (user.save()) {
        return post
      }
      else {
        throw new PostException([message: "Invalid post", post: post])
      }
    }
    throw new PostException([message: "Invalid userId"])
  }
}

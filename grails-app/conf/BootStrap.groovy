import twitclonepractice.*
import grails.converters.JSON

class BootStrap {

    def init = { servletContext ->
      JSON.registerObjectMarshaller(User) {User user ->
			return [
					id: user.userId,
					password: user.password,
					homepage: user.homepage,
					dateCreated: user.dateCreated,
          profile: user.profile
          ]
		  }
    }
    def destroy = {
    }
}

class UrlMappings {

	static mappings = {
		//clean up the link appearance of the application
		"/" {
					controller = "auth"
					action = "index"
				}

				"/register" {
					controller = "auth"
					action = "register"
				}

				"/timeline" {
					controller = "timeline"
					action = "index"
				}

        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
        "500"(view:'/error')
	}
}

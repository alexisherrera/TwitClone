class UrlMappings {

	static mappings = {

		//set up our URL mappings so they are prettier
		"/timeline" {
			controller = "timeline"
			action = "index"
		}

		"/search" {
			controller = "search"
			action = "index"
		}

		"/search/${userId}" {
			controller = "search"
			action = "searchUser"
		}

		"/${userId}" {
			controller = "profile"
			action = "index"
		}

		"/"(view:"/index")


        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "500"(view:'/error')
	}
}

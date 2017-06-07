package twitclone

class AuthensecurityFilters {

    def filters = {
      authenticationSecurity(controller:'timeline|user|post|profile', action:'*') {
            before = {
              //if no session user fail the filter and redirect the user
              if (!session.user) {
                redirect(uri:"/")
                return false
              }
                return true
              }
              after = { Map model ->

              }
              afterView = { Exception e ->

            }
          }
    }
}

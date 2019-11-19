package practical.exam


class MemberInterceptor {
    AuthenticationService authenticationService

    boolean before() {
        if (authenticationService.isAdministratorMember()){
            return true
        }
        flash.message = AppUtil.infoMessage("This is a restricted access for administrator.", false)
        redirect(controller: "dashboard", action: "index")
        return false
    }
}

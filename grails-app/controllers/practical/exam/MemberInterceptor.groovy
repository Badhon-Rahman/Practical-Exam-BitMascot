package practical.exam


class MemberInterceptor {
    AuthenticationService authenticationService

    boolean before() {
        if (authenticationService.isAdministratorMember()){
            return true
        }
        flash.message = AppUtil.infoMessage("This restricted access only for admin user.", false)
        redirect(controller: "dashboard", action: "index")
        return false
    }
}

package practical.exam


class PasswordInterceptor {

    AuthenticationService authenticationService

    boolean before() {
        if (!authenticationService.isAdministratorMember()){
            return true
        }
        flash.message = AppUtil.infoMessage("This is a restricted access for Regular User only.", false)
        redirect(controller: "dashboard", action: "index")
        return false
    }
}

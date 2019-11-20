package practical.exam

class PasswordController {
    MemberService memberService
    def newPassword = ""
    def passwordMassage = ""
    def matchValidation = false
    def changePassword() {
        def id
        id = memberService.getUserId()
        if (flash.redirectParams) {
            [member: flash.redirectParams]
        } else {
            def response = memberService.getById(id)
            if (!response) {
                flash.message = AppUtil.infoMessage(g.message(code: "invalid.entity"), false)
                redirect(controller: "dashboard", action: "index")
            } else {
                [member: response]
            }
        }
    }

    def update() {
        def id = memberService.getUserId()
        def response = memberService.getById(id)
        if (!response){
            flash.message = AppUtil.infoMessage(g.message(code: "invalid.entity"), false)
            redirect(controller: "dashboard", action: "index")
        }else{
            response = memberService.update(response, params)
            if (!response.isSuccess){
                flash.redirectParams = response.model
                flash.message = AppUtil.infoMessage(g.message(code: "unable.to.update"), false)
                redirect(controller: "password", action: "changePassword")
            }else{
                flash.message = AppUtil.infoMessage(g.message(code: "updated"))
                redirect(controller: "dashboard", action: "index")
            }
        }
    }

    def matchedPassword(ev) {
        def matchedPassword = ev.target.value;
        if (this.newPassword == matchedPassword) {
            this.passwordMassage = "Password matched";
            this.matchValidation = true;
        } else {
            this.passwordMassage = "Password did not matched";
            this.matchValidation = false;
        }
    }
}

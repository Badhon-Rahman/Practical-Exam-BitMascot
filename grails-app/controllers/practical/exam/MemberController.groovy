package practical.exam

class MemberController {
    MemberService memberService
    AuthenticationService authenticationService

    def index() {
        def response = memberService.list(params)
        [memberList: response.list, total:response.count]
    }


    def create() {
        [member: flash.redirectParams]
    }


    def save() {
        def response = memberService.save(params)
        if (!response.isSuccess) {
            flash.redirectParams = response.model
            flash.message = AppUtil.infoMessage(g.message(code: "unable.to.save"), false)
            redirect(controller: "member", action: "create")
        }else{
            flash.message = AppUtil.infoMessage(g.message(code: "saved"))
            redirect(controller: "member", action: "index")
        }
    }

}

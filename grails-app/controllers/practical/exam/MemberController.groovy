package practical.exam

class MemberController {
    MemberService memberService

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

    def changePassword() {
    }

    def update() {
        def response = memberService.getById(2)
        if (!response){
            flash.message = AppUtil.infoMessage(g.message(code: "invalid.entity"), false)
            redirect(controller: "member", action: "changePassword")
        }else{
            response = memberService.update(response, params)
            if (!response.isSuccess){
                flash.redirectParams = response.model
                flash.message = AppUtil.infoMessage(g.message(code: "unable.to.update"), false)
                redirect(controller: "member", action: "changePassword")
            }else{
                flash.message = AppUtil.infoMessage(g.message(code: "updated"))
                redirect(controller: "dashboard", action: "index")
            }
        }
    }

}

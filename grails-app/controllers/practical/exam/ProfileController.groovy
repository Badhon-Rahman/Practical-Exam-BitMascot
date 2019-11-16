package practical.exam

class ProfileController {
    MemberService memberService
    def details(Integer id) {
        def response = memberService.getById(id)
        if (!response){
            redirect(controller: "authentication", action: "login")
        }else{
            [member: response]
        }
    }
}

package practical.exam

class DashboardController {
    MemberService memberService
    def index() {
        def response = memberService.list(params)
        [memberList: response.list, total:response.count]
    }
}

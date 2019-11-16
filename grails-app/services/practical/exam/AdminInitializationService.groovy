package practical.exam

class AdminInitializationService {
    static initializeAdmin() {
        initAdminMember()
    }

    private static initAdminMember() {
        if (Member.count() == 0) {
            Member member = new Member()
            member.firstName = "Admin"
            member.lastName = "User"
            member.email = "admin@localhost.local"
            member.address = ""
            member.phone = ""
            member.password = "admin"
            member.memberType = GlobalConfig.USER_TYPE.ADMINISTRATOR
            member.save(flash: true)
        }
    }
}

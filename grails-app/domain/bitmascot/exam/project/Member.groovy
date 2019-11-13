package bitmascot.exam.project

class Member {
    Integer id
    String firstName
    String lastName
    String email
    String password
    String phone
    String dateOfBirth
    String memberType = GlobalConfig.USER_TYPE.REGULAR_MEMBER

    static constraints = {
        email(email: true, nullable: false, unique: true, blank: false)
        firstName(nullable: false)
        dateOfBirth(nullable: false)
        password(blank: false)
        lastName(nullable: true)
        phone(nullable: true)
    }

    def beforeInsert (){
        this.password = this.password.encodeAsMD5()
    }

    def beforeUpdate(){
        this.password = this.password.encodeAsMD5()
    }
}

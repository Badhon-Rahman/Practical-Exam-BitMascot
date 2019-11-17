package practical.exam

class Member {
    Integer id
    String firstName
    String lastName
    String email
    String address
    String phone
    Date age = new Date()
    String password
    String memberType = GlobalConfig.USER_TYPE.REGULAR_MEMBER

    static constraints = {
        email(nullable: false, unique: true, blank: false)
        password(blank: false)
        firstName(nullable:false)
        lastName(nullable: true)
        address(nullable:true)
        phone(nullable: true)
    }


    def beforeInsert (){
        this.password = this.password.encodeAsMD5()
    }


    def beforeUpdate(){
        this.password = this.password.encodeAsMD5()
    }

}

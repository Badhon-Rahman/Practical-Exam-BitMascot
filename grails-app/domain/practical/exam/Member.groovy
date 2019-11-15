package practical.exam

class Member {
    Integer id
    String firstName
    String lastName
    String email
    String address
    String phone
    String password
    Date age
    String memberType = GlobalConfig.USER_TYPE.REGULAR_MEMBER

    static constraints = {
        email(email: true, nullable: false, unique: true, blank: false)
        password(blank: false)
        firstName(nullable:false)
        lastName(nullable: true)
        address(nullable:false)
        phone(nullable: true)
        age(nullable: true)
    }



    def beforeInsert (){
        this.password = this.password.encodeAsMD5()
    }


    def beforeUpdate(){
        this.password = this.password.encodeAsMD5()
    }

}

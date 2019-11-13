package exam.practical.userPortal

class GlobalConfig {
    public static final def USER_TYPE = [
            ADMINISTRATOR: "ADMINISTRATOR",
            REGULAR_MEMBER: "REGULAR_MEMBER",
    ]

    public static Integer itemsPerPage() {
        return 10
    }
}

package practical.exam

class BootStrap {
    def init = { servletContext ->
        AdminInitializationService.initializeAdmin()
    }
    def destroy = {
    }
}

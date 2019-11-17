package practical.exam

import practical.exam.AdminInitializationService
class BootStrap {
    def init = { servletContext ->
        AdminInitializationService.initializeAdmin()
    }
    def destroy = {
    }
}

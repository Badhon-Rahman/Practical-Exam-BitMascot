package practical.exam

import grails.testing.web.interceptor.InterceptorUnitTest
import spock.lang.Specification

class PasswordInterceptorSpec extends Specification implements InterceptorUnitTest<PasswordInterceptor> {

    def setup() {
    }

    def cleanup() {

    }

    void "Test password interceptor matching"() {
        when:"A request matches the interceptor"
            withRequest(controller:"password")

        then:"The interceptor does match"
            interceptor.doesMatch()
    }
}

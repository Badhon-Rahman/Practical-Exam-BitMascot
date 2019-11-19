package practical.exam

class AuthenticationMassageTagLib {
    static namespace = "UIHelper"
    AuthenticationService authenticationService
    MemberService memberService

    def renderErrorMessage = { attrs, body ->
        def model = attrs.model
        String fieldName = attrs.fieldName
        String errorMessage = attrs.errorMessage? g.message(code: attrs.errorMessage): g.message(code: "invalid.input")
        if (model && model.errors && model.errors.getFieldError(fieldName)){
            out << "<small class='form-text text-danger''><strong>${errorMessage}</strong></small>"
        }
    }

    def memberActionMenu = { attrs, body ->
        out << '<li class="nav-item dropdown show">'
        out << g.link(class:"nav-link dropdown-toggle", "data-toggle":"dropdown"){authenticationService.getMemberName()}
        out << '<div class="dropdown-menu">'
        if(!authenticationService.isAdministratorMember()){
            out << g.link(controller: "member", action: "changePassword", name: "change.password")
        }
        out << g.link(controller: "authentication", action: "logout", class: "dropdown-item"){g.message(code:"logout")}
        out << "</div></li>"
    }

    def getUserId = { attrs, body ->
        out << g.hiddenField(name:"id", value: authenticationService.getId())
    }

    def leftNavigation = { attrs, body ->
        List navigations = [
                [controller: "dashboard", action: "index", name: "dashboard"],
                [controller: "profile", action: "details", name: "user"]
        ]

        if(!authenticationService.isAdministratorMember()){
            navigations.add([controller: "password", action: "changePassword", name: "change.password"])
        }

        if(authenticationService.isAdministratorMember()){
            navigations.add([controller: "member", action: "index", name: "user.list"])
        }
        navigations.each { menu ->
            out << '<li class="list-group-item">'
            out << g.link(controller: menu.controller, action: menu.action) { g.message(code: menu.name, args: ['']) }
            out << '</li>'
        }
    }

    def age = { attrs, body ->
        out << g.link(){authenticationService.getAge()}
    }
    def userDetailsView = { attrs, body ->
        out <<' <table class="table">'
        out <<'<tr>'
        out << '<td class="text-right>'
        out << g.link(class:""){authenticationService.getFirstName()}
        out << '</td>'
        out << '</tr>'
        out <<'<tr>'
        out << '<td class="text-right>'
        out << g.link(class:""){authenticationService.getLastName()}
        out << '</td>'
        out << '</tr>'
        out <<'<tr>'
        out << '<td class="text-right>'
        out << g.link(class:""){authenticationService.getAddress()}
        out << '</td>'
        out << '</tr>'
        out <<'<tr>'
        out << '<td class="text-right>'
        out << g.link(class:""){authenticationService.getPhone()}
        out << '</td>'
        out << '</tr>'
        out <<'<tr>'
        out << '<td class="text-right>'
        out << g.link(class:""){authenticationService.getEmail()}
        out << '</td>'
        out << '</tr>'
        out <<'<tr>'
        out << '<td class="text-right>'
        out << g.link(class:""){authenticationService.getDateOfBirth()}
        out << '</td>'
        out << '</tr>'
        out <<'</table>'
    }


}

package practical.exam

import grails.web.servlet.mvc.GrailsParameterMap

import java.security.MessageDigest

class MemberService {
    private static final String AUTHORIZED = "AUTHORIZED"

    def getMember(){
        def authorization = AppUtil.getAppSession()[AUTHORIZED]
        return authorization?.member
    }

    def getUserId(){
        def member = getMember()
        return member.id
    }

    def save(GrailsParameterMap params) {
        Member member = new Member(params)
        def response = AppUtil.saveResponse(false, member)
        if (member.validate()) {
            member.save(flush: true)
            if (!member.hasErrors()){
                response.isSuccess = true
            }
        }
        return response
    }


    def update(Member member, GrailsParameterMap params) {
        member.properties = params
        def response = AppUtil.saveResponse(false, member)

        String getPassword = ""
        String oldPas = ""
        String curPas = ""
        String submitPassword = ""
        Integer I = 0
        String tempPassword = member.password
        while (tempPassword[I] != ","){
            getPassword += tempPassword[I]
            I++
        }
        I++
        while (tempPassword[I] != ","){
            oldPas += tempPassword[I]
            I++
        }
        I++
        while (tempPassword[I] != ","){
            curPas += tempPassword[I]
            I++
        }

        oldPas = MessageDigest.getInstance("MD5").digest(oldPas.bytes).encodeHex().toString()
        if(oldPas == getPassword){
            member.password = curPas
            if (member.validate()) {
                member.save(flush: true)
                if (!member.hasErrors()){
                    response.isSuccess = true
                }
            }
        }
        return response
    }


    def getById(Serializable id) {
        return Member.get(id)
    }


    def list(GrailsParameterMap params) {
        params.max = params.max ?: GlobalConfig.itemsPerPage()
        List<Member> memberList = Member.createCriteria().list(params) {
            if (params?.colName && params?.colValue) {
                like(params.colName, "%" + params.colValue + "%")
            }
            if (!params.sort) {
                order("id", "desc")
            }
        }
        return [list: memberList, count: Member.count()]
    }


    def delete(Member member) {
        try {
            member.delete(flush: true)
        } catch (Exception e) {
            println(e.getMessage())
            return false
        }
        return true
    }
}

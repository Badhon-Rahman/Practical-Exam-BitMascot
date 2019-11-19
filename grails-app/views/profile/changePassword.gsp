<!doctype html>
<html lang="en" class="no-js">
<head>
    <asset:stylesheet src="application.css"/>
</head>
<body>
<div class="login-page">
    <div class="form login-form">
        <g:form>
            <g:form>
                <div class="form-group">
                    <label><g:message code="passwordPrv"/> *</label>
                    <g:passwordField name="oldPassword" class="form-control" placeholder="Give Old Password" required="required" value="${oldPassword}"/>

                </div>
                <div class="form-group">
                    <label><g:message code="passwordNew"/> *</label>
                    <g:passwordField name="password" class="form-control" placeholder="Give New Password" required="required" value = "${newPassword}"/>
                </div>
            </g:form>
            <g:form controller="profile" action="update">
                <UIHelper:getUserId/>
                <div class="form-group">
                    <label><g:message code="passwordRe"/> *</label>
                    <g:passwordField name="password" class="form-control input" value="${newPassword}" placeholder="Re-enter Password"/>

                </div>
                <div class="row">
                    <g:submitButton class="btn btn-primary" name="Change Password" value="Change"/>
                    <button class="btn btn-primary" id="reset-btn" type="reset" value="Reset">Clear</button>
                </div>
            </g:form>
        </g:form>

    </div>
</div>

<asset:javascript src="application.js"/>

</body>
</html>

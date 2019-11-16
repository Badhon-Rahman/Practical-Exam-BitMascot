<!doctype html>
<html lang="en" class="no-js">
<head>


    <asset:stylesheet src="application.css"/>

</head>
<body>

<div class="login-page">
    <div class="form login-form">
        <g:form controller="authentication" action="doLogin">
            <div class="form-group">
                <label><g:message code="email.address"/> *</label>
                <g:textField name="email" class="form-control" placeholder="Email" required="required" />
            </div>
            <div class="form-group">
                <label><g:message code="password"/> *</label>
                <g:passwordField name="password" class="form-control" placeholder="Password" required="required" />
            </div>
            <div class="row">
                <g:submitButton class="btn btn-primary" name="login" value="Login"/>
                <button class="btn btn-primary" id="reset-btn" type="reset" value="Reset">Clear</button>
                <p class="message">Are you new here?<g:link controller="authentication" action="registration"><g:message code="Regester Now"/></g:link></p>
            </div>
        </g:form>
    </div>
</div>

<asset:javascript src="application.js"/>

</body>
</html>

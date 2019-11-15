<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <asset:stylesheet src="application.css"/>

    <g:layoutHead/>
</head>
<body>
<div class="login-page">
    <div class="form">

        <form class="login-form">
            <input class="input" type="text" placeholder="Email Address"/>
            <input class="input" type="password" placeholder="Password"/>
            <div class="row">
                <button class="btn btn-primary" type="submit">Login</button>
                <button class="btn btn-primary" id="reset-btn" type="reset" value="Reset">Clear</button>
                <p class="message">Are you new here?<g:link controller="member" action="create"><g:message code="Regester Now"/></g:link></p>
            </div>
        </form>
    </div>
</div>

<asset:javascript src="application.js"/>

</body>
</html>

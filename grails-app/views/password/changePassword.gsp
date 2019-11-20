<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <asset:stylesheet src="userLogin.css"/>
    <asset:stylesheet src="UserListIndex.css"/>
</head>
<body>
<header>
    <ul class="nav nav-tabs">
        <li class="nav-item">
            <g:link controller="dashboard" action="index" class=""><g:message code="home"/></g:link>
        </li>
        <li><UIHelper:memberActionMenu/></li>
    </ul>

</header>

<section>
    <nav>
        <ul>
            <UIHelper:leftNavigation/>
        </ul>
    </nav>
    <article>
        <div class="card">
            <div class="card-header">
                <h4 class="center">Change Password</h4>
            </div>
            <div class="card-body">
                <div class="login-page">
                    <div class="form login-form">
                        <div class="form-group">
                            <label><g:message code="passwordPrv"/> *</label>
                            <g:passwordField name="oldPassword" class="form-control" placeholder="Give Old Password"  required="required" value="${oldPassword}"/>
                            <g:if test="${member.password == oldPassword}">
                                <span>Password Matched</span>
                            </g:if>
                            <g:else>
                                <span>Password did not matched</span>
                            </g:else>
                        </div>
                        <div class="form-group">
                            <label><g:message code="passwordNew"/> *</label>
                            <g:passwordField name="password" class="form-control" placeholder="Give New Password"  required="required" value = "${newPassword}"/>
                        </div>
                            <g:form controller="password" action="update">
                                <UIHelper:getUserId/>
                                <div class="form-group">
                                    <label><g:message code="passwordRe"/> *</label>
                                    <g:passwordField name="password" class="form-control input" value="${confirmPassword}" placeholder="Re-enter Password"/>
                                    <g:if test="${newPassword == confirmPassword}">
                                        <span>Password Matched</span>
                                    </g:if>
                                    <g:else>
                                        <span>Password did not matched</span>
                                    </g:else>
                                </div>
                                <div class="row">
                                    <g:submitButton class="btn btn-primary" name="Change Password" value="Change"/>
                                    <button class="btn btn-primary" id="reset-btn" type="reset" value="Reset">Clear</button>
                                </div>
                            </g:form>
                    </div>
                </div>
            </div>
        </div>
    </article>
</section>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
</body>
</html>
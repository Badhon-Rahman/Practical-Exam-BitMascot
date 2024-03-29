<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <asset:stylesheet src="userLogin.css"/>
    <asset:stylesheet src="UserListIndex.css"/>
</head>
<body>
<div class="card">
    <div class="card-header center">
        <i class="fas fa-user"></i>
        <h4 class="">Registration Panel</h4>
    </div>
    <div class="card-body">
        <div class="login-page">
            <div class="form register-form">
                <g:form controller="authentication" action="doRegistration">

                    <div class="form-group">
                        <label class=""><g:message code="first.name"/> *</label>
                        <g:textField name="firstName" class="form-control input" value="${member?.firstName}" placeholder="Please Enter First Name"/>
                        <UIHelper:renderErrorMessage fieldName="firstName" model="${member}" errorMessage="please.enter.first.name"/>
                    </div>

                    <div class="form-group">
                        <label><g:message code="last.name"/></label>
                        <g:textField name="lastName" class="form-control input" value="${member?.lastName}" placeholder="Please Enter Last Name"/>
                    </div>

                    <div class="form-group">
                        <label><g:message code="address"/></label>
                        <g:textField name="address" class="form-control input" value="${member?.address}" placeholder="Please Enter Address"/>
                    </div>

                    <div class="form-group">
                        <label><g:message code="phone"/></label>
                        <g:textField name="phone" class="form-control input" value="${member?.phone}" placeholder="Please Enter Phone"/>
                    </div>

                    <div class="form-group">
                        <label><g:message code="email.address"/> *</label>
                        <g:field type="email" name="email" class="form-control input" value="${member?.email}" placeholder="Please Enter Email Address"/>
                        <UIHelper:renderErrorMessage fieldName="email" model="${member}" errorMessage="Please Enter a valid and Unique Email Address"/>
                    </div>
                    <div class="well">
                        <div class="form-group">
                            <label><g:message code="dOfB"/></label>
                            <g:datePicker name="birthDate" value="${member?.birthDate}" noSelection="['':'-Choose-']"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label><g:message code="password"/> *</label>
                        <g:passwordField name="password" class="form-control input" value="${member?.password}" placeholder="Please Enter Password"/>
                        <UIHelper:renderErrorMessage fieldName="password" model="${member}" errorMessage="Please Enter a Password."/>
                    </div>

                    <div class="form-action-panel">
                        <g:submitButton name="registration" value="Registration" class="btn btn-primary"/>
                        <g:link controller="authentication" action="login" class="btn btn-primary"><g:message code="cancel"/></g:link>
                    </div>
                </g:form>
            </div>
        </div>

    </div>
</div>


</body>



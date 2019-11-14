<div class="card">
    <div class="card-header">
        <g:message code="member" args="['Create']"/>
    </div>
    <div class="card-body">
        <g:form controller="member" action="save">

            <div class="form-group">
                <label><g:message code="first.name"/> *</label>
                <g:textField name="firstName" class="form-control" value="${member?.firstName}" placeholder="Please Enter First Name"/>
                <UIHelper:renderErrorMessage fieldName="firstName" model="${member}" errorMessage="please.enter.first.name"/>
            </div>

            <div class="form-group">
                <label><g:message code="last.name"/></label>
                <g:textField name="lastName" class="form-control" value="${member?.lastName}" placeholder="Please Last Name"/>
            </div>

            <div class="form-group">
                <label><g:message code="email.address"/> *</label>
                <g:field type="email" name="email" class="form-control" value="${member?.email}" placeholder="Please Enter Email"/>
                <UIHelper:renderErrorMessage fieldName="email" model="${member}" errorMessage="Your Email Address is not Valid / Already Exist in System"/>
            </div>

            <div class="form-group">
                <label><g:message code="address"/></label>
                <g:textField name="address" class="form-control" value="${member?.address}" placeholder="Please address"/>
            </div>

            <div class="form-group">
                <label><g:message code="phone"/></label>
                <g:textField name="phone" class="form-control" value="${member?.phone}" placeholder="Please phone"/>
            </div>

            <div class="form-group">
                <label><g:message code="password"/> *</label>
                <g:passwordField name="password" class="form-control" value="${member?.password}" placeholder="Please Enter Password"/>
                <UIHelper:renderErrorMessage fieldName="password" model="${member}" errorMessage="Please Enter a Password."/>
            </div>

            <div class="form-action-panel">
                <g:submitButton class="btn btn-primary" name="save" value="${g.message(code: "save")}"/>
                <g:link controller="member" action="index" class="btn btn-primary"><g:message code="cancel"/></g:link>
            </div>
        </g:form>
    </div>
</div>


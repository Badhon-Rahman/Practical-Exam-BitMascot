
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

    <asset:stylesheet src="UserListIndex.css"/>
</head>
<body>
<header>
    <ul class="nav nav-tabs">
        <li class="nav-item">
            <g:link controller="dashboard" action="index" class=""><g:message code="home"/></g:link>
        </li>
        <UIHelper:memberActionMenu/>
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
                <h4><i class="fas fa-users"></i> User List</h4>
                <span class="float-right">
                    <div class="btn-group">
                        <g:form controller="member" action="index" method="GET">
                            <div class="input-group" id="search-area">
                                <g:select name="colName" class="form-control" from="[firstName: 'First Name', lastName: 'Last Name', email: 'Email']" value="${params?.colName}" optionKey="key" optionValue="value"/>
                                <g:textField name="colValue" class="form-control" value="${params?.colValue}"/>
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="submit">Search</button>
                                </span>
                            </div>
                        </g:form>
                    </div>
                </span>
            </div>
                <div class="card-body">
                    <table class="table table-bordered">
                        <thead class="thead-info">
                        <tr>
                            <g:sortableColumn property="firstName" title="${g.message(code: "user.name")}"/>
                            <g:sortableColumn property="dateOfBirth" title="${g.message(code: "age")}"/>
                            <g:sortableColumn property="email" title="${g.message(code: "email")}"/>
                            <g:sortableColumn property="phone" title="${g.message(code: "phone")}"/>
                        </tr>
                        </thead>
                        <tbody>
                        <g:each in="${memberList}" var="info">
                            <tr>
                                <td>${info?.firstName} ${info?.lastName}</td>
                                <td>${new Date().getYear() - info?.birthDate.getYear()}</td>
                                <td>${info?.email}</td>
                                <td>${info?.phone}</td>
                            </tr>
                        </g:each>
                        </tbody>
                    </table>
                    <div class="paginate">
                        <g:paginate total="${total ?: 0}" />
                     </div>
                </div>
            </div>
    </article>
</section>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
</body>
</html>


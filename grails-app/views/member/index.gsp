<%@ page import="practical.exam.MemberService" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <asset:stylesheet src="UserListIndex.css"/>
</head>
<body>
<header>
    <ul class="nav nav-tabs">
        <li class="nav-item">
            <a class="nav-link active" href="#">User Portal</a>
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
                <g:message code="member" args="['List']"/>
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

                %{--Table Panel--}%
                <div class="card-body">
                    <table class="table table-bordered">
                        <thead class="thead-dark">
                        <tr>
                            <g:sortableColumn property="firstName" title="${g.message(code: "user.name")}"/>
                            <g:sortableColumn property="dateOfBirth" title="${g.message(code: "dOfB")}"/>
                            <g:sortableColumn property="email" title="${g.message(code: "email")}"/>
                            <g:sortableColumn property="phone" title="${g.message(code: "phone")}"/>
                        </tr>
                        </thead>
                        <tbody>
                        <g:each in="${memberList}" var="info">
                            <tr>
                                <td>${info?.firstName} ${info?.lastName}</td>
                                <td>${info?.age}</td>
                                <td>${info?.email}</td>
                                <td>${info?.phone}</td>
                            </tr>
                        </g:each>
                        </tbody>
                    </table>
                    %{--Pagination Area--}%
                <div class="paginate">
                    <g:paginate total="${total ?: 0}" />
                </div>

                </div>
            </div>
        </div>
    </article>
</section>
</body>
</html>


<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <asset:stylesheet src="UserListIndex.css"/>
    <asset:stylesheet src="userLogin.css"/>
</head>
<body>
<header>
    <ul class="nav nav-tabs">
        <li class="nav-item">
            <g:link controller="dashboard" action="index" class=""><g:message code="home"/></g:link>
        </li>
        <li class="nav-item left"><UIHelper:memberActionMenu/></li>
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
            <div class="card-header center">
                <h4><i class="fas fa-user-circle"></i> User Profile</h4>
            </div>
            <div class="card-body center">
                <UIHelper:userDetailsView/>
            </div>
        </div>
    </article>
</section>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
</body>
</html>


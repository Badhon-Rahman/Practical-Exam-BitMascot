<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <asset:stylesheet src="UserListIndex.css"/>
</head>
<body>
<header>

    <ul class="navbar-nav ml-auto">
        <li><h4>User Dashboard</h4></li>
        <li><UIHelper:memberActionMenu/></li>
    </ul>

</header>

<section>
    <nav>
        <ul>
            <UIHelper:leftNavigation/>
            <g:each in="${memberList}" var="info">
                <g:link controller="profile" action="details" class="" id="${info.id}">User Profile</g:link>
            </g:each>
        </ul>
    </nav>
    <article>
        <h1>Dashboard</h1>
    </article>
</section>
</body>
</html>


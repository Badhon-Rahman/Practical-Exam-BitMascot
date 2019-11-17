<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <asset:stylesheet src="UserListIndex.css"/>
</head>
<body>
<header>

    <ul class="navbar-nav ml-auto">
        <li><h4>User Profile</h4></li>
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
        <UIHelper:userDetailsView/>
    </article>
</section>
</body>
</html>


<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Practical Exam"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:stylesheet src="application.css"/>
    
    <g:layoutHead/>
</head>
<body>

<div class="login-page">
  <div class="form">
    <form class="register-form">
      <i class="fa fa-user"></i>
      <input type="text" placeholder="First Name"/>
      <input type="text" placeholder="Last Name"/>
      <input type="text" placeholder="Email Address"/>
      <input type="text" placeholder="Phone"/>
      <div class="well"> 
        <div class="form-group">
        <label>Date of Birth</label>
        <input type="date" class="form-control" id="DofB" placeholder="Date of Birth">
      </div>
    </div>
      <input type="password" placeholder="password"/>
      <button class="btn btn-primary" type="submit">Regester</button>
      <button class="btn btn-primary" id="reset-btn" type="reset" value="Reset">Cancel</button>
      <p class="message">Already have an account? <a href="#">Sign In</a></p>
    </form>
    <form class="login-form">
      <input type="text" placeholder="User Name"/>
      <input type="password" placeholder="Password"/>
      <div class="row">
      <button class="btn btn-primary" type="submit">Login</button>
      <button class="btn btn-primary" id="reset-btn" type="reset" value="Reset">Clear</button>
      <p class="message">Are you new here? <a href="#">Regester Now</a></p>
    </form>
  </div>
</div>
  
<asset:javascript src="application.js"/>

</body>
</html>

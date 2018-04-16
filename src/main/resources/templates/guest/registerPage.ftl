<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Stellar Admin</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="/admin/node_modules/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="/admin/node_modules/simple-line-icons/css/simple-line-icons.css">
    <link rel="stylesheet" href="/admin/node_modules/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="/admin/node_modules/perfect-scrollbar/css/perfect-scrollbar.css">
    <!-- endinject -->
    <!-- plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="/admin/css/style.css">
    <!-- endinject -->
    <link rel="shortcut icon" href="/admin/images/favicon.png" />
</head>

<body>
<div class="container-scroller">
    <div class="container-fluid page-body-wrapper">
        <div class="row">
            <div class="content-wrapper full-page-wrapper d-flex align-items-center auth register-full-bg">
                <div class="row w-100">
                    <div class="col-lg-4" style="margin-left: 63%;">
                        <div class="auth-form-light text-left p-5">
                            <h2>Register</h2>
                            <h4 class="font-weight-light">Hello! let's get started</h4>
                                    <form class="pt-4" action="/signUp" id="userFormRegistration" method="post">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">First name</label>
                                                <input type="text" class="form-control required" name="name" id="name"  aria-describedby="emailHelp" placeholder="First name">
                                                <i class="mdi mdi-account"></i>
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Surname</label>
                                                <input type="text" class="form-control" name="surname"  id="surname" aria-describedby="emailHelp" placeholder="Surname">
                                                <i class="mdi mdi-account"></i>
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Last name</label>
                                                <input type="text" class="form-control " name="lastname"  id="lastname" aria-describedby="emailHelp" placeholder="Last name">
                                                <i class="mdi mdi-account"></i>
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Age</label>
                                                <input type="text" class="form-control required" name="age" id="age"  aria-describedby="emailHelp" placeholder="age">
                                                <i class="mdi mdi-account"></i>
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Email</label>
                                                <input type="email" class="form-control required email" name="email"  id="email" aria-describedby="emailHelp" placeholder="Email">
                                                <i class="mdi mdi-account"></i>
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Phone number</label>
                                                <input type="text" class="form-control" name="phoneNumber" id="phoneNumber"  aria-describedby="emailHelp" placeholder="phone number">
                                                <i class="mdi mdi-account"></i>
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputPassword1">Password</label>
                                                <input type="password" class="form-control required" name="hashPassword" id="password" placeholder="Password">
                                                <i class="mdi mdi-eye"></i>
                                            </div>
                                            <#-- Registration by invitation url for teachers -->
                                            <#if RequestParameters.inviteCode??>
                                             <div class="form-group">
                                                 <label class="sr-only" for="form-email">Invite code</label>
                                                 <input type="text" name="inviteCode" class="form-email form-control form-control-sm" value="${RequestParameters.inviteCode}" readonly="readonly">
                                             </div>
                                             </#if>
                                            <#if errors??>
                                                <div class="form-top-left">
                                                    <p>${errors}</p>
                                                </div>
                                            </#if>
                                            <div class="mt-5">
                                                <input type="submit" class="btn btn-block btn-primary btn-lg font-weight-medium" value="Register"/>
                                            </div>
                                            <div class="mt-2 w-75 mx-auto">
                                                <div class="form-check form-check-flat">
                                                    <label class="form-check-label">
                                                        <input type="checkbox" class="form-check-input">
                                                        I accept terms and conditions
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="mt-2 text-center">
                                                <a href="login.html" class="auth-link text-black">Already have an account? <span class="font-weight-medium">Sign in</span></a>
                                            </div>
                                    </form>
                                </div>
                            </div>
                            <div class="col-lg-6 register-half-bg d-flex flex-row">
                                <p class="text-white font-weight-medium text-center flex-grow align-self-end">Copyright &copy; 2018  All rights reserved.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- content-wrapper ends -->
        </div>
        <!-- row ends -->
    </div>
    <!-- page-body-wrapper ends -->
</div>
<!-- container-scroller -->
<!-- plugins:js -->
<script src="/admin/node_modules/jquery/dist/jquery.min.js"></script>
<script src="/admin/node_modules/popper.js/dist/umd/popper.min.js"></script>
<script src="/admin/node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="/admin/node_modules/perfect-scrollbar/dist/perfect-scrollbar.min.js"></script>
<!-- endinject -->
<!-- inject:js -->
<script src="/admin/js/off-canvas.js"></script>
<script src="/admin/js/hoverable-collapse.js"></script>
<script src="/admin/js/misc.js"></script>

<script src="/admin/node_modules/jquery-validation/dist/jquery.validate.min.js"></script>
<script src="/admin/node_modules/bootstrap-maxlength/bootstrap-maxlength.min.js"></script>
<script src="/admin/js/userRegisterValidation.js"></script>
<script src="/admin/js/bt-maxLength.js"></script>
<!-- endinject -->
    </body>

</html>


<#--

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap Flat Registration Form Template</title>

    <!-- CSS &ndash;&gt;
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
    <link rel="stylesheet" href="/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/assets/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="/assets/css/form-elements.css">
    <link rel="stylesheet" href="/assets/css/style.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries &ndash;&gt;
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// &ndash;&gt;
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]&ndash;&gt;

    <!-- Favicon and touch icons &ndash;&gt;
    <link rel="shortcut icon" href="/assets/ico/favicon.png">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="/assets/ico/apple-touch-icon-57-precomposed.png">

</head>

<body>

<!-- Top menu &ndash;&gt;
<nav class="navbar navbar-inverse navbar-no-bg" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#top-navbar-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/">Bootstrap Flat Registration Form Template</a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling &ndash;&gt;
        <div class="collapse navbar-collapse" id="top-navbar-1">
            <ul class="nav navbar-nav navbar-right">
                <li>
							<span class="li-text">
								Put some text or
							</span>
                    <a href="#"><strong>links</strong></a>
                    <span class="li-text">
								here, or some icons:
							</span>
                    <span class="li-social">
								<a href="#"><i class="fa fa-facebook"></i></a>
								<a href="#"><i class="fa fa-twitter"></i></a>
								<a href="#"><i class="fa fa-envelope"></i></a>
								<a href="#"><i class="fa fa-skype"></i></a>
							</span>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Top content &ndash;&gt;
<div class="top-content">

    <div class="inner-bg">
        <div class="container">
            <div class="row">
                <div class="col-sm-7 text">
                    <h1><strong>Java</strong> Flat Registration Form</h1>
                    <div class="description">
                        <p>
                            Welcome for learning java language!
                            &lt;#&ndash;Download it on <a href="http://azmind.com"><strong>AZMIND</strong></a>, customize and use it as you like!&ndash;&gt;
                        </p>
                    </div>
                    <div class="top-big-link">
                        <a class="btn btn-link-2" href="#">Log In</a>
                    </div>
                </div>
                <div class="col-sm-5 form-box">
                    <div class="form-top">
                        <div class="form-top-left">
                            <h3>Sign up now</h3>
                            <p>Fill in the form below to get instant access:</p>
                        </div>
                        <div class="form-top-right">
                            <i class="fa fa-pencil"></i>
                        </div>
                        <div class="form-top-divider"></div>
                    </div>
                    <div class="form-bottom">
                        <form role="form" action="/signUp" id="userFormRegistration" method="post" class="registration-form">
                            <div class="form-group">
                                <label class="sr-only" for="form-first-name">First name</label>
                                <input type="text" name="name" placeholder="First name..." class="form-first-name form-control form-control-sm" id="form-first-name">
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="form-surname">Surname</label>
                                <input type="text" name="surname" placeholder="Surname..." class="form-last-name form-control form-control-sm" id="form-last-name">
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="form-last-name">Last name</label>
                                <input type="text" name="lastname" placeholder="Last name..." class="form-email form-control form-control-sm" >
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="form-age">Age</label>
                                <input type="text" name="age" placeholder="Age..." class="form-email form-control form-control-sm" >
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="form-email">Email</label>
                                <input type="text" name="email" placeholder="Email..." class="form-email form-control form-control-sm" >
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="form-email">Email</label>
                                <input type="tel" name="phoneNumber" placeholder="Phone number..." class=" form-control form-control-sm"  aria-describedby="sizing-addon2">
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="form-email">Password</label>
                                <input type="password" name="hashPassword" placeholder="Password..." class="form-email form-control form-control-sm" >
                            </div>
                            &lt;#&ndash; Registration by invitation url for teachers &ndash;&gt;
                           &lt;#&ndash; <#if RequestParameters.code??>
                            <div class="form-group">
                                <label class="sr-only" for="form-email">Invite code</label>
                                <input type="text" name="inviteCode" class="form-email form-control form-control-sm" value="${RequestParameters.code}" disabled>
                            </div>
                            </#if>&ndash;&gt;
                            <#if errors??>
                                <div class="form-top-left">
                                    <p>${errors}</p>
                                </div>
                            </#if>
                            <button type="submit" class="btn">Sign me up!</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>


<!-- Javascript &ndash;&gt;
&lt;#&ndash;<script src="/assets/js/jquery-1.11.1.min.js"></script>&ndash;&gt;
<script src="/admin/node_modules/jquery/dist/jquery.min.js"></script>
<script src="/assets/bootstrap/js/bootstrap.min.js"></script>
<script src="/assets/js/jquery.backstretch.min.js"></script>
<script src="/assets/js/retina-1.1.0.min.js"></script>
<script src="/assets/js/scripts.js"></script>

<!--[if lt IE 10]>
<script src="/assets/js/placeholder.js"></script>
<![endif]&ndash;&gt;

<script src="/admin/node_modules/jquery-validation/dist/jquery.validate.min.js"></script>
<script src="/admin/node_modules/bootstrap-maxlength/bootstrap-maxlength.min.js"></script>
<script src="/admin/js/userRegisterValidation.js"></script>
<script src="/admin/js/bt-maxLength.js"></script>

</body>

</html>-->

<#import '../decorator/decoratorNavbar.ftl' as navbar>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1">

    <title>Course page</title>

    <!-- Loading third party fonts -->
    <link href="http://fonts.googleapis.com/css?family=Roboto:300,400,700|" rel="stylesheet" type="text/css">
    <link href="/fonts/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- Loading main css file -->
    <link rel="stylesheet" href="/css/style.css">

    <!--[if lt IE 9]>
    <script src="js/ie-support/html5.js"></script>
    <script src="js/ie-support/respond.js"></script>
    <![endif]-->

</head>


<body>

<div class="site-content">
    <header class="site-header" data-bg-image="">
        <div class="container">
            <div class="header-bar">
                 <@navbar.navbar/>
                <div class="mobile-navigation"></div>
            </div>
        </div>
    </header>

    <main class="main-content">
        <div class="fullwidth-block" style="padding-top: 0;">
            <div class="container">
                <a href="/courses" class="button back"><img src="/images/arrow-back.png" alt="">Назад к курсам</a>

                <div class="row">
                    <div class="col-md-6">
                        <div style="    max-width: 500px;
                                        min-width: 500px;
                                        max-height: 400px;
                                        min-height: 400px;">
                        <figure style="margin-bottom: 0;">
                            <img src="/${course.courseImageUrl!'images/defaultCoursePic.jpg'}" alt="" style="
                                width: 500px;
                                height: 360px;
                                position: absolute;
                                clip: rect(-18px 500px 500px 0px);
                            ">
                        </figure>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <h2 class="section-title" style="font-weight: 400; margin-bottom: 16px;">${course.courseName}</h2>
                        <p>${course.shortDescription}</p>
                        <div style="display: block">
                            <#if submitted??>
                                <a href="#" style="background-color: #2384fa; color: #fff; pointer-events: none;" class="button back">Вы уже записались</a>
                            <#elseif Session.user??>
                                 <a href="/apply/${course.courseName}" style="background-color: #2384fa; color: #fff; " class="button back">Записаться на курс</a>
                            <#else >
                                <a href="#" style="background-color: #2384fa; color: #fff; " class="button back">Записаться на курс</a>
                            </#if >
                        </div>
                        <div style="max-width: 35%; text-align: center;">
                            <img src="/images/blankProfile.png" alt="Avatar" style="width:100px; height: 100px; border-radius: 50%;">
                            <p>Name and Surname</p>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <h2 class="section-title" style="font-weight: 400; margin-bottom: 16px;">О курсе</h2>
                        ${course.about}
                    </div>
                </div>



            </div>
        </div>



        <div class="fullwidth-block" data-bg-color="#edf2f4">
            <div class="container">
                <div class="subscribe-form">
                    <h2>Join our newsletter</h2>
                    <form action="#">
                        <input type="text" placeholder="Enter your email">
                        <input type="submit" value="Subscribe">
                    </form>
                </div>
            </div>
        </div>

    </main> <!-- .main-content -->

    <footer class="site-footer">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="widget">
                        <h3 class="widget-title">Our address</h3>
                        <strong>Company name INC</strong>
                        <address>592 Avenue Street, Los Angeles, CA 90012</address>
                        <a href="tel:+1 800 931 812">+1 800 931 812</a> <br>
                        <a href="mailto:office@companyname.com">office@companyname.com</a>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="widget">
                        <h3 class="widget-title">Press room</h3>
                        <ul class="arrow-list">
                            <li><a href="#">Accusantium doloremque</a></li>
                            <li><a href="#">Laudantium totam aperiam</a></li>
                            <li><a href="#">Eaque ipsa quae illo inventore</a></li>
                            <li><a href="#">Veritatis et quasi architecto</a></li>
                            <li><a href="#">Vitae dicta sunt explicabo</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="widget">
                        <h3 class="widget-title">Research summary</h3>
                        <ul class="arrow-list">
                            <li><a href="#">Accusantium doloremque</a></li>
                            <li><a href="#">Laudantium totam aperiam</a></li>
                            <li><a href="#">Eaque ipsa quae illo inventore</a></li>
                            <li><a href="#">Veritatis et quasi architecto</a></li>
                            <li><a href="#">Vitae dicta sunt explicabo</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="widget">
                        <h3 class="widget-title">Social media</h3>
                        <p>Deserunt mollitia animi id est laborum dolorum fuga harum quidem rerum facilis.</p>
                        <div class="social-links">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-google-plus"></i></a>
                            <a href="#"><i class="fa fa-pinterest"></i></a>
                        </div>
                    </div>
                </div>
            </div> <!-- .row -->

            <p class="colophon">copyright 2014 Company name. Designed by <a href="http://www.vandelaydesign.com/" title="Designed by VandelayDesign.com" target="_blank">VandelayDesign.com</a>. All rights reserved</p>
        </div> <!-- .container -->
    </footer>
</div>

<script src="/js/jquery-1.11.1.min.js"></script>
<script src="/js/plugins.js"></script>
<script src="/js/app.js"></script>

</body>

</html>
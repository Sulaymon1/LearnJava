<#import 'decoratorNavbar.ftl' as navbar>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1">

    <title>Java courses</title>

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
            <@navbar.navbar courses='current-menu-item'/>
                <div class="mobile-navigation"></div>
            </div>
        </div>
    </header>

    <div class="page-head" data-bg-image="" style="background: url(/background_coursePage1.jpg) no-repeat #526977; ">
        <div class="container">
            <h2 class="page-title">Библиотека курсов</h2>
            <#--<small>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit consequuntur magni </small>-->
        </div>
    </div>

    <main class="main-content">
        <div class="fullwidth-block">
            <div class="container">
                <div class="project-list">

                    <#list courses as course>
                    <div class="project">
                        <div class="project-content">
                            <figure class="project-image" style="min-height: 18rem;"><img src="${course.courseImageUrl!'images/testPicture.png'}" style="max-height: 17rem; " alt="Project"></figure>
                            <h3 class="project-title">${course.courseName}</h3>
                            <p style="text-align: left; margin-left: 5%;" >${course.date}</p>
                            <p style="text-align: left; margin-left: 5%; display: block; word-wrap: break-word; height: 50px;">${course.shortDescription}</p>
                            <a href="/course/${course.id}" class="button">Подробнее</a>
                        </div>
                    </div>
                    <#else >
                        <div class="project">
                            <div class="project-content">
                                <figure class="project-image"><img src="images/testPicture.png" alt="Project"></figure>
                                <h3 class="project-title">Test title</h3>
                                <p>Dignissimos ducimus blanditiis deleniti atque corrupti quos dolores et quas molestias.</p>
                                <a href="project.html" class="button">Learn more</a>
                            </div>
                        </div>
                    </#list>

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
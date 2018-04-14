<#macro navbar home='' about='' courses='' contact='' login=''>
<a href="/index" class="branding">
    <img src="/images/logo1.png" alt="" class="logo">
    <div class="logo-type">
        <h1 class="site-title">JPower</h1>
        <small class="site-description">Java brain</small>
    </div>
</a>



<nav class="main-navigation">
    <button class="menu-toggle"><i class="fa fa-bars"></i></button>
    <ul class="menu">
        <li class="home menu-item ${home!}"><a href="/index"><img src="/images/home-icon.png" alt="Home"></a></li>
        <li class="menu-item ${about!}"><a href="/about">О нас</a></li>
        <li class="menu-item ${courses!}"><a href="/courses">Курсы</a></li>
        <li class="menu-item ${contact!}"><a href="/contact">Контакты</a></li>
        <li class="menu-item ${login!}"><a href="/services">Войти</a></li>
    </ul>
</nav>
</#macro>
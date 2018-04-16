<#macro nav>
<nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
    <div class="text-center navbar-brand-wrapper">
        <a class="navbar-brand brand-logo" href="/index"><img src="/images/logo1.png" style="width: auto;" alt="logo"></a>
        <a class="navbar-brand brand-logo-mini" href="/index"><img src="/images/logo1.png" style="width: auto;" alt="logo"></a>
    </div>
    <div class="navbar-menu-wrapper d-flex align-items-center">
        <button class="navbar-toggler navbar-toggler d-none d-lg-block align-self-center mr-2" type="button" data-toggle="minimize">
            <span class="icon-list icons"></span>
        </button>
        <#--<p class="page-name d-none d-lg-block">Hi, Dave Mattew</p>-->
        <ul class="navbar-nav ml-lg-auto">

            <li class="nav-item d-none d-sm-block profile-img">
                <a class="nav-link profile-image" href="#">
                    <img src="/admin/images/default.png" alt="profile-img">
                    <span class="online-status online bg-success"></span>
                </a>
            </li>
        </ul>
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center ml-auto" type="button" data-toggle="offcanvas">
            <span class="icon-menu icons"></span>
        </button>
    </div>
</nav>
<!-- partial -->
<div class="container-fluid page-body-wrapper">
    <div class="row row-offcanvas row-offcanvas-right">
        <!-- partial:../../partials/_sidebar.html -->
        <nav class="sidebar sidebar-offcanvas" id="sidebar">
            <ul class="nav">
                <li class="nav-item nav-category ">
                    <a class="nav-link" href="/profile">
                        <span class="menu-title nav-color">Профиль</span>
                        <i class="icon-home menu-icon"></i>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/teacher/groups">
                        <span class="menu-title">Мои группы</span>
                        <i class="icon-people menu-icon"></i>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/logout">
                        <span class="menu-title">Выйти</span>
                        <i class="icon-logout menu-icon"></i>
                    </a>
                </li>
            </ul>
        </nav>
        </#macro>
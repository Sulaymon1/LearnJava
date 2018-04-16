<#import '../decorator/decoratorNavigationTeacher.ftl' as decorator>
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
    <!-- endinject -->
    <!-- plugin css for this page -->
    <link rel="stylesheet" type="text/css" href="/admin/node_modules/sweetalert/dist/sweetalert.min.css">

    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="/admin/css/style.css">
    <!-- endinject -->
    <link rel="shortcut icon" href="/admin/images/favicon.png" />
</head>

<body>
<div class="container-scroller">
    <!-- partial:../partials/_navbar.html -->
<@decorator.nav/>
    <!-- partial -->
    <div class="content-wrapper">
        <div class="row">
            <div class="col-lg-12 grid-margin">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title" style="border-bottom: 0; padding-bottom: 0; margin-bottom: 0; text-align: center;">
                            ${groupName}
                        </h4>
                    </div>
                </div>
            </div>
        </div>
    <div class="row">
    <#list students as student>
            <div class="col-md-4 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex flex-row">
                            <img src="${student.image!'/customImages/default100.png'}" class="img-lg rounded">
                            <div class="ml-3" style="display: flex; align-items: center;">
                               <a href="/student/profile/${student.id}" target="_blank"> <h6>${student.name} ${student.surname!}</h6></a>
                            </div>
                            <div class="px-1 py-4 rounded" style="margin-left: auto;">
                                <#if student.gitRepo??>
                                    <a href="${student.gitRepo}" target="_blank"><img src="/customImages/gitPresentLogo.png" /></a>
                                <#else >
                                    <img src="/customImages/gitAbsentLogo.png"/>
                                </#if>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    <#else >
    </#list>
    </div>
    </div>
    <!-- content-wrapper ends -->
    <!-- partial:../partials/_footer.html -->
    <footer class="footer">
        <div class="container-fluid clearfix">
            <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright © 2018 <a href="http://www.bootstrapdash.com/" target="_blank">Bootstrapdash</a>. All rights reserved.</span>
            <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Hand-crafted & made with <i class="mdi mdi-heart text-danger"></i></span>
        </div>
    </footer>
    <!-- partial -->
</div>
<!-- row-offcanvas ends -->
<!-- page-body-wrapper ends -->
<!-- container-scroller -->
<!-- plugins:js -->
<script src="/admin/node_modules/jquery/dist/jquery.min.js"></script>
<script src="/admin/node_modules/popper.js/dist/umd/popper.min.js"></script>
<script src="/admin/node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="/admin/node_modules/sweetalert/dist/sweetalert.min.js"></script>
<script src="/admin/node_modules/jquery.avgrund/jquery.avgrund.min.js"></script>
<!-- endinject -->
<!-- Plugin js for this page-->
<!-- End plugin js for this page-->
<!-- inject:js -->
<script src="/admin/js/off-canvas.js"></script>
<script src="/admin/js/misc.js"></script>
<!-- endinject -->
<!-- Custom js for this page-->
<script src="/admin/js/settings.js"></script>
<script src="/customJs/addGitRepo.js"></script>
<script src="/admin/js/avgrund.js"></script>
<!-- End custom js for this page-->
</body>

</html>

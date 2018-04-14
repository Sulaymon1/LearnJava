<#import 'decoratorNavigation.ftl' as decorator>
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
    <link rel="stylesheet" href="/admin/node_modules/dropify/dist/css/dropify.min.css">
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="/admin/css/style.css">
    <!-- endinject -->
    <link rel="shortcut icon" href="/admin/images/favicon.png" />
</head>

<body>
<div class="container-scroller">
    <!-- partial:../../partials/_navbar.html -->
    <@decorator.nav/>
            <!-- partial -->
            <div class="content-wrapper">
                <div class="row user-profile">
                    <div class="col-lg-4 side-left d-flex align-items-stretch">
                        <div class="row">
                            <div class="col-12 grid-margin stretch-card">
                                <div class="card">
                                    <div class="card-body avatar">
                                        <h4 class="card-title">Info</h4>
                                        <img src="${model.user.image}" alt="" style="width: 35%;" class="img-fluid img-thumbnail">
                                        <p class="name">${model.user.name} ${model.user.surname} ${model.user.lastname!}</p>
                                        <p class="designation"></p>
                                        <a class="d-block text-center text-dark" href="#">${model.user.email}</a>
                                        <a class="d-block text-center text-dark" href="#">${model.user.phoneNumber}</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 stretch-card">
                                <div class="card">
                                    <div class="card-body overview">
                                        <ul class="achivements">
                                            <li><p>34</p><p>Projects</p></li>
                                            <li><p>23</p><p>Task</p></li>
                                            <li><p>29</p><p>Completed</p></li>
                                        </ul>
                                        <div class="wrapper about-user">
                                            <h4 class="card-title mt-4 mb-3">About</h4>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam consectetur ex quod.</p>
                                        </div>
                                        <div class="info-links">
                                            <a class="website" href="http://urbanui.com/">
                                                <i class="mdi mdi-earth text-gray"></i>
                                                <span>http://urbanui.com/</span>
                                            </a>
                                            <a class="social-link" href="#">
                                                <i class="mdi mdi-facebook text-gray"></i>
                                                <span>https://www.facebook.com/johndoe</span>
                                            </a>
                                            <a class="social-link" href="#">
                                                <i class="mdi mdi-linkedin text-gray"></i>
                                                <span>https://www.linkedin.com/johndoe</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8 side-right stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <div class="wrapper d-block d-sm-flex align-items-center justify-content-between">
                                    <h4 class="card-title mb-0">Details</h4>
                                    <ul class="nav nav-tabs tab-solid tab-solid-primary mb-0" id="myTab" role="tablist">
                                        <li class="nav-item">
                                            <a class="nav-link active" id="info-tab" data-toggle="tab" href="#info" role="tab" aria-controls="info" aria-expanded="true">Info</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" id="avatar-tab" data-toggle="tab" href="#avatar" role="tab" aria-controls="avatar">Avatar</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" id="security-tab" data-toggle="tab" href="#security" role="tab" aria-controls="security">Security</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="wrapper">
                                    <hr>
                                    <div class="tab-content" id="myTabContent">
                                        <div class="tab-pane fade show active" id="info" role="tabpanel" aria-labelledby="info">
                                            <form action="/updateUser/${model.user.id}" method="post">
                                                <div class="form-group">
                                                    <label for="name">Name</label>
                                                    <input type="text" class="form-control" name="name" id="name" placeholder="Change user name" value="${model.user.name} ${model.user.surname!} ${model.user.lastname!}" disabled>
                                                </div>
                                                <div class="form-group">
                                                    <label for="mobile">Mobile Number</label>
                                                    <input type="text" class="form-control" name="phoneNumber" id="mobile" placeholder="Change mobile number" value="${model.user.phoneNumber!}">
                                                </div>
                                                <div class="form-group">
                                                    <label for="email">Email</label>
                                                    <input type="email" class="form-control" name="email" id="email" placeholder="Change email address" value="${model.user.email!}">
                                                </div>
                                                <div class="form-group">
                                                    <label for="address">Address</label>
                                                    <textarea name="address" id="address" rows="6" class="form-control" placeholder="Add address" data-value="${model.user.address!}"></textarea>
                                                </div>
                                                <div class="form-group">
                                                    <label for="Github account">Github account</label>
                                                    <input type="text" class="form-control" name="github" id="git" placeholder="Add github account" value="${model.user.github!}">
                                                </div>
                                                <div class="form-group mt-5">
                                                    <button type="submit" class="btn btn-success mr-2">Update</button>
                                                    <button class="btn btn-outline-danger">Cancel</button>
                                                </div>
                                            </form>
                                        </div><!-- tab content ends -->
                                        <div class="tab-pane fade" id="avatar" role="tabpanel" aria-labelledby="avatar-tab">
                                            <div class="wrapper mb-5 mt-4">
                                                <span class="badge badge-warning text-white">Note : </span>
                                                <p class="d-inline ml-3 text-muted">Image size is limited to not greater than 1MB .</p>
                                            </div>
                                            <form action="#">
                                                <input type="file" class="dropify" data-max-file-size="1mb" data-default-file="${model.user.image!}"/>
                                                <div class="form-group mt-5">
                                                    <button type="submit" class="btn btn-success mr-2">Update</button>
                                                    <button class="btn btn-outline-danger">Cancel</button>
                                                </div>
                                            </form>
                                        </div>
                                        <div class="tab-pane fade" id="security" role="tabpanel" aria-labelledby="security-tab">
                                            <form action="/changePassword/${model.user.id}" method="post">
                                                <div class="form-group">
                                                    <label for="change-password">Change password</label>
                                                    <input type="password" class="form-control" name="hashPassword" id="change-password" placeholder="Enter you current password">
                                                </div>
                                                <div class="form-group">
                                                    <input type="password" class="form-control" id="new-password" name="password" placeholder="Enter you new password">
                                                </div>
                                                <div class="form-group mt-5">
                                                    <button type="submit" class="btn btn-success mr-2">Update</button>
                                                    <button class="btn btn-outline-danger">Cancel</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- content-wrapper ends -->
            <!-- partial:../../partials/_footer.html -->
            <footer class="footer">
                <div class="container-fluid clearfix">
                    <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright © 2018 <a href="http://www.bootstrapdash.com/" target="_blank">Bootstrapdash</a>. All rights reserved.</span>
                    <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Hand-crafted & made with <i class="mdi mdi-heart text-danger"></i></span>
                </div>
            </footer>
            <!-- partial -->
        </div>
        <!-- row-offcanvas ends -->
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
<!-- Plugin js for this page-->
<script src="/admin/node_modules/dropify/dist/js/dropify.min.js"></script>
<!-- End plugin js for this page-->
<!-- inject:js -->
<script src="/admin/js/off-canvas.js"></script>
<script src="/admin/js/hoverable-collapse.js"></script>
<script src="/admin/js/misc.js"></script>
<!-- endinject -->
<!-- Custom js for this page-->
<script src="/admin/js/dropify.js"></script>
<!-- End custom js for this page-->
</body>

</html>

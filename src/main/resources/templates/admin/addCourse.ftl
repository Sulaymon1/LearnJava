<#import '../decorator/decoratorNavigationAdmin.ftl' as decorator>
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

    <@decorator.nav/>

            <div class="content-wrapper">
                <div class="row">
                    <div class="col-md-12 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title" style="border-bottom:  0; padding-bottom:  0; margin-bottom: 0;">
                                    Новый курс
                                </h4>
                            </div>
                        </div>
                    </div>
                </div>
                <form class="forms-sample" id="newCourseForm" action="/admin/addCourse" onsubmit="replaceLineBreak()" method="post" enctype="multipart/form-data">
                <div class="row">
                    <#--todo must have js validator -->
                    <div class="col-md-6 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <div class="wrapper mb-5 mt-4">
                                    <span class="badge badge-warning text-white">Note : </span>
                                    <p class="d-inline ml-3 text-muted">Размер изображения ограничен не более 2МБ .</p>
                                </div>
                                    <input type="file" name="file" class="dropify" data-max-file-size="2mb" data-default-file=""/>
                            </div>
                        </div>
                    </div>
                     <div class="col-md-6 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                    <div class="form-group">
                                        <input type="text" name="courseName" class="form-control" placeholder="Название курса">
                                    </div>
                                    <div class="form-group">
                                        <input type="text" name="shortDescription" class="form-control" placeholder="Краткое описание">
                                    </div>
                                    <div class="form-group row">
                                            <div class="col-sm-3 my-1 mx-2">
                                                <label class="col-form-label">Начинается с</label>
                                            </div>
                                            <div class="col-sm-4 my-1">
                                                <div class="input-group">
                                                    <input type="date" name="startDate" class="form-control form-control-sm" >
                                                </div>
                                            </div>

                                    </div>
                                    <div class="form-group row">
                                        <div class="col-sm-3 my-1 mx-2">
                                            <label class="col-form-label">По</label>
                                        </div>
                                        <div class="col-sm-4     my-1">
                                            <div class="input-group">
                                                <input type="date" name="endDate" class="form-control form-control-sm" >
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-sm-3 my-1 mx-2">
                                            <label class="col-form-label">Тип</label>
                                        </div>
                                        <div class="col-sm-4">
                                            <select name="type" class="form-control" title="">
                                                <option>Обычный</option>
                                                <option>Пробный</option>
                                                <option>Временный</option>
                                            </select>
                                        </div>
                                    </div>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">О курсе</h4>
                                    <div class="form-group">
                                        <textarea name="about" id="description" class="form-control" rows="30"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <label class="badge badge-danger">${error!}</label>
                                    </div>
                                <div class="form-group" style="float: right;">
                                    <button type="submit" class="btn btn-success mr-2">Добавить</button>
                                <#--todo cancel to reset -->
                                    <button class="btn btn-light" href="/admin/courses">Отмена</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </form>
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
<script src="/admin/node_modules/jquery-validation/dist/jquery.validate.min.js"></script>
<script src="/admin/node_modules/bootstrap-maxlength/bootstrap-maxlength.min.js"></script>
<!-- End plugin js for this page-->
<script src="/admin/node_modules/dropify/dist/js/dropify.min.js"></script>
<!-- inject:js -->
<script src="/admin/js/off-canvas.js"></script>
<script src="/admin/js/misc.js"></script>
<script src="/admin/js/hoverable-collapse.js"></script>
<!-- endinject -->
<!-- Custom js for this page-->
<script src="/admin/js/file-upload.js"></script>
<script src="/admin/js/courseValidationAdmin.js"></script>
<script src="/admin/js/bt-maxLength.js"></script>
<script src="/admin/js/dropify.js"></script>
<!-- End custom js for this page-->
<script>
    function deleteCourse(id) {
        $.ajax({
            method: 'POST',
            url: '/admin/deleteCourse/'+id,
            success(data){
                $('#'+id).detach();
            }
        });
    }

    function archiveCourse(id, idButton) {
        var url;
        var btnText;
        if ($('#'+idButton).html() === 'archive'){
            url = '/admin/archiveCourse/'+id;
            btnText = 'restore';
        }else {
            url = '/admin/restoreCourse/'+id;
            btnText = 'archive';
        }
        $.ajax({
            method:'POST',
            url: url,
            success(){
                $('#'+idButton).html(btnText);
            }
        });
    }

    function replaceLineBreak() {
        var text = $("#description").val();
        text = text.replace(/\r?\n/g, '<br />');
        $("#description").val(text);

    }
</script>
</body>

</html>

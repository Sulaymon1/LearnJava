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
    <link rel="stylesheet" href="/admin/node_modules/datatables.net-bs4/css/dataTables.bootstrap4.css" />
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="/admin/css/style.css">
    <!-- endinject -->
    <link rel="shortcut icon" href="/admin/images/favicon.png" />
</head>

<body>
<div class="container-scroller">

    <@decorator.nav/>
            <!-- partial -->
            <div class="content-wrapper">

                    <div class="col-md-12 grid-margin stretch-card card table-sorter-wrapper table-responsive table-hover">
                        <table  id="sortable-table-2" class="table table-striped" cellspacing="0">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th class="sortStyle">Название<i class="mdi mdi-chevron-down"></i></th>
                                <th class="sortStyle">Создано в<i class="mdi mdi-chevron-down"></i></th>
                                <th class="sortStyle">Начало<i class="mdi mdi-chevron-down"></i></th>
                                <th class="sortStyle">Дейтсвия<i class="mdi mdi-chevron-down"></i></th>
                                <th class="sortStyle">Действия<i class="mdi mdi-chevron-down"></i></th>
                            </tr>
                            </thead>
                            <tbody>
                            <#list model.courses as course>
                            <tr id="${course.id}">
                                <td>${course.id}</td>
                                <td>${course.courseName}</td>
                                <td>${course.createdDate!}</td>
                                <td>${course.startDate!}</td>
                                <#-- todo add new field for filter archive or not and restore it -->
                                <td>
                                    <button class="btn btn-outline-primary" id="${course.courseName?replace(" ","")}" onclick="archiveCourse('${course.id}', this.id);">
                                        <#if course.active>архивировать<#else >востановить</#if>
                                    </button>
                                </td>
                                <#--todo add getMapping for delete request-->
                                <td>
                                    <button class="btn btn-outline-primary" onclick="deleteCourse('${course.id}')">Удалить</button>
                                </td>
                            </tr>
                            <#else >
                            </#list>


                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <footer class="footer">
                <div class="container-fluid clearfix">
                    <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright © 2018 <a href="http://www.bootstrapdash.com/" target="_blank">Bootstrapdash</a>. All rights reserved.</span>
                    <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Hand-crafted & made with <i class="mdi mdi-heart text-danger"></i></span>
                </div>
            </footer>
        </div>
    </div>
</div>
<!-- container-scroller -->
<!-- plugins:js -->
<script src="/admin/node_modules/jquery/dist/jquery.min.js"></script>
<script src="/admin/node_modules/popper.js/dist/umd/popper.min.js"></script>
<script src="/admin/node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- endinject -->
<!-- Plugin js for this page-->
<script src="/admin/node_modules/jquery-validation/dist/jquery.validate.min.js"></script>
<script src="/admin/node_modules/bootstrap-maxlength/bootstrap-maxlength.min.js"></script>
<script src="/admin/js/jq.tablesort.js"></script>
<script src="/admin/js/tablesorter.js"></script>
<!-- End plugin js for this page-->
<!-- inject:js -->
<script src="/admin/js/off-canvas.js"></script>
<script src="/admin/js/misc.js"></script>
<script src="/admin/js/hoverable-collapse.js"></script>
<!-- endinject -->
<!-- Custom js for this page-->
<script src="/admin/js/file-upload.js"></script>
<script src="/admin/js/courseValidationAdmin.js"></script>
<script src="/admin/js/bt-maxLength.js"></script>
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
            btnText = 'востановить';
        }else {
            url = '/admin/restoreCourse/'+id;
            btnText = 'архивировать';
        }
        $.ajax({
            method:'POST',
            url: url,
            success(){
                $('#'+idButton).html(btnText);
            }
        });
    }
</script>
</body>

</html>

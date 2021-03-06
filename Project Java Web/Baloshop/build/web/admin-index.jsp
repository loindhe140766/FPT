<%-- 
    Document   : admin-index
    Created on : Oct 20, 2018, 10:10:00 PM
    Author     : Shado
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Admin Site</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap/bootstrap.min.css">
        <!-- Custom CSS -->
        <link rel="stylesheet" href="css/common.css">
        <link rel="stylesheet" href="css/admin-index.css">
    </head>
    <body>
        <%@include file="common/admin-nav.jsp"%>

        <c:if test="${currentLoginAccount eq null}">
            <c:redirect url="login.jsp"/>
        </c:if>

        <!-- Cover -->
        <div id="main-contain" class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="left-side">
                        <div class="row title">
                            <div class="col-md-12">
                                <h6>Danh mục quản lý</h6>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="side-nav">
                                    <ul class="navbar-nav ml-auto">
                                        <li class="nav-item">
                                            <a class="nav-link" href="redirectpage?page=1">
                                                <i class="mr-2">Thông tin cá nhân</i> 
                                            </a>
                                        </li>
                                        <c:if test="${currentLoginAccount.roleId eq 1}">
                                            <li class="nav-item">
                                                <a class="nav-link" href="redirectpage?page=2">
                                                    <i class="mr-2">Quản lý tài khoản</i> 
                                                </a>
                                            </li>
                                            
                                            <li class="nav-item">
                                                <a class="nav-link" href="redirectpage?page=5">
                                                    <i class="mr-2">Quản lý loại hàng</i>
                                                </a>
                                            </li>
                                            
                                            <li class="nav-item">
                                                <a class="nav-link" href="redirectpage?page=4">
                                                    <i class="mr-2">Quản lý đơn hàng</i> 
                                                </a>
                                            </li>
                                        </c:if>

                                        <c:if test="${currentLoginAccount.roleId eq 4}">
                                            <li class="nav-item">
                                                <a class="nav-link" href="redirectpage?page=3">
                                                    <i class="mr-2">Sản phẩm của tôi</i> 
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="redirectpage?page=4">
                                                    <i class="mr-2">Quản lý đơn hàng</i>
                                                </a>
                                            </li>
                                        </c:if>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-9">
                    <c:if test="${page == 1 || page eq null}">
                        <%@include file="admin-dashboard.jsp"%>
                    </c:if>
                    <c:if test="${page == 2}">
                        <%@include file="admin-accounts.jsp"%>
                    </c:if>
                    <c:if test="${page == 3}">
                        <%@include file="admin-products.jsp"%>
                    </c:if>
                    <c:if test="${page == 4}">
                        <%@include file="admin-orders.jsp"%>
                    </c:if>
                    <c:if test="${page == 5}">
                        <%@include file="admin-category.jsp"%>
                    </c:if>
                </div>
            </div>
        </div>

        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="js/jquery/jquery.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="js/bootstrap/bootstrap.min.js"></script>
        <script src="js/datatables/jquery.dataTables.min.js"></script>
        <script src="js/datatables/datatables.vietnamese.js"></script>
        <script>
            $(document).ready(function () {
                $('#accounts').dataTable({
                    "oLanguage": vietnamese
                });
                $('#accounts').DataTable();
                $('#products').DataTable();
                $('#orders').DataTable();
            });
        </script>

        <c:if test="${listOrderDetail ne null}">
            <script>
                $(document).ready(function () {
                    $('#myModal').modal('show');
                });
            </script>
            <%@include file="user-modal-order-detail.jsp"%>
        </c:if>
        <c:if test="${productDetail ne null}">
            <script>
                $(document).ready(function () {
                    $('#myModal').modal('show');
                });
            </script>
            <%@include file="manageProduct_detail.jsp"%>
        </c:if>
    </body>
</html>

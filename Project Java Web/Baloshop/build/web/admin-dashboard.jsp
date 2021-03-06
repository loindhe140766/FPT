<%-- 
    Document   : admin-dashboard
    Created on : Oct 21, 2018, 11:36:18 PM
    Author     : Shado
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="right-side mb-5">
    <div class="row title">
        <div class="col-md-12">
            <h6>
                Thông tin tài khoản
            </h6>
        </div>
    </div>
    <div class="row mt-1">
        <div class="col-md-12">
            <div class="m-info">
                <table>
                    <tr>
                        <td>Email:</td>
                        <td><b>${currentLoginAccount.email}</b></td>
                    </tr>
                    <tr>
                        <td>Mật khẩu:</td>
                        <td>
                            <a href="javascript:void(0)" data-toggle="collapse" data-target="#changePassword" aria-expanded="false" aria-controls="collapseExample">Đổi mật khẩu</a>
                        </td>
                    </tr>
                    <tr>
                        <td>Loại tài khoản:</td>
                        <c:if test="${currentLoginAccount.roleId eq 1}">
                            <td>Admin</td>
                        </c:if>
                        <c:if test="${currentLoginAccount.roleId eq 2}">
                            <td>Khách hàng</td>
                        </c:if>
                        <c:if test="${currentLoginAccount.roleId eq 4}">
                            <td>Người bán</td>
                        </c:if>
                    </tr>
                    <tr>
                        <td>Trạng thái:</td>
                        <td>
                    <c:if test="${currentLoginAccount.status == 1}">
                        <span class="active">Đang hoạt động</span>
                    </c:if>
                    <c:if test="${currentLoginAccount.status != 1}">
                        <span class="deactive">Ngừng hoạt động</span>
                    </c:if>
                    </td>
                    </tr>
                    <tr>
                        <td>Ngày tạo:</td>
                        <td>${currentLoginAccount.fmDate}</td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    <div class="row mt-3">
        <div class="col-md-12">
            <div class="collapse mb-2" id="changePassword">
                <div class="card">
                    <div class="card-body">
                        <form action="changepassword" method="post">
                            <div class="form-group col-md-6">
                                <input type="password" class="form-control" name="password" placeholder="Nhập mật khẩu hiện tại">
                            </div>
                            <div class="form-group col-md-6">
                                <input type="password" class="form-control" name="newPassword" placeholder="Nhập mật khẩu mới">
                            </div>
                            <div class="form-group col-md-6">
                                <input type="password" class="form-control" name="newPasswordCf" placeholder="Nhập lại mật khẩu mới">
                            </div>
                            <input type="submit" class="btn btn-success btn-sm ml-3 mr-5" name="btnChangePassword" value="Đổi mật khẩu">
                            <span>${message}</span>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row title">
        <div class="col-md-12">
            <h6>
                Thông tin cá nhân
            </h6>
        </div>
    </div> 
    <div class="row mt-1">
        <div class="col-md-12">
            <div class="m-info">
                <table>
                    <tr>
                        <td>Họ và tên:</td>
                        <td><b>${accountDetailInfo.name}</b></td>
                    </tr>
                    <tr>
                        <td>Số điện thoại:</td>
                        <td>${accountDetailInfo.mobile}</td>
                    </tr>
                    <tr>
                        <td>Giới tính:</td>
                        <td>${accountDetailInfo.gender == 1 ? "Nam" : "Nữ"}</td>
                    </tr>
                    <tr>
                        <td>Địa chỉ:</td>
                        <td>${accountDetailInfo.address}</td>
                    </tr>
                </table>
                <button type="button" class="btn btn-success btn-sm mt-2" data-toggle="collapse" data-target="#updateInfo" aria-expanded="false" aria-controls="collapseExample">
                    Thay đổi thông tin
                </button>
            </div>
        </div>
    </div>

    <div class="row mt-3">
        <div class="col-md-12">
            <div class="collapse mb-2" id="updateInfo">
                <div class="card">
                    <div class="card-body">
                        <form action="#" method="post">
                            <div class="form-group col-md-6">
                                <input type="text" class="form-control" name="name" placeholder="Họ và tên">
                            </div>
                            <div class="form-group col-md-6">
                                <input type="text" class="form-control" name="mobile" placeholder="Số điện thoại">
                            </div>
                            <div class="form-group col-md-6">
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="gender" value="1">
                                    <label class="form-check-label" for="inlineRadio1">Nam</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="gender" value="0">
                                    <label class="form-check-label" for="inlineRadio2">Nữ</label>
                                </div>
                            </div>
                            <div class="form-group col-md-12">
                                <textarea class="form-control" rows="3" name="address" placeholder="Địa chỉ"></textarea>
                            </div>
                            <input type="button" class="btn btn-success btn-sm ml-3" name="btnUpload" value="Xác nhận">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>




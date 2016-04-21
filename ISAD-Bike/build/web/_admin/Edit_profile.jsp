<%-- 
    Document   : index
    Created on : Apr 20, 2016, 8:55:17 PM
    Author     : StandAlone
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib tagdir="/WEB-INF/tags/" prefix="ListCountry" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BIKE-SHOP</title>

        <link href="https://fonts.googleapis.com/css?family=Lato:100" rel="stylesheet" type="text/css">

        <link rel="stylesheet" href="https://bootswatch.com/slate/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

        <link href="css/bootstrap-form-helpers.min.css" rel="stylesheet">
        <script src="js/bootstrap-formhelpers.min.js"></script>
    </head>
    <body style="background-color: black;
          background: url(/ISAD-Bike/img/bicycle.jpg) no-repeat center center fixed; 
          -webkit-background-size: cover;
          -moz-background-size: cover;
          -o-background-size: cover;
          background-size: cover;">

        <div class="row">
            <div class="col-sm-3"></div>
            <ul class="nav nav-tabs" style="background-color: black;">
                <li><a href="index_admin.jsp"><h3>หน้าหลัก</h3></a></li>
                <li><a href="Confirm_payment.jsp"><h3>ยืนยันการชำระเงิน</h3></a></li>
                <li><a href="Ans_question.jsp"><h3>ตอบปัญหา</h3></a></li>
                <li><a href="Manage_price.jsp"><h3>จัดการสินค้า</h3></a></li>
                <li><a href="#"><span class="glyphicon glyphicon-user" ></span><h4> แก้ไขข้อมูล</h4></a></li>
                <form action="../ServletLogout">
                    <li><button type="submit" class="btn btn-default" id="logout" style="height: 80px;">ออกจากระบบ</button></li>
                </form>
            </ul>
        </div>


        <div class="container" style="background-color: rgba(0,0,0,0.65);">
            <h1>แก้ไขโปรไฟล์</h1>
            <hr>
            <div class="row">
                <!-- left column -->
                <div class="col-md-3">
                    <div class="text-center">
                        <img src="//placehold.it/100" class="avatar img-circle" alt="avatar">
                        <h6>Upload a different photo...</h6>

                        <input type="file" class="form-control">
                    </div>
                </div>

                <!-- edit form column -->
                <div class="col-md-9 personal-info">
                    <div class="alert alert-info alert-dismissable">
                        <a class="panel-close close" data-dismiss="alert">×</a> 
                        <i class="fa fa-coffee"></i>
                        โปรดใส่ข้อมูลที่เป็นจริงสำหรับโปรไฟล์ของคุณ
                    </div>
                    <h3>ข้อมูลทั่วไป</h3>

                    <form class="form-horizontal" role="form">
                        <div class="form-group">
                            <label class="col-lg-3 control-label">ชื่อจริง:</label>
                            <div class="col-lg-8">
                                <input class="form-control" type="text" >
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">นามสกุล:</label>
                            <div class="col-lg-8">
                                <input class="form-control" type="text" >
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">เบอร์โทรศัพท์:</label>
                            <div class="col-lg-8">
                                <input class="form-control" type="text" >
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">รหัสประชาชน:</label>
                            <div class="col-lg-8">
                                <input class="form-control" type="text" name="ssd_pro"  pattern="[0-9]{13}" 
                                       title="รหัสประจำตัวประชาชนไม่ถูกต้อง กรุณากรอกใหม่"   required="true"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">อีเมล์:</label>
                            <div class="col-lg-8">
                                <input class="form-control" type="text" >
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Time Zone:</label>
                            <div class="col-lg-8">
                                <div class="ui-select">
                                    <select id="user_time_zone" class="form-control">
                                        <ListCountry:tagCountryList/>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Password:</label>
                            <div class="col-md-8">
                                <input class="form-control" type="password" >
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Confirm password:</label>
                            <div class="col-md-8">
                                <input class="form-control" type="password" >
                            </div>
                        </div>
                    </form>



                    <h3>ข้อมูลที่อยู่</h3>

                    <form class="form-horizontal" role="form">
                        <div class="form-group">
                            <label class="col-lg-3 control-label">บ้านเลขที่:</label>
                            <div class="col-lg-8">
                                <input class="form-control" type="text" name="house_noPro">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">ถนน:</label>
                            <div class="col-lg-8">
                                <input class="form-control" type="text" name="streetPro">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">ตำบล / แขวง:</label>
                            <div class="col-lg-8">
                                <input class="form-control" type="text" name="subDistrictPro">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">อำเภอ / เขต:</label>
                            <div class="col-lg-8">
                                <input class="form-control" type="text" name="districtPro">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">จังหวัด:</label>
                            <div class="col-lg-8">
                                <input class="form-control" type="text" name="provincePro">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">รหัสไปรษณีย์:</label>
                            <div class="col-md-8">
                                <input class="form-control" type="text" name="zipcodePro">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label"></label>
                            <div class="col-md-8">
                                <input type="button" class="btn btn-primary" value="Save Changes">
                                <span></span>
                                <input type="reset" class="btn btn-default" value="Cancel">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>




    </body>
</html>

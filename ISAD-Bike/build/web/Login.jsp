<%-- 
    Document   : index
    Created on : Apr 20, 2016, 8:55:17 PM
    Author     : StandAlone
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
          background: url(img/bicycle.jpg) no-repeat center center fixed; 
          -webkit-background-size: cover;
          -moz-background-size: cover;
          -o-background-size: cover;
          background-size: cover;">

        <div class="row">
            <div class="col-sm-3"></div>
            <ul class="nav nav-tabs" style="background-color: black;">
                <li><a href="index.jsp"><h3>หน้าหลัก</h3></a></li>
                <li><a href="HowtoPayment.jsp"><h3>วิธีชำระเงิน</h3></a></li>
                <li><a href="Contact_emp.jsp"><h3>ติดต่อเจ้าหน้าที่</h3></a></li>
                <li><a href="Comment.jsp"><h3>แสดงความคิดเห็น</h3></a></li>
                <li><a href="Register.jsp"><h3>สมัครสมาชิก</h3></a></li>
                <li><a href="Login.jsp"><span class="glyphicon glyphicon-log-in" ></span><h4> เข้าสู่ระบบ</h4></a></li>
            </ul>
        </div>

        <form role="form" action="ServletToWelcome" method="POST" 
              style="background-color: rgba(0,0,0,0.65);padding: 2%;border-radius: 10%;
              width : 20%;margin-left: 40%;margin-top: 10%;">
            
            <div class="form-group">
                <label for="email">ชื่อผู้ใช้ :</label>
                <input type="text" class="form-control" name="user">
            </div>
            <div class="form-group">
                <label for="pwd">รหัสผ่าน :</label>
                <input type="password" class="form-control" name="pwd">
            </div>
            <button type="submit" class="btn btn-default" name="btn_login" 
                    style="background-color: orangered;">เข้าสู่ระบบ</button>
            <button type="submit" class="btn btn-default" name="btn_can" 
                    formaction="index.jsp" style="background-color: orangered;">ยกเลิก</button>
            <a href="#" style="margin-left: 70%;" data-toggle="modal" data-target="#myModal" >ลืม Password</a>

            <!-- Modal -->
            <div class="modal fade" id="myModal" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">ลืมรหัสผ่าน</h4>
                        </div>
                        <div class="modal-body">
                            <p>โปรดกรอกข้อมูลด้านล่าง.</p>
                            <div class="form-group">
                                <label for="email">ชื่อผู้ใช้ :</label>
                                <input type="text" class="form-control" name="user_forget">
                            </div>
                            <div class="form-group">
                                <label for="email">อีเมล์ :</label>
                                <input type="text" class="form-control" name="email_forget">
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-default" name="btn_forget"
                                    formaction="" style="background-color: orangered;width: 100%;">ตกลง</button>

                        </div>
                    </div>

                </div>
            </div>

        </form>





    </body>
</html>

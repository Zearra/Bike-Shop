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
                <li><a href="#"><h3>สมัครสมาชิก</h3></a></li>
                <li><a href="Login.jsp"><span class="glyphicon glyphicon-log-in" ></span><h4> เข้าสู่ระบบ</h4></a></li>
            </ul>
        </div>


        <script type="text/javascript">
            function checkPasswordMatch() {
                //                alert("hey");
                var password = document.getElementById('form-Password').value;
                var rePassword = document.getElementById('form-rePassword').value;
                //                alert(password);
                //                alert(rePassword);
                if (password !== rePassword) {
                    alert("รหัสผ่านไม่เหมือนกัน กรุณากรอกใหม่อีกครั้ง");
                }

            }
            function checkEmailMatch() {
                var email = document.getElementById('form-email').value;
                var reEmail = document.getElementById('form-reEmail').value;
                if (email !== reEmail) {
                    alert("อีเมล์ไม่เหมือนกัน กรุณากรอกใหม่อีกครั้ง");
                }
            }
        </script> 

        <form role="form" action="RegisServlet" method="post" class="registration-form">
            <div class="modal-dialog" style="margin-left: 55%;" id="dia">
                <div class="modal-content" id="con">

                    <div class="modal-header" id="head">
                        <h3 class="modal-title" id="modal-register-label">สมัครสมาชิก ข้อมูลทั่วไป</h3>
                        <p>กรอกข้อมูลของท่านลงในฟอร์มด้านล่างนี้:</p>
                    </div>

                    <div class="modal-body" id="bo">


                        <div class="form-group">
                            <label class="sr-only" >ชื่อผู้ใช้งาน</label>
                            <input type="text" name="username" placeholder="ชื่อผู้ใช้งาน..." class="form-control" id="form-username" required="true"/>
                        </div>
                        <div class="form-group">
                            <label class="sr-only" >รหัสผ่าน</label>
                            <input type="password" name="password" placeholder="รหัสผ่าน..." class="form-control" id="form-Password" required="true"/>
                        </div>
                        <div class="form-group">
                            <label class="sr-only" >ยืนยันรหัสผ่าน</label>
                            <input type="password" name="rePassword" placeholder="ยืนยันรหัสผ่าน..." class="form-control" id="form-rePassword" required="true" onblur="checkPasswordMatch()"/>
                        </div>
                        <div class="form-group">
                            <label class="sr-only" >อีเมล์</label>
                            <input type="text" name="email" placeholder="อีเมล์..." class="form-control" id="form-email" required="true" />
                        </div>
                        <div class="form-group">
                            <label class="sr-only" >ยืนยันอีเมล์</label>
                            <input type="text" name="reEmail" placeholder="ยืนยันอีเมล์..." class="form-control" id="form-reEmail" required="true" onblur="checkEmailMatch()"/>
                        </div>
                        <div class="form-group">
                            <label class="sr-only" >ชื่อ</label>
                            <input type="text" name="fName" placeholder="ชื่อ..." class="form-control" id="form-first-name" required="true"/>
                        </div>
                        <div class="form-group">
                            <label class="sr-only" >นามสกุล</label>
                            <input type="text" name="lName" placeholder="นามสกุล..." class="form-control" id="form-last-name" required="true"/>
                        </div>

                        <div class="form-group">
                            <label class="sr-only" >เบอร์โทรศัทพ์</label>
                            <input type="text" name="tel" placeholder="เบอร์โทรศัทพ์..."  class="form-control bfh-phone" id="form-tel" data-format="+66 (ddd) ddd-dddd" required="true"/>
                        </div>
                        <div class="form-group">
                            <label class="sr-only" >รหัสประจำตัวประชาชน</label>
                            <input type="text" name="ssd" placeholder="รหัสประจำตัวประชาชน..." pattern="[0-9]{13}" title="รหัสประจำตัวประชาชนไม่ถูกต้อง กรุณากรอกใหม่" class="form-control" id="form-ssd" required="true"/>
                        </div>
                        <!--                            <div class="form-group">
                                                        <label class="sr-only" for="form-about-yourself">About yourself</label>
                                                        <textarea name="form-about-yourself" placeholder="About yourself..." 
                                                                  class="form-about-yourself form-control" id="form-about-yourself"></textarea>
                                                    </div>-->
                    </div>

                </div>
            </div>

            <div class="modal-dialog"  style="margin-left: 55%;" id="dia2">
                <div class="modal-content" id="con2">

                    <div class="modal-header" id="head2">
                        <h3 class="modal-title" id="modal-register-label2">สมัครสมาชิก ที่อยู่</h3>
                        <p>กรอกข้อมูลของท่านลงในฟอร์มด้านล่างนี้:</p>
                    </div>

                    <div class="modal-body" id="bo2">

                        <div class="form-group">
                            <label class="sr-only" for="form-house_no">บ้านเลขที่</label>
                            <input type="text" name="house_no" placeholder="บ้านเลขที่..." class="form-control" id="form-house_no" required="true"/>
                        </div>
                        <div class="form-group">
                            <label class="sr-only" for="form-street">ถนน</label>
                            <input type="text" name="street" placeholder="ถนน..." class="form-control" id="form-street" required="true"/>
                        </div>
                        <div class="form-group">
                            <label class="sr-only" for="form-subDistrict">ตำบล / แขวง</label>
                            <input type="text" name="subDistrict" placeholder="ตำบล / แขวง..." class="form-control" id="form-subDistrict" required="true"/>
                        </div>
                        <div class="form-group">
                            <label class="sr-only" for="form-district">อำเภอ / เขต</label>
                            <input type="text" name="district" placeholder="อำเภอ / เขต..." class="form-control" id="form-district" required="true" />
                        </div>
                        <div class="form-group">
                            <label class="sr-only" for="form-province">จังหวัด</label>
                            <input type="text" name="province" placeholder="จังหวัด..." class="form-control" id="form-province" required="true"/>
                        </div>
                        <div class="form-group">
                            <label class="sr-only" for="form-zipcode">รหัสไปรษณีย์</label>
                            <input type="text" name="zipcode" placeholder="รหัสไปรษณีย์..." class="form-control" id="form-zipcode" required="true"/>
                        </div>
                        <!--                <div class="form-group">
                                            <label class="sr-only" for="form-country">ประเทศ</label>
                                            <input type="text" name="country" placeholder="ประเทศ..." class="form-country form-control" id="form-country" required="true"/>
                                        </div>-->
                        <select class="form-control bfh-countries" >
                            <ListCountry:tagCountryList/>
                        </select>


                    </div>

                </div>
            </div>
            <button type="submit" class="btn btn-link-2 launch-modal" href="#"
                    style="width: 600px;background-color: orangered;margin-top: 50px;margin-left: 55%;">ยืนยันการสมัครสมาชิก</button>
        </form>




    </body>
</html>

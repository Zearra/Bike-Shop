<%-- 
    Document   : welcome
    Created on : Apr 13, 2016, 10:35:51 PM
    Author     : StandAlone
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib tagdir="/WEB-INF/tags/" prefix="QA" %>
<%@taglib tagdir="/WEB-INF/tags/" prefix="Register" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>BIKE-SHOP</title>

        <link href="https://fonts.googleapis.com/css?family=Lato:100" rel="stylesheet" type="text/css">

        <link rel="stylesheet" href="https://bootswatch.com/slate/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        
        <script type="text/javascript">
            function checkPasswordMatch() {
                var password = document.getElementsByName('password')[0].value;
                var rePassword = document.getElementsByName('rePassword')[0].value;
                if (password !== rePassword) {
                    alert("รหัสผ่านไม่เหมือนกัน กรุณากรอกใหม่อีกครั้ง");
                }
            }
            function checkEmailMatch() {
                var email = document.getElementsByName('email')[0].value;
                var reEmail = document.getElementsByName('reEmail')[0].value;
                if (email !== reEmail) {
                    alert("รหัสผ่านไม่เหมือนกัน กรุณากรอกใหม่อีกครั้ง");
                }
            }
        </script> 
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
                <li class="active"><a data-toggle="tab" href="#home"><h3>หน้าหลัก</h3></a></li>
                <li><a data-toggle="tab" href="#menu1"><h3>ร้านค้า</h3></a></li>
                <li><a data-toggle="tab" href="#menu2"><h3>วิธีชำระเงิน</h3></a></li>
                <li><a data-toggle="tab" href="#menu3"><h3>ติดต่อเจ้าหน้าที่</h3></a></li>
                <li><a data-toggle="tab" href="#menu4"><h3>แสดงความคิดเห็น</h3></a></li>
                <li><a data-toggle="tab" href="#regis"><span class="glyphicon glyphicon-user" ></span><h4> สมัครสมาชิก</h4></a></li>
                <li><a data-toggle="tab" href="#login"><span class="glyphicon glyphicon-log-in" ></span><h4> เข้าสู่ระบบ</h4></a></li>
            </ul>
        </div>

        <div class="tab-content" >
            <div id="home" class="tab-pane fade in active">
                <div class="container" style="text-align: center;margin-top: 5%;">
                    <div class="jumbotron" >
                        <h1>รายการโปรโมชั่น</h1>      
                        <p>รายการโปรโมชั่นต่างๆของทางเว็ปไซด์</p>
                    </div>
                    <div class="jumbotron">
                        <h1>รายการสินค้าแนะนำ</h1>      
                        <p>รายการสินค้าแนะนำต่างๆของทางเว็ปไซด์</p>
                    </div>   
                </div>
            </div>
            <div id="menu1" class="tab-pane fade">
                <h3>ร้านค้า</h3>
            </div>
            <div id="menu2" class="tab-pane fade">
                <h3>วิธีชำระเงิน</h3>
            </div>
            <div id="menu3" class="tab-pane fade" style="margin-left: 30%;width: 40%;">
                <QA:tagQA/>
            </div>
            <div id="menu4" class="tab-pane fade">
                <h3>แสดงความคิดเห็น</h3>
            </div>
            <div id="regis" class="tab-pane fade" >
                <!--<h3>สมัครสมาชิก</h3>-->
                <Register:tagRegister/>
            </div>
            <div id="login" class="tab-pane fade" style="width : 20%;margin-left: 40%;margin-top: 10%;">
                <form role="form" action="ServletToWelcome" method="POST" style="background-color: gray;padding: 5%;border-radius: 10%;">
                    <div class="form-group">
                        <label for="email">ชื่อผู้ใช้ :</label>
                        <input type="text" class="form-control" name="user">
                    </div>
                    <div class="form-group">
                        <label for="pwd">รหัสผ่าน :</label>
                        <input type="password" class="form-control" name="pwd">
                    </div>
                    <button type="submit" class="btn btn-default" id="btn">เข้าสู่ระบบ</button>
                    <button type="submit" class="btn btn-default" id="btn_can" formaction="welcome.jsp">ยกเลิก</button>
                </form>
            </div>
        </div>
    </body>
</html>

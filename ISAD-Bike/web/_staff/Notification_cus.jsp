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
          background: url(/ISAD-Bike/img/bicycle.jpg) no-repeat center center fixed; 
          -webkit-background-size: cover;
          -moz-background-size: cover;
          -o-background-size: cover;
          background-size: cover;">

        <div class="row">
            <div class="col-sm-3"></div>
            <ul class="nav nav-tabs" style="background-color: black;">
                <li><a href="index_staff.jsp"><h3>หน้าหลัก</h3></a></li>
                <li><a href="Ordering.jsp"><h3>ยอดการสั่งซื้อ</h3></a></li>
                <li><a href="#"><h3>แจ้งรับสินค้า</h3></a></li>
                <li><a href="Detail_want.jsp"><h3>ข้อมูลความต้องการ</h3></a></li>
                <li><a href="Edit_profile.jsp"><span class="glyphicon glyphicon-user" ></span><h4> แก้ไขข้อมูล</h4></a></li>
                <form action="../ServletLogout">
                    <li><button type="submit" class="btn btn-default" id="logout" style="height: 80px;">ออกจากระบบ</button></li>
                </form>
            </ul>
        </div>





    </body>
</html>

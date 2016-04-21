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

        <style>
            #section1 {color: #fff; background-color: rgba(255, 44, 44, 0.4);}
            #section2 {color: #fff; background-color: rgba(73, 77, 255, 0.4);}
            #section3 {color: #fff; background-color: rgba(146, 213, 102, 0.4);}
            #section4 {color: #fff; background-color: rgba(146, 18, 188, 0.4);}
            #section5 {color: #fff; background-color: rgba(255, 44, 44, 0.4);}
            #section6 {color: #fff; background-color: rgba(73, 77, 255, 0.4);}
            #section7 {color: #fff; background-color: rgba(146, 213, 102, 0.4);}
            #section8 {color: #fff; background-color: rgba(146, 18, 188, 0.4);}
            #section9 {color: #fff; background-color: rgba(50, 27, 25, 0.5);}

            @media screen and (max-width: 810px) {
                #section1, #section2, #section3, #section41, #section42  {
                    margin-left: 150px;
                }
            }
        </style>
    </head>
    <body style="background-color: black;
          background: url(/ISAD-Bike/img/bicycle.jpg) no-repeat center center fixed; 
          -webkit-background-size: cover;
          -moz-background-size: cover;
          -o-background-size: cover;
          background-size: cover;"
          data-spy="scroll" data-target="#myScrollspy" data-offset="20">

        <div class="row">
            <div class="col-sm-3"></div>
            <ul class="nav nav-tabs" style="background-color: black;">
                <li><a href="index_cus.jsp"><h3>หน้าหลัก</h3></a></li>
                <li><a href="HowtoPayment.jsp"><h3>วิธีชำระเงิน</h3></a></li>
                <li><a href="Contact_emp.jsp"><h3>ติดต่อเจ้าหน้าที่</h3></a></li>
                <li><a href="Comment.jsp"><h3>แสดงความคิดเห็น</h3></a></li>
                <li><a href="CartPage.jsp"><h3>ตะกร้าสินค้า</h3></a></li>
                <li><a href="Edit_profile.jsp"><span class="glyphicon glyphicon-user" ></span><h4> แก้ไขข้อมูล</h4></a></li>
                <form action="../ServletLogout">
                    <li><button type="submit" class="btn btn-default" id="logout" style="height: 80px;">ออกจากระบบ</button></li>
                </form>
            </ul>
        </div>
        <div class="jumbotron" style="text-align: center;">
            <h1>ชิ้นส่วนอะไหล่จักรยานเสือหมอบ</h1>      
            <p>อะไหล่และส่วนประกอบของทางร้านค้า</p>
        </div>

        <div class="col-sm-2" style="background-color: rgba(1,1,1,0.65);height: 2950px;">

            <nav class="col-sm-3" id="myScrollspy" style="margin-top: 40%;text-align: center;">
                <ul class="nav nav-pills nav-stacked" style="position: fixed;width:100px;">
                    <li class="active"><a href="#section1">เฟรม</a></li>
                    <li><a href="#section2">ชุดเกียร์</a></li>
                    <li><a href="#section3">ล้อ</a></li>
                    <li><a href="#section4">เบรค</a></li>
                    <li><a href="#section5">แฮนด์</a></li>
                    <li><a href="#section6">อาน</a></li>
                    <li><a href="#section7">ยาง</a></li>
                    <li><a href="#section8">ผ้าพันแฮนต์</a></li>
                </ul>
            </nav>
        </div>

        <div class="col-sm-9">
            <div class="row" id="section1" style="height: 350px;">    
                <h1>เฟรม</h1>
                <p>โปรดเลือกชิ้นส่วนจักรยานที่ต้องการเพียง 1 ชิ้น!</p>
                <div class="col-sm-4" style="margin-left: 10%;">
                    <div class="img-thumbnail" title="เฟรม mosso 7580CB 15.5">
                        <a href="#">
                            <img class="productImage" style="width: 150px;height: 150px;"
                                 src="../price/road_bike/part1.jpg" alt="เฟรม mosso 7580CB 15.5" >
                        </a>
                    </div>
                    <div class="productDetail">
                        <div class="product_name" title="เฟรม mosso 7580CB 15.5">
                            <a href="#">เฟรม mosso 7580CB 15.5</a></div>
                        <div class="product_price has_currency_unit" realprice="26,800.00" realcurrency="THB">26,800.00 บาท</div>
                        <button type="button" class="btn btn-default">สั่งซื้อ</button>
                    </div>
                </div>
                <div class="col-sm-4" style="margin-left: 10%;">
                    <div class="img-thumbnail" title="เฟรม Giant XTC SLR 2015">
                        <a href="#">
                            <img class="productImage" style="width: 150px;height: 150px;"
                                 src="../price/road_bike/part2.jpg" alt="เฟรม Giant XTC SLR 2015" >
                        </a>
                    </div>
                    <div class="productDetail">
                        <div class="product_name" title="เฟรม Giant XTC SLR 2015">
                            <a href="#">เฟรม Giant XTC SLR 2015</a></div>
                        <div class="product_price has_currency_unit" realprice="16,400.00" realcurrency="THB">16,400.00 บาท</div>
                        <button type="button" class="btn btn-default">สั่งซื้อ</button>
                    </div>
                </div>
            </div>
            
            <div id="section2" style="height: 350px;"> 
                <h1>ชุดเกียร์</h1>
                <p>โปรดเลือกชิ้นส่วนจักรยานที่ต้องการเพียง 1 ชิ้น!</p>
                <div class="col-sm-4" style="margin-left: 10%;">
                    <div class="img-thumbnail" title="เฟรม mosso 7580CB 15.5">
                        <a href="#">
                            <img class="productImage" style="width: 150px;height: 150px;"
                                 src="../price/road_bike/part1.1.jpg" alt="เฟรม mosso 7580CB 15.5" >
                        </a>
                    </div>
                    <div class="productDetail">
                        <div class="product_name" title="เฟรม mosso 7580CB 15.5">
                            <a href="#">เฟรม mosso 7580CB 15.5</a></div>
                        <div class="product_price has_currency_unit" realprice="26,800.00" realcurrency="THB">26,800.00 บาท</div>
                        <button type="button" class="btn btn-default">สั่งซื้อ</button>
                    </div>
                </div>
                <div class="col-sm-4" style="margin-left: 10%;">
                    <div class="img-thumbnail" title="เฟรม Giant XTC SLR 2015">
                        <a href="#">
                            <img class="productImage" style="width: 150px;height: 150px;"
                                 src="../price/road_bike/part2.1.jpg" alt="เฟรม Giant XTC SLR 2015" >
                        </a>
                    </div>
                    <div class="productDetail">
                        <div class="product_name" title="เฟรม Giant XTC SLR 2015">
                            <a href="#">เฟรม Giant XTC SLR 2015</a></div>
                        <div class="product_price has_currency_unit" realprice="16,400.00" realcurrency="THB">16,400.00 บาท</div>
                        <button type="button" class="btn btn-default">สั่งซื้อ</button>
                    </div>
                </div>
            </div>       
            
            <div id="section3" style="height: 350px;">         
                <h1>ล้อ</h1>
                <p>โปรดเลือกชิ้นส่วนจักรยานที่ต้องการเพียง 1 ชิ้น!</p>
                <div class="col-sm-4" style="margin-left: 10%;">
                    <div class="img-thumbnail" title="เฟรม mosso 7580CB 15.5">
                        <a href="#">
                            <img class="productImage" style="width: 150px;height: 150px;"
                                 src="../price/road_bike/part1.2.jpg" alt="เฟรม mosso 7580CB 15.5" >
                        </a>
                    </div>
                    <div class="productDetail">
                        <div class="product_name" title="เฟรม mosso 7580CB 15.5">
                            <a href="#">เฟรม mosso 7580CB 15.5</a></div>
                        <div class="product_price has_currency_unit" realprice="26,800.00" realcurrency="THB">26,800.00 บาท</div>
                        <button type="button" class="btn btn-default">สั่งซื้อ</button>
                    </div>
                </div>
                <div class="col-sm-4" style="margin-left: 10%;">
                    <div class="img-thumbnail" title="เฟรม Giant XTC SLR 2015">
                        <a href="#">
                            <img class="productImage" style="width: 150px;height: 150px;"
                                 src="../price/road_bike/part2.2.jpg" alt="เฟรม Giant XTC SLR 2015" >
                        </a>
                    </div>
                    <div class="productDetail">
                        <div class="product_name" title="เฟรม Giant XTC SLR 2015">
                            <a href="#">เฟรม Giant XTC SLR 2015</a></div>
                        <div class="product_price has_currency_unit" realprice="16,400.00" realcurrency="THB">16,400.00 บาท</div>
                        <button type="button" class="btn btn-default">สั่งซื้อ</button>
                    </div>
                </div>
            </div>
            
            <div id="section4" style="height: 350px;">         
                <h1>เบรค</h1>
                <p>โปรดเลือกชิ้นส่วนจักรยานที่ต้องการเพียง 1 ชิ้น!</p>
                <div class="col-sm-4" style="margin-left: 10%;">
                    <div class="img-thumbnail" title="เฟรม mosso 7580CB 15.5">
                        <a href="#">
                            <img class="productImage" style="width: 150px;height: 150px;"
                                 src="../price/road_bike/part1.3.jpg" alt="เฟรม mosso 7580CB 15.5" >
                        </a>
                    </div>
                    <div class="productDetail">
                        <div class="product_name" title="เฟรม mosso 7580CB 15.5">
                            <a href="#">เฟรม mosso 7580CB 15.5</a></div>
                        <div class="product_price has_currency_unit" realprice="26,800.00" realcurrency="THB">26,800.00 บาท</div>
                        <button type="button" class="btn btn-default">สั่งซื้อ</button>
                    </div>
                </div>
                <div class="col-sm-4" style="margin-left: 10%;">
                    <div class="img-thumbnail" title="เฟรม Giant XTC SLR 2015">
                        <a href="#">
                            <img class="productImage" style="width: 150px;height: 150px;"
                                 src="../price/road_bike/part2.3.jpg" alt="เฟรม Giant XTC SLR 2015" >
                        </a>
                    </div>
                    <div class="productDetail">
                        <div class="product_name" title="เฟรม Giant XTC SLR 2015">
                            <a href="#">เฟรม Giant XTC SLR 2015</a></div>
                        <div class="product_price has_currency_unit" realprice="16,400.00" realcurrency="THB">16,400.00 บาท</div>
                        <button type="button" class="btn btn-default">สั่งซื้อ</button>
                    </div>
                </div>
            </div>
            
            <div id="section5" style="height: 350px;">         
                <h1>แฮนด์</h1>
                <p>โปรดเลือกชิ้นส่วนจักรยานที่ต้องการเพียง 1 ชิ้น!</p>
                <div class="col-sm-4" style="margin-left: 10%;">
                    <div class="img-thumbnail" title="เฟรม mosso 7580CB 15.5">
                        <a href="#">
                            <img class="productImage" style="width: 150px;height: 150px;"
                                 src="../price/road_bike/part1.4.jpg" alt="เฟรม mosso 7580CB 15.5" >
                        </a>
                    </div>
                    <div class="productDetail">
                        <div class="product_name" title="เฟรม mosso 7580CB 15.5">
                            <a href="#">เฟรม mosso 7580CB 15.5</a></div>
                        <div class="product_price has_currency_unit" realprice="26,800.00" realcurrency="THB">26,800.00 บาท</div>
                        <button type="button" class="btn btn-default">สั่งซื้อ</button>
                    </div>
                </div>
                <div class="col-sm-4" style="margin-left: 10%;">
                    <div class="img-thumbnail" title="เฟรม Giant XTC SLR 2015">
                        <a href="#">
                            <img class="productImage" style="width: 150px;height: 150px;"
                                 src="../price/road_bike/part2.4.jpg" alt="เฟรม Giant XTC SLR 2015" >
                        </a>
                    </div>
                    <div class="productDetail">
                        <div class="product_name" title="เฟรม Giant XTC SLR 2015">
                            <a href="#">เฟรม Giant XTC SLR 2015</a></div>
                        <div class="product_price has_currency_unit" realprice="16,400.00" realcurrency="THB">16,400.00 บาท</div>
                        <button type="button" class="btn btn-default">สั่งซื้อ</button>
                    </div>
                </div>
            </div>
            
            <div id="section6" style="height: 350px;">         
                <h1>อาน</h1>
                <p>โปรดเลือกชิ้นส่วนจักรยานที่ต้องการเพียง 1 ชิ้น!</p>
                <div class="col-sm-4" style="margin-left: 10%;">
                    <div class="img-thumbnail" title="เฟรม mosso 7580CB 15.5">
                        <a href="#">
                            <img class="productImage" style="width: 150px;height: 150px;"
                                 src="../price/road_bike/part1.5.jpg" alt="เฟรม mosso 7580CB 15.5" >
                        </a>
                    </div>
                    <div class="productDetail">
                        <div class="product_name" title="เฟรม mosso 7580CB 15.5">
                            <a href="#">เฟรม mosso 7580CB 15.5</a></div>
                        <div class="product_price has_currency_unit" realprice="26,800.00" realcurrency="THB">26,800.00 บาท</div>
                        <button type="button" class="btn btn-default">สั่งซื้อ</button>
                    </div>
                </div>
                <div class="col-sm-4" style="margin-left: 10%;">
                    <div class="img-thumbnail" title="เฟรม Giant XTC SLR 2015">
                        <a href="#">
                            <img class="productImage" style="width: 150px;height: 150px;"
                                 src="../price/road_bike/part2.5.jpg" alt="เฟรม Giant XTC SLR 2015" >
                        </a>
                    </div>
                    <div class="productDetail">
                        <div class="product_name" title="เฟรม Giant XTC SLR 2015">
                            <a href="#">เฟรม Giant XTC SLR 2015</a></div>
                        <div class="product_price has_currency_unit" realprice="16,400.00" realcurrency="THB">16,400.00 บาท</div>
                        <button type="button" class="btn btn-default">สั่งซื้อ</button>
                    </div>
                </div>
            </div>
            
            <div id="section7" style="height: 350px;">         
                <h1>ยาง</h1>
                <p>โปรดเลือกชิ้นส่วนจักรยานที่ต้องการเพียง 1 ชิ้น!</p>
                <div class="col-sm-4" style="margin-left: 10%;">
                    <div class="img-thumbnail" title="เฟรม mosso 7580CB 15.5">
                        <a href="#">
                            <img class="productImage" style="width: 150px;height: 150px;"
                                 src="../price/road_bike/part1.6.jpg" alt="เฟรม mosso 7580CB 15.5" >
                        </a>
                    </div>
                    <div class="productDetail">
                        <div class="product_name" title="เฟรม mosso 7580CB 15.5">
                            <a href="#">เฟรม mosso 7580CB 15.5</a></div>
                        <div class="product_price has_currency_unit" realprice="26,800.00" realcurrency="THB">26,800.00 บาท</div>
                        <button type="button" class="btn btn-default">สั่งซื้อ</button>
                    </div>
                </div>
                <div class="col-sm-4" style="margin-left: 10%;">
                    <div class="img-thumbnail" title="เฟรม Giant XTC SLR 2015">
                        <a href="#">
                            <img class="productImage" style="width: 150px;height: 150px;"
                                 src="../price/road_bike/part2.6.jpg" alt="เฟรม Giant XTC SLR 2015" >
                        </a>
                    </div>
                    <div class="productDetail">
                        <div class="product_name" title="เฟรม Giant XTC SLR 2015">
                            <a href="#">เฟรม Giant XTC SLR 2015</a></div>
                        <div class="product_price has_currency_unit" realprice="16,400.00" realcurrency="THB">16,400.00 บาท</div>
                        <button type="button" class="btn btn-default">สั่งซื้อ</button>
                    </div>
                </div>
            </div>
            <div id="section8" style="height: 350px;">         
                <h1>โช๊ค</h1>
                <p>โปรดเลือกชิ้นส่วนจักรยานที่ต้องการเพียง 1 ชิ้น!</p>
                <div class="col-sm-4" style="margin-left: 10%;">
                    <div class="img-thumbnail" title="เฟรม mosso 7580CB 15.5">
                        <a href="#">
                            <img class="productImage" style="width: 150px;height: 150px;"
                                 src="../price/road_bike/part1.7.jpg" alt="เฟรม mosso 7580CB 15.5" >
                        </a>
                    </div>
                    <div class="productDetail">
                        <div class="product_name" title="เฟรม mosso 7580CB 15.5">
                            <a href="#">เฟรม mosso 7580CB 15.5</a></div>
                        <div class="product_price has_currency_unit" realprice="26,800.00" realcurrency="THB">26,800.00 บาท</div>
                        <button type="button" class="btn btn-default">สั่งซื้อ</button>
                    </div>
                </div>
                <div class="col-sm-4" style="margin-left: 10%;">
                    <div class="img-thumbnail" title="เฟรม Giant XTC SLR 2015">
                        <a href="#">
                            <img class="productImage" style="width: 150px;height: 150px;"
                                 src="../price/road_bike/part2.7.jpg" alt="เฟรม Giant XTC SLR 2015" >
                        </a>
                    </div>
                    <div class="productDetail">
                        <div class="product_name" title="เฟรม Giant XTC SLR 2015">
                            <a href="#">เฟรม Giant XTC SLR 2015</a></div>
                        <div class="product_price has_currency_unit" realprice="16,400.00" realcurrency="THB">16,400.00 บาท</div>
                        <button type="button" class="btn btn-default">สั่งซื้อ</button>
                    </div>
                </div>
            </div>
            
            <div id="section9" style="height: 100px;">
                <h3><button class="btn btn-info" style="width: 100%;">ยืนยันการเลือกสินค้า</button></h3>
            </div>
            
           
            
        </div>





    </body>
</html>


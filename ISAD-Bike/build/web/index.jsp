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
                <li><a href="#"><h3>หน้าหลัก</h3></a></li>
                <li><a href="HowtoPayment.jsp"><h3>วิธีชำระเงิน</h3></a></li>
                <li><a href="Contact_emp.jsp"><h3>ติดต่อเจ้าหน้าที่</h3></a></li>
                <li><a href="Comment.jsp"><h3>แสดงความคิดเห็น</h3></a></li>
                <li><a href="Register.jsp"><h3>สมัครสมาชิก</h3></a></li>
                <li><a href="Login.jsp"><span class="glyphicon glyphicon-log-in" ></span><h4> เข้าสู่ระบบ</h4></a></li>
            </ul>
        </div>

        <div class="row">
            <div class="col-lg-8" style="background-color: rgba(1,1,1,0.65);text-align: center;
                 margin-left: 15%;">
                <div class="jumbotron">
                    <h1>รายการสินค้า</h1>      
                    <p>รายการสินค้าต่างๆของของทางเว็ปไซต์</p>
                </div>   

                <div class="container" >
                    <div class="row" >
                        <div class="productsArea thumbnailArea size-150 frame-000" style="background-color: rgba(1,1,1,0.65);">
                            <div class="col-sm-4">
                                <div class="img-thumbnail" title="จักรยานมินิเวลโล Lollipop">
                                    <a href="#">
                                        <img class="productImage" src="http://b.lnwfile.com/_resize_images/150/150/4e/3v/8f.jpg" alt="จักรยานมินิเวลโล Lollipop">
                                        <div class="gadgetFrame"></div>
                                        <div class="gadgetRibbon recommend"></div>
                                    </a>
                                </div>
                                <div class="productDetail">
                                    <div class="product_name" title="จักรยานมินิเวลโล Lollipop">
                                        <a href="#">จักรยานมินิเวลโล Lollipop</a></div>
                                    <div class="product_price has_currency_unit" realprice="5500.00" realcurrency="THB">5,500.00 บาท</div>
                                    <button type="button" class="btn btn-default">สั่งซื้อ</button>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="img-thumbnail" title="NEW! Tiger Touring">
                                    <a href="#">
                                        <img class="productImage" src="http://b.lnwfile.com/_resize_images/150/150/56/sf/9c.jpg" alt="NEW! Tiger Touring">
                                        <div class="gadgetFrame"></div>
                                        <div class="gadgetRibbon recommend"></div>
                                    </a>
                                </div>
                                <div class="productDetail">
                                    <div class="product_name" title="NEW! Tiger Touring">
                                        <a href="#">NEW! Tiger Touring</a></div>
                                    <div class="product_price has_currency_unit" realprice="5800.00" realcurrency="THB">5,800.00 บาท</div>
                                    <button type="button" class="btn btn-default">สั่งซื้อ</button>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="img-thumbnail" title="MARIDA MATT 40D Disc-Break 27 สปีด (2015) มีsize 18">
                                    <a href="#">
                                        <img class="productImage" src="http://b.lnwfile.com/_resize_images/150/150/hm/ey/98.jpg" alt="MARIDA MATT 40D Disc-Break 27 สปีด (2015) มีsize 18">
                                        <div class="gadgetFrame"></div>
                                        <div class="gadgetRibbon recommend"></div>
                                    </a>
                                </div>
                                <div class="productDetail">
                                    <div class="product_name" title="MARIDA MATT 40D Disc-Break 27 สปีด (2015) มีsize 18">
                                        <a href="#">MARIDA MATT 40D Disc-Break 27 สปีด (2015) มีsize 18</a></div>
                                    <div class="product_price has_currency_unit" realprice="16400.00" realcurrency="THB">16,400.00 บาท</div>
                                    <button type="button" class="btn btn-default">สั่งซื้อ</button>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="img-thumbnail" title="MERIDA RIDE 100 [เสือหมอบ 16 สปีด] (2015)]">
                                    <a href="#">
                                        <img class="productImage" src="http://b.lnwfile.com/_resize_images/150/150/pf/bv/wb.jpg" alt="MERIDA RIDE 100 [เสือหมอบ 16 สปีด] (2015)">
                                        <div class="gadgetFrame"></div>
                                        <div class="gadgetRibbon recommend"></div>
                                    </a>
                                </div>
                                <div class="productDetail">
                                    <div class="product_name" title="MERIDA RIDE 100 [เสือหมอบ 16 สปีด]">
                                        <a href="#">MERIDA RIDE 100 [เสือหมอบ 16 สปีด] (2015)</a></div>
                                    <div class="product_price has_currency_unit" realprice="18800.00" realcurrency="THB">18,800.00 บาท</div>
                                    <button type="button" class="btn btn-default">สั่งซื้อ</button>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="img-thumbnail" title="GT TRAFFIC 1.0 รถไฮบริดสำหรับคนเมือง (2015)">
                                    <a href="#">
                                        <img class="productImage" src="http://b.lnwfile.com/_resize_images/150/150/iy/er/jc.jpg" alt="GT TRAFFIC 1.0 รถไฮบริดสำหรับคนเมือง (2015)">
                                        <div class="gadgetFrame"></div>
                                        <div class="gadgetRibbon recommend"></div>
                                    </a>
                                </div>
                                <div class="productDetail">
                                    <div class="product_name" title="GT TRAFFIC 1.0 รถไฮบริดสำหรับคนเมือง (2015)">
                                        <a href="#">GT TRAFFIC 1.0 รถไฮบริดสำหรับคนเมือง (2015)</a></div>
                                    <div class="product_price has_currency_unit" realprice="13900.00" realcurrency="THB">13,900.00 บาท</div>
                                    <button type="button" class="btn btn-default">สั่งซื้อ</button>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="img-thumbnail" title="MONGOOSE Selous Comp (เซ-ลอส-คอม)( 2015)">
                                    <a href="#">
                                        <img class="productImage" src="http://b.lnwfile.com/_resize_images/150/150/7f/d5/7h.jpg" alt="MONGOOSE Selous Comp (เซ-ลอส-คอม)( 2015)">
                                        <div class="gadgetFrame"></div>
                                        <div class="gadgetRibbon recommend"></div>
                                    </a>
                                </div>
                                <div class="productDetail">
                                    <div class="product_name" title="MONGOOSE Selous Comp (เซ-ลอส-คอม)( 2015)">
                                        <a href="#">MONGOOSE Selous Comp (เซ-ลอส-คอม)( 2015)</a></div>
                                    <div class="product_price has_currency_unit" realprice="22000.00" realcurrency="THB">22,000.00 บาท</div>
                                    <button type="button" class="btn btn-default">สั่งซื้อ</button>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="img-thumbnail" title="POLYGON Heist 2.0">
                                    <a href="#">
                                        <img class="productImage" src="http://b.lnwfile.com/_resize_images/150/150/0q/3v/58.jpg" alt="POLYGON Heist 2.0">
                                        <div class="gadgetFrame"></div>
                                        <div class="gadgetRibbon recommend"></div>
                                    </a>
                                </div>
                                <div class="productDetail">
                                    <div class="product_name" title="POLYGON Heist 2.0">
                                        <a href="#">POLYGON Heist 2.0</a></div>
                                    <div class="product_price has_currency_unit" realprice="11500.00" realcurrency="THB">11,500.00 บาท</div>
                                    <button type="button" class="btn btn-default">สั่งซื้อ</button>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="img-thumbnail" title="จักรยานพับได้ DoppelGanger รุ่น 215 Barbarous">
                                    <a href="#">
                                        <img class="productImage" src="http://b.lnwfile.com/_resize_images/150/150/ij/0t/cz.jpg" alt="จักรยานพับได้ DoppelGanger รุ่น 215 Barbarous">
                                        <div class="gadgetFrame"></div>
                                        <div class="gadgetRibbon recommend"></div>
                                    </a>
                                </div>
                                <div class="productDetail">
                                    <div class="product_name" title="จักรยานพับได้ DoppelGanger รุ่น 215 Barbarous">
                                        <a href="#">จักรยานพับได้ DoppelGanger รุ่น 215 Barbarous</a></div>
                                    <div class="product_price has_currency_unit" realprice="11600.00" realcurrency="THB">11,600.00 บาท</div>
                                    <button type="button" class="btn btn-default">สั่งซื้อ</button>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="img-thumbnail" title="GIANT Escape1 – 2015">
                                    <a href="#">
                                        <img class="productImage" src="http://b.lnwfile.com/_resize_images/150/150/q4/bd/8o.jpg" alt="GIANT Escape1 – 2015">
                                        <div class="gadgetFrame"></div>
                                        <div class="gadgetRibbon recommend"></div>
                                    </a>
                                </div>
                                <div class="productDetail">
                                    <div class="product_name" title="GIANT Escape1 – 2015"><
                                        <a href="#">GIANT Escape1 – 2015</a></div>
                                    <div class="product_price has_currency_unit" realprice="15500.00" realcurrency="THB">15,500.00 บาท</div>
                                    <button type="button" class="btn btn-default">สั่งซื้อ</button>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="img-thumbnail" title="จักรยานเสือหมอบ Doppelganger 424 Belfaust สีทอง,เงิน">
                                    <a href="#">
                                        <img class="productImage" src="http://b.lnwfile.com/_resize_images/150/150/7p/9i/5a.jpg" alt="จักรยานเสือหมอบ Doppelganger 424 Belfaust สีทอง,เงิน">
                                        <div class="gadgetFrame"></div>
                                        <div class="gadgetRibbon recommend"></div>
                                    </a>
                                </div>
                                <div class="productDetail">
                                    <div class="product_name" title="จักรยานเสือหมอบ Doppelganger 424 Belfaust สีทอง,เงิน">
                                        <a href="#">จักรยานเสือหมอบ Doppelganger 424 Belfaust สีทอง,เงิน</a></div>

                                    <div class="product_price has_currency_unit" realprice="14300.00" realcurrency="THB">14,300.00 บาท</div>
                                    <button type="button" class="btn btn-default">สั่งซื้อ</button>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="img-thumbnail" title="WINN 26&quot; MTB (MATRIX)">
                                    <a href="#">
                                        <img class="productImage" src="http://b.lnwfile.com/_resize_images/150/150/45/fx/22.jpg" alt="WINN 26&quot; MTB (MATRIX)">
                                        <div class="gadgetFrame"></div>
                                        <div class="gadgetRibbon recommend"></div>
                                    </a>
                                </div>
                                <div class="productDetail">
                                    <div class="product_name" title="WINN 26&quot; MTB (MATRIX)">
                                        <a href="#">WINN 26" MTB (MATRIX)</a></div>

                                    <div class="product_price has_currency_unit" realprice="6500.00" realcurrency="THB">6,500.00 บาท</div>
                                    <button type="button" class="btn btn-default">สั่งซื้อ</button>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="img-thumbnail" title="จักรยานพับได้ Gogobike พับได้ภายในห้าวินาที">
                                    <a href="#">
                                        <img class="productImage" src="http://b.lnwfile.com/_resize_images/150/150/bn/z7/je.jpg" alt="จักรยานพับได้ Gogobike พับได้ภายในห้าวินาที">
                                        <div class="gadgetFrame"></div>
                                        <div class="gadgetRibbon recommend"></div>
                                    </a>
                                </div>
                                <div class="productDetail">
                                    <div class="product_name" title="จักรยานพับได้ Gogobike พับได้ภายในห้าวินาที">
                                        <a href="#">จักรยานพับได้ Gogobike พับได้ภายในห้าวินาที</a></div>

                                    <div class="product_price has_currency_unit" realprice="4800.00" realcurrency="THB">4,800.00 บาท</div>
                                    <button type="button" class="btn btn-default">สั่งซื้อ</button>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="img-thumbnail" title="2016 giant escape 2 city">
                                    <a href="#">
                                        <img class="productImage" src="http://b.lnwfile.com/_resize_images/150/150/71/wi/rt.jpg" alt="2016 giant escape 2 city">
                                        <div class="gadgetFrame"></div>
                                        <div class="gadgetRibbon recommend"></div>
                                    </a>
                                </div>
                                <div class="productDetail">
                                    <div class="product_name" title="2016 giant escape 2 city">
                                        <a href="#">2016 giant escape 2 city</a></div>

                                    <div class="product_price has_currency_unit" realprice="14200.00" realcurrency="THB">14,200.00 บาท</div>
                                    <button type="button" class="btn btn-default">สั่งซื้อ</button>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="img-thumbnail" title="Merida Big nine 300 ล้อ 29 นิ้ว 27 สปีด">
                                    <a href="#">
                                        <img class="productImage" src="http://b.lnwfile.com/_resize_images/150/150/99/oj/vy.jpg" alt="Merida Big nine 300 ล้อ 29 นิ้ว 27 สปีด">
                                        <div class="gadgetFrame"></div>
                                        <div class="gadgetRibbon recommend"></div>
                                    </a>
                                </div>
                                <div class="productDetail">
                                    <div class="product_name" title="Merida Big nine 300 ล้อ 29 นิ้ว 27 สปีด">
                                        <a href="#">Merida Big nine 300 ล้อ 29 นิ้ว 27 สปีด</a></div>

                                    <div class="product_price has_currency_unit" realprice="19800.00" realcurrency="THB">19,800.00 บาท</div>
                                    <button type="button" class="btn btn-default">สั่งซื้อ</button>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="img-thumbnail" title="เสือภูเขาVento 2.1 เฟรมซ่อนสาย และสีใหม่ๆสวยๆๆ ของปี 2016">
                                    <a href="#">
                                        <img class="productImage" src="http://b.lnwfile.com/_resize_images/150/150/yc/l4/eu.jpg" alt="เสือภูเขาVento 2.1 เฟรมซ่อนสาย และสีใหม่ๆสวยๆๆ ของปี 2016">
                                        <div class="gadgetFrame"></div>
                                        <div class="gadgetRibbon recommend"></div>
                                    </a>
                                </div>
                                <div class="productDetail">
                                    <div class="product_name" title="เสือภูเขาVento 2.1 เฟรมซ่อนสาย และสีใหม่ๆสวยๆๆ ของปี 2016">
                                        <a href="#">เสือภูเขาVento 2.1 เฟรมซ่อนสาย และสีใหม่ๆสวยๆๆ ของปี 2016</a></div>
                                    <div class="product_price has_currency_unit" realprice="6900.00" realcurrency="THB">6,900.00 บาท</div>
                                    <button type="button" class="btn btn-default">สั่งซื้อ</button>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="img-thumbnail" title="TIGER VELO ROAD BIKES">
                                    <a href="#">
                                        <img class="productImage" src="http://b.lnwfile.com/_resize_images/150/150/e4/b5/ud.jpg" alt="TIGER VELO ROAD BIKES">
                                        <div class="gadgetFrame"></div>
                                        <div class="gadgetRibbon recommend"></div>
                                    </a>
                                </div>
                                <div class="productDetail">
                                    <div class="product_name" title="TIGER VELO ROAD BIKES">
                                        <a href="#">TIGER VELO ROAD BIKES</a></div>
                                    <div class="product_price has_currency_unit" realprice="7500.00" realcurrency="THB">7,500.00 บาท</div>
                                    <button type="button" class="btn btn-default">สั่งซื้อ</button>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="img-thumbnail" title="จักรยานเสือหมอบ Tiger Hunter">
                                    <a href="#">
                                        <img class="productImage" src="http://b.lnwfile.com/_resize_images/150/150/bz/nk/gj.jpg" alt="จักรยานเสือหมอบ Tiger Hunter">
                                        <div class="gadgetFrame"></div>
                                        <div class="gadgetRibbon recommend"></div>
                                    </a>
                                </div>
                                <div class="productDetail">
                                    <div class="product_name" title="จักรยานเสือหมอบ Tiger Hunter">
                                        <a href="#">จักรยานเสือหมอบ Tiger Hunter</a></div>
                                    <div class="product_price has_currency_unit" realprice="5800.00" realcurrency="THB">5,800.00 บาท</div>
                                    <button type="button" class="btn btn-default">สั่งซื้อ</button>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="img-thumbnail" title="TIGER NAPOLI">
                                    <a href="#">
                                        <img class="productImage" src="http://b.lnwfile.com/_resize_images/150/150/7q/ba/3h.jpg" alt="TIGER NAPOLI">
                                        <div class="gadgetFrame"></div>
                                        <div class="gadgetRibbon recommend"></div>
                                    </a>
                                </div>
                                <div class="productDetail">
                                    <div class="product_name" title="TIGER NAPOLI">
                                        <a href="#">TIGER NAPOLI</a></div>
                                    <div class="product_price has_currency_unit" realprice="5500.00" realcurrency="THB">5,500.00 บาท</div>
                                    <button type="button" class="btn btn-default">สั่งซื้อ</button>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="img-thumbnail" title="รถจักรยานสองตอน ทรงครูเซอร์สุดคลาสสิคจาก Schwinn">
                                    <a href="#">
                                        <img class="productImage" src="http://b.lnwfile.com/_resize_images/150/150/yf/rm/p6.jpg" alt="รถจักรยานสองตอน ทรงครูเซอร์สุดคลาสสิคจาก Schwinn">
                                        <div class="gadgetFrame"></div>
                                        <div class="gadgetRibbon recommend"></div>
                                    </a>
                                </div>
                                <div class="productDetail">
                                    <div class="product_name" title="รถจักรยานสองตอน ทรงครูเซอร์สุดคลาสสิคจาก Schwinn">
                                        <a href="#">รถจักรยานสองตอน ทรงครูเซอร์สุดคลาสสิคจาก Schwinn</a></div>
                                    <div class="product_price has_currency_unit" realprice="15600.00" realcurrency="THB">15,600.00 บาท</div>
                                    <button type="button" class="btn btn-default">สั่งซื้อ</button>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="img-thumbnail" title="Mongoose Reform sport">
                                    <a href="#">
                                        <img class="productImage" src="http://b.lnwfile.com/_resize_images/150/150/gu/y6/sn.jpg" alt="Mongoose Reform sport">
                                        <div class="gadgetFrame"></div>
                                        <div class="gadgetRibbon recommend"></div>
                                    </a>
                                </div>
                                <div class="productDetail">
                                    <div class="product_name" title="Mongoose Reform sport">
                                        <a href="#">Mongoose Reform sport</a></div>
                                    <div class="product_price has_currency_unit" realprice="12500.00" realcurrency="THB">12,500.00 บาท</div>
                                    <button type="button" class="btn btn-default">สั่งซื้อ</button>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="img-thumbnail" title="2016 polygon PATH 2">
                                    <a href="#">
                                        <img class="productImage" src="http://b.lnwfile.com/_resize_images/150/150/e7/o8/jn.png" alt="2016 polygon PATH 2">
                                        <div class="gadgetFrame"></div>
                                        <div class="gadgetRibbon recommend"></div>
                                    </a>
                                </div>
                                <div class="productDetail">
                                    <div class="product_name" title="2016 polygon PATH 2">
                                        <a href="#">2016 polygon PATH 2</a></div>
                                    <div class="product_price has_currency_unit" realprice="10500.00" realcurrency="THB">10,500.00 บาท</div>
                                    <button type="button" class="btn btn-default">สั่งซื้อ</button>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="img-thumbnail" title="Tiger Retro">
                                    <a href="#">
                                        <img class="productImage" src="http://b.lnwfile.com/_resize_images/150/150/yd/j1/u7.jpg" alt="Tiger Retro">
                                        <div class="gadgetFrame"></div>
                                        <div class="gadgetRibbon recommend"></div>
                                    </a>
                                </div>
                                <div class="productDetail">
                                    <div class="product_name" title="Tiger Retro">
                                        <a href="#">Tiger Retro</a></div>
                                    <div class="product_price has_currency_unit" realprice="5500.00" realcurrency="THB">5,500.00 บาท</div>
                                    <button type="button" class="btn btn-default">สั่งซื้อ</button>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="img-thumbnail" title="Tiger ROCKY">
                                    <a href="#">
                                        <img class="productImage" src="http://b.lnwfile.com/_resize_images/150/150/lx/mq/9s.jpg" alt="Tiger ROCKY">
                                        <div class="gadgetFrame"></div>
                                        <div class="gadgetRibbon recommend"></div>
                                    </a>
                                </div>
                                <div class="productDetail">
                                    <div class="product_name" title="Tiger ROCKY">
                                        <a href="#">Tiger ROCKY</a></div>
                                    <div class="product_price has_currency_unit" realprice="5800.00" realcurrency="THB">5,800.00 บาท</div>
                                    <button type="button" class="btn btn-default">สั่งซื้อ</button>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="img-thumbnail" title="SWITCHBACK EXPERT 24 SPEED">
                                    <a href="#">
                                        <img class="productImage" src="http://b.lnwfile.com/_resize_images/150/150/u8/lj/im.jpg" alt="SWITCHBACK EXPERT 24 SPEED">
                                        <div class="gadgetFrame"></div>
                                        <div class="gadgetRibbon recommend"></div>
                                    </a>
                                </div>
                                <div class="productDetail">
                                    <div class="product_name" title="SWITCHBACK EXPERT 24 SPEED">
                                        <a href="#">SWITCHBACK EXPERT 24 SPEED</a></div>
                                    <div class="product_price has_currency_unit" realprice="9800.00" realcurrency="THB">9,800.00 บาท</div>
                                    <button type="button" class="btn btn-default">สั่งซื้อ</button>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="img-thumbnail" title="จักรยานเสือภูเขา MEADOW 27.5 นิ้ว">
                                    <a href="#">
                                        <img class="productImage" src="http://b.lnwfile.com/_resize_images/150/150/qa/xu/m7.jpg" alt="จักรยานเสือภูเขา MEADOW 27.5 นิ้ว">
                                        <div class="gadgetFrame"></div>
                                        <div class="gadgetRibbon recommend"></div>
                                    </a>
                                </div>
                                <div class="productDetail">
                                    <div class="product_name" title="จักรยานเสือภูเขา MEADOW 27.5 นิ้ว">
                                        <a href="#">จักรยานเสือภูเขา MEADOW 27.5 นิ้ว</a></div>
                                    <div class="product_price has_currency_unit" realprice="5800.00" realcurrency="THB">5,800.00 บาท</div>
                                    <button type="button" class="btn btn-default">สั่งซื้อ</button>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="img-thumbnail" title="PIONEERจักรยานเสือภูเขาล้อ 26">
                                    <a href="#">
                                        <img class="productImage" src="http://b.lnwfile.com/_resize_images/150/150/10/yy/wz.jpg" alt="PIONEERจักรยานเสือภูเขาล้อ 26">
                                        <div class="gadgetFrame"></div>
                                        <div class="gadgetRibbon recommend"></div>
                                    </a>
                                </div>
                                <div class="productDetail">
                                    <div class="product_name" title="PIONEERจักรยานเสือภูเขาล้อ 26">
                                        <a href="#">PIONEERจักรยานเสือภูเขาล้อ 26</a></div>
                                    <div class="product_price has_currency_unit" realprice="6500.00" realcurrency="THB">6,500.00 บาท</div>
                                    <button type="button" class="btn btn-default">สั่งซื้อ</button>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="img-thumbnail" title="จักรยานพับได้ เฟรมเหล็ก ล้อ 20 นิ้ว 6 สปีด">
                                    <a href="#">
                                        <img class="productImage" src="http://b.lnwfile.com/_resize_images/150/150/pj/td/lm.jpg" alt="จักรยานพับได้ เฟรมเหล็ก ล้อ 20 นิ้ว 6 สปีด">
                                        <div class="gadgetFrame"></div>
                                        <div class="gadgetRibbon recommend"></div>
                                    </a>
                                </div>
                                <div class="productDetail">
                                    <div class="product_name" title="จักรยานพับได้ เฟรมเหล็ก ล้อ 20 นิ้ว 6 สปีด">
                                        <a href="#">จักรยานพับได้ เฟรมเหล็ก ล้อ 20 นิ้ว 6 สปีด</a></div>
                                    <div class="product_price has_currency_unit" realprice="3800.00" realcurrency="THB">3,800.00 บาท</div>
                                    <button type="button" class="btn btn-default">สั่งซื้อ</button>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="img-thumbnail" title="จักรยานพับได้ MEADOW รุ่น MOVE SMART 20">
                                    <a href="#">
                                        <img class="productImage" src="http://b.lnwfile.com/_resize_images/150/150/xj/lp/1u.jpg" alt="จักรยานพับได้ MEADOW รุ่น MOVE SMART 20">
                                        <div class="gadgetFrame"></div>
                                        <div class="gadgetRibbon recommend"></div>
                                    </a>
                                </div>
                                <div class="productDetail">
                                    <div class="product_name" title="จักรยานพับได้ MEADOW รุ่น MOVE SMART 20">
                                        <a href="#">จักรยานพับได้ MEADOW รุ่น MOVE SMART 20</a></div>
                                    <div class="product_price has_currency_unit" realprice="3800.00" realcurrency="THB">3,800.00 บาท</div>
                                    <button type="button" class="btn btn-default">สั่งซื้อ</button>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="img-thumbnail" title="จักรยานพับ Tiger Smart 1 เกียร์">
                                    <a href="#">
                                        <img class="productImage" src="http://b.lnwfile.com/_resize_images/150/150/iv/do/ef.jpg" alt="จักรยานพับ Tiger Smart 1 เกียร์">
                                        <div class="gadgetFrame"></div>
                                        <div class="gadgetRibbon recommend"></div>
                                    </a>
                                </div>
                                <div class="productDetail">
                                    <div class="product_name" title="จักรยานพับ Tiger Smart 1 เกียร์">
                                        <a href="#">จักรยานพับ Tiger Smart 1 เกียร์</a></div>
                                    <div class="product_price has_currency_unit" realprice="3300.00" realcurrency="THB">3,300.00 บาท</div>
                                    <button type="button" class="btn btn-default">สั่งซื้อ</button>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="img-thumbnail" title="ืnew tiger vocano ดีสเบรค : หน้า หลัง">
                                    <a href="#">
                                        <img class="productImage" src="http://b.lnwfile.com/_resize_images/150/150/yp/g1/du.jpg" alt="ืnew tiger vocano ดีสเบรค : หน้า หลัง">
                                        <div class="gadgetFrame"></div>
                                        <div class="gadgetRibbon recommend"></div>
                                    </a>
                                </div>
                                <div class="productDetail">
                                    <div class="product_name" title="new tiger vocano ดีสเบรค : หน้า หลัง">
                                        <a href="#">new tiger vocano ดีสเบรค : หน้า หลัง</a></div>
                                    <div class="product_price has_currency_unit" realprice="3900.00" realcurrency="THB">3,900.00 บาท</div>
                                    <button type="button" class="btn btn-default">สั่งซื้อ</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
            <div style="text-align: center;"><img src="img/snbike-brands.jpg"></div>
        </div>




    </body>
</html>

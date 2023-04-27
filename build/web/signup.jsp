<%-- 
    Document   : signup
    Created on : Apr 24, 2022, 3:00:33 AM
    Author     : MSII
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="plugins/bootstrap/bootstrap.min.css">
        <link rel="stylesheet" href="plugins/animate/animate.min.css">
        <link rel="stylesheet" href="plugins/fontawesome/all.css">
        <link rel="stylesheet" href="plugins/webfonts/font.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css" type="text/css">
        <link rel="stylesheet" type="text/css" href="css/style.css">

        <!-- UIkit CSS -->
        <link rel="stylesheet" href="plugins/uikit/uikit.min.css" />
        <link rel="stylesheet" href="css/sign.css">

        <title>Runner</title>

    </head>

    <body>
        <div class="header">
            <a style="color: #ffffff;text-decoration: none;" href="index.html">MIỄN PHÍ VẬN CHUYỂN VỚI ĐƠN HÀNG NỘI THÀNH > 300K
                - ĐỔI TRẢ TRONG 30 NGÀY - ĐẢM BẢO CHẤT LƯỢNG</a>
        </div>

        <!--Navbar-->

        <nav class="navbar navbar-expand-lg navbar-light bg-white sticky-top">

            <div class="container">
                <a class="navbar-brand" href="index.jsp">
                    <img src="images/logo.png" class="logo-top" alt="">
                </a>
                <div class="desk-menu collapse navbar-collapse justify-content-md-center" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="index.jsp">TRANG CHỦ</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="  product.jsp">BỘ SƯU TẬP</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" >SẢN PHẨM
                                <i class="fa fa-chevron-down" aria-hidden="true"></i>
                            </a>
                            <ul class="sub_menu">
                                <li class="">
                                    <a href="categories?cname=áo" title="Sản phẩm - Style 1"> <!--a thay cho áo -->
                                        Danh sách sản phẩm áo
                                    </a>
                                </li>
                                <li class="">
                                    <a href="categories?cname=giày" title="Sản phẩm - Style 2"> <!-- g thay cho giày -->
                                        Danh sách sản phẩm giày
                                    </a>
                                </li>
                                <li class="">
                                    <a href="categories?cname=ví" title="Sản phẩm - Style 3"> <!--v thay cho ví -->
                                        Danh sách sản phẩm ví
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="introduce.jsp">GIỚI THIỆU</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="blog.jsp">BLOG</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contact.html">LIÊN HỆ</a>
                        </li>
                    </ul>
                </div>
                <div id="offcanvas-flip1" uk-offcanvas="flip: true; overlay: true">
                    <div class="uk-offcanvas-bar" style="background: white;
                         width: 350px;">

                        <button class="uk-offcanvas-close" style="color:#272727" type="button" uk-close>alo</button>
                        <h3 style="font-size: 14px;
                            color: #272727;
                            text-transform: uppercase;
                            margin: 3px 0 30px 0;
                            font-weight: 500; letter-spacing: 2px;">MENU</h3>
                        <div class="justify-content-md-center">
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link" href="index.jsp">TRANG CHỦ</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="product.jsp">BỘ SƯU TẬP</a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                                       aria-haspopup="true" aria-expanded="false">
                                        Sản phẩm

                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown" style="border:0;">
                                        <a class="dropdown-item" href="  " title="Sản phẩm - Style 1">Sản phẩm - Style 1</a>
                                        <a class="dropdown-item" href="  " title="Sản phẩm - Style 2">Sản phẩm - Style 2</a>
                                        <a class="dropdown-item" href="  " title="Sản phẩm - Style 3">Sản phẩm - Style 3</a>
                                    </div>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="introduce.jsp">GIỚI THIỆU</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="blog.jsp">BLOG</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="contact.html">LIÊN HỆ</a>
                                </li>
                            </ul>
                        </div>

                    </div>
                </div>
                <div id="offcanvas-flip" uk-offcanvas="flip: true; overlay: true">
                    <div class="uk-offcanvas-bar" style="    background: white;
                         width: 350px;">

                        <button class="uk-offcanvas-close" style="color:#272727" type="button" uk-close></button>

                        <h3 style="font-size: 14px;
                            color: #272727;
                            text-transform: uppercase;
                            margin: 3px 0 30px 0;
                            font-weight: 500; letter-spacing: 2px;">Tìm kiếm</h3>
                        <div class="search-box wpo-wrapper-search">
                            <form action="search" class="searchform searchform-categoris ultimate-search">
                                <div class="wpo-search-inner" style="display:inline">
                                    <input type="hidden" name="type" value="product">
                                    <input required="" id="inputSearchAuto" name="q" maxlength="40" autocomplete="off"
                                           class="searchinput input-search search-input" type="text" size="20"
                                           placeholder="Tìm kiếm sản phẩm...">
                                </div>
                                <button type="submit" class="btn-search btn" id="search-header-btn">
                                    <i style="font-weight:bold" class="fas fa-search"></i>
                                </button>
                            </form>
                            <div id="ajaxSearchResults" class="smart-search-wrapper ajaxSearchResults" style="display: none">
                                <div class="resultsContent"></div>
                            </div>
                        </div>  

                    </div>
                </div>

                <div class="icon-ol">
                    <a style="color: #272727" href="">
                        <i class="fas fa-user-alt"></i>
                    </a>
                    <a href="#" class="" uk-toggle="target: #offcanvas-flip">
                        <i class="fas fa-search" style="color: black"></i>
                    </a>

                    <a style="color: #272727" href="cart2.jsp" uk-toggle="target: #offcanvas-flip2">
                        <i class="fas fa-shopping-cart"></i>
                    </a>
                    <button class="navbar-toggler" type="button" uk-toggle="target: #offcanvas-flip1" data-target="#navbarNav"
                            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                </div>
            </div>
        </div>

    </nav>


    <!--Content-->
    <div class="content">
        <section class="signup">
            <div class="container">
                <div class="signin-left">
                    <div class="sign-title">
                        <h1>Tạo tài khoản</h1>
                    </div>
                </div>
                <div class="signin-right ">
                    <form action="signup" form="post" method="post">
                        <p class="text-danger">${mess}</p>
                        <div class="firstname form-control1 ">
                            <input type="text"   id="firstname" placeholder="Họ" name="firstname">
                        </div>
                        <div class="lastname form-control1">
                            <input type="text" id="lastname" placeholder="Tên" name="lastname">
                        </div>
                        <div class="sex form-control1">
                            <div class="female">

                                <input type="radio" id="female" checked  name="sex" value="female">
                                <label for="female">Nữ</label>
                            </div>
                            <div class="male">

                                <input type="radio" id="male"  name="sex" value="male">
                                <label for="male" >Nam</label>
                            </div>
                        </div>
                        <div class="firstname form-control1 ">
                            <input type="text"    placeholder="Địa chỉ" name="add">
                        </div>
                        <div class="email form-control1">
                            <input type="email"  id="email" placeholder="Email" name="email">
                        </div>
                        <div class="firstname form-control1 ">
                            <input type="text"   placeholder="Điện thoại" name="phone">
                        </div>
                        <div class="password form-control1">
                            <input type="password"  id="password" placeholder="Password" name="password">
                        </div>
                        <div class="recaptcha form-control1">This site is protected by reCAPTCHA and the Google <a href="">Privacy Policy</a> and <a href="">Terms of Service</a> apply.</div>
                        <button type="submit">Đăng ký </button>
                        <div class="backto">
                            <a href=""><i class="fa fa-long-arrow-alt-left"></i> Quay lại trang chủ</a>
                        </div>
                    </form>
                </div>
            </div>
        </section>    
        <section class="section section-gallery">
            <div class="">
                <div class="hot_sp" style="padding-top: 70px;padding-bottom: 50px;">
                    <h2 style="text-align:center;padding-top: 10px">
                        <a style="font-size: 28px;color: black;text-decoration: none" href="">Khách hàng và Runner Inn</a>
                    </h2>
                </div>
                <div class="list-gallery clearfix">
                    <ul class="shoes-gp">
                        <li>
                            <div class="gallery_item">
                                <img class="img-resize" src="images/shoes/gallery_item_1.jpg" alt="">
                            </div>
                        </li>
                        <li>
                            <div class="gallery_item">
                                <img class="img-resize" src="images/shoes/gallery_item_2.jpg" alt="">
                            </div>
                        </li>
                        <li>
                            <div class="gallery_item">
                                <img class="img-resize" src="images/shoes/gallery_item_3.jpg" alt="">
                            </div>
                        </li>
                        <li>
                            <div class="gallery_item">
                                <img class="img-resize" src="images/shoes/gallery_item_4.jpg" alt="">
                            </div>
                        </li>
                        <li>
                            <div class="gallery_item">
                                <img class="img-resize" src="images/shoes/gallery_item_5.jpg" alt="">
                            </div>
                        </li>
                        <li>
                            <div class="gallery_item">
                                <img class="img-resize" src="images/shoes/gallery_item_6.jpg" alt="">
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </section>
        <footer class="main-footer">
            <div class="container">
                <div class="">
                    <div class="row">
                        <div class="col-xs-12 col-sm-6 col-md-3">
                            <div class="footer-col footer-block">
                                <h4 class="footer-title">
                                    Giới thiệu
                                </h4>
                                <div class="footer-content">
                                    <p>Runner Inn trang mua sắm trực tuyến của thương hiệu giày, thời trang nam, nữ, phụ kiện, giúp bạn
                                        tiếp
                                        cận xu hướng thời trang mới nhất.</p>
                                    <div class="logo-footer">
                                        <img src="images/logo-bct.png" alt="Bộ Công Thương">
                                    </div>
                                    <div class="social-list">
                                        <a href="#" class="fab fa-facebook"></a>
                                        <a href="#" class="fab fa-google"></a>
                                        <a href="#" class="fab fa-twitter"></a>
                                        <a href="#" class="fab fa-youtube"></a>
                                        <a href="#" class="fab fa-skype"></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-3">
                            <div class="footer-col footer-link">
                                <h4 class="footer-title">
                                    PHÁP LÝ &amp; CÂU HỎI
                                </h4>
                                <div class="footer-content toggle-footer">
                                    <ul>
                                        <li class="item">
                                            <a href="#" title="Tìm kiếm">Tìm kiếm</a>
                                        </li>
                                        <li class="item">
                                            <a href="#" title="Giới thiệu">Giới thiệu</a>
                                        </li>
                                        <li class="item">
                                            <a href="#" title="Chính sách đổi trả">Chính sách đổi trả</a>
                                        </li>
                                        <li class="item">
                                            <a href="#" title="Chính sách bảo mật">Chính sách bảo mật</a>
                                        </li>
                                        <li class="item">
                                            <a href="#" title="Điều khoản dịch vụ">Điều khoản dịch vụ</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-3">
                            <div class="footer-col footer-block">
                                <h4 class="footer-title">
                                    Thông tin liên hệ
                                </h4>
                                <div class="footer-content toggle-footer">
                                    <ul>
                                        <li><span>Địa chỉ:</span> 117-119 Lý Chính Thắng, Phường 7, Quận 3, TP. Hồ Chí Minh, Vietnam</li>
                                        <li><span>Điện thoại:</span> +84 (028) 38800659</li>
                                        <li><span>Fax:</span> +84 (028) 38800659</li>
                                        <li><span>Mail:</span> contact@aziworld.com</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-3">
                            <div class="footer-col footer-block">
                                <h4 class="footer-title">
                                    FANPAGE
                                </h4>
                                <div class="footer-content">
                                    <div id="fb-root">
                                        <div class="footer-static-content">
                                            <div class="fb-page" data-href="https://www.facebook.com/AziWorld-Viet-Nam-908555669481794/"
                                                 data-tabs="timeline" data-width="" data-height="215" data-small-header="false"
                                                 data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true">
                                                <blockquote cite="https://www.facebook.com/AziWorld-Viet-Nam-908555669481794/"
                                                            class="fb-xfbml-parse-ignore"><a
                                                        href="https://www.facebook.com/AziWorld-Viet-Nam-908555669481794/">AziWorld Viet Nam</a>
                                                </blockquote>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="main-footer--copyright">
                <div class="container">
                    <hr>
                    <div class="main-footer--border" style="text-align:center;padding-bottom: 15px;">
                        <p>Copyright © 2019 <a href="https://runner-inn.myharavan.com"> Runner Inn</a>. <a target="_blank"
                                                                                                           href="https://www.facebook.com/henrynguyen202">Powered by HuniBlue</a></p>
                    </div>
                </div>
            </div>
        </footer>
    </div>

    <script async defer crossorigin="anonymous" src="plugins/sdk.js"></script>
    <script src="plugins/jquery-3.4.1/jquery-3.4.1.min.js"></script>
    <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> -->
    <script src="plugins/bootstrap/popper.min.js"></script>
    <script src="plugins/bootstrap/bootstrap.min.js"></script>
    <script src="plugins/owl.carousel/owl.carousel.min.js"></script>
    <script src="js/home.js"></script>
    <script src="js/script.js"></script>
    <script src="plugins/uikit/uikit.min.js"></script>
    <script src="plugins/uikit/uikit-icons.min.js"></script>
</body>

</html>
<%-- 
    Document   : index
    Created on : Apr 24, 2022, 3:02:31 AM
    Author     : MSII
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

        <title>Aristino</title>

    </head>

    <body>
        <div class="header">
            <a style="color: #ffffff;text-decoration: none;" href="home">MIỄN PHÍ VẬN CHUYỂN VỚI ĐƠN HÀNG NỘI THÀNH > 300K
                - ĐỔI TRẢ TRONG 30 NGÀY - ĐẢM BẢO CHẤT LƯỢNG</a>
        </div>

        <!--Navbar-->

        <nav class="navbar navbar-expand-lg navbar-light bg-white sticky-top">

            <div class="container">
                <a class="navbar-brand" href="home">
                    <img src="images/logo.png" class="logo-top" alt="">
                </a>
                <div class="desk-menu collapse navbar-collapse justify-content-md-center" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="home">TRANG CHỦ</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="product">BỘ SƯU TẬP</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link">SẢN PHẨM
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
                                    <a class="nav-link" href="home">TRANG CHỦ</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="product">BỘ SƯU TẬP</a>
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
                <!-- giỏ hàng -->

                <div class="icon-ol">
                    <c:if test="${sessionScope.user !=null}">   <!-- kiểm tra đăng nhập chưa -->
                        <a style="color: #272727" href="">Chào ${user.username}!</a>
                        <a style="color: #272727" href="logout">   
                            <i class="fas fa-user-alt">Đăng xuất</i>
                        </a>
                    </c:if>
                    <c:if test="${user.admin==1}">
                        <a style="color: #272727" href="admin?id=${user.id_user}">List product</a>
                        <a style="color: #272727" href="orderadmin">List ordered</a>
                    </c:if>
                    <c:if test="${sessionScope.user ==null}">
                        <a style="color: #272727" href="signin.jsp">  
                            <i class="fas fa-user-alt">Đăng nhập</i>
                        </a>
                    </c:if>
                    <c:if test="${sessionScope.user !=null}">
                        <a href="odered?id_user=${user.id_user}">
                            Đơn hàng
                        </a>
                    </c:if>
                    <a style="color: #272727" href="cart?id_user=${user.id_user}" uk-toggle="target: #offcanvas-flip2">
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
    <!-- Owl-Carousel -->
    <div>
        <div>
            <img src="images/collection_banner.jpg" alt="Products">
        </div>
    </div>

    <!--Content-->
    <div class="content">
        <div class="container">
            <div class="hot_sp" style="padding-bottom: 10px;">
                <h2 style="text-align:center;padding-top: 10px">
                    <a style="font-size: 28px;color: black;text-decoration: none" href="">Danh sách sản phẩm</a>
                </h2>
                <div class="view-all" style="text-align:center;padding-top: -10px;">
                    <a style="color: black;text-decoration: none" href="">Xem thêm</a>
                </div>
            </div>
        </div>
        <!--Product-->
        <div class="container" style="padding-bottom: 50px;">
            <div class="row">
                <c:forEach items="${listP}" var="o">
                    <div class="col-md-3 col-sm-6 col-xs-6 col-6">
                        <div class="product-block">
                            <div class="product-img fade-box">
                                <a href="  " title="${o.name_prod}" class="img-resize">
                                    <img src="${o.link_img}"
                                         alt="${o.name_prod}" class="lazyloaded">
                                    <img src="${o.link_img}" alt="${o.name_prod}" class="lazyloaded">
                                </a>

                            </div>
                            <div class="product-detail clearfix">
                                <div class="pro-text">
                                    <a style=" color: black;
                                       font-size: 14px;text-decoration: none;" href="#"
                                       title="${o.name_prod}" inspiration pack>
                                        ${o.name_prod}
                                    </a>
                                </div>
                                <div class="pro-price">
                                    <p class="">${o.price} $</p>

                                </div>
                                <tr>
                                    <td class="distance-td">
                                        <c:if test="${sessionScope.user !=null}">
                                            <a href="add?id_prod=${o.id_prod}&id_user=${user.id_user}" class="linktocart button">Thêm giỏ hàng</a>
                                        </c:if>
                                        <c:if test="${sessionScope.user ==null}">
                                            <a href="signin.html" class="linktocart button">Thêm giỏ hàng</a>
                                        </c:if>
                                    </td>
                                </tr>   
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
    <section class="section wrapper-home-banner">
        <div class="container-fluid" style="padding-bottom: 50px;">
            <div class="row">
                <div class="col-xs-12 col-sm-4 home-banner-pd">
                    <div class="block-banner-category">
                        <a href="  " class="link-banner wrap-flex-align flex-column">
                            <div class="fg-image fade-box">
                                <img class="lazyloaded" src="images/shoes/block_home_category1_grande.jpg" alt="Shoes">
                            </div>
                            <figcaption class="caption_banner site-animation">
                                <p>Bộ sưu tập</p>
                                <h2>
                                    Đại sứ thương hiệu
                                </h2>
                            </figcaption>
                        </a>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-4 home-banner-pd">
                    <div class="block-banner-category">
                        <a href="  " class="link-banner wrap-flex-align flex-column">
                            <div class="fg-image fade-box">
                                <img class="lazyloaded" src="images/shoes/block_home_category2_grande.jpg" alt="Shoes">
                            </div>
                            <figcaption class="caption_banner site-animation">
                                <p>Bộ sưu tập</p>
                                <h2>
                                    Thương hiệu
                                </h2>
                            </figcaption>
                        </a>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-4 home-banner-pd">
                    <div class="block-banner-category">
                        <a href="  " class="link-banner wrap-flex-align flex-column">
                            <div class="fg-image">
                                <img class="lazyloaded" src="images/shoes/block_home_category3_grande.jpg" alt="Shoes">
                            </div>
                            <figcaption class="caption_banner site-animation">
                                <p></p>
                                <h2>
                                    Blog
                                </h2>
                            </figcaption>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="content">
        <div class="container">
            <div class="hot_sp">
                <h2 style="text-align:center;">
                    <a style="font-size: 28px;color: black;text-decoration: none" href="">Sản phẩm mới nhất</a>
                </h2>
                <div class="view-all" style="text-align:center;">
                    <a style="color: black;text-decoration: none" href="">Xem thêm</a>
                </div>
            </div>
        </div>
    </div>
    <!<!-- Newest product -->
    <div class="container" style="padding-bottom: 50px;">
        <div class="row">
            <c:forEach items="${listN}" var="o">
                <div class="col-md-3 col-sm-6 col-xs-6 col-6">
                    <div class="product-block">
                        <div class="product-img fade-box">
                            <a href="  " title="${o.name_prod}" class="img-resize">
                                <img src="${o.link_img}"
                                     alt="${o.name_prod}" class="lazyloaded">
                                <img src="${o.link_img}" alt="${o.name_prod}" class="lazyloaded">
                            </a>

                        </div>
                        <div class="product-detail clearfix">
                            <div class="pro-text">
                                <a style=" color: black;
                                   font-size: 14px;text-decoration: none;" href="#"
                                   title="${o.name_prod}" inspiration pack>
                                    ${o.name_prod}
                                </a>
                            </div>
                            <div class="pro-price">
                                <p class="">${o.price} $</p>
                            </div>
                            <tr>
                                <td class="distance-td"><a href="cart.jsp" class="linktocart button ">Thêm giỏ hàng</a></td>

                            </tr>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
        <section class="">
            <div class="content">
                <div class="container">
                    <div class="hot_sp">
                        <h2 style="text-align:center;padding-top: 10px">
                            <a style="font-size: 28px;color: black;text-decoration: none" href="">Bài viết mới nhất</a>
                        </h2>
                        <br />
                    </div>
                </div>
            </div>
            <!--New-->
            <div>

                <div class="container">

                    <div class="row">
                        <div class="col-md-4">
                            <div class="post_item">
                                <div class="post_featured">
                                    <a href="#" title="Adidas EQT Cushion ADV">
                                        <img class="img-resize" style="padding-bottom:15px;" src="images/shoes/new-1.jpg"
                                             alt="Adidas Falcon nổi bật mùa Hè với phối màu color block">
                                    </a>
                                </div>
                                <div class="pro-text">
                                    <span class="post_info_item">

                                        Thứ Ba 11,06,2022

                                    </span>
                                </div>
                                <div class="pro-text">
                                    <h3 class="post_title">
                                        <a style=" color: black;
                                           font-size: 18px;text-decoration: none;" href="#" inspiration pack>
                                            Adidas Falcon nổi bật mùa Hè với phối màu color block
                                        </a>
                                    </h3>
                                </div>
                                <div style="text-align:center; padding-bottom: 30px;">
                                    <span>Cuối tháng 5, adidas Falcon đã cho ra mắt nhiều phối màu đón chào mùa Hè khiến giới trẻ yêu
                                        thích không thôi. Tưởng chừng thương hiệu sẽ tiếp tục...</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="post_item">
                                <div class="post_featured">
                                    <a href="#" title="Adidas EQT Cushion ADV">
                                        <img class="img-resize" style="padding-bottom:15px;" src="images/shoes/new-2.jpg"
                                             alt="Saucony hồi sinh mẫu giày chạy bộ cổ điển của mình – Aya Aristino">
                                    </a>
                                </div>
                                <div class="pro-text">
                                    <span class="post_info_item">

                                        Thứ Ba 11,06,2022

                                    </span>
                                </div>
                                <div class="pro-text">
                                    <h3 class="post_title">
                                        <a style=" color: black;
                                           font-size: 18px;text-decoration: none;" href="#" inspiration pack>
                                            Saucony hồi sinh mẫu giày chạy bộ cổ điển của mình – Aya Aristino
                                        </a>
                                    </h3>
                                </div>
                                <div style="text-align:center; padding-bottom: 30px;">
                                    <span>Là một trong những đôi giày chạy bộ tốt nhất vào những năm 1994, 1995, Saucony Aya Aristino vừa có
                                        màn trở lại
                                        vô cùng ấn tượngCó vẻ như 2022...</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="post_item">
                                <div class="post_featured">
                                    <a href="#" title="Adidas EQT Cushion ADV">
                                        <img class="img-resize" style="padding-bottom:15px;" src="images/shoes/new-3.jpg"
                                             alt="Nike Vapormax Plus trở lại với sắc tím mộng mơ và thiết kế chuyển màu đẹp mắt">
                                    </a>
                                </div>
                                <div class="pro-text">
                                    <span class="post_info_item">

                                        Thứ Ba 11,06,2022

                                    </span>
                                </div>
                                <div class="pro-text">
                                    <h3 class="post_title">
                                        <a style=" color: black;
                                           font-size: 18px;text-decoration: none;" href="#" inspiration pack>
                                            Nike Vapormax Plus trở lại với sắc tím mộng mơ và thiết kế chuyển màu đẹp mắt
                                        </a>
                                    </h3>
                                </div>
                                <div style="text-align:center; padding-bottom: 30px;">
                                    <span>Là một trong những mẫu giày retro có nhiều phối màu gradient đẹp nhất từ trước đến này, Nike
                                        Vapormax Plus vừa có màn trở lại bá đạo dành cho...</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="section wrapper-home-newsletter">
            <div class="container-fluid">
                <div class="content-newsletter">
                    <h2>Đăng ký</h2>
                    <p>Đăng ký nhận bản tin của Aristino Inn để cập nhật những sản phẩm mới, nhận thông tin ưu đãi đặc biệt và thông
                        tin
                        giảm giá khác.</p>
                    <div class="form-newsletter">
                        <form action="" accept-charset="UTF-8" class="">
                            <div class="form-group">
                                <input type="hidden" id="contact_tags">
                                <input required="" type="email" value="" placeholder="Nhập email của bạn" aria-label="Email Address"
                                       class="">
                                <button type="submit" class=""><span>Gửi</span></button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <section class="section section-gallery">
            <div class="">
                <div class="hot_sp" style="padding-top: 70px;padding-bottom: 50px;">
                    <h2 style="text-align:center;padding-top: 10px">
                        <a style="font-size: 28px;color: black;text-decoration: none" href="">Khách hàng và Aristino</a>
                    </h2>
                </div>
                <div class="list-gallery clearfix">
                    <ul class="shoes-gp">
                        <li>
                            <div class="gallery_item">
                                <img class="img-resize" src="images/blog/1.png" alt="">
                            </div>
                        </li>
                        <li>
                            <div class="gallery_item">
                                <img class="img-resize" src="images/blog/2.png" alt="">
                            </div>
                        </li>
                        <li>
                            <div class="gallery_item">
                                <img class="img-resize" src="images/blog/1.png" alt="">
                            </div>
                        </li>
                        <li>
                            <div class="gallery_item">
                                <img class="img-resize" src="images/blog/2.png" alt="">
                            </div>
                        </li>
                        <li>
                            <div class="gallery_item">
                                <img class="img-resize" src="images/blog/1.png" alt="">
                            </div>
                        </li>
                        <li>
                            <div class="gallery_item">
                                <img class="img-resize" src="images/blog/2.png" alt="">
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
                                <div class="footer-col footer-block">
                                    <h4 class="footer-title">
                                        Giới thiệu
                                    </h4>
                                    <div class="footer-content">
                                        <p>Aristino là  trang mua sắm trực tuyến của thương hiệu  thời trang nam, phụ kiện, giúp bạn
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
                                        <li><span>Địa chỉ:</span> Hạ Đình - Thanh Xuân- Việt Nam</li>
                                        <li><span>Điện thoại:</span> +84 (028) 123456789</li>
                                        <li><span>Fax:</span> +84 (028) 1982002</li>
                                        <li><span>Mail:</span> contact@aristino.com</li>
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
                                            <div class="fb-page" data-href="https://aristino.com/"
                                                 data-tabs="timeline" data-width="" data-height="215" data-small-header="false"
                                                 data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true">
                                                <blockquote cite="https://aristino.com/"
                                                            class="fb-xfbml-parse-ignore"><a
                                                        href="https://aristino.com/">Aristino Viet Nam</a>
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
                        <p>Copyright © 2022<a href="https://aristino.com"> Aristino Inn</a>. <a target="_blank"
                                                                                                href="https://www.facebook.com/henrynguyen202">Powered by AnhLee</a></p>
                    </div>
                </div>
            </div>
        </footer>
    </div>
    <script async defer crossorigin="anonymous" src="plugins/sdk.js"></script>
    <script src="plugins/jquery-3.4.1/jquery-3.4.1.min.js"></script>
    <script src="plugins/bootstrap/popper.min.js"></script>
    <script src="plugins/bootstrap/bootstrap.min.js"></script>
    <script src="plugins/owl.carousel/owl.carousel.min.js"></script>
    <script src="js/home.js"></script>
    <script src="js/script.js"></script>
    <script src="plugins/uikit/uikit.min.js"></script>
    <script src="plugins/uikit/uikit-icons.min.js"></script>
</body>

</html>

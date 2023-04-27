<%-- 
    Document   : cart
    Created on : May 7, 2022, 7:26:07 PM
    Author     : MSII
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- 
    Document   : blog
    Created on : Apr 24, 2022, 3:03:22 AM
    Author     : MSII
--%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="stylesheet" href="plugins/bootstrap/bootstrap.min.css">

        <link rel="stylesheet" type="text/css" href="css/style.css">

        <link rel="stylesheet" href="plugins/animate/animate.min.css">

        <link rel="stylesheet" href="plugins/fontawesome/all.css">

        <link href="plugins/webfonts/font.css"
              rel="stylesheet">
        <link rel="stylesheet" href="plugins/owl.carousel/owl.carousel.min.css" type="text/css">
        <link rel="stylesheet" href="plugins/owl.carousel/owl.theme.default.min.css">
        <!-- UIkit CSS -->
        <link rel="stylesheet" href="plugins/uikit/uikit.min.css" />


        <title>Giỏ hàng</title>

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
                            <a class="nav-link" href="product.jsp">BỘ SƯU TẬP</a>
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
                                    <a class="nav-link" href="home">TRANG CHỦ</a>
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
                            <div class="icon-ol">
                                <c:if test="${sessionScope.user !=null}">   <!-- kiểm tra đăng nhập chưa -->
                                    <a style="color: #272727" href="">Chào ${user.username}!</a>
                                    <a style="color: #272727" href="logout">   
                                        <i class="fas fa-user-alt">Đăng xuất</i>
                                    </a>
                                </c:if>
                                <c:if test="${user.admin==1}">
                                    <a style="color: #272727" href="">Quản lí sản phẩm</a>
                                </c:if>
                                <c:if test="${sessionScope.user ==null}">
                                    <a style="color: #272727" href="signin.jsp">  
                                        <i class="fas fa-user-alt">Đăng nhập</i></a>
                                    </c:if>
                                <a href="#" class="" uk-toggle="target: #offcanvas-flip">
                                    <i class="fas fa-search" style="color: black"></i>
                                </a>

                                <a style="color: #272727" href="cart" uk-toggle="target: #offcanvas-flip2">
                                    <i class="fas fa-shopping-cart"></i>
                                </a>
                                <button class="navbar-toggler" type="button" uk-toggle="target: #offcanvas-flip1" data-target="#navbarNav"
                                        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                                    <span class="navbar-toggler-icon"></span>
                                </button>
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

                    <a style="color: #272727" href="cart" uk-toggle="target: #offcanvas-flip2">
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
    <!--Banner-->
    <div>
        <div>
            <img src="images/collection_banner.jpg" alt="Products">
        </div>
    </div>
    <div class="breadcrumb-shop">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 pd5">
                    <ol class="breadcrumb breadcrumb-arrows">
                        <li>
                            <a href="home">
                                <span>Trang chủ</span>
                            </a>
                        </li>
                        <li>
                            <span><span style="color: #777777">Tin tức</span></span>
                        </li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <h2 class="text-center">Giỏ hàng ${id_user}</h2>
    <div class="container"> 
        <table id="cart" class="table table-hover table-condensed"> 
            <thead> 
                <tr> 
                    <th style="width:50%">Hình ảnh</th>
                    <th style="width:20%">Tên sản phẩm</th> 
                    <th style="width:10%">Giá</th> 
                    <th style="width:8%">Số lượng</th> 
                    <th style="width:22%" class="text-center">Đơn giá</th> 
                    <th style="width:0%"> </th> 
                    <th style="width:0%"></th>
                </tr> 
            </thead> 
            <tbody>
                <c:forEach items="${list}" var="o">
                <form action="oder?id_prod=${o.id_prod}&id_user=${user.id_user}" method="post">
                    <tr>
                        <td data-th="Product"> 
                            <div class="row"> 
                                <div class="col-sm-2 hidden-xs"><img src="${o.link_img}" alt="Sản phẩm 1" class="img-responsive" width="100">
                                </div> 
                                <div class="col-sm-10"> 
                                    <h4 class="nomargin">${o.name_prod}</h4> 
                                </div> 
                            </div> 
                        </td> 
                        <td data-th="Price">${o.name_prod}</td>
                        <td data-th="Price">${o.name_prod}</td> 
                        <td data-th="Quantity"><input class="form-control text-center" value="1" min="1" max="${o.soLuong}" type="number" name="count"></td> 
                        <td data-th="Subtotal" class="text-center">${o.price} $</td> 
                        <td class="actions" data-th="">
                            <!--button xóa khỏi giỏ hàng -->
                            <button type="submit" class="btn btn-danger btn-sm">
                                <a href="delete?id_user=${id_user}&id_prod=${o.id_prod}">Xóa</a>
                            </button>
                        </td>
                        <!-- button thêm sản phẩm vào đơn hàng -->
                        <td>
                            <button type="submit" class="btn btn-success btn-block">Đặt hàng
                                <i class="fa fa-angle-right"></i></a>
                            </button>
                        </td> 
                    </tr> 
                </form>
            </c:forEach>
            </tbody><tfoot> 
                <tr class="visible-xs"> 
                    <td class="text-center"><strong>Tổng ${total} $</strong>
                    </td> 
                </tr> 
                <tr> 
                    <td><a href="home" class="btn btn-warning"><i class="fa fa-angle-left"></i> Tiếp tục mua hàng</a> 
                </tr> 
            </tfoot> 
        </table>
    </div>
    <script src="js/jquery-1.11.1.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"><script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

    <!--gallery-->
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
                    <p>Copyright © 2022<a href="https://aristino.com"> Runner Inn</a>. <a target="_blank"
                                                                                          href="https://www.facebook.com/henrynguyen202">Powered by AnhLee</a></p>
                </div>
            </div>
        </div>
    </footer>
    <script async defer crossorigin="anonymous" src="plugins/sdk.js"></script>
    <script src="plugins/jquery-3.4.1/jquery-3.4.1.min.js"></script>
    <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> -->
    <script src="plugins/bootstrap/popper.min.js"></script>
    <script src="plugins/bootstrap/bootstrap.min.js"></script>
    <script src="plugins/owl.carousel/owl.carousel.min.js"></script>
    <script src="plugins/uikit/uikit.min.js"></script>
    <script src="plugins/uikit/uikit-icons.min.js"></script>
</body>

</html>
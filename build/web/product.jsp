<%-- 
    Document   : product
    Created on : Apr 24, 2022, 3:00:51 AM
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

        <link rel="stylesheet" type="text/css" href="css/style.css">

        <link rel="stylesheet" href="plugins/animate/animate.min.css">

        <link rel="stylesheet" href="plugins/fontawesome/all.css">

        <link href="plugins/webfonts/font.css"
              rel="stylesheet">
        <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css" type="text/css">

        <!-- UIkit CSS -->
        <link rel="stylesheet" href="plugins/uikit/uikit.min.css" />


        <title>Tất cả sản phẩm</title>

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
                    <c:if test="${sessionScope.user !=null}">   <!-- kiểm tra đăng nhập chưa -->
                        <a style="color: #272727" href="">Chào ${user.username}!</a>
                        <a style="color: #272727" href="logout">   
                            <i class="fas fa-user-alt">Đăng xuất</i>
                        </a>
                    </c:if>
                    <c:if test="${user.admin==1}">
                        <a style="color: #272727" href="admin">Quản lí sản phẩm</a>
                    </c:if>
                    <c:if test="${sessionScope.user ==null}">
                        <a style="color: #272727" href="signin.jsp">  
                            <i class="fas fa-user-alt">Đăng nhập</i>
                        </a>
                    </c:if>
                    <a href="#" class="" uk-toggle="target: #offcanvas-flip">
                        <i class="fas fa-search" style="color: black"></i>
                    </a>

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
                            <a href="product.jsp">
                                <span>Danh mục</span>
                            </a>
                        </li>
                        <li>
                            <span><span style="color: #777777">Tất cả sản phẩm</span></span>
                        </li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <!--List Prodct-->
    <div class="container" style="margin-top: 50px;">
        <div class="row">
            <div class="col-md-3 col-sm-12 col-xs-12 sidebar-fix">
                <div class="wrap-filter">
                    <div class="box_sidebar">
                        <div class="block left-module">
                            <div class=" filter_xs">
                                <div class="group-menu">
                                    <div class="title_block d-block d-sm-none d-none d-sm-block d-md-none" data-toggle="collapse"
                                         href="#collapseExample1" role="button" aria-expanded="false"
                                         aria-controls="collapseExample1">
                                        Danh mục sản phẩm
                                        <span><i class="fa fa-angle-down" data-toggle="collapse"
                                                 href="#collapseExample1" role="button" aria-expanded="false"
                                                 aria-controls="collapseExample1"></i></span>
                                    </div>
                                    <div class="block_content layered-category collapse" id="collapseExample1">
                                        <div class="layered-content card card-body"  style="border:0;padding:0">
                                            <ul class="menuList-links">
                                                <li class=""><a href="home" title="Trang chủ"><span>Trang chủ</span></a></li>
                                                <li class=" active "><a href="product.jsp" title="Bộ sưu tập"><span>Bộ sưu tập</span></a>
                                                </li>
                                                <li class="has-submenu level0 ">
                                                    <a title="Sản phẩm" >Sản phẩm<span class="icon-plus-submenu" data-toggle="collapse"
                                                                                       href="#collapseExample" role="button" aria-expanded="false"
                                                                                       aria-controls="collapseExample"></span></a>
                                                    <div class="collapse" id="collapseExample">
                                                        <div class="card card-body" style="border:0;padding-top:0;">
                                                            <ul class="menu-product">
                                                                <li><a href="categories?cname=áo" title="Sản phẩm - Style 1">Danh sách sản phẩm áo</a></li>
                                                                <li><a href="categories?cname=giày" title="Sản phẩm - Style 2">Danh sách sản phẩm giày</a></li>
                                                                <li><a href="categories?cname=ví" title="Sản phẩm - Style 3">Danh sách sản phẩm ví</a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class=""><a href="introduce.jsp" title="Giới thiệu"><span>Giới thiệu</span></a></li>
                                                <li class=""><a href="blog.jsp" title="Blog"><span>Blog</span></a></li>
                                                <li class=""><a href="contact.html" title="Liên hệ"><span>Liên hệ</span></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="layered">
                                    <p class="title_block d-block d-sm-none d-none d-sm-block d-md-none" data-toggle="collapse"
                                       href="#collapseExample2" role="button" aria-expanded="false"
                                       aria-controls="collapseExample2">
                                        Bộ lọc sản phẩm
                                        <span><i class="fa fa-angle-down" data-toggle="collapse"
                                                 href="#collapseExample2" role="button" aria-expanded="false"
                                                 aria-controls="collapseExample2"></i></span>
                                    </p>
                                    <div class="block_content collapse" id="collapseExample2">
                                        <div class="group-filter card card-body" style="border:0;padding:0" aria-expanded="true">
                                            <div class="layered_subtitle dropdown-filter"><span>Thương hiệu</span><span
                                                    class="icon-control"><i class="fa fa-minus"></i></span></div>
                                            <div class="layered-content bl-filter filter-brand">
                                                <ul class="check-box-list">
                                                    <li>
                                                        <input type="checkbox" id="data-brand-p1" value="Khác">
                                                        <label for="data-brand-p1">Khác</label>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="group-filter" aria-expanded="true">
                                            <div class="layered_subtitle dropdown-filter"><span>Giá sản phẩm</span><span
                                                    class="icon-control"><i class="fa fa-minus"></i></span></div>
                                            <div class="layered-content bl-filter filter-price">
                                                <ul class="check-box-list">
                                                    <li>
                                                        <input type="checkbox" id="p1">
                                                        <label for="p1">
                                                            <span>Dưới</span> 15$
                                                        </label>
                                                    </li>
                                                    <li>
                                                        <input type="checkbox" id="p2">
                                                        <label for="p2">
                                                            15$ - 30$
                                                        </label>
                                                    </li>
                                                    <li>
                                                        <input type="checkbox" id="p3">
                                                        <label for="p3">
                                                            30$ - 50$
                                                        </label>
                                                    </li>
                                                    <li>
                                                        <input type="checkbox" id="p4">
                                                        <label for="p4">
                                                            50$ - 100$
                                                        </label>
                                                    </li>
                                                    <li>
                                                        <input type="checkbox" id="p5">
                                                        <label for="p5">
                                                            <span>Trên</span> 100$
                                                        </label>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>

                                        <div class="group-filter" aria-expanded="true">
                                            <div class="layered_subtitle dropdown-filter"><span>Màu sắc</span><span class="icon-control"><i
                                                        class="fa fa-minus"></i></span></div>
                                            <div class="layered-content filter-color s-filter">
                                                <ul class="check-box-list">
                                                    <li>
                                                        <input type="checkbox" id="data-color-p1">
                                                        <label for="data-color-p1" style="background-color: #fb4727"></label>
                                                    </li>
                                                    <li>
                                                        <input type="checkbox" id="data-color-p2">
                                                        <label for="data-color-p2" style="background-color: #fdfaef"></label>
                                                    </li>
                                                    <li>
                                                        <input type="checkbox" id="data-color-p3">
                                                        <label for="data-color-p3" style="background-color: #3e3473"></label>
                                                    </li>
                                                    <li>
                                                        <input type="checkbox" id="data-color-p4">
                                                        <label for="data-color-p4" style="background-color: #ffffff"></label>
                                                    </li>
                                                    <li>
                                                        <input type="checkbox" id="data-color-p5">
                                                        <label for="data-color-p5" style="background-color: #75e2fb"></label>
                                                    </li>
                                                    <li>
                                                        <input type="checkbox" id="data-color-p6">
                                                        <label for="data-color-p6" style="background-color: #cecec8"></label>
                                                    </li>
                                                    <li>
                                                        <input type="checkbox" id="data-color-p7">
                                                        <label for="data-color-p7" style="background-color: #6daef4"></label>
                                                    </li>
                                                    <li>
                                                        <input type="checkbox" id="data-color-p8">
                                                        <label for="data-color-p8" style="background-color: #000000"></label>
                                                    </li>
                                                    <li>
                                                        <input type="checkbox" id="data-color-p9">
                                                        <label for="data-color-p9" style="background-color: #e2262a"></label>
                                                    </li>
                                                    <li>
                                                        <input type="checkbox" id="data-color-p10">
                                                        <label for="data-color-p10" style="background-color: #ee8aa1"></label>
                                                    </li>
                                                    <li>
                                                        <input type="checkbox" id="data-color-p11">
                                                        <label for="data-color-p11" style="background-color: #4a5250"></label>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-9 col-sm-12 col-xs-12">
                <div class="wrap-collection-title row">
                    <div class="col-md-8 col-sm-12 col-xs-12">
                        <h1 class="title" >
                            Tất cả sản phẩm
                        </h1>
                        <div class="alert-no-filter"></div>
                    </div>
                    <div class="col-md-4 d-sm-none d-md-block d-none d-sm-block" style="float: left">
                        <div class="option browse-tags">
                            <span class="custom-dropdown custom-dropdown--grey">
                                <select class="sort-by custom-dropdown__select">
                                    <option value="price-ascending">Giá: Tăng dần</option>
                                    <option value="price-descending">Giá: Giảm dần
                                    </option>
                                    <option value="title-ascending">Tên: A-Z</option>
                                    <option value="title-descending">Tên: Z-A</option>
                                    <option value="created-ascending">Cũ nhất
                                    </option>
                                    <option value="created-descending">Mới nhất
                                    </option>
                                    <option value="best-selling">Bán chạy nhất
                                    </option>
                                    <option value="quantity-descending">Tồn kho: Giảm dần</option>
                                </select>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <c:forEach items="${list}" var="o">
                        <div class="col-md-3 col-sm-6 col-xs-6 col-6">
                            <div class="product-block">
                                <div class="product-img fade-box">
                                    <a href="" title="${o.content}" class="img-resize">
                                        <img
                                            src="${o.link_img}"
                                            alt="${o.content}" class="lazyloaded">
                                        <img
                                            src="${o.link_img}"
                                            alt="${o.content}" class="lazyloaded">
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
                                        <p class="">${o.price}$</p>
                                    </div>
                                </div>
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
                    </c:forEach>
                </div>

            </div>
        </div>
        <div class="sortpagibar pagi clearfix text-center">
            <div id="pagination" class="clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <span class="page-node current">1</span>
                    <a class="page-node" href="">2</a>
                    <a class="next" href="">
                        <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px"
                             y="0px" viewBox="0 0 31 10" style="enable-background:new 0 0 31 10; width: 31px; height: 10px;"
                             xml:space="preserve">
                        <polygon points="31,5 25,0 25,4 0,4 0,6 25,6 25,10 "></polygon>
                        </svg> </a>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
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

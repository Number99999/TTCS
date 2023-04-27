<%-- 
    Document   : introduce
    Created on : Apr 24, 2022, 3:01:54 AM
    Author     : MSII
--%>

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


        <title>Giới thiệu</title>

    </head>

    <body>
        <div class="header">
            <a style="color: #ffffff;text-decoration: none;" href="index.jsp">MIỄN PHÍ VẬN CHUYỂN VỚI ĐƠN HÀNG NỘI THÀNH > 300K
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
                            <span><span style="color: #777777">Giới thiệu</span></span>
                        </li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <!--List Prodct-->

    <div class="container">

        <div class="row">
            <div class="col-md-3 d-none d-sm-block d-sm-none d-md-block">
                <div class="sidebar-page">
                    <div class="group-menu">
                        <div class="page_menu_title title_block">
                            <h2>Danh mục trang</span></h2>
                        </div>
                        <div class="layered layered-category">
                            <div class="layered-content">
                                <ul class="menuList-links">
                                    <li class=""><a href="home" title="Trang chủ"><span>Trang chủ</span></a></li>       
                                    <li class=""><a href="product" title="Bộ sưu tập"><span>Bộ sưu tập</span></a></li>
                                    <li class="has-submenu level0 ">
                                        <a title="Sản phẩm" >Sản phẩm <span class="icon-plus-submenu" data-toggle="collapse"
                                                                            href="#collapseExample" role="button" aria-expanded="false"
                                                                            aria-controls="collapseExample"></span></a>
                                        <div class="collapse" id="collapseExample">
                                            <div class="card card-body" style="border:0">
                                                <ul class="menu-product">
                                                    <li><a href="categories?cname=áo" title="Sản phẩm - Style 1">Danh sách sản phẩm áo</a></li>
                                                    <li><a href="categories?cname=giày" title="Sản phẩm - Style 2">Danh sách sản phẩm giày</a></li>
                                                    <li><a href="categories?cname=ví" title="Sản phẩm - Style 3">Danh sách sản phẩm ví</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </li>      
                                    <li class="active"><a href="introduce.jsp" title="Giới thiệu"><span>Giới thiệu</span></a></li>     
                                    <li class=""><a href="blog.jsp" title="Blog"><span>Blog</span></a></li>      
                                    <li class=""><a href="contact.html" title="Liên hệ"><span>Liên hệ</span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="box_image visible-lg visible-md">
                        <div class="banner">
                            <a href="">
                                <img src="//theme.hstatic.net/1000375638/1000480323/14/page_banner.jpg?v=321" alt="Runner Inn">
                            </a>
                        </div>
                    </div>
                </div>

            </div>
            <div class="col-md-9 col-sm-12 col-xs-12">
                <div class="page-wrapper">
                    <div class="heading-page">
                        <h1>Giới thiệu</h1>
                    </div>
                    <div class="wrapbox-content-page">
                        <div class="content-page ">
                            <p>Trang giới thiệu giúp khách hàng hiểu rõ hơn về cửa hàng của bạn. Hãy cung cấp thông tin cụ thể về việc
                                kinh doanh, về cửa hàng, thông tin liên hệ. Điều này sẽ giúp khách hàng cảm thấy tin tưởng khi mua hàng
                                trên website của bạn.</p>
                            <p>Một vài gợi ý cho nội dung trang Giới thiệu:</p>
                            <div>
                                <ul>
                                    <li><span> Lúc thấy đồ mình thích thì đắn đo không nhanh tay inbox, comment đặt hàng, đợi khi muốn mua lại sold out :(
                                            Thế nên là nếu thích sản phẩm nào trong bst mới nhất của bọn mình, hãy mạnh dạn inbox để được tư vấn ngay nha.</span><br></li>
                                    <li><span> Sông có khúc người có lúc
                                            Hàng có auth cũng có pha kè
                                            Không muốn tốn tiền mà ôm một bụng tức thì phải tìm đúng nơi bán hàng uy tín các chị ạ.</span><br></li>
                                    <li><span>Địa chỉ cửa hàng</span><br></li>
                                    <li><span>Bạn đã kinh doanh trong ngành hàng này bao lâu rồi</span><br></li>
                                    <li><span>Bạn kinh doanh ngành hàng online được bao lâu</span><br></li>
                                    <li><span>Đội ngũ của bạn gồm những ai</span><br></li>
                                    <li><span>Thông tin liên hệ</span><br></li>
                                    <li><span>Liên kết đến các trang mạng xã hội (Twitter, Facebook)</span><br></li>
                                </ul>
                            </div>
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
    <script async defer crossorigin="anonymous"
    src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v4.0"></script>
    <script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.1.7/js/uikit.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.1.7/js/uikit-icons.min.js"></script>
</body>

</html>
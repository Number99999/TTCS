<%-- 
    Document   : adminpage
    Created on : May 1, 2022, 1:08:45 AM
    Author     : ADMIN
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
              integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <meta name="author" content="Admin-AnhLee">

        <meta property="og:description" content="Wellcome to my Website Aristino" />

        <link rel="stylesheet" href="plugins/bootstrap/bootstrap.min.css">
        <link rel="stylesheet" href="plugins/animate/animate.min.css">
        <link rel="stylesheet" href="plugins/fontawesome/all.css">
        <link rel="stylesheet" href="plugins/webfonts/font.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css" type="text/css">
        <link rel="stylesheet" type="text/css" href="css/style.css">

        <!-- UIkit CSS -->
        <link rel="stylesheet" href="plugins/uikit/uikit.min.css" />
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
              integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
        <!--===============================================================================================-->
        <link rel="stylesheet" href="css/styleadminpage.css">
        <!-- Latest compiled and minified CSS -->
        <!--===============================================================================================-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <!-- jQuery library -->
        <!--===============================================================================================-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
        <!--===============================================================================================-->
        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <!--===============================================================================================-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.min.css">
        <!--===============================================================================================-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.js"></script>
        <!--===============================================================================================-->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <!--===============================================================================================-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">


        <script type="text/javascript">
            //Phân Trang Cho Table
            function Pager(tableName, itemsPerPage) {
                this.tableName = tableName;
                this.itemsPerPage = itemsPerPage;
                this.currentPage = 1;
                this.pages = 0;
                this.inited = false;

                this.showRecords = function (from, to) {
                    var rows = document.getElementById(tableName).rows;
                    for (var i = 1; i < rows.length; i++) {
                        if (i < from || i > to)
                            rows[i].style.display = 'none';
                        else
                            rows[i].style.display = '';
                    }
                }

                this.showPage = function (pageNumber) {
                    if (!this.inited) {
                        alert("not inited");
                        return;
                    }
                    var oldPageAnchor = document.getElementById('pg' + this.currentPage);
                    oldPageAnchor.className = 'pg-normal';

                    this.currentPage = pageNumber;
                    var newPageAnchor = document.getElementById('pg' + this.currentPage);
                    newPageAnchor.className = 'pg-selected';

                    var from = (pageNumber - 1) * itemsPerPage + 1;
                    var to = from + itemsPerPage - 1;
                    this.showRecords(from, to);
                }

                this.prev = function () {
                    if (this.currentPage > 1)
                        this.showPage(this.currentPage - 1);
                }

                this.next = function () {
                    if (this.currentPage < this.pages) {
                        this.showPage(this.currentPage + 1);
                    }
                }

                this.init = function () {
                    var rows = document.getElementById(tableName).rows;
                    var records = (rows.length - 1);
                    this.pages = Math.ceil(records / itemsPerPage);
                    this.inited = true;
                }
                this.showPageNav = function (pagerName, positionId) {
                    if (!this.inited) {
                        alert("not inited");
                        return;
                    }
                    var element = document.getElementById(positionId);

                    var pagerHtml = '<span onclick="' + pagerName +
                            '.prev();" class="pg-normal">&#171</span> | ';
                    for (var page = 1; page <= this.pages; page++)
                        pagerHtml += '<span id="pg' + page + '" class="pg-normal" onclick="' + pagerName +
                                '.showPage(' + page + ');">' + page + '</span> | ';
                    pagerHtml += '<span onclick="' + pagerName + '.next();" class="pg-normal">&#187;</span>';

                    element.innerHTML = pagerHtml;
                }
            }
        </script>
    </head>

    <body onload="time()">

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
                <!-- giỏ hàng -->

                <div class="icon-ol">
                    <c:if test="${sessionScope.user !=null}">   <!-- kiểm tra đăng nhập chưa -->
                        <a href="">Xin chào ${user.username}</a>
                        <a style="color: #272727" href="logout">   
                            <i class="fas fa-user-alt">Đăng xuất</i>
                        </a>
                    </c:if>
                    <c:if test="${sessionScope.user ==null}">
                        <a style="color: #272727" href="signin.jsp">  
                            <i class="fas fa-user-alt">Đăng nhập</i></a>
                    </c:if>
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
    <!-- Owl-Carousel -->
    <div>
        <div>
            <img src="images/collection_banner.jpg" alt="Products">
        </div>
    </div>
    <div class="container-fluid al">

        <p class="timkiemnhanvien"><b>Đơn Hàng</b></p><Br>


        <table class="table table-bordered" id="myTable">
            <thead>
                <tr class="ex">
                    <th width="50px">Hình ảnh</th>
                    <th width="250px">Số lượng</th>
                    <th width="30px">Đơn giá</th>
                    <th width="30px"> Tổng tiền</th>
                    <th width="50px">Trạng thái</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${list}" var="o">
                    <tr>
                        <td><img src="${o.link_img}"></td>
                        <td>${o.count}</td>         <!-- //đổi thành tên thì lỗi k hiển thị -->
                        <td>${o.price}</td>
                        <td>${o.tong}</td>
                        <td>${o.tinhTrang}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <div id="pageNavPosition" class="text-right"></div>
        <script type="text/javascript">
            var pager = new Pager('myTable', 5);
            pager.init();
            pager.showPageNav('pager', 'pageNavPosition');
            pager.showPage(1);
        </script>
    </div>
    <hr class="hr1">
    <div class="container-fluid end">
        <div class="row text-center">
            <div class="col-lg-12 link">
                <i class="fab fa-facebook-f"></i>
                <i class="fab fa-instagram"></i>
                <i class="fab fa-youtube"></i>
                <i class="fab fa-google"></i>
            </div>
            <div class="col-lg-12">
                2022 CopyRight Aristino | Design by <a href="#">AnhLee</a>
            </div>
        </div>
    </div>
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
<script src="jquery.min.js"></script>
<script type="text/javascript">
            //Tìm kiếm
            function myFunction() {
                var input, filter, table, tr, td, i, txtValue;
                input = document.getElementById("myInput");
                filter = input.value.toUpperCase();
                table = document.getElementById("myTable");
                tr = table.getElementsByTagName("tr");
                for (i = 0; i < tr.length; i++) {
                    td = tr[i].getElementsByTagName("td")[0];
                    if (td) {
                        txtValue = td.textContent || td.innerText;
                        if (txtValue.toUpperCase().indexOf(filter) > -1) {
                            tr[i].style.display = "";
                        } else {
                            tr[i].style.display = "none";
                        }
                    }
                }
            }
            //Lọc bảng
            function sortTable() {
                var table, rows, switching, i, x, y, shouldSwitch;
                table = document.getElementById("myTable");
                switching = true;
                while (switching) {
                    switching = false;
                    rows = table.rows;
                    for (i = 1; i < (rows.length - 1); i++) {
                        shouldSwitch = false;
                        x = rows[i].getElementsByTagName("TD")[0];
                        y = rows[i + 1].getElementsByTagName("TD")[0];
                        if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
                            shouldSwitch = true;
                            break;
                        }
                    }
                    if (shouldSwitch) {
                        rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
                        switching = true;
                        swal("Thành Công!", "Các sản phẩm đưuọc lọc", "success");
                    }
                }
            }
            //Thời Gian




            //Tool tip
            $(document).ready(function () {
                $('[data-toggle="tooltip"]').tooltip();
            });
</script>

</body>

</html>

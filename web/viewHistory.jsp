<%@page import="model.OrderItem"%>
<%@page import="java.util.List"%>
<%@page import="model.CartItem"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
    <head>
        <meta charset='utf-8'>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <title>Lịch sử mua hàng(khách)  +cập nhật đơn hàng(Admin) </title>
        <!--<link rel="stylesheet" href="css/cartstyle.css">-->

        <link href='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css' rel='stylesheet'>
        <link href='https://use.fontawesome.com/releases/v5.7.2/css/all.css' rel='stylesheet'>
        <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- Site Icons -->

        <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
        <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">    
        <!-- Site CSS -->
        <link rel="stylesheet" href="css/style2.css">    
        

    </head>
    <body class='snippet-body' >
      
        <%
            int totalquantity = 0;
            float totalmoney = 0;
            List<OrderItem> orderList = (List<OrderItem>) session.getAttribute("history");
            float total = 0;
            for (OrderItem i : orderList) {
                total += i.getCartitem().getQuantity() * i.getCartitem().getProduct().getPrice();
            }
        %>
        <div class="wrapper">
            <div class="d-flex align-items-center justify-content-between">
                <div class="d-flex flex-column">
                    <div class="h3">Danh sách sản phẩm</div>
                    <!--<div class="text-uppercase">6 sublists</div>-->
                </div>
                <div class="ml-auto btn"><span class="fas fa-cog"></span></div>
                <!--<div class="btn" id="sub"> + Add sublist </div>-->
            </div>
            <div class="notification alert alert-dismissible fade show text-white d-flex align-items-center my-3 text-justify" role="alert"> <span class="far fa-bell pr-2"></span> You've got 3 new items on your list and 7 new comments check it out! <button type="button" class="close text-white ml-auto" data-dismiss="alert" aria-label="Close"> <span aria-hidden="true"> Ok, Thanks </span> </button> </div>
            <div id="table" class="bg-white rounded">
                <div class="d-md-flex align-items-md-center px-3 pt-3">
                    <div class="d-flex flex-column">
                        <div class="h4 font-weight-bold">Sản phẩm bạn đã mua</div>
                        <div class="text-muted"><%=orderList.size()%> sản phẩm</div>
                    </div>
                   
                </div>
                <hr>
                <div class="table-responsive">
                    <table class="table"  bordercolor="green">
                        <thead>
                            <tr>
                                <th scope="col" class="text-uppercase header">Sản phẩm</th>
                                <th scope="col" class="text-uppercase">Số lượng</th>
                                <th scope="col" class="text-uppercase">Đơn giá</th>
                                <th scope="col" class="text-uppercase">Thành tiền</th>
                                <th scope="col" class="text-uppercase">Tình trạng đơn hàng</th>
                                <th scope="col" class="text-uppercase">Ngày đặt hàng</th>

                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var = "i" items = "${history}">
                                <%--<c:set var = "i" value="${o.cartItem}"></c:set>--%>
                                <tr>
                                    <td class="item">
                                        <!--<div class="d-flex">-->
                                        <img src="images/${i.cartitem.product.catid}/${i.cartitem.product.proid}/${i.cartitem.product.displayimg}"   style="width :150px; height :150px;"  alt="">
                                        <div class="pl-2"> ${i.cartitem.product.name} <div class="text-uppercase new"><span class="fas fa-star"></span>new</div>
                                            <!--                                                <div class="d-flex flex-column justify-content-center">
                                                                                                <div class="text-muted">Blue</div>
                                                                                                <div><a href="#"><span class="red text-uppercase"><span class="fas fa-comment pr-1"></span>add a comment</span></a> </div>
                                                                                            </div>-->
                                        </div>
                                    </td>
                                    <td>
                                        <input class=" justify-content-end" type = "text" name = "quantity" value = "${i.cartitem.quantity}">
                                    </td>
                                    <td class="d-flex flex-column"><span class="red">${i.cartitem.product.price}đ</span> </td>
                                    <td class="font-weight-bold"> ${i.cartitem.product.price * i.cartitem.quantity }đ
                                        <div class="close" ><a href="addtocart?action=delete&proid=${i.cartitem.product.proid}">&times;</a></div>
                                        <!--<button class="d-flex justify-content-end btn border">+ Add to cart</button>--> 
                                    </td>
                                    <td class="d-flex flex-column">
                                        <c:if test = "${user.roleid==1}">
                                            <span class="red">${i.status}</span>
                                        </c:if>
                                        <c:if test = "${user.roleid != 1}">
                                            <form action = "order" method = "post">
                                                <input type ="hidden" name = "action" value = "changeStatus">
                                                <input type = "hidden" name = "orderid" value = "${i.orderid}">
                                                <select data-selected ="${i.status}" name="status" class="d-flex justify-content-end">
                                                    <option value="Đã thanh toán">Đặt hàng thành công</option>
                                                    <option value="Đã xác nhận">Đã xác nhận</option>
                                                    <option value="Đang giao hàng">Đang giao hàng</option>
                                                    <option value="Giao hàng thành công">Giao hàng thành công</option>
                                                </select>
                                                <input class="d-flex  btn border" value = "Cập nhật trạng thái" type = "submit">
                                            </form>

                                        </c:if>
                                    </td>
                                    <td >
                                        <span class="red">${i.orderDate}</span>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
                <hr class="items">

            </div>
            <div class="d-flex justify-content-between">
                <div class="text-muted"> 
                    <!--<button class="btn" type="button" data-toggle="collapse" data-target="#table" aria-expanded="false" aria-controls="table"> Hide <span class="fas fa-minus"></span> </button>-->
                </div>
                <div class="d-flex flex-column justify-content-end align-items-end">
                    <div class="d-flex px-3 pr-md-5 py-1 subtotal">
                        <div class="px-4">Tổng tiền</div>
                        <div class="h5 font-weight-bold px-md-2"><%=total%>đ</div>
                    </div>


                </div>
            </div>
        </div>
        <script type='text/javascript' src='https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js'></script>
        <script type='text/javascript' src=''></script>
        <script type='text/javascript' src=''></script>
        <script type='text/Javascript'></script>
    </body>
</html>
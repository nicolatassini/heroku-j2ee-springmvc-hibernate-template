<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<html>
   <head>
      <meta charset="utf-8">
      <title>${titleShop}</title>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta name="description" content="${titleShop}">
      <meta name="author" content="${titleShop}">
      <!-- Bootstrap styles -->
      <link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet"/>
      <!-- Customize styles -->
      <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet"/>
      <!-- font awesome styles -->
      <link href="${pageContext.request.contextPath}/resources/font-awesome/css/font-awesome.css" rel="stylesheet">
      <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/ico/favicon.ico">
   </head>
   <body>
      <div class="container">
         <div id="gototop"> </div>
         <%@ include file="common/upper_header.jsp" %>
         <%@ include file="common/lower_header.jsp" %>
         <%@ include file="common/navbar.jsp" %>
         <!--
            Body Section
            -->
         <div class="row">
            <div id="sidebar" class="span3">
               <%@ include file="common/left_site.jsp" %>
            </div>
            <div class="span9">
               <div class="well well-small">
                  <div class="row-fluid">
                     <div class="span5">
                        <div id="myCarousel" class="carousel slide cntr">
                           <div class="carousel-inner">
                              <div class="item" style="height: 320px; justify-content: center; display: flex; border: 1px solid #ccc; padding: 5px; align-items: center;">
                                 <a href="${product.image}"> <img src="${product.image}" alt="" style="width:100%"></a>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="span7">
                        <h3>${product.name} [${product.type}]</h3>
                        <hr class="soft"/>
                        <form class="form-horizontal qtyFrm">
                           <div class="control-group">
                              <label class="control-label"><span><fmt:formatNumber type = "number" pattern = "#,### VNĐ" value = "${product.price}" /></span></label>
                              <div class="controls" style="width: 100%;">
                                 <input type="number" class="span6" placeholder="Qty.">
                              </div>
                           </div>
                           <div class="control-group">
                              <label class="control-label"><span>Color</span></label>
                              <div class="controls">
                                 <select class="span11">
                                    <option>Red</option>
                                    <option>Purple</option>
                                    <option>Pink</option>
                                    <option>Red</option>
                                 </select>
                              </div>
                           </div>
                           <div class="control-group">
                              <label class="control-label"><span>Thể loại</span></label>
                              <div class="controls" style="width: 100%;">
                                 <input type="text" class="span6" value="${product.category}" readonly >
                              </div>
                           </div>
                           <div class="control-group">
                              <label class="control-label"><span>Nhãn hiệu</span></label>
                              <div class="controls" style="width: 100%;">
                                 <input type="text" class="span6" value="${product.brand}" readonly >
                              </div>
                           </div>
                           <div class="control-group">
                              <label class="control-label"><span>Số lượng còn lại</span></label>
                              <div class="controls" style="width: 100%;">
                                 <input type="number" class="span6" value="${product.stock}" readonly >
                              </div>
                           </div>
                           <button type="submit" class="shopBtn"><span class=" icon-shopping-cart"></span> Thêm vào giỏ hàng</button>
                        </form>
                     </div>
                  </div>
                  <hr class="softn clr"/>
<!--                  <ul id="productDetail" class="nav nav-tabs">
                     <li class="active"><a href="#home" data-toggle="tab">Product Details</a></li>
                     <li class=""><a href="#profile" data-toggle="tab">Related Products </a></li>
                     <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Acceseries <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                           <li><a href="#cat1" data-toggle="tab">Category one</a></li>
                           <li><a href="#cat2" data-toggle="tab">Category two</a></li>
                        </ul>
                     </li>
                  </ul> -->
                  <div id="myTabContent" class="tab-content tabWrapper">
                     <div class="tab-pane fade active in" id="home">
                        <h3>THÔNG TIN SẢN PHẨM</h3>
                        <hr>
                        <c:out value="${product.description}" escapeXml="false"/>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!--
            Clients
            -->
         <section class="our_client">
            <hr class="soften"/>
            <h4 class="title cntr"><span class="text">Manufactures</span></h4>
            <hr class="soften"/>
            <div class="row">
               <div class="span2">
                  <a href="#"><img alt="" src="${pageContext.request.contextPath}/resources/img/1.png"></a>
               </div>
               <div class="span2">
                  <a href="#"><img alt="" src="${pageContext.request.contextPath}/resources/img/2.png"></a>
               </div>
               <div class="span2">
                  <a href="#"><img alt="" src="${pageContext.request.contextPath}/resources/img/3.png"></a>
               </div>
               <div class="span2">
                  <a href="#"><img alt="" src="${pageContext.request.contextPath}/resources/img/4.png"></a>
               </div>
               <div class="span2">
                  <a href="#"><img alt="" src="${pageContext.request.contextPath}/resources/img/5.png"></a>
               </div>
               <div class="span2">
                  <a href="#"><img alt="" src="${pageContext.request.contextPath}/resources/img/6.png"></a>
               </div>
            </div>
         </section>
         <!--
            Footer
            -->
         <footer class="footer">
            <div class="row-fluid">
               <div class="span2">
                  <h5>Your Account</h5>
                  <a href="#">YOUR ACCOUNT</a><br>
                  <a href="#">PERSONAL INFORMATION</a><br>
                  <a href="#">ADDRESSES</a><br>
                  <a href="#">DISCOUNT</a><br>
                  <a href="#">ORDER HISTORY</a><br>
               </div>
               <div class="span2">
                  <h5>Iinformation</h5>
                  <a href="contact.html">CONTACT</a><br>
                  <a href="#">SITEMAP</a><br>
                  <a href="#">LEGAL NOTICE</a><br>
                  <a href="#">TERMS AND CONDITIONS</a><br>
                  <a href="#">ABOUT US</a><br>
               </div>
               <div class="span2">
                  <h5>Our Offer</h5>
                  <a href="#">NEW PRODUCTS</a> <br>
                  <a href="#">TOP SELLERS</a><br>
                  <a href="#">SPECIALS</a><br>
                  <a href="#">MANUFACTURERS</a><br>
                  <a href="#">SUPPLIERS</a> <br/>
               </div>
               <div class="span6">
                  <h5>The standard chunk of Lorem</h5>
                  The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for
                  those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et
                  Malorum" by Cicero are also reproduced in their exact original form,
                  accompanied by English versions from the 1914 translation by H. Rackham.
               </div>
            </div>
         </footer>
      </div>
      <!-- /container -->
      <div class="copyright">
         <div class="container">
            <p class="pull-right">
               <a href="#"><img src="${pageContext.request.contextPath}/resources/img/maestro.png" alt="payment"></a>
               <a href="#"><img src="${pageContext.request.contextPath}/resources/img/mc.png" alt="payment"></a>
               <a href="#"><img src="${pageContext.request.contextPath}/resources/img/pp.png" alt="payment"></a>
               <a href="#"><img src="${pageContext.request.contextPath}/resources/img/visa.png" alt="payment"></a>
               <a href="#"><img src="${pageContext.request.contextPath}/resources/img/disc.png" alt="payment"></a>
            </p>
            <span>Copyright &copy; 2013<br> bootstrap ecommerce shopping template</span>
         </div>
      </div>
      <a href="#" class="gotop"><i class="icon-double-angle-up"></i></a>
      <!-- Placed at the end of the document so the pages load faster -->
      <script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
      <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
      <script src="${pageContext.request.contextPath}/resources/js/jquery.easing-1.3.min.js"></script>
      <script src="${pageContext.request.contextPath}/resources/js/jquery.scrollTo-1.4.3.1-min.js"></script>
      <script src="${pageContext.request.contextPath}/resources/js/shop.js"></script>
   </body>
</html>

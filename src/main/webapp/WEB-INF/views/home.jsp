<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
      <script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
      <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
      <script src="${pageContext.request.contextPath}/resources/js/jquery.easing-1.3.min.js"></script>
      <script src="${pageContext.request.contextPath}/resources/js/jquery.scrollTo-1.4.3.1-min.js"></script>
      <script src="${pageContext.request.contextPath}/resources/js/shop.js"></script>
      <script>
         $(document).ready(function(){
         var categoryId = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&')[0];
         $( ".menu-left li a" ).each(function( index ) {
            if($( this ).attr('href') === '?' + categoryId){
               $( this ).parent().attr('class', 'active');
            }
         });

      // 			  $(".save-btn").click(function(e){
      // 				e.preventDefault();
      // 				  var data = {
      // 					    id: $('#product-id').val(),
      // 					    name: $('#product-name').val(),
      // 					    image: $('#product-image').val(),
      // 					    categoryId: $('#category').find('option:selected').val(),
      // 					    brandId: $('#brand').find('option:selected').val(),
      // 					    description: CKEDITOR.instances.desc.getData().replace(/\s+/g, ' ').trim(),
      // 					}  
      // 				  $.ajax({
      // 					     type: "PUT",
      // 					     url: "${pageContext.request.contextPath}/admin/api/product",
      // 					     headers: { 
      // 						'Accept': 'application/json',
      // 						'Content-Type': 'application/json' 
      // 					     },
      // 					     dataType: "script",
      // 					     data: JSON.stringify(data),
      // 					     success: function (data, status) {
      // 						  location.href = "${pageContext.request.contextPath}/admin/product";
      // 					     },
      // 					     error: function (status) {
      // 						 // error handler
      // 						 console.log(status);
      // 					     }
      // 				  });
      // 			  });

         });		    
      </script>
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
               <div class="well np">
                  <div id="myCarousel" class="carousel slide homCar">
                     <div class="carousel-inner">
                        <div class="item">
                           <img style="width:100%" src="${pageContext.request.contextPath}/resources/img/bootstrap_free-ecommerce.png" alt="bootstrap ecommerce templates">
                           <div class="carousel-caption">
                              <h4>Bootstrap shopping cart</h4>
                              <p><span>Very clean simple to use</span></p>
                           </div>
                        </div>
                        <div class="item">
                           <img style="width:100%" src="${pageContext.request.contextPath}/resources/img/carousel1.png" alt="bootstrap ecommerce templates">
                           <div class="carousel-caption">
                              <h4>Bootstrap Ecommerce template</h4>
                              <p><span>Highly Google seo friendly</span></p>
                           </div>
                        </div>
                        <div class="item active">
                           <img style="width:100%" src="${pageContext.request.contextPath}/resources/img/carousel3.png" alt="bootstrap ecommerce templates">
                           <div class="carousel-caption">
                              <h4>Twitter Bootstrap cart</h4>
                              <p><span>Very easy to integrate and expand.</span></p>
                           </div>
                        </div>
                        <div class="item">
                           <img style="width:100%" src="${pageContext.request.contextPath}/resources/img/bootstrap-templates.png" alt="bootstrap templates">
                           <div class="carousel-caption">
                              <h4>Bootstrap templates integration</h4>
                              <p><span>Compitable to many more opensource cart</span></p>
                           </div>
                        </div>
                     </div>
                     <a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
                     <a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
                  </div>
               </div>
               <!--
                  New Products
                  -->
               <div class="well well-small">
                  <h3>New Products </h3>
                  <hr class="soften"/>
                  <div class="row-fluid">
                     <div id="newProductCar" class="carousel slide">
                        <div class="carousel-inner">
                           <c:choose>
                                <c:when test="${not empty productIcons1}">
                                  <div class="item active">
                                    <ul class="thumbnails">
                                       <c:forEach items="${productIcons1}" var="v_pro">
                                           <li class="span3">
                                             <div class="thumbnail">
                                                <a class="zoomTool" href="${pageContext.request.contextPath}/product/${v_pro.id}" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                                                <a href="#" class="tag"></a>
                                                <a href="${pageContext.request.contextPath}/product/${v_pro.id}"><img src="${v_pro.image}" alt="bootstrap-ring"></a>
                                             </div>
                                          </li>
                                       </c:forEach>
                                    </ul>
                                 </div>
                                </c:when>
                           </c:choose>
                           
                           <c:choose>
                                <c:when test="${not empty productIcons2}">
                                  <div class="item">
                                    <ul class="thumbnails">
                                       <c:forEach items="${productIcons2}" var="v_pro">
                                           <li class="span3">
                                             <div class="thumbnail">
                                                <a class="zoomTool" href="${pageContext.request.contextPath}/product/${v_pro.id}" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                                                <a href="#" class="tag"></a>
                                                <a href="${pageContext.request.contextPath}/product/${v_pro.id}"><img src="${v_pro.image}" alt="bootstrap-ring"></a>
                                             </div>
                                          </li>
                                       </c:forEach>
                                    </ul>
                                 </div>
                                </c:when>
                           </c:choose>
                           
                           <c:choose>
                                <c:when test="${not empty productIcons3}">
                                  <div class="item">
                                    <ul class="thumbnails">
                                       <c:forEach items="${productIcons3}" var="v_pro">
                                           <li class="span3">
                                             <div class="thumbnail">
                                                <a class="zoomTool" href="${pageContext.request.contextPath}/product/${v_pro.id}" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                                                <a href="#" class="tag"></a>
                                                <a href="${pageContext.request.contextPath}/product/${v_pro.id}"><img src="${v_pro.image}" alt="bootstrap-ring"></a>
                                             </div>
                                          </li>
                                       </c:forEach>
                                    </ul>
                                 </div>
                                </c:when>
                           </c:choose>
                          
                        </div>
                        <a class="left carousel-control" href="#newProductCar" data-slide="prev">&lsaquo;</a>
                        <a class="right carousel-control" href="#newProductCar" data-slide="next">&rsaquo;</a>
                     </div>
                  </div>
                  <div class="row-fluid">
                     <c:choose>
                          <c:when test="${not empty productNewTop12}">
                             <ul class="thumbnails">
                                 <c:forEach items="${productNewTop12}" var="v_pro">
                                    <li class="span4">
                                       <div class="thumbnail">
                                          <a class="zoomTool" href="${pageContext.request.contextPath}/product/${v_pro.id}" title="Thêm vào giỏ hàng"><span class="icon-search"></span>XEM NHANH</a>
                                          <a href="${pageContext.request.contextPath}/product/${v_pro.id}">
                                          <img src="${v_pro.image}" alt="${v_pro.name}"></a>
                                          <div class="caption cntr">
                                             <p>${v_pro.brand}</p>
                                             <p>${v_pro.category}</p>
                                             <p><strong>${v_pro.price}</strong></p>
                                             <h4><a class="shopBtn" href="#" title="add to cart"> Thêm vào giỏ hàng </a></h4>
                                          </div>
                                       </div>
                                    </li>
                                 </c:forEach>
                              </ul>
                          </c:when>
                     </c:choose>
                     
                  </div>
               </div>
               <!--
                  Featured Products
                  -->
               <div class="well well-small">
                  <h3><a class="btn btn-mini pull-right" href="products.html" title="View more">VIew More<span class="icon-plus"></span></a> Featured Products  </h3>
                  <hr class="soften"/>
                  <div class="row-fluid">
                     <ul class="thumbnails">
                        <li class="span4">
                           <div class="thumbnail">
                              <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                              <a  href="product_details.html"><img src="${pageContext.request.contextPath}/resources/img/d.jpg" alt=""></a>
                              <div class="caption">
                                 <h5>Manicure & Pedicure</h5>
                                 <h4>
                                    <a class="defaultBtn" href="product_details.html" title="Click to view"><span class="icon-zoom-in"></span></a>
                                    <a class="shopBtn" href="#" title="add to cart"><span class="icon-plus"></span></a>
                                    <span class="pull-right">$22.00</span>
                                 </h4>
                              </div>
                           </div>
                        </li>
                        <li class="span4">
                           <div class="thumbnail">
                              <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                              <a  href="product_details.html"><img src="${pageContext.request.contextPath}/resources/img/e.jpg" alt=""></a>
                              <div class="caption">
                                 <h5>Manicure & Pedicure</h5>
                                 <h4>
                                    <a class="defaultBtn" href="product_details.html" title="Click to view"><span class="icon-zoom-in"></span></a>
                                    <a class="shopBtn" href="#" title="add to cart"><span class="icon-plus"></span></a>
                                    <span class="pull-right">$22.00</span>
                                 </h4>
                              </div>
                           </div>
                        </li>
                        <li class="span4">
                           <div class="thumbnail">
                              <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                              <a  href="product_details.html"><img src="${pageContext.request.contextPath}/resources/img/f.jpg" alt=""/></a>
                              <div class="caption">
                                 <h5>Manicure & Pedicure</h5>
                                 <h4>
                                    <a class="defaultBtn" href="product_details.html" title="Click to view"><span class="icon-zoom-in"></span></a>
                                    <a class="shopBtn" href="#" title="add to cart"><span class="icon-plus"></span></a>
                                    <span class="pull-right">$22.00</span>
                                 </h4>
                              </div>
                           </div>
                        </li>
                     </ul>
                  </div>
               </div>
               <div class="well well-small">
                  <a class="btn btn-mini pull-right" href="#">View more <span class="icon-plus"></span></a>
                  Popular Products
               </div>
               <hr>
               <div class="well well-small">
                  <a class="btn btn-mini pull-right" href="#">View more <span class="icon-plus"></span></a>
                  Best selling Products
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
      
   </body>
</html>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
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
                              <div class="item active">
                                 <a href="#"> <img src="${pageContext.request.contextPath}/resources/assets/img/a.jpg" alt="" style="width:100%"></a>
                              </div>
                              <div class="item">
                                 <a href="#"> <img src="${pageContext.request.contextPath}/resources/assets/img/b.jpg" alt="" style="width:100%"></a>
                              </div>
                              <div class="item">
                                 <a href="#"> <img src="${pageContext.request.contextPath}/resources/assets/img/e.jpg" alt="" style="width:100%"></a>
                              </div>
                           </div>
                           <a class="left carousel-control" href="#myCarousel" data-slide="prev">‹</a>
                           <a class="right carousel-control" href="#myCarousel" data-slide="next">›</a>
                        </div>
                     </div>
                     <div class="span7">
                        <h3>Name of the Item [$140.00]</h3>
                        <hr class="soft"/>
                        <form class="form-horizontal qtyFrm">
                           <div class="control-group">
                              <label class="control-label"><span>$140.00</span></label>
                              <div class="controls">
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
                              <label class="control-label"><span>Materials</span></label>
                              <div class="controls">
                                 <select class="span11">
                                    <option>Material 1</option>
                                    <option>Material 2</option>
                                    <option>Material 3</option>
                                    <option>Material 4</option>
                                 </select>
                              </div>
                           </div>
                           <h4>100 items in stock</h4>
                           <p>Nowadays the lingerie industry is one of the most successful business spheres.
                              Nowadays the lingerie industry is one of ...
                           <p>
                              <button type="submit" class="shopBtn"><span class=" icon-shopping-cart"></span> Add to cart</button>
                        </form>
                     </div>
                  </div>
                  <hr class="softn clr"/>
                  <ul id="productDetail" class="nav nav-tabs">
                     <li class="active"><a href="#home" data-toggle="tab">Product Details</a></li>
                     <li class=""><a href="#profile" data-toggle="tab">Related Products </a></li>
                     <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Acceseries <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                           <li><a href="#cat1" data-toggle="tab">Category one</a></li>
                           <li><a href="#cat2" data-toggle="tab">Category two</a></li>
                        </ul>
                     </li>
                  </ul>
                  <div id="myTabContent" class="tab-content tabWrapper">
                     <div class="tab-pane fade active in" id="home">
                        <h4>Product Information</h4>
                        <table class="table table-striped">
                           <tbody>
                              <tr class="techSpecRow">
                                 <td class="techSpecTD1">Color:</td>
                                 <td class="techSpecTD2">Black</td>
                              </tr>
                              <tr class="techSpecRow">
                                 <td class="techSpecTD1">Style:</td>
                                 <td class="techSpecTD2">Apparel,Sports</td>
                              </tr>
                              <tr class="techSpecRow">
                                 <td class="techSpecTD1">Season:</td>
                                 <td class="techSpecTD2">spring/summer</td>
                              </tr>
                              <tr class="techSpecRow">
                                 <td class="techSpecTD1">Usage:</td>
                                 <td class="techSpecTD2">fitness</td>
                              </tr>
                              <tr class="techSpecRow">
                                 <td class="techSpecTD1">Sport:</td>
                                 <td class="techSpecTD2">122855031</td>
                              </tr>
                              <tr class="techSpecRow">
                                 <td class="techSpecTD1">Brand:</td>
                                 <td class="techSpecTD2">Shock Absorber</td>
                              </tr>
                           </tbody>
                        </table>
                        <p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>
                        <p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>
                        <p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>
                        <p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>
                        <p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>
                        <p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>
                        <p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>
                        <p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>
                     </div>
                     <div class="tab-pane fade" id="profile">
                        <div class="row-fluid">
                           <div class="span2">
                              <img src="assets/img/d.jpg" alt="">
                           </div>
                           <div class="span6">
                              <h5>Product Name </h5>
                              <p>
                                 Nowadays the lingerie industry is one of the most successful business spheres.
                                 We always stay in touch with the latest fashion tendencies -
                                 that is why our goods are so popular..
                              </p>
                           </div>
                           <div class="span4 alignR">
                              <form class="form-horizontal qtyFrm">
                                 <h3> $140.00</h3>
                                 <label class="checkbox">
                                 <input type="checkbox">  Adds product to compair
                                 </label><br>
                                 <div class="btn-group">
                                    <a href="product_details.html" class="defaultBtn"><span class=" icon-shopping-cart"></span> Add to cart</a>
                                    <a href="product_details.html" class="shopBtn">VIEW</a>
                                 </div>
                              </form>
                           </div>
                        </div>
                        <hr class="soft">
                        <div class="row-fluid">
                           <div class="span2">
                              <img src="assets/img/d.jpg" alt="">
                           </div>
                           <div class="span6">
                              <h5>Product Name </h5>
                              <p>
                                 Nowadays the lingerie industry is one of the most successful business spheres.
                                 We always stay in touch with the latest fashion tendencies -
                                 that is why our goods are so popular..
                              </p>
                           </div>
                           <div class="span4 alignR">
                              <form class="form-horizontal qtyFrm">
                                 <h3> $140.00</h3>
                                 <label class="checkbox">
                                 <input type="checkbox">  Adds product to compair
                                 </label><br>
                                 <div class="btn-group">
                                    <a href="product_details.html" class="defaultBtn"><span class=" icon-shopping-cart"></span> Add to cart</a>
                                    <a href="product_details.html" class="shopBtn">VIEW</a>
                                 </div>
                              </form>
                           </div>
                        </div>
                        <hr class="soft"/>
                        <div class="row-fluid">
                           <div class="span2">
                              <img src="assets/img/d.jpg" alt="">
                           </div>
                           <div class="span6">
                              <h5>Product Name </h5>
                              <p>
                                 Nowadays the lingerie industry is one of the most successful business spheres.
                                 We always stay in touch with the latest fashion tendencies -
                                 that is why our goods are so popular..
                              </p>
                           </div>
                           <div class="span4 alignR">
                              <form class="form-horizontal qtyFrm">
                                 <h3> $140.00</h3>
                                 <label class="checkbox">
                                 <input type="checkbox">  Adds product to compair
                                 </label><br>
                                 <div class="btn-group">
                                    <a href="product_details.html" class="defaultBtn"><span class=" icon-shopping-cart"></span> Add to cart</a>
                                    <a href="product_details.html" class="shopBtn">VIEW</a>
                                 </div>
                              </form>
                           </div>
                        </div>
                        <hr class="soft"/>
                        <div class="row-fluid">
                           <div class="span2">
                              <img src="assets/img/d.jpg" alt="">
                           </div>
                           <div class="span6">
                              <h5>Product Name </h5>
                              <p>
                                 Nowadays the lingerie industry is one of the most successful business spheres.
                                 We always stay in touch with the latest fashion tendencies -
                                 that is why our goods are so popular..
                              </p>
                           </div>
                           <div class="span4 alignR">
                              <form class="form-horizontal qtyFrm">
                                 <h3> $140.00</h3>
                                 <label class="checkbox">
                                 <input type="checkbox">  Adds product to compair
                                 </label><br>
                                 <div class="btn-group">
                                    <a href="product_details.html" class="defaultBtn"><span class=" icon-shopping-cart"></span> Add to cart</a>
                                    <a href="product_details.html" class="shopBtn">VIEW</a>
                                 </div>
                              </form>
                           </div>
                        </div>
                        <hr class="soften"/>
                        <div class="row-fluid">
                           <div class="span2">
                              <img src="assets/img/d.jpg" alt="">
                           </div>
                           <div class="span6">
                              <h5>Product Name </h5>
                              <p>
                                 Nowadays the lingerie industry is one of the most successful business spheres.
                                 We always stay in touch with the latest fashion tendencies -
                                 that is why our goods are so popular..
                              </p>
                           </div>
                           <div class="span4 alignR">
                              <form class="form-horizontal qtyFrm">
                                 <h3> $140.00</h3>
                                 <label class="checkbox">
                                 <input type="checkbox">  Adds product to compair
                                 </label><br>
                                 <div class="btn-group">
                                    <a href="product_details.html" class="defaultBtn"><span class=" icon-shopping-cart"></span> Add to cart</a>
                                    <a href="product_details.html" class="shopBtn">VIEW</a>
                                 </div>
                              </form>
                           </div>
                        </div>
                     </div>
                     <div class="tab-pane fade" id="cat1">
                        <p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie etsy retro mlkshk vice blog. Scenester cred you probably haven't heard of them, vinyl craft beer blog stumptown. Pitchfork sustainable tofu synth chambray yr.</p>
                        <br>
                        <br>
                        <div class="row-fluid">
                           <div class="span2">
                              <img src="assets/img/b.jpg" alt="">
                           </div>
                           <div class="span6">
                              <h5>Product Name </h5>
                              <p>
                                 Nowadays the lingerie industry is one of the most successful business spheres.
                                 We always stay in touch with the latest fashion tendencies -
                                 that is why our goods are so popular..
                              </p>
                           </div>
                           <div class="span4 alignR">
                              <form class="form-horizontal qtyFrm">
                                 <h3> $140.00</h3>
                                 <label class="checkbox">
                                 <input type="checkbox">  Adds product to compair
                                 </label><br>
                                 <div class="btn-group">
                                    <a href="product_details.html" class="defaultBtn"><span class=" icon-shopping-cart"></span> Add to cart</a>
                                    <a href="product_details.html" class="shopBtn">VIEW</a>
                                 </div>
                              </form>
                           </div>
                        </div>
                        <hr class="soften"/>
                        <div class="row-fluid">
                           <div class="span2">
                              <img src="assets/img/a.jpg" alt="">
                           </div>
                           <div class="span6">
                              <h5>Product Name </h5>
                              <p>
                                 Nowadays the lingerie industry is one of the most successful business spheres.
                                 We always stay in touch with the latest fashion tendencies -
                                 that is why our goods are so popular..
                              </p>
                           </div>
                           <div class="span4 alignR">
                              <form class="form-horizontal qtyFrm">
                                 <h3> $140.00</h3>
                                 <label class="checkbox">
                                 <input type="checkbox">  Adds product to compair
                                 </label><br>
                                 <div class="btn-group">
                                    <a href="product_details.html" class="defaultBtn"><span class=" icon-shopping-cart"></span> Add to cart</a>
                                    <a href="product_details.html" class="shopBtn">VIEW</a>
                                 </div>
                              </form>
                           </div>
                        </div>
                        <hr class="soften"/>
                     </div>
                     <div class="tab-pane fade" id="cat2">
                        <div class="row-fluid">
                           <div class="span2">
                              <img src="assets/img/d.jpg" alt="">
                           </div>
                           <div class="span6">
                              <h5>Product Name </h5>
                              <p>
                                 Nowadays the lingerie industry is one of the most successful business spheres.
                                 We always stay in touch with the latest fashion tendencies -
                                 that is why our goods are so popular..
                              </p>
                           </div>
                           <div class="span4 alignR">
                              <form class="form-horizontal qtyFrm">
                                 <h3> $140.00</h3>
                                 <label class="checkbox">
                                 <input type="checkbox">  Adds product to compair
                                 </label><br>
                                 <div class="btn-group">
                                    <a href="product_details.html" class="defaultBtn"><span class=" icon-shopping-cart"></span> Add to cart</a>
                                    <a href="product_details.html" class="shopBtn">VIEW</a>
                                 </div>
                              </form>
                           </div>
                        </div>
                        <hr class="soften"/>
                        <div class="row-fluid">
                           <div class="span2">
                              <img src="assets/img/d.jpg" alt="">
                           </div>
                           <div class="span6">
                              <h5>Product Name </h5>
                              <p>
                                 Nowadays the lingerie industry is one of the most successful business spheres.
                                 We always stay in touch with the latest fashion tendencies -
                                 that is why our goods are so popular..
                              </p>
                           </div>
                           <div class="span4 alignR">
                              <form class="form-horizontal qtyFrm">
                                 <h3> $140.00</h3>
                                 <label class="checkbox">
                                 <input type="checkbox">  Adds product to compair
                                 </label><br>
                                 <div class="btn-group">
                                    <a href="product_details.html" class="defaultBtn"><span class=" icon-shopping-cart"></span> Add to cart</a>
                                    <a href="product_details.html" class="shopBtn">VIEW</a>
                                 </div>
                              </form>
                           </div>
                        </div>
                        <hr class="soften"/>
                        <div class="row-fluid">
                           <div class="span2">
                              <img src="assets/img/d.jpg" alt="">
                           </div>
                           <div class="span6">
                              <h5>Product Name </h5>
                              <p>
                                 Nowadays the lingerie industry is one of the most successful business spheres.
                                 We always stay in touch with the latest fashion tendencies -
                                 that is why our goods are so popular..
                              </p>
                           </div>
                           <div class="span4 alignR">
                              <form class="form-horizontal qtyFrm">
                                 <h3> $140.00</h3>
                                 <label class="checkbox">
                                 <input type="checkbox">  Adds product to compair
                                 </label><br>
                                 <div class="btn-group">
                                    <a href="product_details.html" class="defaultBtn"><span class=" icon-shopping-cart"></span> Add to cart</a>
                                    <a href="product_details.html" class="shopBtn">VIEW</a>
                                 </div>
                              </form>
                           </div>
                        </div>
                        <hr class="soften"/>
                        <div class="row-fluid">
                           <div class="span2">
                              <img src="assets/img/d.jpg" alt="">
                           </div>
                           <div class="span6">
                              <h5>Product Name </h5>
                              <p>
                                 Nowadays the lingerie industry is one of the most successful business spheres.
                                 We always stay in touch with the latest fashion tendencies -
                                 that is why our goods are so popular..
                              </p>
                           </div>
                           <div class="span4 alignR">
                              <form class="form-horizontal qtyFrm">
                                 <h3> $140.00</h3>
                                 <label class="checkbox">
                                 <input type="checkbox">  Adds product to compair
                                 </label><br>
                                 <div class="btn-group">
                                    <a href="product_details.html" class="defaultBtn"><span class=" icon-shopping-cart"></span> Add to cart</a>
                                    <a href="product_details.html" class="shopBtn">VIEW</a>
                                 </div>
                              </form>
                           </div>
                        </div>
                        <hr class="soften"/>
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
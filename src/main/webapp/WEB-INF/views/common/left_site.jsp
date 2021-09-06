<div class="well well-small">
   <ul class="nav nav-list menu-left">
      <c:forEach items="${categoryList}" var="v_cate">
         <li><a href="${pageContext.request.contextPath}?categoryId=${v_cate.id}"><span class="icon-chevron-right"></span>${v_cate.name}</a></li>
      </c:forEach>
   </ul>
</div>
<script>
	$(document).ready(function(){
	var categoryId = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&')[0];
	$( ".menu-left li a" ).each(function( index ) {
	  console.log( index + ": " + $( this ).text() );
	});
        $("li a").attr("selected","selected");
			 
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

<!-- <div class="well well-small alert alert-warning cntr">
   <h2>50% Discount</h2>
   <p>
      only valid for online order. <br><br><a class="defaultBtn" href="#">Click here </a>
   </p>
</div>
<div class="well well-small" ><a href="#"><img src="${pageContext.request.contextPath}/resources/img/paypal.jpg" alt="payment method paypal"></a></div>
<a class="shopBtn btn-block" href="#">Upcoming products <br><small>Click to view</small></a>
<br>
<br>
<ul class="nav nav-list promowrapper">
   <li>
      <div class="thumbnail">
         <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
         <img src="${pageContext.request.contextPath}/resources/img/bootstrap-ecommerce-templates.png" alt="bootstrap ecommerce templates">
         <div class="caption">
            <h4><a class="defaultBtn" href="product_details.html">VIEW</a> <span class="pull-right">$22.00</span></h4>
         </div>
      </div>
   </li>
   <li style="border:0"> &nbsp;</li>
   <li>
      <div class="thumbnail">
         <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
         <img src="${pageContext.request.contextPath}/resources/img/shopping-cart-template.png" alt="shopping cart template">
         <div class="caption">
            <h4><a class="defaultBtn" href="product_details.html">VIEW</a> <span class="pull-right">$22.00</span></h4>
         </div>
      </div>
   </li>
   <li style="border:0"> &nbsp;</li>
   <li>
      <div class="thumbnail">
         <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
         <img src="${pageContext.request.contextPath}/resources/img/bootstrap-template.png" alt="bootstrap template">
         <div class="caption">
            <h4><a class="defaultBtn" href="product_details.html">VIEW</a> <span class="pull-right">$22.00</span></h4>
         </div>
      </div>
   </li>
</ul> -->

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<html>
   <head>
      <meta charset="utf-8">
      <title>${titleShop}</title>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta name="description" content="${titleShop}">
      <meta name="author" content="${titleShop}">
	  <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/assets/img/favicon.ico">
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.min.css">
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/font-awesome.min.css">
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/dataTables.bootstrap4.min.css">
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/select2.min.css">
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/bootstrap-datetimepicker.min.css">
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/style.css">
	<script src="https://cdn.ckeditor.com/4.16.2/standard/ckeditor.js"></script>
   </head>
	<body>
		<div class="main-wrapper">
			<%@ include file="b_header.jsp" %>
			<%@ include file="b_left_menu.jsp" %>
				<div class="page-wrapper">
					<div class="content">
						<div class="row">
							<div class="col-lg-8 offset-lg-2">
								<div class="row">
									<div class="col-sm-6">
										<h4 class="page-title">Chi tiết loại sản phẩm</h4>
									</div>
								</div>
								
							</div>
						</div>
						<div class="row">
							<div class="col-lg-8 offset-lg-2">
								<form>
									<div class="row">
										<div class="col-sm-6">
											<div class="form-group">
												<label>Mã loại sản phẩm</label>
												<input class="form-control" id="id" type="text" value = "${productType.id}" readonly>
											</div>
											<div class="form-group">
												<img class="rounded" style="border: 2px solid #ccc;padding: 5px;max-width: 100%;max-height:100%;" src="${productType.image}" >
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group">
												<label>Tên loại sản phẩm</label>
												<input class="form-control" id="name" type="text" value = "${productType.productTypeName}">
											</div>
											<div class="form-group">
												<label>Link đại diện loại sản phẩm</label>
												<input class="form-control" id="image" type="text" value = "${productType.image}">
											</div>
											<div class="form-group">
												<label>Đơn giá</label>
												<input class="form-control" id="price" type="text" value = "${productType.price}">
											</div>
											<div class="form-group">
												<label>Số lượng còn lại</label>
												<input class="form-control" id="stock" type="text" value = "${productType.stock}">
											</div>
											
										</div>
									</div>
									<div class="m-t-20 text-center">
										<button class="btn btn-primary submit-btn save-btn">Lưu</button>
									</div>
								</form>
							</div>
						</div>
				<%@ include file="b_message.jsp" %>
			</div>
		</div>
		<div class="sidebar-overlay" data-reff=""></div>
		<%@ include file="b_footer.jsp" %>
		<script>
			$(document).ready(function(){
			  
			  $(".save-btn").click(function(e){
				e.preventDefault();
				  var data = {
					    id: $('#id').val(),
					    productId: "${productId}",
					    productTypeName: $('#name').val(),
					    image: $('#image').val(),
					    stock: $('#stock').val(),
					    price: $('#price').val()
					}  
				  $.ajax({
					     type: "PUT",
					     url: "${pageContext.request.contextPath}/admin/api/product/type",
					     headers: { 
						'Accept': 'application/json',
						'Content-Type': 'application/json' 
					     },
					     dataType: "script",
					     data: JSON.stringify(data),
					     success: function (data, status) {
						  location.href = "${pageContext.request.contextPath}/admin/product/${productId}/type";
					     },
					     error: function (status) {
						 // error handler
						 console.log(status);
					     }
				  });
			  });
				
			});
		    
		</script>
	</body>
</html>

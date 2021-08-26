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
   </head>
	<body>
		<div class="main-wrapper">
			<%@ include file="b_header.jsp" %>
			<%@ include file="b_left_menu.jsp" %>
			<div class="page-wrapper">
				<div class="content">
					<div class="row">
						<div class="col-sm-4 col-5">
							<h4 class="page-title">Danh sách loại sản phẩm</h4>
						</div>
						<div class="col-sm-8 col-7 text-right m-b-30">
							<a href="${pageContext.request.contextPath}/admin/product/${productId}/type/add" class="btn btn-primary btn-rounded float-right"><i class="fa fa-plus"></i>Thêm loại hàng</a>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="table-responsive">
								<table class="table table-striped custom-table datatable">
									<thead>
										<tr>
											<th style="width:5%;">Mã loại</th>
											<th>Tên loại</th>
											<th>Đơn giá</th>
											<th>Số lượng còn lại</th>
											<th style="width:5%;" class="text-right">Hoạt động</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${productTypeList}" var="v_product">
										<tr>
											<td>
												${v_product.id}
											</td>
											<td>
												<img class="rounded-circle" src="${v_product.image}" height="28" width="28" alt="">
												${v_product.productTypeName}
											</td>
											<td>
												${v_product.price}
											</td>
											<td>
												${v_product.stock}
											</td>
											<td class="text-right">
												<div class="dropdown dropdown-action">
													<a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
													<div class="dropdown-menu dropdown-menu-right action-product" data-id="${v_product.id}">
														<a class="dropdown-item" href="${pageContext.request.contextPath}/admin/product/${v_product.id}"><i class="fa fa-pencil m-r-5"></i> Sửa</a>
														<a class="dropdown-item" href="#" data-toggle="modal"  data-target="#delete_product"><i class="fa fa-trash-o m-r-5"></i> Xoá</a>
													</div>
												</div>
											</td>
										</tr>
									</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				<%@ include file="b_message.jsp" %>
			</div>
			<div id="delete_product" data-delete="" class="modal fade delete-modal" role="dialog"  >
				<div class="modal-dialog modal-dialog-centered">
					<div class="modal-content">
						<div class="modal-body text-center">
							<img src="${pageContext.request.contextPath}/resources/assets/img/sent.png" alt="" width="50" height="46">
							<h3>Bạn có muốn xoá sản phẩm này không</h3>
							<div class="m-t-20"> <a href="#" class="btn btn-white" data-dismiss="modal">Không</a>
								<button type="submit" class="btn btn-danger delete_product_submit">Có</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="sidebar-overlay" data-reff=""></div>
		<%@ include file="b_footer.jsp" %>
		<script>
			$(document).ready(function(){
				 $(".btn-search-product").click(function(){
					window.location.href = "${pageContext.request.contextPath}/admin/product?name=" + $(".product-name").val() + "&categoryId=" + $('.select-category').find('option:selected').val() + "&brandId="+$('.select-brand').find('option:selected').val();
				 });
				
				$(".select-category").val("${categoryId}").change();
				$(".select-brand").val("${brandId}").change();
				
				$(".action-product").click(function(){
					$('#delete_product').attr("data-delete",$(this).attr("data-id"));
				 });
				
				
			  $(".delete_product_submit").click(function(){
				    $.ajax({
				     type: "DELETE",
				     url: "${pageContext.request.contextPath}/admin/api/product/" + $("#delete_product").attr("data-delete"),
// 				     contentType: "application/json; charset=utf-8",
// 				     crossDomain: true,
// 				     dataType: "json",
				     success: function (data, status, jqXHR) {
					location.reload();
				     },
				     error: function (jqXHR, status) {
					 console.log(jqXHR);
					 alert('fail' + status.code);
				     }
				  });
			  });
				
			});
		    
		</script>
	</body>
</html>

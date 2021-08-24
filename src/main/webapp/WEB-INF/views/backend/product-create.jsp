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
								<h4 class="page-title">Thêm sản phẩm</h4>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-8 offset-lg-2">
								<form>
									<div class="row">
										<div class="col-sm-6">
											<div class="form-group">
												<label>Tên sản phẩm</label>
												<input class="form-control" id="product-name" type="text">
											</div>
										</div>
									
										<div class="col-sm-6">
											<div class="form-group">
												<label>Thể loại</label>
												<select class="form-control select" id="category">
													<option value=""> -- Không -- </option>
													<c:forEach items="${categoryList}" var="v_cate">
														<option value="${v_cate.id}">${v_cate.name}</option>
													</c:forEach>
												</select>
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group">
												<label>Nhãn hiệu</label>
												<select class="form-control select" id="brand">
													<option value=""> -- Không -- </option>
													<c:forEach items="${brandList}" var="v_brand">
														<option value="${v_brand.id}">${v_brand.name}</option>
													</c:forEach>
												</select>
											</div>
										</div>
											
										<div class="col-sm-12">
											<div class="form-group">
												<label>Mô tả</label>
												<textarea class="form-control" rows="4" cols="50" id="desc" name="desc"></textarea>
												<script>
													CKEDITOR.replace( 'desc' );
												</script>
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
				  alert($('#product-name').val() + "-" + $('#category').find('option:selected').val() + "-" + $('#brand').find('option:selected').val() + "-" + CKEDITOR.instances.desc.getData()  );
// 				    $.ajax({
// 					     type: "PUT",
// 					     url: "${pageContext.request.contextPath}/admin/api/category?name="+$('#category-name').val(),
// 					     dataType: "script",
// 					     success: function (data, status) {
// 						 location.reload();
// 					     },
// 					     error: function (status) {
// 						 // error handler
// 						 console.log(status);
// 					     }
// 				  });
			  });
				
			});
		    
		</script>
	</body>
</html>

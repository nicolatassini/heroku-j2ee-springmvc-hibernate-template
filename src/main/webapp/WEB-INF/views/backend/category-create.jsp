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
						<div class="col-lg-8 offset-lg-2">
							<h4 class="page-title">Thêm thể loại</h4>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-8 offset-lg-2">
							<form>
								<div class="form-group">
									<label>Tên thể loại<span class="text-danger">*</span></label>
									<input class="form-control" id="category-name" value="" type="text">
								</div>
								<div class="form-group">
									<label>Trạng thái<span class="text-danger">*</span></label>
									<select class="select">
										<option>Hoạt động</option>
										<option>Không hoạt động</option>
									</select>
								</div>
								<div class="m-t-20 text-center">
									<button class="btn btn-primary submit-btn saveCate">Lưu lại</button>
								</div>
							</form>
						</div>
					</div>
				</div>
				<%@ include file="b_message.jsp" %>
			</div>
		</div>
		<div class="sidebar-overlay" data-reff=""></div>
		<%@ include file="b_footer.jsp" %>
		<script>
			$(document).ready(function(){
			  $(".saveCate").click(function(e){
				e.preventDefault();
				    $.ajax({
					     type: "PUT",
					     url: "${pageContext.request.contextPath}/admin/api/category?name="+$('#category-name').val(),
					     dataType: "script",
					     success: function (data, status) {
						 location.reload();
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

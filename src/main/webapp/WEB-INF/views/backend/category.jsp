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
							<h4 class="page-title">Quản lý loại hàng</h4>
						</div>
						<div class="col-sm-8 col-7 text-right m-b-30">
							<a href="add-salary.html" class="btn btn-primary btn-rounded float-right"><i class="fa fa-plus"></i>Thêm loại hàng</a>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="table-responsive">
								<table class="table table-striped custom-table datatable">
									<thead>
										<tr>
											<th style="width:25%;">Mã loại hàng</th>
											<th>Tên loại hàng</th>
											<th>Trạng thái</th>
											<th class="text-right">Hoạt động</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${categoryList}" var="v_cate">
										<tr>
											<td>
												${v_cate.id}
											</td>
											<td>${v_cate.name}</td>
											<td>
												<div class="dropdown">
													<a href="#" class="custom-badge status-grey dropdown-toggle" data-toggle="dropdown" aria-expanded="false">Hoạt động</a>
													<div class="dropdown-menu">
														<a class="dropdown-item" href="#">Không hoạt động</a>
													</div>
												</div>
											</td>
											
											<td class="text-right">
												<div class="dropdown dropdown-action">
													<a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
													<div class="dropdown-menu dropdown-menu-right">
														<a class="dropdown-item" href="${pageContext.request.contextPath}/admin/category/${v_cate.id}"><i class="fa fa-pencil m-r-5"></i> Sửa</a>
														<a class="dropdown-item delete-category-button" href="#" data-toggle="modal" data-id="${v_cate.id}" data-target="#delete_salary"><i class="fa fa-trash-o m-r-5"></i> Xoá</a>
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
			<div id="delete_category" data-delete="" class="modal fade delete-modal" role="dialog"  >
				<div class="modal-dialog modal-dialog-centered">
					<div class="modal-content">
						<div class="modal-body text-center">
							<img src="${pageContext.request.contextPath}/resources/assets/img/sent.png" alt="" width="50" height="46">
							<h3>Bạn có muốn xoá thể loại này không</h3>
							<div class="m-t-20"> <a href="#" class="btn btn-white" data-dismiss="modal">Không</a>
								<button type="submit" class="btn btn-danger delete_category_submit">Có</button>
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
				 $(".delete-category-button").click(function(){
				 	$('.delete_category').data('delete',$(this).attr("data-id") );
				 });
				
				
			  $(".delete_category_submit").click(function(){
				  
				    $.ajax({
				     type: "DELETE",
				     url: "${pageContext.request.contextPath}/admin/api/category/" + $("#delete_category").attr("data-delete"),
				     contentType: "application/json; charset=utf-8",
				     crossDomain: true,
				     dataType: "json",
				     success: function (data, status, jqXHR) {
					alert(data);
				     },

				     error: function (jqXHR, status) {
					 // error handler
					 console.log(jqXHR);
					 alert('fail' + status.code);
				     }
				  });
			  });
				
			});
		    

		    
		</script>
	</body>
</html>

<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!-- breadcrumb -->
<div class="container">
	<ol class="breadcrumb w3l-crumbs">
		<li><a href="#"><i class="fa fa-home"></i> Home</a></li>
		<li class="active">History</li>
	</ol>
</div>
<!-- //breadcrumb -->
<!--  about-page -->
<div class="about">
	<div class="container">
		<h3 class="w3ls-title w3ls-title1">About You</h3>
		<div class="about-text">
			<div class="ftr-toprow">
				<div class="col-md-4 ftr-top-grids">
					<div class="ftr-top-left">
						<i class="fa fa-user" aria-hidden="true"></i>
					</div>
					<div class="ftr-top-right">
						<h4>Customer Info</h4>
					</div>

					<div class="clearfix"></div>

					<div class="panel panel-primary" style="margin-top: 20px">
						<div class="panel-heading">Change Password</div>
						<div class="panel-body">
							<p class="text-center text-success">${message }</p>
							<form method="POST">
								<div class="form-group">
									<label>Current Password</label> <input class="form-control"
										type="password" name="password" required minLength="6" />
								</div>
								<div class="form-group">
									<label>New Password</label> <input class="form-control"
										type="password" name="newPassword" required minLength="6" />
								</div>
								<div class="form-group">
									<label>Confirm New Password</label> <input class="form-control"
										type="password" name="reNewPassword" required minLength="6" />
								</div>
								<button class="btn btn-info btn-block">Change Password</button>
							</form>
						</div>
					</div>

					<div class="clearfix"></div>

					<table class="table table-bordered" style="margin-top: 5px;">
						<tbody>
							<tr>
								<td><label>Customer Name</label></td>
								<td>${customer.customerName }</td>
							</tr>
							<tr>
								<td><label>Address</label></td>
								<td>${customer.address }</td>
							</tr>
							<tr>
								<td><label>Phone Number</label></td>
								<td>${customer.phoneNumber }</td>
							</tr>
							<tr>
								<td><label>Customer Type </label></td>
								<td>${customer.customerType }</td>
							</tr>
							<tr>
								<td><label>Date Created </label></td>
								<td>${customer.dateCreated }</td>
							</tr>
						</tbody>
					</table>



					<div class="clearfix"></div>


				</div>
				<div class="col-md-8 ftr-top-grids">
					<div class="ftr-top-left">
						<i class="fa fa-truck" aria-hidden="true"></i>
					</div>
					<div class="ftr-top-right">
						<h4>Order Info</h4>

					</div>
					
					<table class="table table-responsive table-hover">
						<caption><h2>Your Order Detail</h2></caption>
						<thead>
							<tr>
								<th>Order Id</th>
								<th>Food Name</th>
								<th>Quantity</th>
								<th>Status</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${listDetails }" var="orderDetail">
								<tr>
									<td>${orderDetail.id.orderId}</td>
									<td>${orderDetail.food.foodName}</td>
									<td>${orderDetail.quantity}</td>
									<td>${orderDetail.status}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="clearfix"></div>
					<div class="row">
						<div class="col-sm-12">
							<ul class="pagination">
								<c:forEach var="i" begin="1" end="${count }">
									<c:if test="${page == i }">
										<li class="active"><a>${i }</a></li>
									</c:if>
									<c:if test="${page != i }">
										<li><a
											href="${pageContext.servletContext.contextPath}/History?page=${i}">${i }</a></li>
									</c:if>
								</c:forEach>
							</ul>
						</div>
					</div>


					<table class="table table-responsive table-hover">
						<caption><h2>Your order</h2></caption>
						<thead>
							<tr>
								<th>Id</th>
								<th>Order Type</th>
								<th>Status</th>
								<th>Date Created</th>
								<th>Date Delivery</th>
								<th>Address Delivery</th>
								<th>Total Price</th>
								<th>Note</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${list }" var="orderFood">
								<tr>
									<td>${orderFood.orderId}</td>
									<td>${orderFood.orderType}</td>
									<td>${orderFood.status}</td>
									<td>${orderFood.dateCreated}</td>
									<td>${orderFood.dateDelivery}</td>
									<td>${orderFood.addressDelivery}</td>
									<td>${orderFood.totalPrice}</td>
									<td>${orderFood.note}</td>
									<th><a class="btn btn-sm btn-info" 
									href="${pageContext.servletContext.contextPath}/History?page=${page}&orderId=${orderFood.orderId}">
									<i class="glyphicon glyphicon-edit"></i>
									</a></th>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="clearfix"></div>
					
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!-- //about-page -->
<!-- subscribe -->
<div class="subscribe agileits-w3layouts">
	<div class="container">
		<div class="col-md-6 social-icons w3-agile-icons">
			<h4>Keep in touch</h4>
			<ul>
				<li><a href="#" class="fa fa-facebook icon facebook"> </a></li>
				<li><a href="#" class="fa fa-twitter icon twitter"> </a></li>
				<li><a href="#" class="fa fa-google-plus icon googleplus">
				</a></li>
				<li><a href="#" class="fa fa-dribbble icon dribbble"> </a></li>
				<li><a href="#" class="fa fa-rss icon rss"> </a></li>
			</ul>
			<ul class="apps">
				<li><h4>Download Our app :</h4></li>
				<li><a href="#" class="fa fa-apple"></a></li>
				<li><a href="#" class="fa fa-windows"></a></li>
				<li><a href="#" class="fa fa-android"></a></li>
			</ul>
		</div>
		<div class="col-md-6 subscribe-right">
			<h3 class="w3ls-title">
				Subscribe to Our <br> <span>Newsletter</span>
			</h3>
			<form action="#" method="post">
				<input type="email" name="email" placeholder="Enter your Email..."
					required=""> <input type="submit" value="Subscribe">
				<div class="clearfix"></div>
			</form>
			<img src="images/i1.png" class="sub-w3lsimg" alt="" />
		</div>
		<div class="clearfix"></div>
	</div>
</div>
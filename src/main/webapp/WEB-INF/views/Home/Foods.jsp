<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>	
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!-- breadcrumb -->  
	<div class="container">	
		<ol class="breadcrumb w3l-crumbs">
			<li><a href="#"><i class="fa fa-home"></i> Home</a></li> 
			<li class="active">Dishes</li>
		</ol>
	</div>
	<!-- //breadcrumb -->
	<!-- products -->
	<div class="products">	 
		<div class="container">
			<div class="col-md-9 product-w3ls-right"> 
			
			
				<div class="row">
					<div class="col-sm-6 col-sm-offset-3">
						<ul class="pagination">
								<c:forEach var="i" begin = "1" end="${count }">
									<c:if test="${page == i }">
										<li class="active"><a>${i }</a></li>
									</c:if>
									<c:if test="${page != i }">
										<li><a href="${pageContext.servletContext.contextPath}/Foods?page=${i}&deptId=${deptId}&catId=${catId}">${i }</a></li>
									</c:if>
								</c:forEach>
						</ul>
					</div>
				</div>
				
				
				<div class="product-top">
					<h4>Food Collection</h4>
					<div class="clearfix"> </div>
				</div>
				
				<div class="products-row">
					<c:forEach items="${listFoods }" var="food">
					<div class="col-xs-6 col-sm-4 product-grids">
						<div class="flip-container">
							<div class="flipper agile-products">
								<div class="front"> 
									<img src="${food.food.image}" class="img-responsive" alt="img">
									<div class="agile-product-text">              
										<h5>${food.food.foodName }</h5>  
									</div> 
								</div>
								<div class="back">
									<h4>${food.food.foodName }</h4>
									
									<h6>${food.price}<sup>VND</sup></h6>
									<form id="f${food.id.foodId }">
										<input type="hidden" name="departmentId" value="${food.id.departmentId }">
										<input type="hidden" name="quantity" value="1"> 
										<input type='hidden' name='image' value="${food.food.image }"/>
										<input type="hidden" name="foodName" value="${food.food.foodName }"> 
										<input type="hidden" name="price" value="${food.price }"> 
										<button value="1" onclick="addToCart(${food.food.foodId})" type="button" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
										<span class="w3-agile-line"> </span>
										<a href="${pageContext.servletContext.contextPath}/DetailFood?foodId=${food.food.foodId}&deptId=${deptId}"  data-target="#myModal1">More</a>
									</form>
								</div>
							</div>
						</div> 
					</div>
					</c:forEach>
				
					<div class="clearfix"> </div>
				</div>
				
				<div class="row" style="margin-top:20px">
					<div class="col-sm-6 col-sm-offset-3">
						<ul class="pagination">
								<c:forEach var="i" begin = "1" end="${count }">
									<c:if test="${page == i }">
										<li class="active"><a>${i }</a></li>
									</c:if>
									<c:if test="${page != i }">
										<li><a href="${pageContext.servletContext.contextPath}/Foods?page=${i}&deptId=${deptId}&catId=${catId}">${i }</a></li>
									</c:if>
								</c:forEach>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-md-3 rsidebar">
				<div class="rsidebar-top">
					<div class="slider-left">
						<form method="GET" action="${pageContext.servletContext.contextPath}/SearchFoods">
							<input type="hidden" name="page" value="1"/>
							<input type="hidden" name="deptId" value="${deptId }"/>
							<input class="form-control" type="text" name="q"/>
							<button type="submit" class="btn btn-warning btn-block">Search</button>
						</form>	
					</div>
				</div>
				<div class="related-row">
					<h4>YOU MAY ALSO LIKE</h4>
					<div class="galry-like">  
						<a href="#" data-toggle="modal" data-target="#myModal1"><img src="images/s1.jpg" class="img-responsive" alt="img"></a>         
					</div>
				</div>
			</div>
			<div class="clearfix"> </div> 
		</div>
	</div>
	<!-- //products --> 
	<div class="container"> 
		<div class="w3agile-deals prds-w3text"> 
			<h5>Vestibulum maximus quam et quam egestas imperdiet. In dignissim auctor viverra.</h5>
		</div>
	</div>
	<!-- dishes -->
	<div class="w3agile-spldishes">
		<div class="container">
			<h3 class="w3ls-title">Special Foods</h3>
			<div class="spldishes-agileinfo">
				<div class="col-md-3 spldishes-w3left">
					<h5 class="w3ltitle">Staple Specials</h5>
					<p>Vero vulputate enim non justo posuere placerat Phasellus mauris vulputate enim non justo enim .</p>
				</div> 
				<div class="col-md-9 spldishes-grids">
					<!-- Owl-Carousel -->
					<div id="owl-demo" class="owl-carousel text-center agileinfo-gallery-row">
						<a href="products.html" class="item g1">
							<img class="lazyOwl" src="images/g1.jpg" title="Our latest gallery" alt=""/>
							<div class="agile-dish-caption">
								<h4>Duis congue</h4>
								<span>Neque porro quisquam est qui dolorem </span>
							</div>
						</a>
						<a href="products.html" class="item g1">
							<img class="lazyOwl" src="images/g2.jpg" title="Our latest gallery" alt=""/>
							<div class="agile-dish-caption">
								<h4>Duis congue</h4>
								<span>Neque porro quisquam est qui dolorem </span>
							</div>
						</a>
						<a href="products.html" class="item g1">
							<img class="lazyOwl" src="images/g3.jpg" title="Our latest gallery" alt=""/>
							<div class="agile-dish-caption">
								<h4>Duis congue</h4>
								<span>Neque porro quisquam est qui dolorem </span>
							</div>
						</a>
						<a href="products.html" class="item g1">
							<img class="lazyOwl" src="images/g4.jpg" title="Our latest gallery" alt=""/>
							<div class="agile-dish-caption">
								<h4>Duis congue</h4>
								<span>Neque porro quisquam est qui dolorem </span>
							</div>
						</a>
						<a href="products.html" class="item g1">
							<img class="lazyOwl" src="images/g5.jpg" alt=""/>
							<div class="agile-dish-caption">
								<h4>Duis congue</h4>
								<span>Neque porro quisquam est qui dolorem </span>
							</div>
						</a> 
						<a href="products.html" class="item g1">
							<img class="lazyOwl" src="images/g1.jpg" title="Our latest gallery" alt=""/>
							<div class="agile-dish-caption">
								<h4>Duis congue</h4>
								<span>Neque porro quisquam est qui dolorem </span>
							</div>
						</a>
						<a href="products.html" class="item g1">
							<img class="lazyOwl" src="images/g2.jpg" title="Our latest gallery" alt=""/>
							<div class="agile-dish-caption">
								<h4>Duis congue</h4>
								<span>Neque porro quisquam est qui dolorem </span>
							</div>
						</a>
						<a href="products.html" class="item g1">
							<img class="lazyOwl" src="images/g3.jpg" title="Our latest gallery" alt=""/>
							<div class="agile-dish-caption">
								<h4>Duis congue</h4>
								<span>Neque porro quisquam est qui dolorem </span>
							</div>
						</a>
					</div> 
				</div>  
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //dishes --> 
	<!-- modal --> 
	<div class="modal video-modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModal1">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">Ã</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<div class="col-md-5 modal_body_left">
							<img src="images/s1.jpg" alt=" " class="img-responsive">
						</div>
						<div class="col-md-7 modal_body_right single-top-right"> 
							<h3 class="item_name">France Special Dish</h3>
							<p>Proin placerat urna et consequat efficitur, sem odio blandit enim</p>
							<div class="single-rating">
								<ul>
									<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
									<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
									<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
									<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
									<li class="w3act"><i class="fa fa-star-o" aria-hidden="true"></i></li>
									<li class="rating">20 reviews</li>
									<li><a href="#">Add your review</a></li>
								</ul> 
							</div>
							<div class="single-price">
								<ul>
									<li>$18</li>  
									<li><del>$20</del></li> 
									<li><span class="w3off">10% OFF</span></li> 
									<li>Ends on : Dec,5th</li>
									<li><a href="#"><i class="fa fa-gift" aria-hidden="true"></i> Coupon</a></li>
								</ul>	
							</div> 
							<p class="single-price-text">Fusce a egestas nibh, eget ornare erat. Proin placerat, urna et consequat efficitur, sem odio blandit enim, sit amet euismod turpis est mattis lectus. Vestibulum maximus quam et quam egestas imperdiet. In dignissim auctor viverra. </p>
							<form action="#" method="post">
								<input type="hidden" name="cmd" value="_cart" />
								<input type="hidden" name="add" value="1" /> 
								<input type="hidden" name="w3ls_item" value="France Special" /> 
								<input type="hidden" name="amount" value="18.00" /> 
								<button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
							</form>
							<a href="#" class="w3ls-cart w3ls-cart-like"><i class="fa fa-heart-o" aria-hidden="true"></i> Add to Wishlist</a>
							<div class="single-page-icons social-icons"> 
								<ul>
									<li><h4>Share on</h4></li>
									<li><a href="#" class="fa fa-facebook icon facebook"> </a></li>
									<li><a href="#" class="fa fa-twitter icon twitter"> </a></li>
									<li><a href="#" class="fa fa-google-plus icon googleplus"> </a></li>
									<li><a href="#" class="fa fa-dribbble icon dribbble"> </a></li>
									<li><a href="#" class="fa fa-rss icon rss"> </a></li> 
								</ul>
							</div> 
						</div> 
						<div class="clearfix"> </div>
					</div>
				</section>
			</div>
		</div>
	</div> 
	<!-- //modal -->
	<!-- subscribe -->
	<div class="subscribe agileits-w3layouts"> 
		<div class="container">
			<div class="col-md-6 social-icons w3-agile-icons">
				<h4>Keep in touch</h4>  
				<ul>
					<li><a href="#" class="fa fa-facebook icon facebook"> </a></li>
					<li><a href="#" class="fa fa-twitter icon twitter"> </a></li>
					<li><a href="#" class="fa fa-google-plus icon googleplus"> </a></li>
					<li><a href="#" class="fa fa-dribbble icon dribbble"> </a></li>
					<li><a href="#" class="fa fa-rss icon rss"> </a></li> 
				</ul> 
				<ul class="apps"> 
					<li><h4>Download Our app : </h4> </li>
					<li><a href="#" class="fa fa-apple"></a></li>
					<li><a href="#" class="fa fa-windows"></a></li>
					<li><a href="#" class="fa fa-android"></a></li>
				</ul> 
			</div> 
			<div class="col-md-6 subscribe-right">
				<h3 class="w3ls-title">Subscribe to Our <br><span>Newsletter</span></h3>  
				<form action="#" method="post"> 
					<input type="email" name="email" placeholder="Enter your Email..." required="">
					<input type="submit" value="Subscribe">
					<div class="clearfix"> </div> 
				</form> 
				<img src="images/i1.png" class="sub-w3lsimg" alt=""/>
			</div>
			<div class="clearfix"> </div> 
		</div>
	</div>
	<!-- //subscribe --> 
	
	
	<script>
	function addToCart(foodId){
		console.log("food Id :" + foodId);
		const form = $('#f' + foodId);
		let departmentId = form.find('input[name="departmentId"]').val();
		let image = form.find('input[name="image"]').val();
		let quantity = form.find('input[name="quantity"]').val();
		let price = form.find('input[name="price"]').val();
		let foodName = form.find('input[name="foodName"]').val();
		
		if(sessionStorage.getItem('departmentId')){
			if(departmentId != sessionStorage.getItem('departmentId')){
				alert("You could not order in multiple Department!");
				return;
			}
		}
		else{
			sessionStorage.setItem('departmentId', departmentId);
		}
		
		let check = false;
		let product = {
			'foodId' : foodId,
			'price' : price,
			'image' : image,
			'quantity' : quantity,
			'foodName': foodName
		}
		let listCart = JSON.parse(sessionStorage.getItem('listCart')) || [];
		for(let i=0 ; i< listCart.length ;i++){
			if(listCart[i].foodId === product.foodId ){
				listCart[i].quantity = parseInt(listCart[i].quantity) + 1 ;
				check = true;
			}
		}
		if(!check){
			listCart.push(product);
		}
		
		
		sessionStorage.setItem('listCart', JSON.stringify(listCart));
		
		console.log('listcart' , listCart);
		console.log('ss', JSON.parse(sessionStorage.getItem('listCart')));
	}
	</script>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
	<div class="container">	
		<ol class="breadcrumb w3l-crumbs">
			<li><a href="${pageContext.servletContext.contextPath}/#"><i class="fa fa-home"></i> Home</a></li> 
			<li class="active">Menu</li>
		</ol>
	</div>
	<!-- //breadcrumb -->
	<!-- menu list -->   	
	<div class="wthree-menu">  
		<img src="images/i2.jpg" class="w3order-img" alt=""/>
		<div class="container">
			<h3 class="w3ls-title">Menu</h3>
			<p class="w3lsorder-text">Here your Staple Food Varieties</p>
			<div class="menu-agileinfo">  
			<c:forEach items="${listCategories }" var ="cat">
				<div class="col-md-4 col-sm-4 col-xs-6 menu-w3lsgrids"> 
					<a href="${pageContext.servletContext.contextPath}/Foods">${cat.categoryName }</a>
				</div> 
			</c:forEach>
				<div class="clearfix"> </div> 
			</div> 
			<div class="w3spl-menu">
				<h3 class="w3ls-title">Seasonal  Menu</h3>
				<p class="w3lsorder-text">Here your Staple Food Varieties</p>
				<div class="menu-agileinfo">  
					<div class="col-md-4 col-sm-4 col-xs-6 menu-w3lsgrids"> 
						<a href="${pageContext.servletContext.contextPath}/Foods">Fondue Savoyarde</a>
					</div> 
					<div class="col-md-4 col-sm-4 col-xs-6 menu-w3lsgrids"> 
						<a href="${pageContext.servletContext.contextPath}/Foods">Garbure</a>
					</div> 
					<div class="col-md-4 col-sm-4 col-xs-6 menu-w3lsgrids"> 
						<a href="${pageContext.servletContext.contextPath}/Foods">Poulet</a>
					</div> 
					<div class="col-md-4 col-sm-4 col-xs-6 menu-w3lsgrids"> 
						<a href="${pageContext.servletContext.contextPath}/Foods">Cherry Clafouti</a>
					</div> 
					<div class="col-md-4 col-sm-4 col-xs-6 menu-w3lsgrids"> 
						<a href="${pageContext.servletContext.contextPath}/Foods"> Spinach SoufflÃ©</a>
					</div> 
					<div class="col-md-4 col-sm-4 col-xs-6 menu-w3lsgrids"> 
						<a href="${pageContext.servletContext.contextPath}/Foods">Baeckeoffe</a>
					</div> 
					<div class="col-md-4 col-sm-4 col-xs-6 menu-w3lsgrids"> 
						<a href="${pageContext.servletContext.contextPath}/Foods">Ratatouille</a>
					</div> 
					<div class="col-md-4 col-sm-4 col-xs-6 menu-w3lsgrids"> 
						<a href="${pageContext.servletContext.contextPath}/Foods">Piperade</a>
					</div>  
					<div class="clearfix"> </div> 
				</div> 
			</div>
		</div> 
	</div>
	<!-- //menu list -->    
	<!-- add-products -->
	<div class="add-products">  
		<div class="container">
			<h3 class="w3ls-title w3ls-title1">Today's Offers</h3>
			<div class="add-products-row">
				<div class="w3ls-add-grids">
					<a href="${pageContext.servletContext.contextPath}/Foods"> 
						<h4>Get <span>10%<br>Cashback</span></h4>
						<h5>Special Offer Today Only</h5>
						<h6>Order Now <i class="fa fa-arrow-circle-right" aria-hidden="true"></i></h6>
					</a>
				</div>
				<div class="w3ls-add-grids w3ls-add-grids-right">
					<a href="${pageContext.servletContext.contextPath}/Foods"> 
						<h4>GET Upto<span><br>5% Offer</span></h4>
						<h5>On Order Lunch Today</h5>
						<h6>Order Now <i class="fa fa-arrow-circle-right" aria-hidden="true"></i></h6>
					</a>
				</div> 
				<div class="clearfix"> </div> 
			</div>  	 
		</div>
	</div>
	<!-- //add-products --> 
	<!-- subscribe -->
	<div class="subscribe agileits-w3layouts"> 
		<div class="container">
			<div class="col-md-6 social-icons w3-agile-icons">
				<h4>Keep in touch</h4>  
				<ul>
					<li><a href="${pageContext.servletContext.contextPath}/#" class="fa fa-facebook icon facebook"> </a></li>
					<li><a href="${pageContext.servletContext.contextPath}/#" class="fa fa-twitter icon twitter"> </a></li>
					<li><a href="${pageContext.servletContext.contextPath}/#" class="fa fa-google-plus icon googleplus"> </a></li>
					<li><a href="${pageContext.servletContext.contextPath}/#" class="fa fa-dribbble icon dribbble"> </a></li>
					<li><a href="${pageContext.servletContext.contextPath}/#" class="fa fa-rss icon rss"> </a></li> 
				</ul> 
				<ul class="apps"> 
					<li><h4>Download Our app : </h4> </li>
					<li><a href="${pageContext.servletContext.contextPath}/#" class="fa fa-apple"></a></li>
					<li><a href="${pageContext.servletContext.contextPath}/#" class="fa fa-windows"></a></li>
					<li><a href="${pageContext.servletContext.contextPath}/#" class="fa fa-android"></a></li>
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
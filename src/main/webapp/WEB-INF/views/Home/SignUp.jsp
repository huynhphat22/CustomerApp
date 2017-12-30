<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<div class="container">
	<ol class="breadcrumb w3l-crumbs">
		<li><a href="#"><i class="fa fa-home"></i> Home</a></li>
		<li class="active">Sign Up</li>
	</ol>
</div>
<!-- //breadcrumb -->
<!-- sign up-page -->
<div class="login-page about">
	<img class="login-w3img" src="images/img3.jpg" alt="">
	<div class="container">
		<h3 class="w3ls-title w3ls-title1">Sign Up to your account</h3>
		<c:forEach items="${errors }" var="error">
			<strong class="text-danger text-center"><c:out value="${error }"/></strong>
		</c:forEach>
		<strong class="text-success text-center">${message }</strong>
		<div class="login-agileinfo">
			<form:form action="${pageContext.servletContext.contextPath}/SignUp" method="post" commandName="customerForm">
				<form:input class="agile-ltext" type="text" path="customerName"
					placeholder="Your Name" required="true"/> 
				<form:input
					class="agile-ltext" type="text" path="phoneNumber"
					placeholder="Your Phone Number" required="true"/> 
				<form:input
					class="agile-ltext" type="password" path="password"
					placeholder="Password" required="true"/> 
				<input
					class="agile-ltext" type="password" name="rePassword"
					placeholder="Confirm Password" required="true"/>
				<form:input class="agile-ltext" type="text" path="address"
					placeholder="Address"  required="false"/>
				<input type="submit" value="Sign Up">
			</form:form>
			<p>
				Already have an account? <a href="${pageContext.servletContext.contextPath}/Login"> Login Now!</a>
			</p>
		</div>
	</div>
</div>
<!-- //sign up-page -->
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
				Subscribe to Our <br>
				<span>Newsletter</span>
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
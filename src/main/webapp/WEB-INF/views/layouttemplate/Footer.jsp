

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="footer agileits-w3layouts">
    <div class="container">
            <div class="w3_footer_grids">
                    <div class="col-xs-6 col-sm-3 footer-grids w3-agileits">
                            <h3>company</h3>
                            <ul>
                                    <li><a href="about.html">About Us</a></li>
                                    <li><a href="contact.html">Contact Us</a></li>  
                                    <li><a href="careers.html">Careers</a></li>  
                                    <li><a href="help.html">Partner With Us</a></li>   
                            </ul>
                    </div> 
                    <div class="col-xs-6 col-sm-3 footer-grids w3-agileits">
                            <h3>help</h3>
                            <ul>
                                    <li><a href="faq.html">FAQ</a></li> 
                                    <li><a href="login.html">Returns</a></li>   
                                    <li><a href="login.html">Order Status</a></li> 
                                    <li><a href="offers.html">Offers</a></li> 
                            </ul>  
                    </div>
                    <div class="col-xs-6 col-sm-3 footer-grids w3-agileits">
                            <h3>policy info</h3>
                            <ul>  
                                    <li><a href="terms.html">Terms & Conditions</a></li>  
                                    <li><a href="privacy.html">Privacy Policy</a></li>
                                    <li><a href="login.html">Return Policy</a></li> 
                            </ul>   
                    </div>
                    <div class="col-xs-6 col-sm-3 footer-grids w3-agileits">
                            <h3>Menu</h3> 
                            <ul>
                                    <li><a href="menu.html">All Day Menu</a></li> 
                                    <li><a href="menu.html">Lunch</a></li>
                                    <li><a href="menu.html">Dinner</a></li>
                                    <li><a href="menu.html">Flavours</a></li> 
                            </ul>  
                    </div> 
                    <div class="clearfix"> </div>
            </div>
    </div> 
</div>
<div class="copyw3-agile"> 
    <div class="container">
            <p>&copy; 2017 Staple Food. All rights reserved | Design by <a href="http://w3layouts.com/">W3layouts</a></p>
    </div>
</div>

<script src="js/minicart.js"></script>
	<script>
        w3ls.render();

        w3ls.cart.on('w3sb_checkout', function (evt) {
        	var items, len, i;

        	if (this.subtotal() > 0) {
        		items = this.items();

        		for (i = 0, len = items.length; i < len; i++) { 
        		}
        	}
        });
    </script>  
	<!-- //cart-js -->	
	<!-- Owl-Carousel-JavaScript -->
	<script src="js/owl.carousel.js"></script>
	<script>
		$(document).ready(function() {
			$("#owl-demo").owlCarousel ({
				items : 3,
				lazyLoad : true,
				autoPlay : true,
				pagination : true,
			});
		});
	</script>
	<!-- //Owl-Carousel-JavaScript -->  
	<!-- start-smooth-scrolling -->
	<script src="js/SmoothScroll.min.js"></script>  
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>	
	<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
			
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
	</script>
	<!-- //end-smooth-scrolling -->	  
	<!-- smooth-scrolling-of-move-up -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
			var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
			};
			*/
			
			$().UItoTop({ easingType: 'easeOutQuart' });
			
		});
	</script>
	<!-- //smooth-scrolling-of-move-up --> 
	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/bootstrap.js"></script>


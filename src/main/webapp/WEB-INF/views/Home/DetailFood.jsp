 <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
 <div class="container">
        <div class="col-sm-12">
            <section>
                <div class="modal-body">
                    <div class="col-md-5 modal_body_left">
                        <img src="${pageContext.servletContext.contextPath}/images/${foodDetail.food.image}" alt=" " class="img-responsive">
                    </div>
                    <div class="col-md-7 modal_body_right single-top-right"> 
                        <h3 class="item_name">${foodDetail.food.foodName }</h3>
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
                                <li>VND${foodDetail.price }</li>  
                                <li><del>VND${foodDetail.price }</del></li> 
                                <li><span class="w3off">10% OFF</span></li> 
                                <li>Ends on : Dec,5th</li>
                                <li><a href="#"><i class="fa fa-gift" aria-hidden="true"></i> Coupon</a></li>
                            </ul>	
                        </div> 
                        <p class="single-price-text">Fusce a egestas nibh, eget ornare erat. Proin placerat, urna et consequat efficitur, sem odio blandit enim, sit amet euismod turpis est mattis lectus. Vestibulum maximus quam et quam egestas imperdiet. In dignissim auctor viverra. </p>
                        <form action="#" method="post">
                            <input type="hidden" name="cmd" value="_cart" />
                            <input type="hidden" name="add" value="1" /> 
                            <input type="hidden" name="w3ls_item" value="${foodDetail.food.foodName }" /> 
                            <input type="hidden" name="amount" value="${foodDetail.price }" /> 
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

function renderCart(cart) {

	let output = '';
	for (let i = 0; i < cart.length; i++) {
		output += '<li id="l'
				+ cart[i].id
				+ '" class="list-group-item"><table ><tr><td><img src="images/'
				+ cart[i].image
				+ '" width="100"/></td>'
				+ '<td><h5>'
				+ cart[i].foodName
				+ '</h5></td><td><table><tr><td>'
				+ '<input class="form-control" value="'
				+ cart[i].quantity
				+ '"type="text" name="quantity" /></td><td>'
				+ '<button class="btn btn-default" onclick="updateItem('
				+ cart[i].id
				+ ')" type="button">Update</button></td></tr></table></td><td><form action="">'
				+ '<button class="btn btn-default" type="button" onclick="removeItem('
				+ cart[i].id + ')">x</button></form></td></tr>'
				+ '<tr><td colspan="2">Price: ' + cart[i].price + '$</td>'
				+ '<td colspan="2">Total : '
				+ (cart[i].price * cart[i].quantity)
				+ '$</td></tr></table></li>'
	}

	return output;

}

function removeItem(id) {
	let cart = JSON.parse(sessionStorage.getItem('listCart')) || [];

	for (let i = 0; i < cart.length; i++) {
		if (cart[i].id == id) {
			console.log('oc cho');
			cart.splice(i, 1);
			console.log('cart1', cart);
			break;
		}
	}
	sessionStorage.setItem('listCart', JSON.stringify(cart));
	console.log('sscar', cart);
	$('#cart-table').empty();
	document.getElementById('cart-table').insertAdjacentHTML('beforeend',
			renderCart(cart));
	if(cart.length == 0){
		sessionStorage.clear();
	}
}

function updateItem(id) {
	let cart = JSON.parse(sessionStorage.getItem('listCart')) || [];
	let quantity = $('#l' + id).find('input[name="quantity"]').val();
	for (let i = 0; i < cart.length; i++) {
		if (cart[i].id == id) {
			cart[i].quantity = quantity;
			break;
		}
	}
	sessionStorage.setItem('listCart', JSON.stringify(cart));
	console.log('sscar', cart);
	$('#cart-table').empty();
	document.getElementById('cart-table').insertAdjacentHTML('beforeend',
			renderCart(cart));
	alert('Update cart successfully');
}

jQuery(document).ready(function($) {
	$("#owl-demo").owlCarousel({
		items : 3,
		lazyLoad : true,
		autoPlay : true,
		pagination : true,
	});

	$(".scroll").click(function(event) {
		event.preventDefault();

		$('html,body').animate({
			scrollTop : $(this.hash).offset().top
		}, 1000);
	});
});

$(document).ready(function() {
	/*
	 * var defaults = { containerID: 'toTop', // fading element id
	 * containerHoverID: 'toTopHover', // fading element hover id scrollSpeed:
	 * 1200, easingType: 'linear' };
	 */

	$().UItoTop({
		easingType : 'easeOutQuart'
	});

});
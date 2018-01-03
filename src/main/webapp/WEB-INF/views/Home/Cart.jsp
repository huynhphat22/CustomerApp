<div class="products">
	<div class="container">
		<div class="row">
			<form>
				<div class="col-sm-6">
					<h2>Information</h2>
					<div class="form-group">
						<label>Address </label> <input id="address" required="true"
							minlength="10" type="text" class="form-control" />
					</div>
					<div class="form-group">
						<label>Note </label> <input id="note" type="text" value=""
							class="form-control" />
					</div>
				</div>
				<div class="col-sm-6">
					<h2>Detail Product</h2>

					<ul class="list-group" id="cart-table">

					</ul>
					<button onclick="order()" type="button"
						class="btn btn-block btn-info">ORDER</button>
				</div>
			</form>
		</div>
	</div>
</div>



<script>
	$(document).ready(() => {
		const cart = JSON.parse(sessionStorage.getItem('listCart')) || [];
		console.log('cart', cart);
		var output = renderCart(cart);

		document.getElementById('cart-table').insertAdjacentHTML('beforeend', output);

	});

	function order() {
		if (!sessionStorage.getItem("listCart")) {
			console.log("Đơn hàng rỗng");
			return;
		}

		const address = document.getElementById("address").value;
		const note = document.getElementById("note").value;
		const departmentId = sessionStorage.getItem("departmentId");
		const orderInfo = {
			customerId: 0,
			departmentId : departmentId,
			orderType: "App",
			status: "Unapproved",
			addressDelivery: address,
			dateDelivery : new Date(),
			note : note
		}


		const cartInfo = {
			orderInfo: orderInfo,
			listFoodInfo: JSON.parse(sessionStorage.getItem("listCart"))
		}

		console.log("cart Info", cartInfo);

		/*$.ajax({
			url: "http://localhost:8080/JDS-CustomerApp/api/order",
			type: 'POST',
			headers: { 
				'Accept': 'application/json',
				'Content-Type': 'application/json' 
			},
			dataType: 'json',
			data: JSON.stringify(cartInfo),
			success: function (result) {
				sessionStorage.clear();
				alert("Thanh cong");
				window.location.href="http://localhost:8080/JDS-CustomerApp/Login";
			}
		});*/
		
		$.post("http://localhost:8080/JDS-CustomerApp/api/order",JSON.stringify(cartInfo),
		function(data, status){
			alert("Data: " + data + "\nStatus: " + status);
		});
	}

</script>
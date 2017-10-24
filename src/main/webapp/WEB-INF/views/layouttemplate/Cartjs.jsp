<%-- 
    Document   : cartjs
    Created on : Oct 23, 2017, 7:12:32 PM
    Author     : HuynhTanPhat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

package com.jds.jds.customerapp.RestController;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.jds.jds.customerapp.Dao.MenuDepartmentDAO;
import com.jds.jds.customerapp.Dao.OrderDetailDAO;
import com.jds.jds.customerapp.Dao.OrderFoodDAO;
import com.jds.jds.customerapp.Entity.CartInfo;
import com.jds.jds.customerapp.Entity.FoodInfo;
import com.jds.jds.customerapp.Model.Customer;
import com.jds.jds.customerapp.Model.MenuDepartment;
import com.jds.jds.customerapp.Model.MenuDepartmentId;
import com.jds.jds.customerapp.Model.OrderDetail;
import com.jds.jds.customerapp.Model.OrderDetailId;
import com.jds.jds.customerapp.Model.OrderFood;

@RestController
public class RestOrderController {
	@Autowired
	private OrderFoodDAO orderFoodDAO;
	@Autowired
	private OrderDetailDAO orderDetailDAO;
	@Autowired
	private MenuDepartmentDAO menuDepartmentDAO;

	
	@RequestMapping(value = "/api/order", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<Void> paginate(@RequestBody CartInfo cartInfo) {
		
		final Calendar cal = Calendar.getInstance();
		cal.add(cal.DATE, 3);

		ServletRequestAttributes attr = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
		HttpSession session = attr.getRequest().getSession();
		Customer customer = (Customer) session.getAttribute("customer");
		if (customer == null) {
			return new ResponseEntity<>(HttpStatus.NOT_FOUND);
		}

		System.out.println("Co zo 1");

		OrderFood orderFood = cartInfo.getOrderInfo();
		List<FoodInfo> listFoodInfo = cartInfo.getListFoodInfo();
		List<OrderDetail> listOrderDetail = new ArrayList<OrderDetail>();

		orderFood.setCustomerId(customer.getCustomerId());
		orderFood.setDateCreated(new Date());
		orderFood.setDateDelivery(cal.getTime());
		orderFood.setFlags(true);
		System.out.println("address : " + orderFood.getAddressDelivery());

		int total = 0;
		try {
			this.orderFoodDAO.save(orderFood);
			System.out.println("Thanh cong1 " + orderFood.getOrderId());
			try {
				for (FoodInfo foodInfo : listFoodInfo) {
					MenuDepartment md = this.menuDepartmentDAO.findById(
							new MenuDepartmentId(orderFood.getDepartmentId(), foodInfo.getFoodId()));

					OrderDetailId orderDetailId = new OrderDetailId(orderFood.getOrderId(),
							foodInfo.getFoodId());
					OrderDetail orderDetail = new OrderDetail(orderDetailId, foodInfo.getQuantity(), "ok", new Date(),
							true);
					this.orderDetailDAO.save(orderDetail);
					total = total + (md.getPrice() * orderDetail.getQuantity());
					System.out.println("Thanh cong");
				}
				orderFood.setTotalPrice(total);
				this.orderFoodDAO.update(orderFood);
			} catch (Exception e) {
				this.orderFoodDAO.delete(orderFood.getOrderId());
				return new ResponseEntity<Void>(HttpStatus.BAD_REQUEST);
			}
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return new ResponseEntity<Void>(HttpStatus.NOT_FOUND);
		}
		System.out.println("thông cành");
		return new ResponseEntity<Void>(HttpStatus.OK);
	}
}

package com.khanh.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.khanh.service.ShoppingCartService;
import com.khanh.bean.Item;
import com.khanh.dao.AccountDAO;
import com.khanh.dao.OrderDAO;
import com.khanh.dao.ProductDAO;
import com.khanh.entity.Account;
import com.khanh.entity.Order;
import com.khanh.entity.OrderDetail;
import com.khanh.service.SessionService;

@Controller
public class ShoppingCartController {
	@Autowired
	ShoppingCartService cart; // 1. tiêm Spring Bean đã viết ở bài trước
	@Autowired
	SessionService session;
	@Autowired
	AccountDAO accountDao;
	@Autowired
	OrderDAO orderDao;
	@Autowired
	ProductDAO productDao;
	
	//2. xem giỏ hàng
	@RequestMapping("/cart/view")
	public String view(Model model) {		model.addAttribute("Total", cart.getAmount());
		model.addAttribute("cart", cart);
		return "cart/index"; //3. view lên trang giỏ hảng index
	}
	
	///////////////////////////////////
	
	@RequestMapping("/cart/add/{id}")
	public String add(@PathVariable("id") Integer id) {
		cart.add(id);
		return "redirect:/cart/view"; // hiển thị giỏ hàng
	}
	@RequestMapping("/cart/remove/{id}")
	public String remove(@PathVariable("id") Integer id) {
		cart.remove(id);
		return "redirect:/cart/view";
	}
	@RequestMapping("/cart/update/{id}")
	public String update(@PathVariable("id") Integer id, 
	@RequestParam("qty") Integer qty) {
		cart.update(id, qty);
		return "redirect:/cart/view";
	}
	@RequestMapping("/cart/clear")
	public String clear() {
		cart.clear();
		return "redirect:/cart/view";
	}
	
	@RequestMapping("/cart/checkout")
	public String checkout() {
		// lấy username để login
		String username = session.get("username");
		if (username==null) {
			return "redirect:/account/login";		}
		Account currentAcc = null;
		// nếu username khớp thì tt xử lí
		if (accountDao.findById(username).isPresent()) {
			currentAcc = accountDao.findById(username).get();
			Order ord = new Order();
			ord.setAccount(currentAcc);
			ord.setCreateDate(new Date());
			ord.setAddress("123");
			List<OrderDetail> details = new ArrayList<>();
			// duyệt tất cả sp có trong giỏ
			for (Item item : cart.getItems()) {
				OrderDetail od = new OrderDetail();
				od.setOrder(ord);
				productDao.findById(item.getId()).ifPresent(p->{
					od.setProduct(p);
				});
				od.setPrice(item.getPrice());
				od.setQuantity(item.getQty());
				details.add(od);
			}
			ord.setOrderDetails(details);
			orderDao.save(ord);
			cart.clear();
		}
		
		return "redirect:/cart/view";
	}
}

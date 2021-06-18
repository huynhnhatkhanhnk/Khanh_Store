package com.khanh.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.khanh.entity.Product;
import com.khanh.bean.MailInfo;
import com.khanh.dao.ProductDAO;
import com.khanh.service.MailerService;
import com.khanh.service.SessionService;
import com.khanh.service.ShoppingCartService;

@Controller
public class HomeController {
	@Autowired
	ProductDAO dao;
	@Autowired
	SessionService session;
	@Autowired
	ShoppingCartService cart; // 1. tiêm Spring Bean đã viết ở bài trước
	@Autowired
	MailerService mailer;
	
	
	@RequestMapping("/home/index")
	public String index(Model model, 
			@RequestParam("keywords") Optional<String> kw,
			@RequestParam("p") Optional<Integer> p) {		
		//tìm theo keywords
		String kwords = kw.orElse(session.get("keywords", ""));
		session.set("keywords", kwords);
		Pageable pageable = PageRequest.of(p.orElse(0), 8);
		Page<Product> page = dao.findByKeywords("%"+kwords+"%", pageable);
		model.addAttribute("page", page);	
		
		return "home/index";
	}	
	
}

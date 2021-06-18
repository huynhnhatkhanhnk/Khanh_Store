package com.khanh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.khanh.dao.AccountDAO;
import com.khanh.entity.Account;

@Controller
public class EditACController {
@Autowired
AccountDAO dao;

//hàm 1
	@RequestMapping("/editac/index")
	public String index(Model model) {
		Account item = new Account();
		model.addAttribute("item", item);
		List<Account> items = dao.findAll();
		model.addAttribute("items", items);
		return "editac/index";
		
	}
	
	// hàm 2
	@RequestMapping("/editac/edit/{username}")
	public String edit(Model model, @PathVariable("username") String username) {
		Account item = dao.findById(username).get();
		model.addAttribute("item", item);
		List<Account> items = dao.findAll();
		model.addAttribute("items", items);
		return "editac/index";
	}

	// hàm 3
	@RequestMapping("/editac/create")
	public String create(Account item) {
		dao.save(item);
		return "redirect:/editac/index";
	}

	// hàm 4
	@RequestMapping("/editac/update")
	public String update(Account item) {
		dao.save(item);
		return "redirect:/editac/edit/" + item.getUsername();
	}

	// hàm 5
	@RequestMapping("/editac/delete/{username}")
	public String delete(@PathVariable("username") String username) {
		dao.deleteById(username);
		return "redirect:/editac/index";
	}
	
}

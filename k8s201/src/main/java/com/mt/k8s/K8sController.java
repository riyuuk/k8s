package com.mt.k8s;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class K8sController {
	
	@Autowired
	private K8sService service;
	
	@RequestMapping(value = "/" , method = RequestMethod.GET)
	private String indexPage(Model model) {
		System.out.println("Hello");
		model.addAttribute("user", new K8s());
		return "index";
	}

	@RequestMapping(value = "/addUser" , method = RequestMethod.POST)
	private String newUser(@ModelAttribute(value = "user") K8s user, Model model) {
		List<K8s> list = service.addNewUser(user);
		model.addAttribute("list", list);
		return "added";
	}
}

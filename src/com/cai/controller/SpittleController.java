package com.cai.controller;

import java.util.Map;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cai.model.Spitter;

@Controller
@RequestMapping(value = "/spittle")
public class SpittleController {

	@RequestMapping(method = RequestMethod.GET)
	public String home(@RequestParam int count) {
		System.out.println("count:" + count + "------------------------------------>");
		return "home";
	}

	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public String homeByPathVariable(@PathVariable int id, Map model) {
		System.out.println("pathVariable:" + id + "------------------------------------>");
		return "home";
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String showRegistrationForm(Map model) {
		model.put("spitter", new Spitter());
		return "registerForm";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String processRegistration(@Valid Spitter spitter, Errors errors, Map model) {
		if (errors.hasErrors()) {
			// model.put("errorInfo", "validation has broke.......");
			// model.put("errors",errors);
			return "registerForm";
		}
		return "redirect:/spittle/" + spitter.getUsername();
	}
}

package com.snowski.controller;

import com.snowski.validator.producerValidator.ProducerValidatorMessages;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.snowski.entity.Producer;
import com.snowski.service.ProducerService;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class ProducerController {
	@Autowired
	private ProducerService producerService;
	
	@GetMapping("/producer")
	public String producer(Model model){
		model.addAttribute("producers", producerService.findAll());
		model.addAttribute("producer", new Producer());
		return "views-admin-producer";
	}
	
//	@PostMapping("/producer")
//	public String producer(@RequestParam String name, @RequestParam String description,
//			@RequestParam Integer numberOfProducts){
//		producerService.save(new Producer(name, description, numberOfProducts));
//
//		return "redirect:/producer";
//	}

	@PostMapping("/producer") // using spring forms
	public String producer(@ModelAttribute Producer producer, Model model, @RequestParam MultipartFile image){
		try {
			producerService.save(producer, image);
		} catch (Exception e) {

			if (e.getMessage().equals(ProducerValidatorMessages.NAME_FIELD_INCORRECT)) {
				model.addAttribute("nameException", e.getMessage());
			} else if (e.getMessage().equals(ProducerValidatorMessages.DESCRIPTION_INCORRECT)) {
				model.addAttribute("descriptionException", e.getMessage());
			} else if (e.getMessage().equals(ProducerValidatorMessages.NUMBER_OF_PRODUCTS_INCORRECT)) {
				model.addAttribute("numberOfProductsException", e.getMessage());
			}

			return "views-admin-producer";
		}


		return "redirect:/views-admin-producer";
	}
	
	@GetMapping("/deleteProducer/{id}")
	public String delete(@PathVariable int id) {
		producerService.delete(id);
		return "redirect:/views-admin-producer";
	}
}

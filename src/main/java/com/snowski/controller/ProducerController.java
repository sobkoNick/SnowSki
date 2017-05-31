package com.snowski.controller;

import com.snowski.validator.producerValidator.ProducerValidatorMessages;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.snowski.entity.Producer;
import com.snowski.service.ProducerService;

@Controller
public class ProducerController {
	@Autowired
	private ProducerService producerService;
	
	@GetMapping("/producer")
	public String producer(Model model){
		model.addAttribute("producers", producerService.findAll());
		model.addAttribute("producer", new Producer());
		return "producer";
	}
	
//	@PostMapping("/producer")
//	public String producer(@RequestParam String name, @RequestParam String description,
//			@RequestParam Integer numberOfProducts){
//		producerService.save(new Producer(name, description, numberOfProducts));
//
//		return "redirect:/producer";
//	}

	@PostMapping("/producer") // using spring forms
	public String producer(@ModelAttribute Producer producer, Model model){
		try {
			producerService.save(producer);
		} catch (Exception e) {

			if (e.getMessage().equals(ProducerValidatorMessages.NAME_FIELD_INCORRECT)) {
				model.addAttribute("nameException", e.getMessage());
			} else if (e.getMessage().equals(ProducerValidatorMessages.DESCRIPTION_INCORRECT)) {
				model.addAttribute("descriptionException", e.getMessage());
			} else if (e.getMessage().equals(ProducerValidatorMessages.NUMBER_OF_PRODUCTS_INCORRECT)) {
				model.addAttribute("numberOfProductsException", e.getMessage());
			}

			return "producer";
		}


		return "redirect:/producer";
	}
	
	@GetMapping("/deleteProducer/{id}")
	public String delete(@PathVariable int id) {
		producerService.delete(id);
		return "redirect:/producer";
	}
}

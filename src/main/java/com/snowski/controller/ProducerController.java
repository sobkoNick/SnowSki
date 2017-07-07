package com.snowski.controller;

import com.snowski.entity.Category;
import com.snowski.validator.producerValidator.ProducerValidatorMessages;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
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
	public String producer(Model model, @PageableDefault Pageable pageable){
		model.addAttribute("producers", producerService.findAllPages(pageable));
		model.addAttribute("producer", new Producer());
		return "views-admin-producer";
	}

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
		return "redirect:/producer";
	}
	
	@GetMapping("/deleteProducer/{id}")
	public String delete(@PathVariable int id) {
		producerService.delete(id);
		return "redirect:/producer";
	}

	@GetMapping("/updateProducer/{id}")
	public String updateProducer(@PathVariable int id, Model model) {
		model.addAttribute("updateProducer", producerService.findOne(id));
		return "views-admin-updateProducer";
	}

	@PostMapping("/updateProducer")
	public String fullUpdate(@ModelAttribute Producer producer) {
		producerService.fullUpdate(producer);
		return "redirect:/producer";
	}
}

package com.snowski.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	public String producer(Producer producer){
		producerService.save(producer);

		return "redirect:/producer";
	}
	
	@GetMapping("/deleteProducer/{id}")
	public String delete(@PathVariable int id) {
		producerService.delete(id);
		return "redirect:/producer";
	}
}

package io.spring.cloud.samples.fortuneteller.ui.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import io.spring.cloud.samples.fortuneteller.ui.services.fortunes.Fortune;
import io.spring.cloud.samples.fortuneteller.ui.services.fortunes.FortuneService;

@RestController
public class UiController {

    @Autowired
    FortuneService service;
    
	@Value("${greeting}")
	String greeting;

    @RequestMapping("/greeting")
    public String getGreeting() {
 	    return greeting;
	}

    @RequestMapping("/random")
    public Fortune randomFortune() {
        return service.randomFortune();
    }
}

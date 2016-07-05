package io.spring.cloud.samples.fortuneteller.ui.services.fortunes;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.client.loadbalancer.LoadBalanced;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.netflix.hystrix.contrib.javanica.annotation.HystrixCommand;

@Service
public class FortuneService {

	// In Spring Cloud Brixton release and after, a RestTemplate is not auto injected
	@Bean
	@LoadBalanced
	public RestTemplate restTemplate() {
	   return new RestTemplate();
	}
	
    @Autowired
    RestTemplate restTemplate;

    @HystrixCommand(fallbackMethod = "fallbackFortune")
    public Fortune randomFortune() {
        return restTemplate.getForObject("http://fortune/random", Fortune.class);
    }

    private Fortune fallbackFortune() {
        return new Fortune(42L, "Your future is unclear.");
    }
}

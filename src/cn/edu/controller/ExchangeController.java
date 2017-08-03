package cn.edu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.domain.Exchange;
import cn.edu.service.ExchangeService;

@Controller
@RequestMapping("/exchange")
public class ExchangeController {
	@Autowired
	private ExchangeService exchangeService;
	@RequestMapping("/data")
	public @ResponseBody List<Exchange> getData(){
		return exchangeService.getData();
		
	}
}

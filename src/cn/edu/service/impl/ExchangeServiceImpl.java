package cn.edu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.dao.ExchangeMapper;
import cn.edu.domain.Exchange;
import cn.edu.domain.ExchangeExample;
import cn.edu.domain.ExchangeExample.Criteria;
import cn.edu.service.ExchangeService;
@Service
public class ExchangeServiceImpl implements ExchangeService {
	@Autowired
	private ExchangeMapper exchangeMapper;
	@Override
	public List<Exchange> getData() {
		ExchangeExample example=new ExchangeExample();
		Criteria createCriteria = example.createCriteria();
		createCriteria.andTypeEqualTo("buy");
		return exchangeMapper.selectByExample(example);
	}

}

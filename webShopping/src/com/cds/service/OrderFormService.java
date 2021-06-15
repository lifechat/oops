package com.cds.service;

import java.util.List;
import com.cds.po.OrderForm;

public interface OrderFormService {
//	和OrderFormDao的方法一样，可以封装，因为这边只是调用
	public void save(OrderForm user);
	public void delete(OrderForm id);
	public OrderForm findOrderFormById(int id);
	public List<OrderForm> findAllOrderForms();
	public void update(OrderForm orderForm);
	public OrderForm queryOrderForm(int orderFormId, String username,
			String submitTime, String consignmentTime);
	public List<OrderForm> findOrderFormByUserName(String username); 
	
}

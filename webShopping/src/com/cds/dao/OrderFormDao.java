package com.cds.dao;

import java.util.List;

import com.cds.po.OrderForm;
import com.cds.po.User;

public interface OrderFormDao {
	public void save(OrderForm orderForm);
	public void delete(OrderForm orderForm);
	public OrderForm findOrderFormById(int id);
	public List<OrderForm> findAllOrderForms();
	public void update(OrderForm orderForm);
	public OrderForm queryOrderForm(int orderFormId, String username,
			String submitTime, String consignmentTime);
	public List<OrderForm> findOrderFormByUserName(String username);
	
}

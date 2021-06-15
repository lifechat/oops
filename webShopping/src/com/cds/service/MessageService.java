package com.cds.service;

import java.util.Date;
import java.util.List;

import com.cds.po.Message;

public interface MessageService {
//	和MessageDao的方法一样，可以封装，因为这边只是调用
	public void save(Message message);
	public void delete(Message message);
	public Message findMessageById(int id);
	public List<Message> findAllMessages();
	public Message queryMessage(int messageId, String username,
			String messagetitle);
	
}

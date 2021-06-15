package com.cds.dao;

import java.util.Date;
import java.util.List;

import com.cds.po.Message;

public interface MessageDao {
	public void save(Message message);
	public void delete(Message message);
	public Message findMessageById(int id);
	public List<Message> findAllMessages();
	public Message queryMessage(int messageId, String username,
			String messagetitle);
	
}

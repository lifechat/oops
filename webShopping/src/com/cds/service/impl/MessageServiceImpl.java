package com.cds.service.impl;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Component;
import com.cds.dao.MessageDao;
import com.cds.po.Message;

import com.cds.service.MessageService;

//把类交给spring管理(如同配置bean节点)此类受spring事务管理
@Component("messageServiceImpl")
public class MessageServiceImpl implements MessageService {
	//要调用dao层代码,所以要有MessageDao的对象，把其实现类靠spring注入
	@Resource(name="messageDaoImpl")
	private MessageDao messageDao;
	public MessageDao getMessageDao() {
		return messageDao;
	}

	public void setMessageDao(MessageDao messageDao) {
		this.messageDao = messageDao;
	}

	public void delete(Message message) {
		this.messageDao.delete(message);

	}
	public List<Message> findAllMessages() {
		return this.messageDao.findAllMessages();
	}
	public Message findMessageById(int id) {
		
		return this.messageDao.findMessageById(id);
	}

	public void save(Message message) {
		this.messageDao.save(message);
		
	}

	public Message queryMessage(int messageId, String username,
			String messagetitle) {

		return this.messageDao.queryMessage(messageId,username,messagetitle);
	}

}

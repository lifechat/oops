package com.cds.dao.impl;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;


import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.cds.dao.MessageDao;
import com.cds.po.Message;

@Component("messageDaoImpl")
public class MessageDaoImpl implements MessageDao {
//使用spring对Hibernate的模版 HibernateTemplate
	@Resource(name="hibernateTemplate")
	private HibernateTemplate hibernateTemplate;
	
	public void delete(Message message) {
	hibernateTemplate.delete(message);
	}
	@SuppressWarnings("unchecked")
	public List<Message> findAllMessages() {
		String hql = "from Message";
		return (List<Message>)hibernateTemplate.find(hql);
	}

	public Message findMessageById(int id) {
		Message message = (Message)hibernateTemplate.get(Message.class, id);
		return message;
	}

	public void save(Message message) {
		System.out.println(message);
	 hibernateTemplate.save(message);
	}

	public HibernateTemplate getHibernateTmeplate() {
		return hibernateTemplate;
	}
	public void setHibernateTmeplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	public Message queryMessage(int messageId, String username,
			String messagetitle) {
		
		return (Message)hibernateTemplate.getSessionFactory().openSession().createQuery(
		"from Message m where m.messageId=? and m.username=? and m.messagetitle=? ").setParameter(
				0, messageId).setParameter(1, username).setParameter(2, messagetitle).uniqueResult();

	}
	
}

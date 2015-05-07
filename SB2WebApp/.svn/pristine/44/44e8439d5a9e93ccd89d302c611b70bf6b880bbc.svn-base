package com.antra.config;

import javax.jms.ConnectionFactory;

import org.apache.activemq.ActiveMQConnectionFactory;
import org.apache.activemq.command.ActiveMQDestination;
import org.apache.activemq.command.ActiveMQQueue;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jms.core.JmsOperations;
import org.springframework.jms.core.JmsTemplate;

/**
 * Spring JMS configuration class used to test JMS module.
 * @author Lester
 *
 */
@Configuration
public class JmsConfig {
	@Bean
	public ConnectionFactory connectionFactory(){
		ActiveMQConnectionFactory cf=new ActiveMQConnectionFactory("tcp://localhost:61616");
		return cf;
	}
	
	@Bean(name="queue")
	public ActiveMQDestination activeMQQueue(){
		return new ActiveMQQueue("jmsQueue");
	}
	
	@Bean(name="topic")
	public ActiveMQDestination activeMQTopic(){
		return new ActiveMQQueue("jmsTopic");
	}
	
	@Bean
	public JmsOperations jmsTemplate(ConnectionFactory cf){
		return new JmsTemplate(cf);
	}
}

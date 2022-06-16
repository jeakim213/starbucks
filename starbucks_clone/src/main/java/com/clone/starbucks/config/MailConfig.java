package com.clone.starbucks.config;

import java.util.Properties;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;

@Configuration
public class MailConfig {

	@Bean
	public JavaMailSender mailSender() {
		JavaMailSenderImpl jms = new JavaMailSenderImpl();
		jms.setHost("smtp.gmail.com"); // 어느 메일서버를 이용해서 클라이언트에게 제공할 것인가
		jms.setPort(587); //포트 번호
		jms.setUsername("starbucks@kpay.be"); // 인증번호를 클라이언트에게 보낼 이메일 주소.
		jms.setPassword("AGQl3uOsE&wilm");
		
		Properties pro = new Properties();
		pro.setProperty("mail.transport.protocol", "smtp");
		pro.setProperty("mail.smtp.auth", "true");
		pro.setProperty("mail.smtp.starttls.enable", "true");
		jms.setJavaMailProperties(pro);
		return jms; 
	}
}
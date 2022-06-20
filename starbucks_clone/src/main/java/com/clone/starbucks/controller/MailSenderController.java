package com.clone.starbucks.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.clone.starbucks.service.MailSenderService;


@Controller
@RequestMapping("/mail")
public class MailSenderController {
	@Autowired private MailSenderService mailService;

	@RequestMapping("/simplemail")
	public void simpleMailSend() {
		mailService.simpleMailsend();
	}


	@RequestMapping("/simplemail2")
	public void simpleMailSend2() {
		mailService.mailSend("inis2510@naver.com");
	}
}

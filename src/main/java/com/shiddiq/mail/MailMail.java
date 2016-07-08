package com.shiddiq.mail;

import javax.mail.internet.MimeMessage;

import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;

public class MailMail
{
	private MailSender mailSender;
	private JavaMailSender mailerSender;
	
	public void setMailSender(MailSender mailSender) {
		this.mailSender = mailSender;
	}
	
	public void sendMail(String from, String to, String cc,String subject, String msg) {

		SimpleMailMessage message = new SimpleMailMessage();
		//MimeMessage mimeMessage = mailerSender.createMimeMessage();
		//MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, false, "utf-8");
		
		message.setFrom(from);
		message.setTo(to);
		message.setCc(cc);
		message.setSubject(subject);
		message.setText(msg);
		mailSender.send(message);	
	}
}
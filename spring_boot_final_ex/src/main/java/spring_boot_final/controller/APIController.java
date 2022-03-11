package spring_boot_final.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import spring_boot_final.service.ChatbotService;


@Controller
public class APIController {
	
	@Autowired
	private ChatbotService chatbotService;

	// 채팅창 + 음성 질문
	@RequestMapping("/ChatBotForm")
	public String clovaChatBotForm() {
		return "/chatbot/chatbotForm";
	}
}












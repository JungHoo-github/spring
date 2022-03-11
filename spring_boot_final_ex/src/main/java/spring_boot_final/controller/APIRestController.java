package spring_boot_final.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import spring_boot_final.service.ChatbotService;
import spring_boot_final.service.TTSService;

@RestController
public class APIRestController {
		
	@Autowired
	private ChatbotService chatbotService;

    @Autowired
    private TTSService ttsService;
		
	@RequestMapping("/clovaChatBot")
	public String clovaChatBot(@RequestParam("message") String message) {
		String result = chatbotService.main(message);
		
		return result;
	}
	
	@RequestMapping("/chatbotTTS")
	public String  chatbotTTS(@RequestParam("message") String message ) {
		String result = ttsService.chatbotTextToSpeech(message);
		return result;  // voiceFileName;  // 저장된 음성 파일명 반환
	}
	
	@RequestMapping("/clovaChatBotImgLink")
	public String clovaChatBotImgLink(@RequestParam("message") String message) {
		String result = chatbotService.imgLinkMainService(message);
		
		return result;
	}
	
	@RequestMapping("/clovamyChatBot")
	public String clovamyChatBot(@RequestParam("message") String message) {
		String result = chatbotService.myChatbotMainService(message);
		
		return result;
	}
}

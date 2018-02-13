package com.example.demo;

import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("messages")
public class MessageController {
	final List<Message> messages = new CopyOnWriteArrayList<>();
	

	@RequestMapping(method = RequestMethod.GET)
	public List<Message> getMessages(){
		return messages;
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public Message PostMessages(@RequestBody Message message){
		messages.add(message);
		return message;
	}
}

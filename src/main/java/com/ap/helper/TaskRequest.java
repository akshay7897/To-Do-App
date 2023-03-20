package com.ap.helper;

import com.ap.entity.UserRegistration;

import lombok.Data;

@Data
public class TaskRequest {
	
	private String taskName;
	private String date;
	private String time;
	private UserRegistration userRegistration;

}

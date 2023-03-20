package com.ap.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.ap.entity.Task;
import com.ap.entity.UserRegistration;
import com.ap.helper.Login;
import com.ap.helper.TaskRequest;
import com.ap.helper.User;
import com.ap.repository.TaskRepo;
import com.ap.repository.UserRegistrationRepo;

@Controller
public class UserRegController {

	@Autowired
	private UserRegistrationRepo userRegistrationRepo;

	@Autowired
	private TaskRepo taskRepo;

	@GetMapping("/")
	public String doLogin() {

		return "login";
	}

	@GetMapping("/register")
	public String registeruser() {

		return "register";
	}
	
	private Integer id;

	@PostMapping("/saveuser")
	public String saveUser(User user, Model model) {
		System.out.println(user);

		UserRegistration userRegistration = new UserRegistration();

		BeanUtils.copyProperties(user, userRegistration);

		UserRegistration save = userRegistrationRepo.save(userRegistration);
		if (save.getId() != null) {
			model.addAttribute("msg", "User Registerd Successfully.");
		} else {
			model.addAttribute("msg", "User Not Registerd .");
		}

		return "register";

	}

	@PostMapping("/task")
	public String loginCheck(Login login, Model model) {

		String email = login.getEmail();
		String password = login.getPassword();

		UserRegistration user = userRegistrationRepo.findByEmailAndPassword(email, password);
		if (user == null) {
			model.addAttribute("msg", "Login failed Enter correct crediantial..");
			return "login";
		} else if (email.equals(user.getEmail()) && password.equals(user.getPassword())) {
			model.addAttribute("msg", "Login Successfully");

			model.addAttribute("user", user);
			this.id=user.getId();
			return "task";
		} else {
			model.addAttribute("msg", "Login failed Enter correct crediantial..");
			return "login";
		}

	}

	@PostMapping("/savetask")
	public String saveTask(TaskRequest taskRequest, Model model) throws ParseException {

		Task task = new Task();
		task.setTaskName(taskRequest.getTaskName());
		
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
	    try {
	        Date date = formatter.parse(taskRequest.getDate());
	        task.setDate(date);
	    } catch (ParseException e) {
	        // handle parse exception
	    }
		task.setTime(taskRequest.getTime().toString());
		task.setUserRegistration(taskRequest.getUserRegistration());
				
		UserRegistration user = taskRequest.getUserRegistration();
		this.id=user.getId();

		Task createdTask = taskRepo.save(task);
		if (createdTask != null) {
		    model.addAttribute("msg", "Task is created.");
			model.addAttribute("user", user);

		} else {
		    model.addAttribute("msg", "Task is not created.");
		}

	    return "task";
	}
	
	@GetMapping("/tasks")
	public String viewAllTasks(Model model) {
		
		List<Task> tasks = taskRepo.getAllTasks(this.id);
		model.addAttribute("tasks", tasks);
		
		return "records";
	}




}

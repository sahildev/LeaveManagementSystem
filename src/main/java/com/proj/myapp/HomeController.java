package com.proj.myapp;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "index";
	}
	
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String homepage(Model model, @RequestParam("name") String name, @RequestParam("mid") int mid) {
		/**
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getTimeInstance(DateFormat.LONG);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		**/
		/*
		EntityManager em = null;
		EntityTransaction tx = null;
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("LeaveManagementSystem");
		em = factory.createEntityManager();
		tx = em.getTransaction();
		tx.begin();
		Employee emp = new Employee();
		emp.setEmpName(name);
		emp.setmId(mid);
		emp.setPassword("password");
		emp.setStatus("allowed");
		em.persist(emp);
		tx.commit();
		em.close();
		*/
		return "HomePage";
	}
	
	@RequestMapping("/applyLeave")
	public ModelAndView insert() {
		System.out.println("In applyLeave Controller");
		ModelAndView mv = new ModelAndView("applyLeave");
		return mv;
	}
	@RequestMapping(value = "/leavesForm", method = RequestMethod.GET)
	public String leavesForm(Model model,@RequestParam("empid") int empid, @RequestParam("fromdate") String fromdate,@RequestParam("todate") String todate) {
		return "Display";

	}
	@RequestMapping("/leaveStatus")
	public ModelAndView update() {
		System.out.println("In leaveStatus Controller");
		ModelAndView mv = new ModelAndView("leaveStatus");
		return mv;
	}
	@RequestMapping("/leaveHistory")
	public ModelAndView delete() {
		System.out.println("In leaveHistory Controller");
		ModelAndView mv = new ModelAndView("leaveHistory");
		return mv;
	}
	
}

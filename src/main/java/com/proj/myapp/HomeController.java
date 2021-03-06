package com.proj.myapp;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
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
	private static SessionFactory factory;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "index";
	}

	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String homepage(Model model, @RequestParam("name") String name, @RequestParam("mid") int mid) {
		/**
		 * Date date = new Date(); DateFormat dateFormat =
		 * DateFormat.getTimeInstance(DateFormat.LONG);
		 * 
		 * String formattedDate = dateFormat.format(date);
		 * 
		 * model.addAttribute("serverTime", formattedDate );
		 **/
		EntityManager em = null;
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("LeaveManagementSystem");
		em = factory.createEntityManager();
		TypedQuery<Employee> q2 = em.createQuery("from Employee", Employee.class);
		System.out.println("1");
		List<Employee> l = q2.getResultList();
		System.out.println("2");
		for (Employee list : l) {
			System.out.println("3");
			System.out.println(list.getEmpName());
			if (name.equals(list.getEmpName())) {
				System.out.println(list.getEmpName());
				System.out.println(list.getmId());
				return "HomePage";
			} else {
				System.out.println("4");
				return "Error";
			}

		}
		System.out.println("5");
		return "Error";

	}

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String Adminhome(Model model) {

		EntityManager em = null;
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("LeaveManagementSystem");
		em = factory.createEntityManager();
		TypedQuery<Employee> q2 = em.createQuery("from Employee", Employee.class);

		List<Employee> l = q2.getResultList();
		for (Employee list : l) {
			System.out.println(list.getEmpName());
		}
		// model.addAttribute("sahil", l);
		return "HomePage";

	}

	@RequestMapping("/applyLeave")
	public ModelAndView insert() {
		System.out.println("In applyLeave Controller");
		ModelAndView mv = new ModelAndView("applyLeave");
		return mv;
	}

	@RequestMapping(value = "/leavesForm", method = RequestMethod.GET)
	public String leavesForm(Model model, @RequestParam("empid") int empid, @RequestParam("fromdate") String fromdate,
			@RequestParam("todate") String todate) {
		EntityManager em = null;
		EntityTransaction tx = null;
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("LeaveManagementSystem");
		em = factory.createEntityManager();
		tx = em.getTransaction();
		tx.begin();
		Leaves leave = new Leaves();
		leave.setEmpId(1);
		leave.setFromdate(fromdate);
		leave.setToDate(todate);
		leave.setPermission("permission");
		leave.setReason("reason");
		em.persist(leave);
		tx.commit();
		em.close();

		return "DisplayLeave";

	}

	@RequestMapping("/leaveStatus")
	public ModelAndView update() {
		// System.out.println("In leaveStatus Controller");
		ModelAndView mv = new ModelAndView("leaveStatus");
		return mv;
	}

	@RequestMapping("/leaveHistory")
	public String delete(Model model) {
		// System.out.println("In leaveHistory Controller");
		EntityManager em = null;
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("LeaveManagementSystem");
		em = factory.createEntityManager();
		TypedQuery<Leaves> q2 = em.createQuery("from Leaves", Leaves.class);
		List<Leaves> l = q2.getResultList();
		model.addAttribute("leave", l);
		return "History";

		// ModelAndView mv = new ModelAndView("leaveHistory");
		// mv.addObject("LeaveHistory",l);
		// return mv;
	}

	@RequestMapping(value = "/cancelLeave", method = RequestMethod.GET)
	@Transactional
	public String cancelLeave(Model model, @RequestParam("1") String empId) {
		/*System.out.println(empId);
		System.out.println("In cancelLeave Controller");
		EntityManager em = null;
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("LeaveManagementSystem");*/
		
		Session session; = factory.openSession();
		/*Transaction tx = null;
		try {
		   tx = session.beginTransaction();
		   Leaves leave =(Leaves)session.get(Leaves.class, empId); 
         session.delete(leave); 
		   tx.commit();
		}
		catch (Exception e) {
		   if (tx!=null) tx.rollback();
		   e.printStackTrace(); 
		}finally {
		   session.close();
		}
		*/
		/*em = factory.createEntityManager();
		int a = em.createQuery("delete from Leaves").executeUpdate();
		System.out.println(a);*/
		return "redirect:/leaveHistory";
	}

	/* Admin controllers */
	@RequestMapping("/admin")
	public ModelAndView adminHome() {
		ModelAndView mv = new ModelAndView("adminHome");
		return mv;
	}

	@RequestMapping("/adminAddUserController")
	public ModelAndView adminAddUserController() {
		ModelAndView mv = new ModelAndView("adminAddUser");
		return mv;
	}

	@RequestMapping(value = "/adminAddUser", method = RequestMethod.GET)
	public String adminAddUser(Model model, @RequestParam("empname") String empname,
			@RequestParam("managerid") int managerid, @RequestParam("password") String password,
			@RequestParam("status") String status) {
		EntityManager em = null;
		EntityTransaction tx = null;
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("LeaveManagementSystem");
		em = factory.createEntityManager();
		tx = em.getTransaction();
		tx.begin();
		Employee emp = new Employee();
		emp.setEmpName(empname);
		emp.setmId(managerid);
		emp.setPassword(password);
		emp.setStatus(status);
		em.persist(emp);
		tx.commit();
		em.close();
		return "redirect:/admin";
	}
}

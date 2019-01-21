package com.lti.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.lti.model.Customer;
import com.lti.service.AdminServiceImpl;
import com.lti.service.IAdminService;
import com.lti.service.ICustomerService;



@Controller
public class CustomerController {




	private ICustomerService customerService;

	@Autowired
	public void setCustomerService(ICustomerService cs) {
		this.customerService = cs;
	}

	@Autowired
	private IAdminService iAdminService;




	public void setiAdminService(IAdminService iAdminService) {
		this.iAdminService = iAdminService;
	}





	@RequestMapping(value="/listDetails", method=RequestMethod.GET)
	public String listdetails(Model model) {
		System.out.println("hi");

		try
		{
			List l=iAdminService.custlist();

			model.addAttribute("listCustomers", l);

		}catch(Throwable t)
		{
			t.printStackTrace();
		}
		return "listDetails";
	}



	@RequestMapping(value="/pending", method=RequestMethod.GET)
	public String pendingdetails(Model model) {


		try
		{
			List l=iAdminService.custlistpend();
			model.addAttribute("listCustomers", l);

		}catch(Throwable t)
		{
			t.printStackTrace();
		}
		return "pending";
	}

	@RequestMapping(value="/approved", method=RequestMethod.GET)
	public String approveddetails(Model model) {

		try
		{
			List l=iAdminService.custlistaccept();
			model.addAttribute("listCustomers", l);

		}catch(Throwable t)
		{
			t.printStackTrace();
		}
		return "approved";
	}



	@RequestMapping(value="/rejected", method=RequestMethod.GET)
	public String rejecteddetails(Model model) {


		try
		{
			List l=iAdminService.custlistreject();
			model.addAttribute("listCustomers", l);

		}catch(Throwable t)
		{
			t.printStackTrace();
		}
		return "rejected";
	}








	@RequestMapping(value="/register")
	public String goRegister(Model model) {
		model.addAttribute("customer",new Customer());
		return "register";
	}


	@RequestMapping("/login")
	public String showLoginView(Model model)
	{
		model.addAttribute("customer", new Customer());
		return "login";
	}





	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String addCustomer(
			@ModelAttribute("customer") 
			@Valid Customer customer, 
			BindingResult result, 
			Model model) {
		if (result.hasErrors()) {
			return "register";
		} 

		this.customerService.addCustomer(customer);
		return "login";
	}




	@RequestMapping(value = "/entry", method = RequestMethod.POST)
	public String LoginValidation(@ModelAttribute ("customer")
	@Valid Customer u, 
	BindingResult result, HttpServletRequest req, HttpSession session,Model model) {
		String emailId = req.getParameter("emailId");
		String password = req.getParameter("password");

		if (emailId.equals("admin@gmail.com") && password.equals("admin"))

		{
			return "adminprofile";

		} else if (customerService.verifyUser(emailId, password)) {


			Customer customer = customerService.getCustomer(emailId, password);
			System.out.println("after obj");
			session.setAttribute("customer", customer);
			session.setAttribute("firstName", customer.getCustomerFirstName());
			session.setAttribute("middleName", customer.getCustomerMiddleName());
			session.setAttribute("lastName", customer.getCustomerLastName());
			session.setAttribute("emailId", customer.getEmailId());
			session.setAttribute("gender", customer.getGender());
			session.setAttribute("country", customer.getCountry());
			session.setAttribute("mobile", customer.getMobileNo());
			session.setAttribute("pan", customer.getPanNo());	
			session.setAttribute("aadhar", customer.getAadharNo());




			session.setAttribute("salary", customer.getCustomerDetails().getSalary());
			session.setAttribute("retirementAge", customer.getCustomerDetails().getRetirementAge());
			session.setAttribute("organizationType", customer.getCustomerDetails().getOrganizationType());
			session.setAttribute("typeOfEmp", customer.getCustomerDetails().getTypeOfEmp());
			session.setAttribute("empName", customer.getCustomerDetails().getEmployerName());
			session.setAttribute("accountBalance", customer.getBalance());
			session.setAttribute("loanAmount", customer.getLoanAmount());
			session.setAttribute("loanStatus", customer.getLoanStatus());

			session.setAttribute("propertyName", customer.getProperty().getName());
			session.setAttribute("propertyLocation", customer.getProperty().getLocation());
			session.setAttribute("propertyCost", customer.getProperty().getCost());
			session.setAttribute("customerDetailsId",customer.getCustomerDetails().getDetailsId());


			return "customerprofile";

		} else
			return "login";

	}





	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		System.out.println("session successfully invalidated");
		return "redirect:";
	} 


	@RequestMapping(value="/aboutus")
	public String aboutus(Model model) {
		model.addAttribute("customer",new Customer());
		return "aboutus";
	} 

	@RequestMapping(value="/aboutus1")
	public String aboutus1(Model model) {
		model.addAttribute("customer",new Customer());
		return "aboutus1";
	} 


	@RequestMapping(value="/faq")
	public String faq(Model model) {
		model.addAttribute("customer",new Customer());
		return "faq";
	} 

	@RequestMapping(value="/faq1")
	public String faq1(Model model) {
		model.addAttribute("customer",new Customer());
		return "faq1";
	} 

	@RequestMapping(value="/apply")
	public String apply(Model model) {
		model.addAttribute("customer",new Customer());
		return "apply";
	} 

	@RequestMapping(value="/accountdetails")
	public String accountdetails(Model model) {
		model.addAttribute("customer",new Customer());
		return "accountdetails";
	} 




	@RequestMapping(value="/adminprofile")
	public String adminprofile(Model model) {
		model.addAttribute("customer",new Customer());
		return "adminprofile";
	} 


	@RequestMapping(value="/bankdocs")
	public String bankdocs(Model model) {
		model.addAttribute("customer",new Customer());
		return "bankdocs";
	} 

	@RequestMapping(value="/calculators")
	public String calculators(Model model) {
		model.addAttribute("customer",new Customer());
		return "calculators";
	} 

	@RequestMapping(value="/calculators1")
	public String calculators1(Model model) {
		model.addAttribute("customer",new Customer());
		return "calculators1";
	} 

	@RequestMapping(value="/calculators2")
	public String calculators2() {
		return "calculators2";
	} 

	@RequestMapping(value="/customerprofile")
	public String customerprofile(Model model) {
		model.addAttribute("customer",new Customer());
		return "customerprofile";
	} 


	@RequestMapping(value="/eligibilitycalculator")
	public String eligibilitycalculator(Model model) {
		model.addAttribute("customer",new Customer());
		return "eligibilitycalculator";
	} 

	@RequestMapping(value="/eligibilitycalculator1")
	public String eligibilitycalculator1(Model model) {
		model.addAttribute("customer",new Customer());
		return "eligibilitycalculator1";
	} 

	@RequestMapping(value="/eligibilitycalculator2")
	public String eligibilitycalculator2() {
		return "eligibilitycalculator2";
	} 

	@RequestMapping(value="/emicalculator")
	public String emicalculator(Model model) {
		model.addAttribute("customer",new Customer());
		return "emicalculator";
	} 


	@RequestMapping(value="/emicalculator1")
	public String emicalculator1(Model model) {
		model.addAttribute("customer",new Customer());
		return "emicalculator1";
	} 

	@RequestMapping(value="/emicalculator2")
	public String emicalculator2() {
		return "emicalculator2";
	} 






	@RequestMapping(value="/incomedetails")
	public String incomedetails(Model model) {
		model.addAttribute("customer",new Customer());
		return "incomedetails";
	} 


	@RequestMapping(value="/loandetails")
	public String loandetails(Model model) {
		model.addAttribute("customer",new Customer());
		return "loandetails";
	} 


	@RequestMapping(value="/loandocs")
	public String loandocs(Model model) {
		model.addAttribute("customer",new Customer());
		return "loandocs";
	} 
	@RequestMapping(value="/loantracker")
	public String loantracker(Model model) {
		model.addAttribute("customer",new Customer());
		return "loantracker";
	} 



	@RequestMapping(value="/mydocuments")
	public String mydocuments(Model model) {
		model.addAttribute("customer",new Customer());
		return "mydocuments";
	} 


	@RequestMapping(value="/")
	public String index(Model model) {
		model.addAttribute("customer",new Customer());
		return "index";
	} 

	@RequestMapping(value="/index1")
	public String index1(Model model) {
		model.addAttribute("customer",new Customer());
		return "index1";
	} 

	@RequestMapping(value="/index2")
	public String index2(Model model) {
		model.addAttribute("customer",new Customer());
		return "index2";
	} 

	@RequestMapping(value="/propertydetails")
	public String propertydetails(Model model) {
		model.addAttribute("customer",new Customer());
		return "propertydetails";
	} 

	@RequestMapping(value="/resetpassword")
	public String resetpassword(Model model) {
		model.addAttribute("customer",new Customer());
		return "resetpassword";
	} 

	@RequestMapping(value="/redirectadminafterreject")
	public String redirectadminafterreject(Model model) {
		model.addAttribute("customer",new Customer());
		return "redirectadminafterreject";
	} 

	@RequestMapping(value="/redirectadminafterapproved")
	public String redirectadminafterapproved(Model model) {
		model.addAttribute("customer",new Customer());
		return "redirectadminafterapproved";
	} 


	@RequestMapping(value="/userdetails")
	public String userdetails(Model model,HttpSession session, HttpServletRequest req) {

		String emailId=req.getParameter("emailId");
		String password=req.getParameter("password");


		model.addAttribute("customer",new Customer());
		return "userdetails";

	} 


	@RequestMapping(value="/error")
	public String errorer(Model model) {
		model.addAttribute("customer",new Customer());
		return "error";
	} 

	@RequestMapping("/accept/{customerId}") //should pass loanamount here?
	public String acceptStatus(  @PathVariable("customerId") int customerId, Model model)
	{
		List<Customer>c=iAdminService.fetchCustomerDetails(customerId);
		double loanAmount=c.get(0).loanAmount;
		String emailid=c.get(0).getEmailId();
		String password=c.get(0).getPassword();
		Customer customer=customerService.getCustomer(emailid, password);
		customer.setBalance(customer.getBalance()+loanAmount);		
		this.iAdminService.acceptCust(customerId,loanAmount);

		return "redirect:/redirectadminafterapproved";
	}

	@RequestMapping("/reject/{customerId}")
	public String rejecttStatus(  @PathVariable("customerId") int customerId, Model model)
	{
		System.out.println("calling from cont");
		this.iAdminService.rejectCust(customerId);
		List<Customer>c=iAdminService.fetchCustomerDetails(customerId);
		return "redirect:/redirectadminafterreject";
	}






}
package org.nwo.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.SessionFactory;
import org.nwo.domain.America;
import org.nwo.domain.AmericanWorker;
import org.nwo.domain.Cities;
import org.nwo.domain.India;
import org.nwo.domain.IndianWorker;
import org.nwo.domain.Nepal;
import org.nwo.domain.NepalWorker;
import org.nwo.service.SearchService;
import org.nwo.service.WorkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

@Controller
public class DemoController {


	@Autowired
	private SearchService searchService;

	@Autowired
	private WorkService workService;
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public DemoController() {
		
	}
	
	@GetMapping("/")
	public String showHome(Model model)  {
		return "rome";
	}
	
	@GetMapping("/about")
	public String showAbout() {
		return "about";
	}
	
	@PostMapping("/insert")
	public String insertItems(HttpServletRequest request,
			@ModelAttribute("userid") int userid,
			@ModelAttribute("country") String coun,
			@ModelAttribute("city") String city,
			@RequestParam("file") CommonsMultipartFile imgFile,
			@ModelAttribute("location") String location,
			@ModelAttribute("seller") String seller,
			@ModelAttribute("web") String web,
			@ModelAttribute("item1") String item1,
			@ModelAttribute("item2") String item2, @ModelAttribute("item3") String item3,
			@ModelAttribute("item4") String item4, @ModelAttribute("item5") String item5,
			@ModelAttribute("item6") String item6, @ModelAttribute("item7") String item7,
			@ModelAttribute("item8") String item8, Model model) throws Exception {

			byte[] bytes = imgFile.getBytes();
		
	if(coun.equals("Nepal")) {
		Nepal nepal = new Nepal();
		nepal.setUserId(userid);
		nepal.setCountry(coun);
		nepal.setCity(city);
		nepal.setLocation(location);
		nepal.setSellerName(seller);
		nepal.setWebsite(web);
		nepal.setItem1(item1);
		nepal.setItem2(item2);
		nepal.setItem3(item3);
		nepal.setItem4(item4);
		nepal.setImage(bytes);

		searchService.saveNepal(nepal);

		
		
		return "redirect:/";
	}
	

	
	if(coun.equals("America")) {
			America america  = new America();
			america.setUserId(userid);
			america.setCountry(coun);
			america.setCity(city);
			america.setLocation(location);
			america.setSellerName(seller);
			america.setWebsite(web);
			america.setItem1(item1);
			america.setItem2(item2);
			america.setItem3(item3);
			america.setItem4(item4);
			america.setImage(bytes);

			searchService.saveAmerica(america);
			return "redirect:/";
		}
		
		else{
			India india = new India();
			india.setUserId(userid);
			india.setCountry(coun);
			india.setCity(city);
			india.setLocation(location);
			india.setSellerName(seller);
			india.setWebsite(web);
			india.setItem1(item1);
			india.setItem2(item2);
			india.setItem3(item3);
			india.setItem4(item4);
			india.setImage(bytes);

			searchService.saveIndia(india);
			return "redirect:/";

		}
				
	}


	@PostMapping("/insertworker")
	public String insertItems(HttpServletRequest request,
			@ModelAttribute("userid") int userid,
			@ModelAttribute("country") String coun,
			@RequestParam("file") CommonsMultipartFile imgFile,
			@ModelAttribute("city") String city,
			@ModelAttribute("location") String location,
			@ModelAttribute("worker") String worker,
			@ModelAttribute("web") String web,
			@ModelAttribute("item1") String item1,
			@ModelAttribute("item2") String item2, Model model) throws Exception {

		byte[] bytes = imgFile.getBytes();
		
	if(coun.equals("Nepal")) {
		
		NepalWorker nepalWorker = new NepalWorker();
		nepalWorker.setUserId(userid);
		nepalWorker.setCountry(coun);
		nepalWorker.setCity(city);
		nepalWorker.setLocation(location);
		nepalWorker.setWorkerName(worker);
		nepalWorker.setWebsite(web);
		nepalWorker.setItem1(item1);
		nepalWorker.setItem2(item2);
		nepalWorker.setImage(bytes);

		workService.save(nepalWorker);
		return "redirect:/";
	}
	
		if(coun.equals("America")) {
			AmericanWorker americanWorker = new AmericanWorker();
			americanWorker.setUserId(userid);
			americanWorker.setCountry(coun);
			americanWorker.setCity(city);
			americanWorker.setLocation(location);
			americanWorker.setWorkerName(worker);
			americanWorker.setWebsite(web);
			americanWorker.setItem1(item1);
			americanWorker.setItem2(item2);
			americanWorker.setImage(bytes);

			workService.save(americanWorker);
			return "redirect:/";
		}
		
		else{
			IndianWorker indianWorker = new IndianWorker();
			indianWorker.setUserId(userid);
			indianWorker.setCountry(coun);
			indianWorker.setCity(city);
			indianWorker.setLocation(location);
			indianWorker.setWorkerName(worker);
			indianWorker.setWebsite(web);
			indianWorker.setItem1(item1);
			indianWorker.setItem2(item2);
			indianWorker.setImage(bytes);
			
			
			workService.save(indianWorker);
			return "redirect:/";

		}
				
	}	
	
	
	@GetMapping("/searchitem")
	public String searchItem(Model model) {
		return "item";
	}

	@GetMapping("/searchworker")
	public String searchWorker(Model model) {
		return "worker";
	}

	
	
	@GetMapping("/item")
	public String findUser(@ModelAttribute("item") String item,
			@ModelAttribute("country") String country,
			@ModelAttribute("city") String city,
			@ModelAttribute("location") String location,
			Model model) {
		
		if(country.equals("Nepal")) {
			List<Nepal> nepal = new ArrayList<>();
			nepal = searchService.searchByNepal(item, city, location);
			int count = nepal.size();
			model.addAttribute("local",nepal);
			model.addAttribute("count",count);
			return "search";
		}
		
		if(country.equals("America")) {
			List<America> america = new ArrayList<>();
			america = searchService.searchByUsa(item, city, location);
			int count = america.size();
			model.addAttribute("count",count);
			model.addAttribute("local",america);
			return "search";
		}
		
		else
		{
			List<India> india = new ArrayList<>();
			india = searchService.searchByIndia(item, city, location);
			int count = india.size();
			model.addAttribute("count",count);
			model.addAttribute("local", india);
			return "search";
		}
	}



	@GetMapping("/worker")
	public String findWorker(@ModelAttribute("worker") String item,
			@ModelAttribute("country") String country,
			@ModelAttribute("city") String city,
			@ModelAttribute("location") String location,
			Model model) {
		
		if(country.equals("Nepal")) {
			List<NepalWorker> nepal = new ArrayList<>();
			nepal = workService.searchByItemNepal(item, city, location);
			int count = nepal.size();
			model.addAttribute("count",count);
			model.addAttribute("local",nepal);
		return "wsearch";
		}
		
		if(country.equals("America")) {
			List<AmericanWorker> america = new ArrayList<>();
			america = workService.searchByItemAmerica(item, city, location);
			int count = america.size();
			model.addAttribute("count",count);
			model.addAttribute("local",america);
			return "wsearch";
		}
		
		else
		{
			List<IndianWorker> india = new ArrayList<>();
			india =workService.searchByItemIndia(item, city, location);
			int count = india.size();
			model.addAttribute("count",count);
			model.addAttribute("local", india);
			return "wsearch";
		}
	}

	
	@SuppressWarnings("unchecked")
	@GetMapping("/city")
	@Transactional
	public @ResponseBody List<Cities> city(){
		
		return sessionFactory.getCurrentSession()
				.createQuery("From Cities")
				.list();
	}
	

	@GetMapping("/leaders")
	public String showLeaders() throws SQLException {
		
		return "leaders";
	}
	
	// add request mapping for /systems
	
	@GetMapping("/systems")
	public String showSystems() throws SQLException {
	
		return "systems";
	}
	
	
	@GetMapping("/newuser")
	public String newUser() {
		return "newuser";
	}
}

package com.antra.web;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.antra.util.UploadFileHandler;

/**
 * Default MVC controller for general purposes.
 * @author Lester
 *
 */
@Controller
public class DefaultController{
	@Autowired
	private UploadFileHandler ufh;
	private static final Logger logger = Logger.getLogger(DefaultController.class);
	
	/**
	 * Home Page
	 * @return home page
	 */
	@RequestMapping(value ={"/","/welcome**"}, method = RequestMethod.GET)
	public ModelAndView defaultPage() {
		//logs debug message
		if(logger.isDebugEnabled()){
			logger.debug("getWelcome is executed!");
		}
		//logs exception
		logger.error("This is Error message", new Exception("Testing"));
				
		ModelAndView model = new ModelAndView();
		model.addObject("imgCount",ufh.getCount());
		model.setViewName("index");
		return model;
	}
	
	/**
	 * Use upload file handler to upload a file onto local server
	 * @param file file uploaded
	 * @return Home
	 */
	@RequestMapping(value ={"/upload"}, method = RequestMethod.POST)
	@Secured("ROLE_ADMIN")
	public String uploadFile(MultipartFile file) {
		if(file!=null){
			ufh.save(file);
		}
		return "redirect:/";
	}
	
	/**
	 * Delete file on local server
	 * @param id file id#
	 * @return Home
	 */
	@RequestMapping(value ={"/delete"}, method = RequestMethod.GET)
	@Secured("ROLE_ADMIN")
	public String deleteFile(@RequestParam int id) {
		ufh.delete(id);
		return "redirect:/";
	}
	
	/**
	 * Login page
	 * @param error
	 * @param logout
	 * @return login page
	 */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(
			@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout) {
		ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error", "Invalid username and password!");
		}

		if (logout != null) {
			model.addObject("msg", "You've been logged out successfully.");
		}
		model.setViewName("security/login");
		return model;
	}

	/**
	 *  for 403 access denied page
	 * @return 403 page
	 */
	@RequestMapping(value = "/403", method = RequestMethod.GET)
	public ModelAndView accesssDenied() {
		ModelAndView model = new ModelAndView();

		// check if user is login
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			model.addObject("username", userDetail.getUsername());
		}
		model.setViewName("security/403");
		return model;
	}
}

package home;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Component
@Controller
public class HomeController {
	
	@RequestMapping(value = "/search/findStore.do", method = RequestMethod.GET)
	public ModelAndView searchStore(HttpServletRequest request,
			HttpServletResponse response) throws Exception {		
		
		String query=request.getParameter("query");
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("query", query);
		mav.setViewName("/search/findStore.jsp");
		
		return mav;
	}
	
	@RequestMapping(value = "/search/proxy.do", method = RequestMethod.GET)
	public ModelAndView proxy(HttpServletRequest request,
			HttpServletResponse response) throws Exception {		
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/store/api_proxy.jsp");
		return mav;
	}
	
}

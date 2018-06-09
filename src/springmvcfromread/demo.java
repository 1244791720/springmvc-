package springmvcfromread;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.DispatcherServlet;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Controller
public class demo {

	public static void main(String[] args) {
		
	}
	
	@RequestMapping("/hello")
	public String helloword() {
		System.out.println("helloword");
		return "hello";
	}

}

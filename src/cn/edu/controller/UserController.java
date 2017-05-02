package cn.edu.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.edu.domain.User;
import cn.edu.service.UserService;

@Controller
@RequestMapping("/")
public class UserController {
	@Autowired
	private UserService userService;

	@RequestMapping(value = "login", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Boolean> login(@RequestParam String username, @RequestParam String password,
			Model model,HttpSession session) {
		List<User> list = userService.selectUserByUsernameAndPassword(username, password);
		Map<String, Boolean> map = new HashMap<String, Boolean>();
		if (list.size() == 0) {
			map.put("flag", false);

		} else {
			session.setAttribute("username", username);
			map.put("flag", true);
		}
		return map;
	}

	@RequestMapping(value = "findAllUser", method = RequestMethod.GET)
	@ResponseBody
	public List<User> findAllUser() {
		List<User> list = userService.selectAllUser();
		return list;
	}

	@RequestMapping(value = "deleteUserById/{id}", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView deleteUserById(@PathVariable Integer id) {
		userService.deleteUserById(id);
		ModelAndView mv=new ModelAndView();
		List<User> list = userService.selectAllUser();
		mv.addObject(list);
		mv.setViewName("index");
		return mv;
	}

	@RequestMapping(value = "selectUserById/{id}", method = RequestMethod.GET)
	@ResponseBody
	public List<User> selectUserById(@PathVariable Integer id) {
		return userService.queryById(id);
	}

	@RequestMapping(value = "saveUser", method = RequestMethod.POST)
	@ResponseBody
	public Map<String,Boolean> saveUser(@RequestBody User user) {
		userService.saveUser(user);
		System.out.println(user.getUserName());
		Map<String,Boolean> map=new HashMap<String,Boolean>();
		map.put("flag", true);
		return map;
	}
	@RequestMapping(value = "updateUser", method = RequestMethod.POST)
	@ResponseBody
	public  Map<String,Boolean> updateUser( @RequestBody User user) {
		userService.updateUser(user);
		Map<String,Boolean> map=new HashMap<String,Boolean>();
		map.put("flag", true);
		return map;
	}
	@RequestMapping(value = "exit", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView exit( HttpSession session) {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("tologin");
		session.removeAttribute("username");
		return mv;
		
	}
	@RequestMapping(value = "toedit/{id}", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView toedit(@PathVariable Integer id) {
		List<User> user = userService.queryById(id);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("edit");
		mv.addObject("user",user);
		return mv;
		
	}

	/*
	 * @RequestMapping("") public ModelAndView handleRequest(HttpServletRequest
	 * req, HttpServletResponse resp) throws Exception { ModelAndView mv=new
	 * ModelAndView(); mv.setViewName("login"); return mv; }
	 */
	@RequestMapping(value = "{pageName}", method = RequestMethod.GET)
	public String toPage(@PathVariable("pageName") String pageName) {
		return pageName;
	}
}

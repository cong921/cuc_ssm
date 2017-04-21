package cn.edu.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
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
			Model model) {
		System.out.println(username);
		System.out.println(password);
		List<User> list = userService.selectUserByUsernameAndPassword(username, password);
		Map<String, Boolean> map = new HashMap<String, Boolean>();
		if (list.size() == 0) {
			map.put("flag", false);

		} else {
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
	public void deleteUserById(@PathVariable Integer id) {
		userService.deleteUserById(id);
		;
	}

	@RequestMapping(value = "selectUserById/{id}", method = RequestMethod.GET)
	@ResponseBody
	public List<User> selectUserById(@PathVariable Integer id) {
		return userService.queryById(id);
	}

	@RequestMapping(value = "saveUser", method = RequestMethod.POST)
	@ResponseBody
	public User saveUser(@RequestBody User user) {
		userService.saveUser(user);
		System.out.println(user);
		return user;
	}
	@RequestMapping(value = "updateUser", method = RequestMethod.POST)
	@ResponseBody
	public void updateUser( @RequestBody User user) {
		userService.updateUser(user);
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
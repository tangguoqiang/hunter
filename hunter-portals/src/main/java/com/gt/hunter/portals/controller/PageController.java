package com.gt.hunter.portals.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * 页面跳转controller
 * @author Think
 *
 */
@Controller
@RequestMapping(value ="/page")
public class PageController {

	/**
	 * 登陆页面
	 * @return
	 */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login() {
		return new ModelAndView("pages/login");
	}
	
	/**
	 * 注册页面
	 * @return
	 */
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView register() {
		return new ModelAndView("pages/register");
	}
	
	/**
	 * demo页面
	 * @return
	 */
	@RequestMapping(value = "/demo", method = RequestMethod.GET)
	public ModelAndView demo() {
		return new ModelAndView("pages/mobile/demo");
	}
	
	/**
	 * demo页面
	 * @return
	 */
	@RequestMapping(value = "/demo/play", method = RequestMethod.GET)
	public ModelAndView demoPlay() {
		return new ModelAndView("pages/mobile/play");
	}
	
	/**
	 * 培训主页
	 * @return
	 */
	@RequestMapping(value = "/train/index", method = RequestMethod.GET)
	public ModelAndView train() {
		return new ModelAndView("pages/train/index");
	}
}

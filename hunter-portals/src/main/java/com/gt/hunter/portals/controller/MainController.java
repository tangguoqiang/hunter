package com.gt.hunter.portals.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.gt.hunter.portals.common.constant.GloabConstant;
import com.gt.hunter.portals.common.utils.LogUtil;
import com.gt.hunter.portals.common.utils.MD5Util;
import com.gt.hunter.portals.domain.Account;
import com.gt.hunter.portals.domain.Banner;
import com.gt.hunter.portals.service.SystemService;

@Controller
public class MainController {
	
	@Autowired
	private SystemService systemService;

	/**
	 * 入口操作
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/",  method ={RequestMethod.POST,RequestMethod.GET})
	public ModelAndView door(HttpSession session) {
		ModelAndView model = new ModelAndView("pages/index");
		model.addObject("user", session.getAttribute("user"));
		return model;
	}
	
	/**
	 * 登陆操作
	 * @param userName
	 * @param password
	 * @param req
	 * @return
	 */
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> register(@RequestParam("email") String email,
			@RequestParam("password")String password,String type) {
		Map<String, Object> m = new HashMap<String, Object>();
		if(systemService.existsAccount(email)){
			m.put("success", false);
			m.put("msg", "该邮箱已注册！");
			return m;
		}
		
		systemService.addAccount(email,password,type,GloabConstant.LOGIN_TYPE_NORMAL);
		m.put("success", true);
		
		return m;
	}
	
	/**
	 * 登陆操作
	 * @param account
	 * @param password
	 * @param req
	 * @return
	 */
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> login(@RequestParam("account") String account,
			@RequestParam("password")String password,HttpServletRequest req) {
		Map<String, Object> m = new HashMap<String, Object>();
		Account acc = systemService.getAccountByAccAndPass(account,MD5Util.string2MD5(password));
		if(acc != null){
			m.put("success", true);
			req.getSession().setAttribute("account", acc);
		}else{
			m.put("success", false);
			m.put("msg", "用户名或密码错误！");
		}
		
		return m;
	}
	
	/**
	 * 注销操作
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/logout", method = RequestMethod.POST)
	public ModelAndView logout(HttpSession session) {
		session.setAttribute("user",null);
		return new ModelAndView("pages/login");
	}
	
	/**
	 * 加载banners
	 * @return
	 */
	@RequestMapping(value = "/listBanners", method = RequestMethod.POST)
	@ResponseBody
	public List<Banner> listBanners() {
		return systemService.listBanners();
	}
	
	/**
	 * 文件下载
	 * @param path
	 * @param fileName
	 * @return
	 */
	@RequestMapping(value = "/download/{path}/{fileName}.{suff}",method={RequestMethod.GET,RequestMethod.POST})
	public void dowload(@PathVariable("path")String path, 
			@PathVariable("fileName")String fileName,@PathVariable("suff")String suff,
			HttpServletResponse rep){
		rep.setHeader("Content-Disposition", "attachment; filename=" + fileName + "." + suff);  
		LogUtil.debug(fileName + "." + suff);
		if("apk".equals(suff))
		{
//			rep.setHeader("Content-Encoding","gzip");
			rep.setContentType("application/octet-stream");
		}
		else
			rep.setContentType("image/*");  
		String filePath = GloabConstant.ROOT_DIR + path + "/" + fileName + "." + suff;
		long contentLength = new File(filePath).length();
		LogUtil.debug("文件大小:" + contentLength);
        rep.setContentLength((int) contentLength);
		FileInputStream fis = null; 
        OutputStream os = null; 
        try {
        	fis = new FileInputStream(filePath);
            os = rep.getOutputStream();
            int count = 0;
            byte[] buffer = new byte[1024*8];
            while ( (count = fis.read(buffer)) != -1 ){
              os.write(buffer, 0, count);
              os.flush();
            }
        }catch(Exception e){
        	e.printStackTrace();
        }finally {
            try {
				fis.close();
				os.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
        }
	}
}

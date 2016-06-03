package com.gt.hunter.portals.listener;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.springframework.util.ResourceUtils;
import org.springframework.util.StringUtils;
import org.springframework.web.util.ServletContextPropertyUtils;
import org.springframework.web.util.WebUtils;

import com.gt.hunter.portals.common.constant.GloabConstant;
import com.gt.hunter.portals.common.utils.LogUtil;


public class InitListener implements ServletContextListener{

	private final static String CONFIG_LOCATION_PARAM = "initConfigLocation";
	
	public void contextDestroyed(ServletContextEvent arg0) {
//		JobManager.destroy();
	}

	public void contextInitialized(ServletContextEvent event) {
		ServletContext servletContext = event.getServletContext();
		String location = servletContext.getInitParameter(CONFIG_LOCATION_PARAM);
		if (!StringUtils.isEmpty(location)) {
			try {
				Properties props = new Properties();
				location = ServletContextPropertyUtils.resolvePlaceholders(location, servletContext);
				if (!ResourceUtils.isUrl(location)) {
					location = WebUtils.getRealPath(servletContext, location);
				}

				props.load(new FileInputStream(new File(location)));
				
				GloabConstant.loadSystemProps(props);
			} catch (FileNotFoundException e) {
				LogUtil.error("init failed:", e);
			} catch (IOException e) {
				LogUtil.error("init failed:", e);
			}
		}
//		WebApplicationContext context = WebApplicationContextUtils
//				.getRequiredWebApplicationContext(arg0.getServletContext());
//		JobManager.init((Scheduler)context.getBean("schedulerFactory"),context);
	}
}

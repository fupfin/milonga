package com.km.milonga.servlet.handler;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.mozilla.javascript.Context;
import org.mozilla.javascript.NativeFunction;
import org.mozilla.javascript.Scriptable;
import org.springframework.web.servlet.ModelAndView;

/**
 * Atmos Function is converted to this controller to be used like Spring
 * Controller. This controller handles Spring Model and View.
 * 
 * @author kminkim
 * 
 */
public class AtmosControllerHandler {
	
	private NativeFunction atmosFunction;
	
	public AtmosControllerHandler(NativeFunction atmosHandler) {
		this.atmosFunction = atmosHandler;
	}
	
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		ModelAndView mv = new ModelAndView();
		
		Context context = Context.enter();
		Scriptable scope = context.initStandardObjects();

		atmosFunction.call(context, scope,
				scope, new Object[] { request, response });
		
		// request attributes to Model
		Enumeration<String> attributeNames = request.getAttributeNames();
		while (attributeNames.hasMoreElements()) {
			String attributeName = attributeNames.nextElement();
			mv.addObject(attributeName, request.getAttribute(attributeName));
		}
		
		return mv;
	}
}
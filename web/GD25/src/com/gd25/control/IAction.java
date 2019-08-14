package com.gd25.control;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface IAction {

	
	public ForwardAction execute(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
}

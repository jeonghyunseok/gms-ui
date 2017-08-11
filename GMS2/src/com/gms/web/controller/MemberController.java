package com.gms.web.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import com.gms.web.util.DispatcherServlet;
import com.gms.web.util.Separator;


@WebServlet({"/member.do"})
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public MemberController() {
        super();
        }       	
    
  protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  Separator.init(request);
	  System.out.println("MemberController get 진입");
	  switch (request.getParameter("action")) {
	case "move":
		DispatcherServlet.send(request, response);
		break;

	default:
		break;
	}
}		

}


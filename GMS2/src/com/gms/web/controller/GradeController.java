package com.gms.web.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gms.web.util.DispatcherServlet;
import com.gms.web.util.Separator;


@WebServlet({"/grade.do"})
public class GradeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public GradeController() {
        super();
     }
       	
  protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  Separator.init(request);
	  System.out.println("GradeController get 진입");
		}			
}

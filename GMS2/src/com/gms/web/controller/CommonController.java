package com.gms.web.controller;

import java.io.IOException;

import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.gms.web.constants.Action;
import com.gms.web.domain.MemberBean;
import com.gms.web.service.MemberService;
import com.gms.web.service.MemberServiceImpl;
import com.gms.web.util.DispatcherServlet;
import com.gms.web.util.Separator;

@WebServlet({"/home.do","/common.do"})
public class CommonController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session =request.getSession();
		MemberBean m =null;
    	Separator.init(request); 
		switch (Separator.cmd.getAction()) {
			case Action.MOVE:
				DispatcherServlet.send(request, response);
				break;
			case Action.LOGIN:
				MemberService service = MemberServiceImpl.getInstance();
				m =new MemberBean();
				System.out.println("로그인(commoncontrollor)"+request.getParameter("id"));
				m.setId(request.getParameter("id"));
				m.setPassword(request.getParameter("password"));
				Map<String,Object> map=service.login(m);
				if(map.get("page").equals("main")){
					session.setAttribute("user", map.get("user"));
				}				
				Separator.cmd.setPage(String.valueOf((map.get("page"))));
				Separator.cmd.process();
				DispatcherServlet.send(request, response);
				break;
			case Action.LOGOUT:
				session.invalidate();
				DispatcherServlet.send(request, response);
				break;			
			default:
				break;
			}
		}			

	}



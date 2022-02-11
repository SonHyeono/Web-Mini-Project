package kpizza.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kpizza.model.KPizzaService;

@WebServlet("/controller")
public class KPizzaController extends HttpServlet {

	public KPizzaController() {
		super();
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		process(request, response);
	}

	protected void process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");

		// command pattern
		String command = request.getParameter("command");
	
	try{
		
		if(command.equals("kpizzaClientAll")){//모든 probono project 정보 검색
			kpizzaClientAll(request, response);
		} else if(command.equals("kpizzaMenuAll")){
			kpizzaMenuAll(request, response);
		}
		
		
		
		
		
		
		
		
	}catch(Exception s){
		request.setAttribute("errorMsg", s.getMessage());
		request.getRequestDispatcher("showError.jsp").forward(request, response);
		s.printStackTrace();
	}
	}

	

	private void kpizzaClientAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "showError.jsp";
		try {
			request.setAttribute("kpizzaClientAll",KPizzaService.getAllClient());
			url = "probonoProjectList.jsp";
		}catch(Exception s){
			request.setAttribute("errorMsg", s.getMessage());
			s.printStackTrace();
		}
		request.getRequestDispatcher(url).forward(request, response);
		
	}
	private void kpizzaMenuAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			request.setAttribute("kpizzaMenuAll",KPizzaService.getAllMenu());
		}catch(Exception s){
			request.setAttribute("errorMsg", s.getMessage());
			s.printStackTrace();
		}
		request.getRequestDispatcher("KPizza.html").forward(request, response);
		
	}
}

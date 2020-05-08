package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import front.Icommand;
import model.MemberDAO;
import model.MemberDTO;



public class LogoutCon implements Icommand {

	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String moveURL = "Home.jsp";
		HttpSession session = request.getSession();
	      session.removeAttribute("info");
	      
	     return moveURL;
	}

}

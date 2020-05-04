package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import front.Icommand;
import model.MemberDAO;
import model.MemberDTO;



public class JoinCon implements Icommand {
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String moveURL = null;
		String id = request.getParameter("id");
		String pw= request.getParameter("pw");
		String email=request.getParameter("email");
		String tel=request.getParameter("tel");
		String gender = request.getParameter("gender");
		MemberDTO dto= new MemberDTO(id,pw,email,tel,gender);
		MemberDAO dao = MemberDAO.getDAO();
		
		int cnt = dao.join(dto);
		System.out.println("ȸ�����Լ���?"+cnt);
		if(cnt==1) {
			moveURL = "Login.jsp";
		}else {
			moveURL = "Join.jsp";
		}
		
		return moveURL;
	}

}

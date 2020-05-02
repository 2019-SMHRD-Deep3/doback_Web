package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Front.Icommand;
import model.MemberDAO;
import model.MemberDTO;



public class LoginCon implements Icommand {
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String moveURL = null;
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		MemberDTO dto = new MemberDTO(id,pw);
		MemberDAO dao = MemberDAO.getDAO();
		MemberDTO info = dao.login(dto);
		
		if(info != null) {
			HttpSession session = request.getSession();
			session.setAttribute("info", info);
		}
		if(info == null) {
			moveURL = "Login.jsp"; //로그인 페이지 or 아이디 비번 찾기 페이지
		}else {
			moveURL = "Study.jsp";
		}
		
		
		
		return moveURL;
	}

}

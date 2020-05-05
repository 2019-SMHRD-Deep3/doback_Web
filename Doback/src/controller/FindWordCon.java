package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import front.Icommand;
import model.WordDAO;
import model.WordDTO;

public class FindWordCon implements Icommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String moveURL = null;
		int wordnum = Integer.parseInt(request.getParameter("wordnum"));
		
		WordDTO dto = new WordDTO(wordnum);
		WordDAO dao = WordDAO.getDAO();
		WordDTO info = dao.findWord(dto);
		
		if(info != null) {
			HttpSession session = request.getSession();
			session.setAttribute("info", info);
		}
		
		if(info == null) {
			moveURL = ".jsp";
		}else {
			moveURL = ".jsp";
		}
		
		return moveURL;
	}

}

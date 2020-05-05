package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import front.Icommand;
import model.WordDAO;
import model.WordDTO;


public class InsertWordCon implements Icommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String moveURL = null;
		int wordnum = Integer.parseInt(request.getParameter("wordnum"));
		String word = request.getParameter("word");
		
		WordDTO dto = new WordDTO(wordnum, word);
		WordDAO dao = WordDAO.getDAO();
		int cnt = dao.insertWord(dto);
		
		if(cnt==1) {
			moveURL = ".jsp";
		}else {
			moveURL = ".jsp";
		}
		
		return moveURL;
	}

}

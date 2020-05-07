package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import front.Icommand;
import model.EducationDAO;
import model.EducationDTO;

public class InsertEducationCon implements Icommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String moveURL = null;
		int word1 = Integer.parseInt(request.getParameter("word1"));
		int word2 = Integer.parseInt(request.getParameter("word2"));
		int word3 = Integer.parseInt(request.getParameter("word3"));
		int sentence1 = Integer.parseInt(request.getParameter("sentence1"));
		int sentence2 = Integer.parseInt(request.getParameter("sentence2"));
		int allsim = Integer.parseInt(request.getParameter("allsim"));
		int uk = Integer.parseInt(request.getParameter("uk"));
		int us = Integer.parseInt(request.getParameter("us"));
		int recordnum = Integer.parseInt(request.getParameter("recordnum"));
		int idnum = Integer.parseInt(request.getParameter("idnum"));
		
		EducationDTO dto = new EducationDTO(word1, word2, word3, sentence1, sentence2,
				allsim, uk, us, recordnum,idnum);
		EducationDAO dao = EducationDAO.getDAO();
		int cnt = dao.insertEducation(dto);
		
		if(cnt==1) {
			moveURL = ".jsp";
		}else {
			moveURL = ".jsp";
		}
		
		return moveURL;
	}
	
	

}

package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import front.Icommand;
import model.EduHistoryDAO;
import model.EduHistoryDTO;

public class InsertEduHistoryCon implements Icommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String moveURL = null;
		int historynum = Integer.parseInt(request.getParameter("historynum"));
		int edunum = Integer.parseInt(request.getParameter("edunum"));
		
		EduHistoryDTO dto = new EduHistoryDTO(historynum, edunum);
		EduHistoryDAO dao = EduHistoryDAO.getDAO();
		int cnt = dao.insertEduHistory(dto);
		
		if(cnt==1) {
			moveURL = ".jsp";
		}else {
			moveURL = ".jsp";
		}
		
		return moveURL;
	}

}

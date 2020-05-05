package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import front.Icommand;
import model.EduHistoryDAO;
import model.EduHistoryDTO;

public class FindEduHistoryCon implements Icommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String moveURL = null;
		int historynum = Integer.parseInt(request.getParameter("historynum"));
		
		EduHistoryDTO dto = new EduHistoryDTO(historynum);
		EduHistoryDAO dao = EduHistoryDAO.getDAO();
		EduHistoryDTO info = dao.findEduHistory(dto);
		
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

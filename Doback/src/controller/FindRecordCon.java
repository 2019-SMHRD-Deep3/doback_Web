package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import front.Icommand;
import model.RecordDAO;
import model.RecordDTO;

public class FindRecordCon implements Icommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String moveURL = null;
		int recordnum = Integer.parseInt(request.getParameter("recordnum"));
		
		RecordDTO dto = new RecordDTO(recordnum);
		RecordDAO dao = RecordDAO.getDAO();
		RecordDTO info = dao.findRecord(dto);
		
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

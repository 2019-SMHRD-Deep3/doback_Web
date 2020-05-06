package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import front.Icommand;
import model.RecordDAO;
import model.RecordDTO;

public class InsertRecordCon implements Icommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String moveURL = null;
		String record = request.getParameter("record");
		int wordnum = Integer.parseInt(request.getParameter("wordnum"));
		String recorddate = request.getParameter("recorddate");
		
		RecordDTO dto = new RecordDTO(record, wordnum);
		RecordDAO dao = RecordDAO.getDAO();
		int cnt = dao.insertRecord(dto);
		
		if(cnt==1) {
			moveURL = ".jsp";
		}else {
			moveURL = ".jsp";
		}
		
		return moveURL;
	}

}

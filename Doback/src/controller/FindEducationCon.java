package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import front.Icommand;
import model.EducationDAO;
import model.EducationDTO;

public class FindEducationCon implements Icommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String moveURL = null;
		int edunum = Integer.parseInt(request.getParameter("deunum"));
		
		EducationDTO dto = new EducationDTO(edunum);
		EducationDAO dao = EducationDAO.getDAO();
		EducationDTO info = dao.findEducation(dto);
		
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

package front;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.FindEduHistoryCon;
import controller.FindRecordCon;
import controller.FindWordCon;
import controller.InsertAnalysisResult;
import controller.InsertEduHistoryCon;
import controller.InsertEducationCon;
import controller.InsertRecordCon;
import controller.InsertWordCon;
import controller.JoinCon;
import controller.LoginCon;
import controller.LogoutCon;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private HashMap<String, Icommand> map = new HashMap<String, Icommand>();
	
	private void putData() {
		map.put("JoinService.do", new JoinCon());
		map.put("LoginService.do", new LoginCon());
		map.put("InsertAnalysis.do", new InsertAnalysisResult());
		map.put("InsertEducation.do", new InsertEducationCon());
		map.put("InsertEduHistory.do", new InsertEduHistoryCon());
		map.put("FindEduHistory.do", new FindEduHistoryCon());
		map.put("InsertRecord.do", new InsertRecordCon());
		map.put("FindRecord.do", new FindRecordCon());
		map.put("InsertWord.do", new InsertWordCon());
		map.put("FindWord.do", new FindWordCon());
		map.put("LogoutService.do", new LogoutCon());
		
	}
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		System.out.println("FrontController ¿‘¿Â!");
		
		
		String requestURI = request.getRequestURI();
		System.out.println(requestURI);
		String contextPath = request.getContextPath();
		System.out.println(contextPath);
		String resultURL = requestURI.substring(contextPath.length() + 1);
		String moveURL = null;
		System.out.println(resultURL);

		putData();
		Icommand iCommand = map.get(resultURL);
		moveURL = iCommand.execute(request, response);
		response.sendRedirect(moveURL);
		System.out.println("123123");

	}

}

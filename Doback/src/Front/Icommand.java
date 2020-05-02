package Front;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Icommand {
	public String execute(HttpServletRequest request, HttpServletResponse response);

}

package unit02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SelectSevlet
 */
@WebServlet("/SelectSevlet")
public class SelectSevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectSevlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		String job = request.getParameter("job");
		String interests[] = request.getParameterValues("interest");
		PrintWriter out = response.getWriter();

		
		out.println("<html><body>");
		out.print("당신이 선택한 직업  <hr>");
	
		out.println(job);
		out.println("</b><br>이메일: <b><pre>");
		if (interests == null) {
			out.print("선택한 항목없음");
			
		} else {
			for (String interest: interests) {
				out.print(interest + " ");
				
			}
		}
		out.println("<body><html>");
		out.close();
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

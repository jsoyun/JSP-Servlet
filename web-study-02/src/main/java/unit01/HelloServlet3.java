package unit01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloServlet3
 */
@WebServlet("/hello3")
public class HelloServlet3 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html ; charset = UTF-8");
		PrintWriter out = response.getWriter();
		out.print("<html><body><h1>");
		out.print("hello Servlet한글을 넣어보았다.");
		out.print("</h1></body></html>");
		out.close();
		
	
		
	}

}

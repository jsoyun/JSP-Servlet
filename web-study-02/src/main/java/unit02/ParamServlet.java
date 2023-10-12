package unit02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ParamServlet
 */
@WebServlet("/ParamServlet")
public class ParamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ParamServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset =UTF-8");
		String id = request.getParameter("id");
		int age= Integer.parseInt(request.getParameter("age"));
		System.out.println("id" + id);
		System.out.println("age" + age);
		
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		out.print("당신이 입력한 정보입니다 <br>");
		out.println("아이디:");
		out.println(id);
		out.println("나:");
		out.println(age);
		
		//자바스크립트로 이전페이지로 이동하는 링크를 만들어줌
		out.println("<br><a href='javascript:history.go(-1)'>다시 </a>");
		out.println("<body><html>");
		
			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//http://localhost/jsp_126/MemberServlet
@WebServlet("/MemberServlet")
public class MemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MemberServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		System.out.println("doGet() 메서드 호출~");
		//한글 안깨지게 처리
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		//jsp에서 넘어온 값 읽어온다
		String strID = request.getParameter("userID");
	    String strName = request.getParameter("userName"); 
		String strEmail = request.getParameter("userEmail");
		
		PrintWriter out = response.getWriter();
		//출력 스트림 printWriter의 print() 메서드를 사용하여 웹브라우저에 출력한다
				out.print("<html>");
				out.print("<head>");
				out.print("<title></title>");
				out.print("</head>");
				out.print("<body>");
				out.print("<h3> 회원페이지 </h3>");
				out.print("ID : " + strID);
				out.print("<br>NAME : " + strName);
				out.print("<br>EMAIL : " + strEmail);
				out.print("</body>");
				out.print("</html>");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doGet(request, response);
	}

}

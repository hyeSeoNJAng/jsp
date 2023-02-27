package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/FirstServlet")
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
/*
		HttpServletRequest :클라이언트의 요청정보를 저장한다
		HttpServletResponse	:응답정보를 저장한다
*/    


	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		System.out.println("doCet() 메서드 호출");
		
		response.setContentType("text/html; charset=UTF-8");
/*
 * 		PrintWriter : 	웹브라우저 html로 출력하기 위한 출력 스트림
 * 						서블릿은 자바파일이기 때문에 응답하기 위한 html코드가 없으므로 prinwiter라는 출력스트림을 만들어서 html 코드를 작성한다.
 * 
 * 		
 */
		PrintWriter out = response.getWriter();
		//출력 스트림 printWriter의 print() 메서드를 사용하여 웹브라우저에 출력한다
		out.print("<html>");
		out.print("<head>");
		out.print("<title></title>");
		out.print("</head>");
		out.print("<body>");
		out.print("<h3> 첫 서블릿 페이지</h3>");
		out.print("현재시간은 ");
		out.print(new Date());
		out.print("</body>");
		out.print("</html>");

		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doGet(request, response);
	}

}

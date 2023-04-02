package kr.or.ddit.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.or.ddit.dao.IEmailDAO;
import kr.or.ddit.service.EmailServiceImpl;
import kr.or.ddit.service.IEmailService;
import kr.or.ddit.vo.EmailVO;

/**
 * Servlet implementation class Email
 */
@WebServlet("/email.do")
public class Email extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String sender = request.getParameter("sender");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String date = request.getParameter("date");
		
		EmailVO vo  = new EmailVO();
		vo.setEmail_id(id);
		vo.setEmail_sender(sender);
		vo.setEmail_title(title);
		vo.setEmail_content(content);
		vo.setEmail_date(date);
		
		IEmailService service = EmailServiceImpl.getInstance();
		
		int res =service.insertMail(vo);
		response.sendRedirect(request.getContextPath()+ "/Project_2/HomePage.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

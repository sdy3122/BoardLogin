package kr.co.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.member.MemberDAO;
import kr.co.member.MemberVO;

public class LoginAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// 1. 필터,리스너 아직 사용안함 ->인코딩 처리
		req.setCharacterEncoding("UTF-8");
		res.setCharacterEncoding("UTF-8");
		// 2. output
		ActionForward forward = new ActionForward();
		forward.setPath("/main.do");
		forward.setRedirect(true);
		// 3. 로직처리
		String mid = req.getParameter("mid");
		String mpw = req.getParameter("mpw");
		MemberDAO dao = new MemberDAO();
		MemberVO vo = new MemberVO();
		vo.setMid(mid);
		vo.setMpw(mpw);
		vo = dao.selectOne(vo);
		System.out.println(vo);
		if (vo == null) {// login.jsp
			System.out.println("로그: 로그인실패");
			forward.setPath("/login.jsp");
			forward.setRedirect(true);
		} else {// main.jsp
			HttpSession session = req.getSession();
			session.setAttribute("data", vo);
			session.setAttribute("check", true);
			forward.setPath("/main.do");
			forward.setRedirect(true);
		}
		return forward;
	}

}

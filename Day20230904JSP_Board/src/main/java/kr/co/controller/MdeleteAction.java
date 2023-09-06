package kr.co.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.member.MemberDAO;
import kr.co.member.MemberVO;

public class MdeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		ActionForward forward = null;
		//회원탈퇴하고나서
		//HttpSession session = req.getSession(false);
		//session.invalidate();
		MemberDAO dao = new MemberDAO();
		MemberVO vo = new MemberVO();
		vo.setMid(req.getParameter("mid"));
		if(dao.delete(vo)) {
			HttpSession session = req.getSession(false);
			session.invalidate();
			forward = new ActionForward();
			forward.setPath("/login.jsp");
		} else {
			throw new Exception("회원탈퇴실패");
		}
		return forward;
	}

}

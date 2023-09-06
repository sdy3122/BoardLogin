package kr.co.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.member.MemberDAO;
import kr.co.member.MemberVO;

public class SignupAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		//1. 필터,리스너 아직 사용안함 ->인코딩 처리
		req.setCharacterEncoding("UTF-8");
		res.setCharacterEncoding("UTF-8");
		//2. output
		ActionForward forward = null;
		//3.로직처리
		String mid = req.getParameter("mid");
		String mpw = req.getParameter("mpw");
		String mname = req.getParameter("mname");
		MemberDAO dao = new MemberDAO();
		MemberVO vo = new MemberVO();
		vo.setMid(mid);
		vo.setMpw(mpw);
		vo.setMname(mname);
		if(dao.insert(vo)) {
			forward = new ActionForward();
			forward.setPath("/login.jsp");
			forward.setRedirect(true);
		}else {
			throw new Exception("회원가입 에러발생");
		}		
		return forward;
	}

}

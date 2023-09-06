package kr.co.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.member.MemberDAO;
import kr.co.member.MemberVO;

public class MupdateAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// 1. 필터,리스너 아직 사용안함 ->인코딩 처리
		req.setCharacterEncoding("UTF-8");
		res.setCharacterEncoding("UTF-8");
		// 2. output
		ActionForward forward = null;
		String mid = req.getParameter("mid");
		String mpw = req.getParameter("mpw");
		MemberDAO dao = new MemberDAO();
		MemberVO vo = new MemberVO();
		vo.setMid(mid);
		vo.setMpw(mpw);
		if (dao.update(vo)) {
			forward = new ActionForward();
			forward.setPath("/logout.do");
			forward.setRedirect(true);
		} else {
			throw new Exception("비밀번호 변경에서 에러발생!");
		}
		return forward;
	}

}

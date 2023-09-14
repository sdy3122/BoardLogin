package kr.co.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MypageAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// 1. 필터,리스너 아직 사용안함 ->인코딩 처리
		req.setCharacterEncoding("UTF-8");
		res.setCharacterEncoding("UTF-8");
		// 2. output
		ActionForward forward = new ActionForward();
		HttpSession session = req.getSession(false);
		System.out.println("세션 : " + session);
		req.setAttribute("id", session.getAttribute("mid"));
		req.setAttribute("pw", session.getAttribute("mpw"));
		req.setAttribute("name", session.getAttribute("mname"));
		
		forward.setPath("/mypage.jsp");
		forward.setRedirect(false);
		return forward;
	}

}

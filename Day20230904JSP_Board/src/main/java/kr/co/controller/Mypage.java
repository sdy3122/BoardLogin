package kr.co.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Mypage implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// 1. 필터,리스너 아직 사용안함 ->인코딩 처리
		req.setCharacterEncoding("UTF-8");
		res.setCharacterEncoding("UTF-8");
		// 2. output
		ActionForward forward = new ActionForward();
		forward.setPath("/mypage.jsp");
		forward.setRedirect(false);

		// 3.로직처리
		
		return forward;
	}

}

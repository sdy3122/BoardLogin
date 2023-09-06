package kr.co.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.board.BoardDAO;
import kr.co.board.BoardVO;

public class InsertAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// 1. 필터,리스너 아직 사용안함 ->인코딩 처리
		req.setCharacterEncoding("UTF-8");
		res.setCharacterEncoding("UTF-8");
		// 2. output
		ActionForward forward = null;
		// 3.로직처리
		BoardDAO dao = new BoardDAO();
		BoardVO vo = new BoardVO();
		vo.setWriter(req.getParameter("writer"));
		vo.setContent(req.getParameter("content"));
		if (dao.insert(vo)) {
			forward = new ActionForward();
			forward.setPath("/main.do");
			forward.setRedirect(true);
		} else {
			throw new Exception("로그: 게시글등록실패");
		}
		return forward;
	}

}

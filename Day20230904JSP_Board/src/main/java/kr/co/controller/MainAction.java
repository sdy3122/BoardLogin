package kr.co.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.board.BoardDAO;
import kr.co.board.BoardVO;

public class MainAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		//1. 필터,리스너 아직 사용안함 ->인코딩 처리
		req.setCharacterEncoding("UTF-8");
		res.setCharacterEncoding("UTF-8");
		//2. output
		ActionForward forward = new ActionForward();
		forward.setPath("/main.jsp");
		forward.setRedirect(false);
		
		//3.로직처리
		BoardDAO dao = new BoardDAO();
		ArrayList<BoardVO> datas = dao.selectAll();
		req.setAttribute("dyoung", datas);
		
		return forward;
	}
}

/*
 * index.jsp로부터 넘어온 최초 DB연결요청
 * 1. DB->DAO selectAll() ->datas[MODEL]
 * ArrayList<BoardVO> datas = dao.selectAll(vo);
 * 2. datas setAttribute()[Controller]
 * request.setAttribute("data",datas);
 * 3. main.jsp로 이동 [VIEW]
 * pageContext.forward("main.jsp");
*/
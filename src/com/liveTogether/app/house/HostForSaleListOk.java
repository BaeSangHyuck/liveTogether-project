package com.liveTogether.app.house;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.liveTogether.action.Action;
import com.liveTogether.action.ActionForward;
import com.liveTogether.app.house.dao.HouseDAO;
import com.liveTogether.app.house.vo.HouseDTO;
import com.liveTogether.app.member.dao.MemberDAO;

public class HostForSaleListOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		HouseDTO dto = new HouseDTO();
		HouseDAO dao = new HouseDAO();
		MemberDAO mDao = new MemberDAO();
		ActionForward af = new ActionForward();
		HttpSession session = req.getSession();
		String memberId = (String)session.getAttribute("memberId");
		
		dto.setMemberId(memberId);
		
		
		// 아래의 삼항 연산자를 깔끔하게 하기 위하여 temp 변수에 리퀘스트 값을 받아준다.
		String temp = req.getParameter("page");

		// 사용자가 가고싶은 게시물 페이지 (예를 들어 15번째 게시글은 2페이지에 있다.)
		// 처음 공지사항 페이지에 들어오게 되면 게시물 목록 페이지는 1페이지기 때문에 디폴트 값을 1로 준다.
		int page = temp == null ? 1 : Integer.parseInt(temp);

		// 한 페이지당 10개의 게시물이 나타나게 설정
		int rowCount = 10;

		// 목록의 페이지(항목 아님 )를 한 번에 몇 개 보여줄건지 정한다.
		int pageSize = 10;

		// 게시물 목록 1페이지당 몇 개의 게시물 항목이 보이게 할 것인지
		int startRow = (page - 1) * rowCount;

		dto.setStartRow(startRow);
		dto.setRowCount(rowCount);
		// ex) 1 ...... 10 페이징 처리 시 이렇게 되어있을때 1을 의미한다.
		int startPage = ((page - 1) / pageSize) * pageSize + 1;

		// ex) 1....... 10 페이징 처리 시 이렇게 되어있을때 10을 의미한다.
		int endPage = startPage + pageSize - 1;

		int total = dao.getForSaleTotal(dto);
		// endPage보다 게시글 숫자가 적을 수 있으니 endPage와 비교해줄 변수를 만들어준다.
		int realEndPage = (int) Math.ceil(total / (double) rowCount);

		// endPage와 realEndPage를 비교하여 실제 화면에 표시할 endPage를 결정한다.
		endPage = endPage > realEndPage ? realEndPage : endPage;
		
		req.setAttribute("member", mDao.getInfo(memberId));
		req.setAttribute("houseList", dao.getForSaleList(memberId));
		req.setAttribute("page", page);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("realEndPage", realEndPage);
		req.setAttribute("total", total);

		af.setRedirect(false);
		af.setPath("/member/hostforsalelist.jsp");

		return af;
	}

}

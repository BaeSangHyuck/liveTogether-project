package com.liveTogether.app.member;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.liveTogether.action.Action;
import com.liveTogether.action.ActionForward;
import com.liveTogether.app.member.dao.MemberDAO;
import com.liveTogether.app.member.vo.RoomGuestDTO;

public class HostRejectListOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		HttpSession session = req.getSession();
		String memberId = (String) session.getAttribute("memberId");
		HashMap<String, Integer> roomMap = new HashMap<>();
		ActionForward af = new ActionForward();
		MemberDAO dao = new MemberDAO();
		ArrayList<RoomGuestDTO> alDTO = new ArrayList<>();
		
		// 게시글의 전체 갯수
		int total = dao.getRoomTotalFifth();

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
		int startRow = (page -1) * rowCount;
		
		// ex) 1 ...... 10 페이징 처리 시 이렇게 되어있을때 1을 의미한다.
		int startPage = ((page - 1) / pageSize) * pageSize + 1;
		
		// ex) 1....... 10 페이징 처리 시 이렇게 되어있을때 10을 의미한다.
		int endPage = startPage + pageSize -1;
		
		// endPage보다 게시글 숫자가 적을 수 있으니 endPage와 비교해줄 변수를 만들어준다.
		int realEndPage = (int)Math.ceil(total / (double)rowCount);
		
		//endPage와 realEndPage를 비교하여 실제 화면에 표시할 endPage를 결정한다.
		endPage = endPage > realEndPage ? realEndPage : endPage;
		
		//roomMap에다가 key값과 value값을 넣어준다.
		roomMap.put("startRow", startRow);
		roomMap.put("rowCount", rowCount);
		
		for (int i = 0; i < dao.selectGuestAllFifth(roomMap).size(); i++) {
			RoomGuestDTO dto = new RoomGuestDTO();
			dto.setHouseNumber(dao.selectRoomAllFifth(roomMap).get(i).getHouseNumber());
			dto.setRoomName(dao.selectRoomAllFifth(roomMap).get(i).getRoomName());
			dto.setRoomType(dao.selectRoomAllFifth(roomMap).get(i).getRoomType());
			dto.setRoomGender(dao.selectRoomAllFifth(roomMap).get(i).getRoomGender());
			dto.setStatus(dao.selectRoomAllFifth(roomMap).get(i).getStatus());
			dto.setMemberName(dao.selectGuestAllFifth(roomMap).get(i).getMemberName());
			dto.setMemberGender(dao.selectGuestAllFifth(roomMap).get(i).getMemberGender());
			dto.setMemberPhone(dao.selectGuestAllFifth(roomMap).get(i).getMemberPhone());
			alDTO.add(dto);
		}
		
		req.setAttribute("member", dao.getInfo(memberId));
		req.setAttribute("roomList", alDTO);
		req.setAttribute("page", page);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("realEndPage", realEndPage);
		req.setAttribute("total", total);
		
		af.setRedirect(false);
		af.setPath("/member/hostrejectlist.jsp");

		return af;
	}

}

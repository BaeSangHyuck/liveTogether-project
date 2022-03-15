package com.liveTogether.app.house;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.liveTogether.action.Action;
import com.liveTogether.action.ActionForward;
import com.liveTogether.app.house.dao.HouseDAO;
import com.liveTogether.app.house.vo.HouseRoomVO;
import com.liveTogether.app.house.vo.HouseVO;

public class HouseRegisterOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		
		ActionForward af = new ActionForward();
		HouseVO vo = new HouseVO();	
		HouseRoomVO rvo = new HouseRoomVO();
		HouseDAO dao = new HouseDAO();
		HttpSession session = req.getSession();
//		String check = null;
	
		
//		check = req.getParameter("houseType");
		
		session.getAttribute("memberId");
		vo.setHouseType(req.getParameter("houseType"));
		vo.setHouseAddress(req.getParameter("houseAddress"));
		vo.setHouseAddressDetail(req.getParameter("houseAddressDetail"));
		vo.setHouseLocation(req.getParameter("houseLocation"));
		vo.setOpAircon(req.getParameter("opAircon"));
		vo.setOpCentralHeat(req.getParameter("opCentralHeat"));
		vo.setOpLocalHeat(req.getParameter("opLocalHeat"));
		vo.setOpRefrigerator(req.getParameter("opRefrigerator"));
		vo.setOpWasher(req.getParameter("opWasher"));
		vo.setOpGasrange(req.getParameter("opGasrange"));
		vo.setOpInduction(req.getParameter("opInduction"));
		vo.setOpMicrowave(req.getParameter("opMicrowave"));
		vo.setOpDesk(req.getParameter("opDesk"));
		vo.setOpDoorlock(req.getParameter("opDoorlock"));
		vo.setOpBed(req.getParameter("opBed"));
		vo.setOpCloset(req.getParameter("opCloset"));
		vo.setOpShoes(req.getParameter("opShoes"));
		vo.setOpSink(req.getParameter("opSink"));
		vo.setOpInterphone(req.getParameter("opInterphone"));
		vo.setOpWindow(req.getParameter("opWindow"));
		vo.setOpCctv(req.getParameter("opCctv"));
		vo.setOpVeranda(req.getParameter("opVeranda"));
		vo.setOpDelivery(req.getParameter("opDelivery"));
		vo.setOpFirealarm(req.getParameter("opFirealarm"));
		vo.setHouseParking(req.getParameter("houseParking"));
		vo.setHouseElevator(req.getParameter("houseElevator"));
		vo.setHousePet(req.getParameter("housePet"));
		vo.setHouseContent(req.getParameter("houseContent"));
		vo.setHouseMessage(req.getParameter("houseMessage"));
		
		dao.regist(vo);

		rvo.setRoomName(req.getParameter("roomName"));
		rvo.setRoomGender(req.getParameter("roomGender"));
		rvo.setRoomType(req.getParameter("roomType"));
		rvo.setRoomDeposit(Integer.parseInt(req.getParameter("roomDeposit")));
		rvo.setRoomMonthly(Integer.parseInt(req.getParameter("roomMonthly")));
		rvo.setRoomArea(req.getParameter("roomArea"));
		rvo.setRoomDate(req.getParameter("roomDate"));
		rvo.setHouseNumber(vo.getId());
		
		dao.registroom(rvo);
			
		af.setRedirect(true);
		af.setPath(req.getContextPath() + "/house/houseRegister.jsp");
		
		return af;
	
	}
	
}

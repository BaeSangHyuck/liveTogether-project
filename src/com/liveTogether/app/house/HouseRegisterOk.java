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

<<<<<<< HEAD
public class HouseRegisterOk implements Action {
=======
public class HouseRegisterOk implements Action{
>>>>>>> a402fa9fed8941f229c96b24de38b554cdcb3433

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
<<<<<<< HEAD

		ActionForward af = new ActionForward();
		HouseVO vo = new HouseVO();
		HouseRoomVO rvo = new HouseRoomVO();
		HouseDAO dao = new HouseDAO();
		HttpSession session = req.getSession();
		int houseMax = 0;
		String houseGender = null;
		boolean manCheck = false;
		boolean womanCheck = false;

=======
		
		ActionForward af = new ActionForward();
		HouseVO vo = new HouseVO();	
		HouseRoomVO rvo = new HouseRoomVO();
		HouseDAO dao = new HouseDAO();
		HttpSession session = req.getSession();
//		String check = null;
	
		
//		check = req.getParameter("houseType");
		
>>>>>>> a402fa9fed8941f229c96b24de38b554cdcb3433
		session.getAttribute("memberId");
		vo.setHouseType(req.getParameter("houseType"));
		vo.setHouseAddress(req.getParameter("houseAddress"));
		vo.setHouseAddressDetail(req.getParameter("houseAddressDetail"));
<<<<<<< HEAD
		vo.setLatitude(Double.parseDouble(req.getParameter("latitude")));
		vo.setLongitude(Double.parseDouble(req.getParameter("longitude")));
=======
>>>>>>> a402fa9fed8941f229c96b24de38b554cdcb3433
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
<<<<<<< HEAD
		String[] roomName = req.getParameterValues("roomName");
		String[] roomType = req.getParameterValues("roomType");
		String[] roomGender = { req.getParameter("roomGender1"), req.getParameter("roomGender2"),
		req.getParameter("roomGender3"), req.getParameter("roomGender4"), req.getParameter("roomGender5"),
		req.getParameter("roomGender6"), req.getParameter("roomGender7"), req.getParameter("roomGender8") };
		String[] roomDeposit = req.getParameterValues("roomDeposit");
		String[] roomMonthly = req.getParameterValues("roomMonthly");
		String[] roomArea = req.getParameterValues("roomArea");
		String[] roomDate = req.getParameterValues("roomDate");

		for (int i = 0; i < roomName.length; i++) {
			houseMax += Integer.parseInt(roomType[i]);
			System.out.println(roomGender[i]);
			if (roomGender[i].equals("m")) {
				manCheck = true;
			}
			if (roomGender[i].equals("w")) {
				womanCheck = true;
			}
		}

		if (manCheck == true && womanCheck == true) {
			houseGender = "o";
		} else if (manCheck == true && womanCheck == false) {
			houseGender = "m";
		} else if (manCheck == false && womanCheck == true) {
			houseGender = "w";
		}

		vo.setHouseMax(houseMax);
		vo.setHouseGender(houseGender);
		dao.regist(vo);

		for (int i = 0; i < roomName.length; i++) {
			rvo.setRoomName(roomName[i]);
			rvo.setRoomType(roomType[i]);
			rvo.setRoomGender(roomGender[i]);
			rvo.setRoomDeposit(Integer.parseInt(roomDeposit[i]));
			rvo.setRoomMonthly(Integer.parseInt(roomMonthly[i]));
			rvo.setRoomArea(roomArea[i]);
			rvo.setRoomDate(roomDate[i]);
			rvo.setHouseNumber(vo.getId());
			dao.registroom(rvo);
		}

		af.setRedirect(true);
		af.setPath(req.getContextPath() + "/main/main.jsp");

		return af;

	}

=======
		
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
	
>>>>>>> a402fa9fed8941f229c96b24de38b554cdcb3433
}

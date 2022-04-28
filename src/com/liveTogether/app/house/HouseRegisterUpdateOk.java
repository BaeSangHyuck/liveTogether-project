package com.liveTogether.app.house;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.liveTogether.action.Action;
import com.liveTogether.action.ActionForward;
import com.liveTogether.app.house.dao.HouseDAO;
import com.liveTogether.app.house.dao.HouseFileDAO;
import com.liveTogether.app.house.vo.HouseFileVO;
import com.liveTogether.app.house.vo.HouseRoomVO;
import com.liveTogether.app.house.vo.HouseVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class HouseRegisterUpdateOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");

		String uploadFolder = "C:\\aigb_0900_bsh\\jsp\\workspace\\liveTogether\\WebContent\\upload";

		int fileSize = 1024 * 1024 * 50;// 50M
		HouseFileDAO fDao = new HouseFileDAO();
		// 요청객체, 업로드폴더 경로, 파일의 크기, 인코딩 방식, 이름변경정책
		MultipartRequest multi = new MultipartRequest(req, uploadFolder, fileSize, "UTF-8",
				new DefaultFileRenamePolicy());

		ActionForward af = new ActionForward();
		HouseVO vo = new HouseVO();
		HouseRoomVO rvo = new HouseRoomVO();
		HouseDAO hDao = new HouseDAO();
		HttpSession session = req.getSession();
		int houseMax = 0;
		String houseGender = null;
		boolean manCheck = false;
		boolean womanCheck = false;
		int houseNumber = Integer.parseInt(multi.getParameter("houseNumber"));
		List<HouseFileVO> houseFileName = fDao.getHouseImg(houseNumber);

		houseFileName = fDao.getHouseImg(houseNumber);

		fDao.delete(houseNumber);

		houseFileName.forEach(file -> {
			File f = new File(uploadFolder, file.getHousefileName());
			if (f.exists()) {	f.delete();	}
		});
		try {	Thread.sleep(3000);	} catch (InterruptedException e) {;}

		vo.setHouseNumber(houseNumber);
		vo.setMemberId((String) session.getAttribute("memberId"));
		vo.setHouseType(multi.getParameter("houseType"));
		vo.setHouseAddress(multi.getParameter("houseAddress"));
		vo.setHouseAddressDetail(multi.getParameter("houseAddressDetail"));
		vo.setLatitude(Double.parseDouble(multi.getParameter("latitude")));
		vo.setLongitude(Double.parseDouble(multi.getParameter("longitude")));
		vo.setHouseLocation(multi.getParameter("houseLocation"));
		vo.setOpAircon(multi.getParameter("opAircon"));
		vo.setOpCentralHeat(multi.getParameter("opCentralHeat"));
		vo.setOpLocalHeat(multi.getParameter("opLocalHeat"));
		vo.setOpRefrigerator(multi.getParameter("opRefrigerator"));
		vo.setOpWasher(multi.getParameter("opWasher"));
		vo.setOpGasrange(multi.getParameter("opGasrange"));
		vo.setOpInduction(multi.getParameter("opInduction"));
		vo.setOpMicrowave(multi.getParameter("opMicrowave"));
		vo.setOpDesk(multi.getParameter("opDesk"));
		vo.setOpDoorlock(multi.getParameter("opDoorlock"));
		vo.setOpBed(multi.getParameter("opBed"));
		vo.setOpCloset(multi.getParameter("opCloset"));
		vo.setOpShoes(multi.getParameter("opShoes"));
		vo.setOpSink(multi.getParameter("opSink"));
		vo.setOpInterphone(multi.getParameter("opInterphone"));
		vo.setOpWindow(multi.getParameter("opWindow"));
		vo.setOpCctv(multi.getParameter("opCctv"));
		vo.setOpVeranda(multi.getParameter("opVeranda"));
		vo.setOpDelivery(multi.getParameter("opDelivery"));
		vo.setOpFirealarm(multi.getParameter("opFirealarm"));
		vo.setHouseParking(multi.getParameter("houseParking"));
		vo.setHouseElevator(multi.getParameter("houseElevator"));
		vo.setHousePet(multi.getParameter("housePet"));
		vo.setHouseContent(multi.getParameter("houseContent"));
		vo.setHouseMessage(multi.getParameter("houseMessage"));
		String[] roomName = multi.getParameterValues("roomName");
		String[] roomType = multi.getParameterValues("roomType");
		String[] roomGender = { multi.getParameter("roomGender1"), multi.getParameter("roomGender2"),
				multi.getParameter("roomGender3"), multi.getParameter("roomGender4"), multi.getParameter("roomGender5"),
				multi.getParameter("roomGender6"), multi.getParameter("roomGender7"),
				multi.getParameter("roomGender8") };
		String[] roomDeposit = multi.getParameterValues("roomDeposit");
		String[] roomMonthly = multi.getParameterValues("roomMonthly");
		String[] roomArea = multi.getParameterValues("roomArea");
		String[] roomDate = multi.getParameterValues("roomDate");

		for (int i = 0; i < roomName.length; i++) {
			houseMax += Integer.parseInt(roomType[i]);
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
		hDao.updateInfo(vo);

		for (int i = 0; i < roomName.length; i++) {
			rvo.setRoomName(roomName[i]);
			rvo.setRoomType(roomType[i]);
			rvo.setRoomGender(roomGender[i]);
			rvo.setRoomDeposit(Integer.parseInt(roomDeposit[i]));
			rvo.setRoomMonthly(Integer.parseInt(roomMonthly[i]));
			rvo.setRoomArea(roomArea[i]);
			rvo.setRoomDate(roomDate[i]);
			rvo.setHouseNumber(houseNumber);
			hDao.updateRoomInfo(rvo);
		}

		// 파일추가
		fDao.insertHF(multi, houseNumber);

		af.setRedirect(false);
		af.setPath("/house/HostForSaleListOk.ho");

		return af;
	}

}

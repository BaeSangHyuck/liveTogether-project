package com.liveTogether.app.house;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.liveTogether.action.Action;
import com.liveTogether.action.ActionForward;
import com.liveTogether.app.house.dao.HouseDAO;
import com.liveTogether.app.house.vo.HouseDTO;

public class MainBannerOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ActionForward af = new ActionForward();
		HouseDAO dao = new HouseDAO();
		List<HouseDTO> bannerList = dao.bannerList();
		
		req.setAttribute("bannerList", bannerList);
		
		for (int i = 0; i <6; i++) {
			System.out.println(bannerList.get(i).getHouseNumber());
			System.out.println(bannerList.get(i).getHousefileName());
		}
		
		af.setRedirect(false);
		af.setPath("/member/Main.me");
		return af;
	}

}

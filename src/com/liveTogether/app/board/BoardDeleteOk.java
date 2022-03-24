package com.liveTogether.app.board;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.liveTogether.action.Action;
import com.liveTogether.action.ActionForward;
import com.liveTogether.app.board.dao.BoardDAO;
import com.liveTogether.app.board.dao.FilesDAO;
import com.liveTogether.app.board.vo.FilesVO;

public class BoardDeleteOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		String uploadFolder = "c:\\aigb_0900_bsh\\Jsp\\workspace\\liveTogether\\WebContent\\upload";
		int boardNumber = Integer.parseInt(req.getParameter("boardNumber"));
		BoardDAO bDao = new BoardDAO();
		FilesDAO fDao = new FilesDAO();
		ActionForward af = new ActionForward();
		
		List<FilesVO> files = fDao.select(boardNumber);
		
		fDao.delete(boardNumber);
		bDao.delete(boardNumber);
		
		for (int i = 0; i < files.size(); i++) {
			File f = new File(uploadFolder, files.get(i).getFileName());
			if(f.exists()) {
				f.delete();
			}
		}
		
		af.setRedirect(true);
		af.setPath(req.getContextPath() + "/board/BoardListOk.bo");
		
		return af;
	}
}
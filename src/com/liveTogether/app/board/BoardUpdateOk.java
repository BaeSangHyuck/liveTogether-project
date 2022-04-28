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
import com.liveTogether.app.board.vo.BoardVO;
import com.liveTogether.app.board.vo.FilesVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class BoardUpdateOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		BoardVO board = new BoardVO();
		BoardDAO bDao = new BoardDAO();
		List<FilesVO> files = null;
		FilesDAO fDao = new FilesDAO();
		ActionForward af = new ActionForward();
		
		String uploadFolder = "C:\\aigb_0900_bsh\\Jsp\\workspace\\liveTogether\\WebContent\\upload";
		int fileSize = 1024 * 1024 * 5; //5M
		int boardNumber = 0;
		
		//파일을 form으로 전달할 때 MultipartRequest로 받는다.
		MultipartRequest multi = new MultipartRequest(req, uploadFolder, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		
		boardNumber = Integer.parseInt(multi.getParameter("boardNumber"));
		board.setBoardTitle(multi.getParameter("boardTitle"));
		board.setBoardContent(multi.getParameter("boardContent"));
		board.setBoardNumber(boardNumber);
		
		files = fDao.select(boardNumber);
		

		bDao.update(board);
		fDao.delete(boardNumber);
		fDao.insert(multi, boardNumber);

		
		files.forEach(file -> {
			File f = new File(uploadFolder, file.getFileName());
			if(f.exists()) {f.delete();}
		});
		try {Thread.sleep(3000);} catch (InterruptedException e) {;}

		af.setRedirect(true);
		af.setPath(req.getContextPath() + "/board/BoardListOk.bo");

		
		return af;
	}

}
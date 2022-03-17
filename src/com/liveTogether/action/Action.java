package com.liveTogether.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Action {
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException;
}

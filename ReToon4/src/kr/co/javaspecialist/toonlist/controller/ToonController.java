package kr.co.javaspecialist.toonlist.controller;

import org.apache.log4j.Logger;

import kr.co.javaspecialist.common.controller.CommandHandler;
import kr.co.javaspecialist.toonlist.model.IToonDAO;
import kr.co.javaspecialist.toonlist.model.ToonDAO;

public abstract class ToonController implements CommandHandler{
	static final Logger logger = Logger.getLogger(ToonController.class);

	IToonDAO toonDao = new ToonDAO();

}
package kr.co.javaspecialist.toonlist.model;

import java.util.ArrayList;

public interface IToonDAO {
	ArrayList<ToonVO> getAllToons();
	ArrayList<ToonVO> getRecToons();
}

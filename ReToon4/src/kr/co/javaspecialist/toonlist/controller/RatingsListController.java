package kr.co.javaspecialist.toonlist.controller;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.javaspecialist.toonlist.model.ToonVO;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

public class RatingsListController extends ToonController{
public String process(HttpServletRequest request, HttpServletResponse response) {
		
		ArrayList<ToonVO> toons = toonDao.getAllToons();
		request.setAttribute("toonList", toons);
		logger.info(toons);
		try {
			if("json".equals(request.getParameter("list"))) {
				//ArrayList의 데이터를 JSON 데이터로 변환
				Gson gson = new Gson();
				String jsonStr = gson.toJson(toons);
				response.setCharacterEncoding("utf-8");
				response.getWriter().println(jsonStr);
				response.getWriter().flush();
				//JSON 데이터를 객체로 변환
				Type collectionType = new TypeToken<List<ToonVO>>(){}.getType();
				List<ToonVO> lists = gson.fromJson(jsonStr, collectionType);
				logger.info(lists);
				return null;
			}
		}catch(Exception e) {
			throw new RuntimeException(e);
		}
		System.out.println("1");
		return "/ratingslist/ratingslist.jsp";
	}

}
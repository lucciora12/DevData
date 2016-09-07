package kr.co.javaspecialist.toonlist.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.apache.log4j.Logger;

import kr.co.javaspecialist.common.db.DBConn;

public class ToonDAO implements IToonDAO {
	static final Logger logger = Logger.getLogger(ToonDAO.class);
	
	@Override
	public ArrayList<ToonVO> getAllToons() {
		ArrayList<ToonVO> lists = new ArrayList<ToonVO>();
		String sql = "select * from webtoons";
		Connection con = DBConn.getConnection();
		try {
			PreparedStatement stmt = con.prepareStatement(sql);

			ResultSet rs = stmt.executeQuery();
			while(rs.next()) {
				ToonVO vo = new ToonVO();
				vo.setSerialId(rs.getInt("serial_id"));
				vo.setTitle(rs.getString("TITLE"));
				vo.setGenre(rs.getString("GENRE"));
				vo.setStoryWriter(rs.getString("STORYWRITER"));
				vo.setIllustrator(rs.getString("ILLUSTRATOR"));
				vo.setPlatform(rs.getString("PLATFORM"));
				vo.setStartdate(rs.getString("STARTDATE"));
				vo.setAddress(rs.getString("ADDRESS"));
				vo.setWeekday(rs.getString("WEEKDAY"));
				vo.setImage(rs.getString("IMAGE"));
				lists.add(vo);
			}
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally { 
			DBConn.closeConnection(con); 
		}
		return lists;
	}
	@Override
	public ArrayList<ToonVO> getRecToons() {
		ArrayList<ToonVO> lists = new ArrayList<ToonVO>();
		String sql = "select * from webtoons";
		Connection con = DBConn.getConnection();
		try {
			PreparedStatement stmt = con.prepareStatement(sql);

			ResultSet rs = stmt.executeQuery();
			while(rs.next()) {
				ToonVO vo = new ToonVO();
				vo.setSerialId(rs.getInt("serial_id"));
				vo.setTitle(rs.getString("TITLE"));
				vo.setGenre(rs.getString("GENRE"));
				vo.setStoryWriter(rs.getString("STORYWRITER"));
				vo.setIllustrator(rs.getString("ILLUSTRATOR"));
				vo.setPlatform(rs.getString("PLATFORM"));
				vo.setStartdate(rs.getString("STARTDATE"));
				vo.setAddress(rs.getString("ADDRESS"));
				vo.setWeekday(rs.getString("WEEKDAY"));
				vo.setImage(rs.getString("IMAGE"));
				lists.add(vo);
			}
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally { 
			DBConn.closeConnection(con); 
		}
		return lists;
	}
}

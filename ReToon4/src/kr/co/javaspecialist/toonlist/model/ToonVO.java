package kr.co.javaspecialist.toonlist.model;

public class ToonVO {
	private int serialId;
	private String title;
	private String genre;
	private String storyWriter;
	private String illustrator;
	private String platform;
	private String startdate;
	private String address;
	private String weekday;
	private String image;
	
	public ToonVO() {};
	
	public ToonVO(int serialId, String title, String genre, String storyWriter,
			String illustrator, String platform, String startdate,
			String address, String weekday, String image) {
		super();
		this.serialId = serialId;
		this.title = title;
		this.genre = genre;
		this.storyWriter = storyWriter;
		this.illustrator = illustrator;
		this.platform = platform;
		this.startdate = startdate;
		this.address = address;
		this.weekday = weekday;
		this.image = image;
	}
	public int getSerialId() {
		return serialId;
	}
	public void setSerialId(int serialId) {
		this.serialId = serialId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getStoryWriter() {
		return storyWriter;
	}
	public void setStoryWriter(String storyWriter) {
		this.storyWriter = storyWriter;
	}
	public String getIllustrator() {
		return illustrator;
	}
	public void setIllustrator(String illustrator) {
		this.illustrator = illustrator;
	}
	public String getPlatform() {
		return platform;
	}
	public void setPlatform(String platform) {
		this.platform = platform;
	}
	public String getStartdate() {
		return startdate;
	}
	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getWeekday() {
		return weekday;
	}
	public void setWeekday(String weekday) {
		this.weekday = weekday;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	@Override
	public String toString() {
		return "RecVO [serialId=" + serialId + ", title=" + title + ", genre="
				+ genre + ", storyWriter=" + storyWriter + ", illustrator="
				+ illustrator + ", platform=" + platform + ", startdate="
				+ startdate + ", address=" + address + ", weekday=" + weekday
				+ ", image=" + image + "]";
	}
	
}

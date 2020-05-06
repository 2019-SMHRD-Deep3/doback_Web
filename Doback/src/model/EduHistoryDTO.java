package model;

public class EduHistoryDTO {
	private int historynum;
	private int edunum;
	
	public EduHistoryDTO(int historynum, int edunum) {
		super();
		this.historynum = historynum;
		this.edunum = edunum;
	}
	
	public EduHistoryDTO(int historynum) {
		this.historynum = historynum;
	}

	public int getHistorynum() {
		return historynum;
	}

	public void setHistorynum(int historynum) {
		this.historynum = historynum;
	}

	public int getEdunum() {
		return edunum;
	}

	public void setEdunum(int edunum) {
		this.edunum = edunum;
	}
	
}

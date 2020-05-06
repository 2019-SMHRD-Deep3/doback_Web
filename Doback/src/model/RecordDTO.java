package model;

public class RecordDTO {
	private int recordnum;
	private String record;
	private int vocanum;
	private String recorddate;
	private int idnum;
	public RecordDTO(int recordnum, String record, int vocanum, String recorddate, int idnum) {
		this.recordnum = recordnum;
		this.record = record;
		this.vocanum = vocanum;
		this.recorddate = recorddate;
		this.idnum = idnum;
	}
	public RecordDTO(int vocanum, int recordnum,String record) {		
		this.vocanum = vocanum;
		this.recordnum = recordnum;
		this.record = record;
	}
	


	public int getRecordnum() {
		return recordnum;
	}
	public void setRecordnum(int recordnum) {
		this.recordnum = recordnum;
	}
	public String getRecord() {
		return record;
	}
	public void setRecord(String record) {
		this.record = record;
	}
	public int getWordnum() {
		return vocanum;
	}
	public void setWordnum(int vocanum) {
		this.vocanum = vocanum;
	}
	public String getRecorddate() {
		return recorddate;
	}
	public void setRecorddate(String recorddate) {
		this.recorddate = recorddate;
	}
	public int getIdnum() {
		return idnum;
	}
	public void setIdnum(int idnum) {
		this.idnum = idnum;
	}
	


}

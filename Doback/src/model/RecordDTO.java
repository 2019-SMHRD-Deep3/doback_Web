package model;

public class RecordDTO {
	private int recordnum;
	private String record;
	private int wordnum;
	private String recorddate;
	private int idnum;
	public RecordDTO(int recordnum, String record, int wordnum, String recorddate, int idnum) {
		super();
		this.recordnum = recordnum;
		this.record = record;
		this.wordnum = wordnum;
		this.recorddate = recorddate;
		this.idnum = idnum;
	}
	public RecordDTO(int wordnum, int recordnum,String record) {		
		this.wordnum = wordnum;
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
		return wordnum;
	}
	public void setWordnum(int wordnum) {
		this.wordnum = wordnum;
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

package model;

public class RecordDTO {
	private int recordnum;
	private String record;
	private int wordnum;
	private String recorddate;
	
	public RecordDTO(String record, int wordnum) {
		super();
		this.record = record;
		this.wordnum = wordnum;

	}
	
	public RecordDTO(int recordnum) {
		this.recordnum = recordnum;
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
	
	

}

package model;

public class EducationDTO {
	private int edunum;
	private int word1;
	private int word2;
	private int word3;
	private int sentence1;
	private int sentence2;
	private int allsim;
	private int uk;
	private int us;
	private int recordnum;
	private int idnum;
	private int sysdate;
	
	
	public EducationDTO() {
	}
	
	public EducationDTO(int edunum,int idnum) {
		this.edunum = edunum;
		this.idnum = idnum;
	}
	
	public int getIdnum() {
		return idnum;
	}


	

	public void setSysdate(int sysdate) {
		this.sysdate = sysdate;
	}
	

	public EducationDTO(int edunum, int word1, int word2, int word3, int sentence1, int sentence2, int allsim, int uk,
			int us, int recordnum, int idnum) {
		super();
		this.edunum = edunum;
		this.word1 = word1;
		this.word2 = word2;
		this.word3 = word3;
		this.sentence1 = sentence1;
		this.sentence2 = sentence2;
		this.allsim = allsim;
		this.uk = uk;
		this.us = us;
		this.recordnum = recordnum;
		this.idnum = idnum;
		
	}




	public EducationDTO(int word1, int word2, int word3, int sentence1, int sentence2, int allsim, int uk, int us,
			int recordnum, int idnum) {
		super();
		this.word1 = word1;
		this.word2 = word2;
		this.word3 = word3;
		this.sentence1 = sentence1;
		this.sentence2 = sentence2;
		this.allsim = allsim;
		this.uk = uk;
		this.us = us;
		this.recordnum = recordnum;
		this.idnum = idnum;
	}



	public int getEdunum() {
		return edunum;
	}

	public void setEdunum(int edunum) {
		this.edunum = edunum;
	}

	public int getWord1() {
		return word1;
	}

	public void setWord1(int word1) {
		this.word1 = word1;
	}

	public int getWord2() {
		return word2;
	}

	public void setWord2(int word2) {
		this.word2 = word2;
	}

	public int getWord3() {
		return word3;
	}

	public void setWord3(int word3) {
		this.word3 = word3;
	}

	public int getSentence1() {
		return sentence1;
	}

	public void setSentence1(int sentence1) {
		this.sentence1 = sentence1;
	}

	public int getSentence2() {
		return sentence2;
	}

	public void setSentence2(int sentence2) {
		this.sentence2 = sentence2;
	}

	public int getAllsim() {
		return allsim;
	}

	public void setAllsim(int allsim) {
		this.allsim = allsim;
	}

	public int getUk() {
		return uk;
	}

	public void setUk(int uk) {
		this.uk = uk;
	}

	public int getUs() {
		return us;
	}

	public void setUs(int us) {
		this.us = us;
	}


	public int getRecordnum() {
		return recordnum;
	}

	public void setRecordnum(int recordnum) {
		this.recordnum = recordnum;
	}


}
package model;

public class VocaDTO {
	private int Vocanum;
	private String Voca;
	
	public VocaDTO(int Vocanum, String Voca) {
		super();
		this.Vocanum = Vocanum;
		this.Voca = Voca;
	}

	public VocaDTO(int Vocanum) {
		this.Vocanum = Vocanum;
	}

	public int getVocanum() {
		return Vocanum;
	}

	public void setVocanum(int Vocanum) {
		this.Vocanum = Vocanum;
	}

	public String getVoca() {
		return Voca;
	}

	public void setVoca(String Voca) {
		this.Voca = Voca;
	}
	
	
}

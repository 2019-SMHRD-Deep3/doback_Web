package model;

public class WordDTO {
	private int wordnum;
	private String word;
	
	public WordDTO(int wordnum, String word) {
		super();
		this.wordnum = wordnum;
		this.word = word;
	}

	public WordDTO(int wordnum) {
		this.wordnum = wordnum;
	}

	public int getWordnum() {
		return wordnum;
	}

	public void setWordnum(int wordnum) {
		this.wordnum = wordnum;
	}

	public String getWord() {
		return word;
	}

	public void setWord(String word) {
		this.word = word;
	}
	
	
}

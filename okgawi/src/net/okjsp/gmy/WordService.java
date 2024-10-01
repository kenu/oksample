package net.okjsp.gmy;

import java.util.Random;

public class WordService {
	
	Word word = new Word();
	Random random = new Random();

	public String getJSON() {
		return getJSON(random.nextInt(word.getLength()));
	}

	public String getJSON(int idx) {
		String[] words = word.getWords();
		String[] sources = word.getSources();
		
		return "{\"word\":\"" + words[idx] + "\", \"source\":\""+sources[idx]+"\"}";
	}

}

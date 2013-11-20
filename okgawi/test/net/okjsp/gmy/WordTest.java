package net.okjsp.gmy;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertThat;

import org.junit.Test;

public class WordTest {

	@Test
	public void test() {
		assertThat(new WordService().getJSON(0), is("{\"word\":\"교육(education)과 "
				+ "강의(instruction)는 다른 개념이다. 강의는 수학, 과학, 지리, 역사를 머릿속에 입력해 주는 "
				+ "것이지만, 교육은 강의를 통해 입력한 지식을 어떻게 삶에 적용하고 미래에 활용할지를 바르게 "
				+ "알도록 해 주는 것이다. 대다수의 학교는 강의에는 능숙하지만 진정한 교육은 잘 하지 못하는 "
				+ "것 같다.\", \"source\":\"(협동조합으로 기업하라, 스테파노 지마니 지음, 송성호 옮김, "
				+ "붇돋움, p215)\"}"));
		
	}

}

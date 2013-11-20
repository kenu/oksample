package net.okjsp.gmy;

import static org.junit.Assert.*;

import org.junit.Test;

public class GawiDaoTest {

	@Test
	public void test() {
		GawiDao dao = new GawiDao();
		User firstUser = new User("name1", 0);
		User secondUser = new User("name2", 1);
		Game game = new Game(firstUser, secondUser, "127.0.0.1");
		dao.save(game);
		fail("Not yet implemented");
	}

}

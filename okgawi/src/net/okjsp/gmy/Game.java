package net.okjsp.gmy;

public class Game {
	private User firstUser;
	private User secondUser;
	private String ip;

	public Game(User firstUser, User secondUser, String ip) {
		this.setFirstUser(firstUser);
		this.setSecondUser(secondUser);
		this.ip = ip;
	}

	public User getFirstUser() {
		return firstUser;
	}

	public void setFirstUser(User firstUser) {
		this.firstUser = firstUser;
	}

	public User getSecondUser() {
		return secondUser;
	}

	public void setSecondUser(User secondUser) {
		this.secondUser = secondUser;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	@Override
	public String toString() {
		return "Game [firstUser=" + firstUser + ", secondUser=" + secondUser
				+ ", ip=" + ip + "]";
	}

}

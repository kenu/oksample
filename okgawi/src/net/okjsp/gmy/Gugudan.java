package net.okjsp.gmy;

import java.util.Scanner;

public class Gugudan {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		int i = scanner.nextInt();
		scanner.close();
		for (; i <= 9; i++) {
			printDan(args, i);
		}
		
	}
	@Raddler

	public static void printDan(String[] args, int i) {
		for (int j = 1; j <= 19; j++) {
			System.out.println(i + " x " + j + " = " + i * j);
		}
	}

}

package services;

import java.util.ArrayList;
import java.util.List;

public class Ehdokkaat {
	
	
	private static ArrayList<Ehd> ehdokkaat1 = new ArrayList<>();
        // static initializer called when class is loaded
	static {   
		ehdokkaat1 = new ArrayList<>();
		ehdokkaat1.add(new Ehd(1, "John Johnson", 45));
		ehdokkaat1.add(new Ehd(2, "Jim Jimmy", 27));
	}
	
	
	public static List<Ehd> getEhdokkaat() {
		return ehdokkaat1;
	}
	public static int getNextId() {
		return ehdokkaat1.stream().mapToInt( b -> b.getId()).max().getAsInt() + 1;
	}
}

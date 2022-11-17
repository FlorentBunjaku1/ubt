package Ushtrimi4;

public class Fakulteti {
	private String drejtimi;
	private StafiAkademik[] s;
	private int index;
	public	Fakulteti(String drejtimi, int numri) {
		this.drejtimi = drejtimi;
		s = new StafiAkademik[numri];
	}
	public boolean exist(StafiAkademik st) {
		for(int i = 0;i < index;i++) {
			if(s[i].equals(st)) {
				return true;
			}
		}
		return false;
	}
	public void shtoStafin(StafiAkademik st) {
		if(st == null) {
			System.out.println("Ka vleren null");
			return;
		}
		if(exist(st)) {
			System.out.println("Ekziston ne varg");
			return;
		}
		if(index == s.length) {
			System.out.println("Nuk ka vend ne varg");
			return;
		}
		s[index++] = st;
	}
	public StafiAkademik stafiIRregulltMeIRi(boolean rregullt) {
		StafiAkademik iRi = null;
		for(int i = 0;i < index;i++) {
			if(s[i].getIRregullt() == rregullt) {
				if(iRi == null || iRi.getVitiLindjes() < s[i].getVitiLindjes()) {
					iRi = s[i];
				}
			}
		}
		return iRi;
	}
	public Mesimdhenesi[] mentoretEVitit(boolean mentoron) {
		int count = 0;
		for(int i = 0; i < index;i++) {
			if(s[i] instanceof Mesimdhenesi) {
				Mesimdhenesi m = (Mesimdhenesi)s[i];
				if(m.mentoron() == mentoron) {
					count++;
				}
			}
		}
		Mesimdhenesi[] temp = new Mesimdhenesi[count];
		int tempIndex = 0;
		for(int i = 0; i < index;i++) {
			if(s[i] instanceof Mesimdhenesi) {
				Mesimdhenesi m = (Mesimdhenesi)s[i];
				if(m.mentoron() == mentoron) {
					temp[tempIndex++] = m;
				}
			}
		}
		return temp;
	}
	public static void main(String[] args) {
		Fakulteti f = new Fakulteti("Shkenca Kompjuterike",15);
		
	}
}

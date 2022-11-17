package Ushtrimi4;

public class Profesori extends Mesimdhenesi{
	private String thirrjaAkademike;
	
	public Profesori(String emri, int vitiLindjes, boolean iRregullt,String thirrjaAkademike) {
		super(emri,vitiLindjes,iRregullt,"Ligjerata");
		this.thirrjaAkademike = thirrjaAkademike;
	}
	
	public boolean mentoron() {
		return true;
	}
	public void setThirrjaAkademike(String thirrjaAkademike) {
		this.thirrjaAkademike = thirrjaAkademike;
	}
	public String getThirrjaAkademike() {
		return thirrjaAkademike;
	}
	public String toString() {
		return "Profesori " + super.toString() + ", ka thirrje " + thirrjaAkademike;
	}
}

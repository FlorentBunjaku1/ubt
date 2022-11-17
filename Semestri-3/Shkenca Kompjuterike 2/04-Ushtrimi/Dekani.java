package Ushtrimi4;

public class Dekani extends StafiAkademik {
	private String gradaAkademike;
	
	public Dekani(String emri, int vitiLindjes,String gradaAkademike) {
		super(emri,vitiLindjes,true);	
		this.gradaAkademike = gradaAkademike;
	}
	public void setGradaAkademike(String gradaAkademike) {
		this.gradaAkademike = gradaAkademike;
	}
	public String getGradaAkademike() {
		return gradaAkademike;
	}
	public String toString() {
		return "Dekani " + gradaAkademike + super.toString();
	}
}

package Ushtrimi4;

public class Asistenti extends Mesimdhenesi{
	private String llojiUshtrimeve;
	
	public Asistenti(String emri, int vitiLindjes, boolean iRregullt,String llojiUshtrimeve) {
		super(emri,vitiLindjes,iRregullt,"Ushtrime");
		this.llojiUshtrimeve = llojiUshtrimeve;
	}
	public boolean mentoron() {
		return false;
	}
	public void setLlojiUshtrimeve(String llojiUshtrimeve) {
		this.llojiUshtrimeve = llojiUshtrimeve;
	}
	public String getLlojiUshtrimeve() {
		return llojiUshtrimeve;
	}
	public String toString() {
		return "Asistenti " + super.toString() + llojiUshtrimeve;
 	}
}

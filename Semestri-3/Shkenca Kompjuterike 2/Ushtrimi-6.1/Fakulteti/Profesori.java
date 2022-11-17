package Ushtrimi7;

public class Profesori extends Mesimdhenesi {
	
	private String thirrjaAkademike;

	public Profesori(String emri, int vitiLindjes, String fushaStudimit, String thirrjaAkademike) {
		super(emri, vitiLindjes,fushaStudimit);
		this.thirrjaAkademike = thirrjaAkademike;
	}
	public void setThirrjaAkademike(String thirrjaAkademike){
		this.thirrjaAkademike = thirrjaAkademike;
	}
	public String getThirrjaAkademike(){
		return thirrjaAkademike;
	}
	
	public String toString(){
		return "Profesori " + super.toString() + ", ka thirrje " + thirrjaAkademike; 
	}
	
//	Implementimi i metodes abstrakte te definuar ne interfac-in Angazhohet
	public String getAngazhimi() {
		return "Ligjerata";
	}
}

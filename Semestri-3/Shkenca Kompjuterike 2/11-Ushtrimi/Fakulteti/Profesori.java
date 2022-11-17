public class Profesori extends Mesimdhenesi {
	
	private String thirrjaAkademike;

	public Profesori(String emri, int vitiLindjes, String fushaStudimit, String thirrjaAkademike) throws MesimdhenesiException {
		super(emri, vitiLindjes,fushaStudimit);
		if(thirrjaAkademike == null || thirrjaAkademike.trim() == "")
			throw new MesimdhenesiException("Thirrja Akademike nuk duhet te jet e zbrazet!");
		else
			this.thirrjaAkademike = thirrjaAkademike;
	}
	public void setThirrjaAkademike(String thirrjaAkademike) throws MesimdhenesiException {
		if(thirrjaAkademike == null || thirrjaAkademike.trim() == "")
			throw new MesimdhenesiException("Thirrja Akademike nuk duhet te jet e zbrazet!");
		else
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

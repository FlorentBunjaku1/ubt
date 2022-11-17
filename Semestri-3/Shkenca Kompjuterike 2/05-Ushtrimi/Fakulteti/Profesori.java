

public class Profesori extends Mesimdhenesi{
	private String thirrjaAkademike;

	public Profesori(String emri, int vitiLindjes,String thirrjaAkademike){
		super(emri,vitiLindjes,"Ligjerata");
		this.thirrjaAkademike = thirrjaAkademike;
	}

	public void setThirrjaAkademike(String thirrjaAkademike){
		this.thirrjaAkademike = thirrjaAkademike;
	}
	public String getThirrjaAkademike(){
		return thirrjaAkademike;
	}
	public boolean mentoron(){
		return true;
	}	
	
	public String toString(){
		return "Profesori " + super.toString() + ", ka thirrje " + thirrjaAkademike; 
	}
	

}
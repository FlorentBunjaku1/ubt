public class Profesori extends Mesimdhenesi{
	private String thirrjaAkademike;

	public Profesori(String emri, int vitiLinjes, String thirrjaAkademike){
		super(emri,vitiLinjes,"Ligjerata");
		this.thirrjaAkademike = thirrjaAkademike;
	}
	public void setThirrjaAkademike(String a){
		thirrjaAkademike = a;
	}
	public String getThirrjaAkademike(){
		return thirrjaAkademike;
	}
	public String toString(){
		return "Profesori " + super.toString() +", ka thirrje " + thirrjaAkademike;//provo qe nven te toStringut me e maru tre!!!
	}
}
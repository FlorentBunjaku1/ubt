public class Asistenti extends Mesimdhenesi{
	private String llojiUshtrimeve;

	public Asistenti(String emri, int vitiLindjes,String llojiUshtrimeve){
		super(emri, vitiLindjes,"Ushtrime");
		this.llojiUshtrimeve = llojiUshtrimeve;
	}
	public void setLlojiUshtrimeve(String l){
		llojiUshtrimeve = l;
	}
	public String getLlojiUshtrimeve(){
		return llojiUshtrimeve;
	}
	public String toString(){
		return "Asistenti " + super.toString() + " " + llojiUshtrimeve;
	}
}
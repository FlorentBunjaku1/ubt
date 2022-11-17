public class Asistenti extends Mesimdhenesi{
	private String llojiUshtrimeve;

	public Asistenti(String emri, int vitiLindjes,String llojiUshtrimeve){
		super(emri,vitiLindjes,"Ushtrime");
		this.llojiUshtrimeve = llojiUshtrimeve;
	}
	public void setLlojiUshtrimeve(String llojiUshtrimeve){
		this.llojiUshtrimeve = llojiUshtrimeve;
	}
	public String getLlojiUshtrimeve(){
		return llojiUshtrimeve;
	}
	public boolean mentoron(){
		return false;
	}
	//Asistenti <emri> : < vitiLindjes > mban <angazhimi> <llojiUshtrimeve>
	public String toString(){
		return "Asistenti " + super.toString() + ", " + llojiUshtrimeve;
	}	
}
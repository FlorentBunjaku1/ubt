package Ushtrimi7;

public class Asistenti extends Mesimdhenesi{
	private String llojiUshtrimeve;

	public Asistenti(String emri, int vitiLindjes, String fushaStudimit,String llojiUshtrimeve) {
		super(emri,vitiLindjes,fushaStudimit);
		this.llojiUshtrimeve = llojiUshtrimeve;
	}
	public void setLlojiUshtrimeve(String llojiUshtrimeve){
		this.llojiUshtrimeve = llojiUshtrimeve;
	}
	public String getLlojiUshtrimeve(){
		return llojiUshtrimeve;
	}
	
	@Override
	public String toString(){
		return "Asistenti " + super.toString() + " " + llojiUshtrimeve;
	}	
	
//	Mbishkrimi i metodes mentoron e cila eshte e trasheguar nga interfac-i
	@Override
	public boolean mentoron(){
		return false;
	}
//	Impelementimi i metodes getAngazhimi te trasheguara nga interface-i
	@Override
	public String getAngazhimi() {
		return "Ushtrime";
	}
	
}

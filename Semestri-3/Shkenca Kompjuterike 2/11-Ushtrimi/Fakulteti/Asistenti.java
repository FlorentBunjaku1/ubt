

public class Asistenti extends Mesimdhenesi{
	private String llojiUshtrimeve;

	public Asistenti(String emri, int vitiLindjes, String fushaStudimit,String llojiUshtrimeve) throws MesimdhenesiException{
		super(emri,vitiLindjes,fushaStudimit);
		if(llojiUshtrimeve == null || llojiUshtrimeve.trim() == "")
			throw new MesimdhenesiException("Lloji i Ushtrimeve nuk duhet te jet i zbrazet!");
		else
			this.llojiUshtrimeve = llojiUshtrimeve;
	}
	public void setLlojiUshtrimeve(String llojiUshtrimeve) throws MesimdhenesiException{
		if(llojiUshtrimeve == null || llojiUshtrimeve.trim() == "")
			throw new MesimdhenesiException("Lloji i Ushtrimeve nuk duhet te jet i zbrazet!");
		else
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

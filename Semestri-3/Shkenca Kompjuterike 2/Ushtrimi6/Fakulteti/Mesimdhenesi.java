
public  abstract class Mesimdhenesi{
	private String emri; //Ro
	private int vitiLindjes;
	private String angazhimi;

	public Mesimdhenesi(String emri, int vitiLindjes,String angazhimi){
		this.emri = emri;
		this.vitiLindjes = vitiLindjes;
		this.angazhimi = angazhimi;
	}
	public void setVitiLindjes(int vitiLindjes){
		this.vitiLindjes = vitiLindjes;
	}
	public void setAngazhimi(String angazhimi){
		this.angazhimi = angazhimi;
	}
	public String getEmri(){
		return emri;
	}
	public int getVitiLindjes(){
		return vitiLindjes;
	}
	public String getAngazhimi(){
		return angazhimi;
	}

	public abstract boolean mentoron();

	public String toString(){
		return emri + " : " + vitiLindjes + " angazhohet ne " + angazhimi;
	}


	public boolean equals(Object obj){
		if(obj instanceof Mesimdhenesi){
			Mesimdhenesi m = (Mesimdhenesi)obj;
			if(emri.equals(m.getEmri()) && vitiLindjes == m.getVitiLindjes()){
				return true;
			}
		}
		return false;
	}
}
public class Mesimdhenesi{
	private String emri; //readOnly
	private int vitiLindjes;
	private String angazhimi;

	public Mesimdhenesi(String emri, int vitiLindjes, String angazhimi){
		this.emri = emri;
		this.vitiLindjes = vitiLindjes;
		this.angazhimi = angazhimi;
	}
	public String getEmri(){
		return emri;
	}
	public void setVitiLindjes(int v){
		vitiLindjes = v;
	}
	public int getVitiLindjes(){
		return vitiLindjes;
	}
	public void setAngazhimi(String a){
		angazhimi = a;
	}
	public String getAngazhimi(){
		return angazhimi;
	}
	public String toString(){
		return emri + " : " + vitiLindjes + " mban " +  angazhimi;
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
package Ushtrimi7;

public abstract class Mesimdhenesi implements Angazhohet {
	private String emri; //readOnly
	private int vitiLindjes;
	private String fushaStudimit;
	
	public Mesimdhenesi(String emri, int vitiLindjes, String fushaStudimit) {
		this.emri = emri;
		this.vitiLindjes = vitiLindjes;
		this.fushaStudimit = fushaStudimit;
	}
	public void setVitiLindjes(int vitiLindjes) {
		this.vitiLindjes = vitiLindjes;
	}
	public void setFushaStudimit(String fushaStudimit) {
		this.fushaStudimit = fushaStudimit;
	}
	public String getEmri() {
		return emri;
	}
	public int getVitiLindjes() {
		return vitiLindjes;
	}
	public String getFushaStudimit() {
		return fushaStudimit;
	}
	public String toString(){
		return emri + " : " + vitiLindjes + " me fushe studimi " + fushaStudimit;
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



public abstract class Mesimdhenesi implements Angazhohet {
	private String emri; //readOnly
	private int vitiLindjes;
	private String fushaStudimit;
	
	public Mesimdhenesi(String emri, int vitiLindjes, String fushaStudimit) throws MesimdhenesiException{
		if(emri == null || emri.trim() == "")
			throw new MesimdhenesiException("Emri i mesimdhenesit nuk duhet te jet i zbrazet!");
		else
			this.emri = emri;
		if(vitiLindjes >= 2010 || vitiLindjes <= 1800)
			throw new MesimdhenesiException("Vit i Lindjes i pa lejuar!");
		else 
			this.vitiLindjes = vitiLindjes;
		if(fushaStudimit == null || fushaStudimit.trim() == "")
			throw new MesimdhenesiException("Fusha e Studimit nuk duhet te jet e zbrazet!");
		else
			this.fushaStudimit = fushaStudimit;
	}
	public void setVitiLindjes(int vitiLindjes) throws MesimdhenesiException{
		if(vitiLindjes >= 2010 || vitiLindjes <= 1800)
			throw new MesimdhenesiException("Vit i Lindjes i pa lejuar!");
		else 
			this.vitiLindjes = vitiLindjes;
	}
	public void setFushaStudimit(String fushaStudimit) throws MesimdhenesiException{
		if(fushaStudimit == null || fushaStudimit.trim() == "")
			throw new MesimdhenesiException("Fusha e Studimit nuk duhet te jet e zbrazet!");
		else
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

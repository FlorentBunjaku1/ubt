public abstract class Automjeti implements Vozitet {
	private String nrShasise;//ReadOnly
	private String prodhuesi;
	private int vitiProdhimit;

	public Automjeti(String nrShasise, String prodhuesi, int vitiProdhimit) throws AutomjetiException{
		if(nrShasise == null || nrShasise.trim() == "")
			throw new AutomjetiException("Numri Shasise nuk duhet te jet zbrazet!");
		else
			this.nrShasise = nrShasise;
		if(prodhuesi == null || prodhuesi.trim() == "")
			throw new AutomjetiException("Prodhuesi nuk duhet te jet i zbrazet!");
		else
			this.prodhuesi = prodhuesi;
		if(vitiProdhimit < 1970 || vitiProdhimit > 2020)
			throw new AutomjetiException("Viti i prodhimit nuk eshte valid!");
		else
			this.vitiProdhimit = vitiProdhimit;
	}
	public void setProdhuesi(String prodhuesi) throws AutomjetiException{
		if(prodhuesi == null || prodhuesi.trim() == "")
			throw new AutomjetiException("Prodhuesi nuk duhet te jet i zbrazet!");
		else
			this.prodhuesi = prodhuesi;
	}
	public void setVitiProdhimit(int vitiProdhimit) throws AutomjetiException{
		if(vitiProdhimit < 1970 || vitiProdhimit > 2020)
			throw new AutomjetiException("Viti i prodhimit nuk eshte valid!");
		else
			this.vitiProdhimit = vitiProdhimit;
	}
	public String getNrShasise(){
		return nrShasise;
	}
	public String getProdhuesi(){
		return prodhuesi;
	}
	public int getVitiProdhimit(){
		return vitiProdhimit;
	}

	public abstract boolean eshteAutomatik();

	public String toString(){
		return nrShasise + " : " + prodhuesi + " - " + vitiProdhimit;
	}
	public boolean equals(Object obj){
		if(obj instanceof Automjeti){
			Automjeti a = (Automjeti)obj;
			if(nrShasise.equals(a.getNrShasise())){
				return true;
			}
		}
		return false;
	}
}
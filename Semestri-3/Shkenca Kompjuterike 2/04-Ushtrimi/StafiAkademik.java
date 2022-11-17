package Ushtrimi4;

public abstract class StafiAkademik {
	private String emri; //readOly
	private int vitiLindjes;
	private boolean iRregullt;

	public StafiAkademik(String emri, int vitiLindjes, boolean iRregullt) {
		this.emri = emri;
		this.vitiLindjes = vitiLindjes;
		this.iRregullt = iRregullt;
	}
	public void setVitiLindjes(int vitiLindjes) {
		this.vitiLindjes = vitiLindjes;
	}
	public void setIRregullt(boolean iRregullt) {
		this.iRregullt = iRregullt;
	}
	public String getEmri() {
		return emri;
	}
	public int getVitiLindjes() {
		return vitiLindjes;
	}
	public boolean getIRregullt() {
		return iRregullt;
	}
	public String toString() {
		return emri + " : " + vitiLindjes + " staf "  + (iRregullt ? "" : " jo ") + " i rregullt";
	}
	public boolean equals(Object obj) {
		if(obj instanceof StafiAkademik) {
			StafiAkademik s = (StafiAkademik)obj;
			if(emri.equals(s.getEmri()) && vitiLindjes == s.getVitiLindjes()) {
				return true;
			}
		}
		return false;
	}
}


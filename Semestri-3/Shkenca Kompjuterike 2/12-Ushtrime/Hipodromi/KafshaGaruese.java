
public abstract class KafshaGaruese extends Thread{
	private int mosha;
	private String emri;
	private int pozitaStartuese;
	
	public KafshaGaruese(int mosha, String emri, int pozitaStartuese) throws GaraException{
		if(this instanceof QeniGarues) {
			if(mosha < 1 || mosha > 10)
				throw new GaraException("Qeni duhet te jet i moshes 1 deri ne 10 vjeq");
		}
		if(this instanceof KaliGarues) {
			if(mosha < 2 || mosha > 10)
				throw new GaraException("Kali duhet te jet i moshes 2 deri ne 10 vjeq");
		}
		if(pozitaStartuese < 1) {
			throw new GaraException("Pozita startuese duhet te jet me e madhe se 0");
		}
		
		this.mosha = mosha;
		this.emri = emri;
		this.pozitaStartuese = pozitaStartuese;
	}

	public int getMosha() {
		return mosha;
	}

	public String getEmri() {
		return emri;
	}

	public int getPozitaStaruese() {
		return pozitaStartuese;
	}

	public boolean equals(Object obj) {
		if(obj instanceof KafshaGaruese) {
			KafshaGaruese kg = (KafshaGaruese)obj;
			if(kg.emri.equals(this.emri))
				return true;
		}
		return false;
	}
	public String toString() {
		return this.emri ;
	}
}

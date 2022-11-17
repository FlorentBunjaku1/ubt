

public class Autosalloni {
	private String emri;
	private Automjeti[] a;
	private int index;
	private static int kapaciteti;
	
	public Autosalloni(String emri) {
		this.emri = emri;
	}
	
	//===================Static-Block && Instance-Block============================//
	static{
		kapaciteti = 250;
	}
	{
		a = new Automjeti[kapaciteti];
		a[index++] = new Autosalloni.Coupe("COP1234", "Opel", 2018, 2);
	}
	//===================Static-Block && Instance-Block============================//
	
	//===================Methods===================================================//
	public boolean exist(Automjeti at){
		    for(int i = 0;i < index;i++){
		      if(a[i].equals(at)){
		        return true;
		      }
		    }
		    return false;
		 }
	
		  public void shtoAutomjetin(Automjeti at){
		    if(index == a.length){
		      System.out.println("Nuk ka vend ne Autosallon");
		      return;
		    }
		    if(exist(at)){
		      System.out.println("Automjeti gjendet ne Autosallon");
		      return;
		    }
		    if(at == null){
		      System.out.println("Nuk lejohet shtypja e objekteve null");
		      return;
		    }
		    a[index++] = at;
		  }
		  
		  public Coupe avgNumriUleseve() {
			  Coupe fundit = null;
			  int sum = 0;
			  int count = 0;
			  
			  for(int i = 0;i < index;i++) {
				  if(a[i] instanceof Coupe) {
					  Coupe c = (Coupe)a[i];
					  sum += c.getNrUlseve();
					  count++;
				  }
			  }
			  if(count == 0)
				  return null;
			  
			  double avg = (double)sum/count;
			  for(int i = 0;i < index;i++) {
				  if(a[i] instanceof Coupe) {
					  Coupe c = (Coupe)a[i];
					  if(c.getNrUlseve() < avg) {
						  if(fundit == null || fundit.getNrUlseve() >= c.getNrUlseve()) {
							  fundit = c;
						  }
					  }
				  }
			  }
			  return fundit;
		  }
		  public void shtypAutomatik(boolean automatik) {
			  if(index == 0) {
				  System.out.println("Nuk ka automjete ne autosallon");
				  return;
			  }
			  for(int i = 0;i < index;i++) {
				  if(a[i].eshteAutomatik() == automatik) {
					  System.out.println(a[i]);
				  }
			  }
		  }
	//===================Methods===================================================//
	
	//=====================Inner Calsses && Nested Classes=========================//
	public class Minibusi extends Automjeti{
		private int numriDyerve;
		
		public Minibusi(String nrShasise, String prodhuesi, int vitiProdhimit, int numriDyerve) {
			super(nrShasise, prodhuesi, vitiProdhimit);
			this.numriDyerve = numriDyerve;
		}
		public void setNumriDyerve(int numriDyerve) {
			this.numriDyerve = numriDyerve;
		}
		public int getNumriDyerve() {
			return numriDyerve;
		}
		public boolean eshteAutomatik() {
			return true;
		}
		public String toString() {
			return "Minibusi " + super.toString() + " : " + numriDyerve;
		}
	}
	public static class Coupe extends Automjeti{
		private int nrUlseve;
		
		public Coupe(String nrShasise, String prodhuesi, int vitiProdhimit, int nrUlseve) {
			super(nrShasise, prodhuesi, vitiProdhimit);
			this.nrUlseve = nrUlseve;
		}
		public void setNrUlseve(int nrUlseve) {
			this.nrUlseve = nrUlseve;
		}
		public int getNrUlseve() {
			return nrUlseve;
		}
		public boolean eshteAutomatik() {
			return false;
		}
		public String toString() {
			return "Coupe " + super.toString() + " me " + nrUlseve + " ulese";
		}
	}
	//=====================Inner Calsses && Nested Classes=========================//
	
	//==============================Main===========================================//
	public static void main(String[] args) {
		Autosalloni salloni = new Autosalloni("Salloni ABC");
		Limuzina l1 = new Limuzina("LIM1234", "Bently", 2015, "E Zez");
		Limuzina l2 = new Limuzina("LIM12345", "Audi", 2018, "E Zez");
		Limuzina l3 = new Limuzina("LIM12346", "Mercedes", 2020, "E Bardh");
		SUV s1 = new SUV("SUV1234", "Tesla", 2020, true);
		SUV s2 = new SUV("SUV12345", "Range Rover", 2019, true);
		SUV s3 = new SUV("SUV12346", "Suzuki", 2017, false);
		Minibusi m1 =  salloni.new Minibusi("MINI12345", "VW", 2009, 6);
		Minibusi m2 =  salloni.new Minibusi("MINI56355", "Toyota ", 2015, 6);
		Minibusi m3 =  salloni.new Minibusi("MINI14156", "Ford ", 2019, 6);
		Coupe c1 = new Coupe("CP41512", "BMW", 2020, 5);
		Coupe c2 = new Coupe("CP54312", "Ford ", 2018, 4);
		Coupe c3 = new Coupe("CP45171", "Chevrolet ", 2019, 2);
		
		salloni.shtoAutomjetin(l1);
		salloni.shtoAutomjetin(s2);
		salloni.shtoAutomjetin(s1);
		salloni.shtoAutomjetin(l3);
		salloni.shtoAutomjetin(l2);
		salloni.shtoAutomjetin(s3);
		salloni.shtoAutomjetin(m1);
		salloni.shtoAutomjetin(m2);
		salloni.shtoAutomjetin(m3);
		salloni.shtoAutomjetin(c1);
		salloni.shtoAutomjetin(c2);
		salloni.shtoAutomjetin(c3);
		
		
		System.out.println("avgNumriUleseve : " + salloni.avgNumriUleseve());
		System.out.println("===============================================");
		
		System.out.println("Automjetet automatike : ");
		salloni.shtypAutomatik(true);
		System.out.println("===============================================");

		
		
	}
}


public class Fakulteti{
	private String drejtimi;
	private Mesimdhenesi[] m;
	private static int nrMesimdhenesve;
	private int index;
	
	public Fakulteti(String drejtimi) {
		this.drejtimi = drejtimi;
	}
	
	//===================Static-Block && Instance-Block============================//
	static {
		nrMesimdhenesve = 25;
	}
	{
		m = new Mesimdhenesi[nrMesimdhenesve];
		m[index++] = new Fakulteti.Vizituesi("Filan Vizituesi", 1985, "Ushtrime", 10);
	}
	//===================Static-Block && Instance-Block============================//
	
	//===================Methods===================================================//
		public void shtoMesimdhenesin(Mesimdhenesi ms) {
			if(index == m.length) {
				System.out.println("Nuk ka vend ne varg");
				return;
			}
			if(ms == null) {
				System.out.println("Nuk lejohen objektet me vler null");
				return;
			}
			for(int i = 0;i < index;i++) {
				if(m[i].equals(ms)) {
					System.out.println("Nuk lejohet shtimi i objekteve te njejta");
					return;
				}
			}
			m[index++] = ms;
		}
		
		public void shtypSipasEmrit(String prapashtesa) {
			if(index == 0) {
				System.out.println("Nuk ka asnje meimdhenes per tu shtypur");
				return;
			}
			for(int i = 0;i < index;i++) {
				if(m[i].getEmri().endsWith(prapashtesa)) {
					System.out.println(m[i]);
				}
			}
		}
		public Mesimdhenesi avgVitiLindjes() {
			Mesimdhenesi h = null;
			int moshaM = 0;
			
			for(int i = 0;i < index;i++) {
				moshaM += (2020 - m[i].getVitiLindjes()); 
			}
			
			double avg = (double)moshaM/m.length;
			
			for(int i = 0; i < index;i++) {
				if((2020 - m[i].getVitiLindjes()) > avg) {
					if(h == null || (2020 - h.getVitiLindjes()) <= (2020 - m[i].getVitiLindjes())){
						h = m[i];
					}
				}
			}
			return h;
		}
	//===================Methods===================================================//

	//=====================Inner Calsses && Nested Classes=========================//
	public class Tutori extends Mesimdhenesi{
		private int vitiStudimeve;
		
		public Tutori(String emri, int vitiLindjes,int vitiStudimeve) {
			super(emri, vitiLindjes, "Tutorime");
			this.vitiStudimeve = vitiStudimeve;
		}
		public void setVitiStudimeve(int vitiStudimeve) {
			this.vitiStudimeve = vitiStudimeve;
		}
		public int getVitiStudimeve() {
			return vitiStudimeve;
		}
		public boolean mentoron() {
			return false;
		}
		public String toString() {
			return "Tutori i vitit : " + vitiStudimeve + super.toString();
		}
	}
	public static class Vizituesi extends Mesimdhenesi{
		private int nrOreve;
		
		public Vizituesi(String emri, int vitiLindjes,String angazhimi, int nrOreve) {
			super(emri, vitiLindjes, angazhimi);
			this.nrOreve = nrOreve;
		}
		public void setNrOreve(int nrOreve) {
			this.nrOreve = nrOreve;
		}
		public int getNrOreve() {
			return nrOreve;
		}
		public boolean mentoron() {
			return true;
		}
		public String toString() {
			return "Mesimdhenesi vizitues " + super.toString() + " me " + nrOreve + " ore";
		}
	}
	//=====================Inner Calsses && Nested Classes=========================//
	
	//==============================Main===========================================//
	public static void main(String[] args) {
		
		  Fakulteti f = new Fakulteti("Shkenca Kompjuterike");
          
          Profesori p1=new Profesori("Filan1 Fisteku1",1991,"Profesor asistent");
          Profesori p2=new Profesori("Filan2 Fisteku2",1992,"Profesor asistent");
          Profesori p3=new Profesori("Filan3 Fisteku3",1992,"Profesor asistent");
          Asistenti a1=new Asistenti("Filan3 Fisteku3",1985,"Numerike");
          Asistenti a11=new Asistenti("Filan5 Fisteku5",1995,"Numerike");
          Asistenti a2=new Asistenti("Filan4 Fisteku4",1997,"Laboratorike");
          Tutori t1 = f.new Tutori("Filan Tutori1", 1989, 2019);
          Tutori t2 = f.new Tutori("Filan Tutori2", 1999, 2018);
          Tutori t3 = f.new Tutori("Filan Tutori3", 1979, 2020);
          Vizituesi v1 = new Vizituesi("Filan Vizituesi1", 1980, "Ligjerata", 5);
          Vizituesi v2 = new Vizituesi("Filan Vizituesi2", 1980, "Ushtrime", 8);
          Vizituesi v3 = new Vizituesi("Filan Vizituesi3", 1980, "Ushtrime", 10);
          
          f.shtoMesimdhenesin(a1);
          f.shtoMesimdhenesin(p1);
          f.shtoMesimdhenesin(p2);
          f.shtoMesimdhenesin(p3);
          f.shtoMesimdhenesin(a2);
          f.shtoMesimdhenesin(a11);
          f.shtoMesimdhenesin(t1);
          f.shtoMesimdhenesin(t2);
          f.shtoMesimdhenesin(t3);
          f.shtoMesimdhenesin(v1);
          f.shtoMesimdhenesin(v2);
          f.shtoMesimdhenesin(v3);
          
          System.out.println("avgVitiLindjes: " + f.avgVitiLindjes());
          System.out.println("=====================================");
          
          System.out.println("\nMesimdhenesit emri i te cilve mbaron me \"teku3\" :\n");
          f.shtypSipasEmrit("teku3");
          System.out.println("=====================================");
	}
	
}















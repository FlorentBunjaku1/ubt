public class Fakulteti{
	private String drejtimi;
	private Mesimdhenesi[] m;
	private int index;
	public Fakulteti(String drejtimi, int numri){
		this.drejtimi = drejtimi;
		m = new Mesimdhenesi[numri];
	}
	public boolean ekziston(Mesimdhenesi ms){
		for(int i = 0;i < index;i++){
			if(m[i].equals(ms)){
				return true;
			}
		}
		return false;
	}
	public void shtoMesimdhenesin(Mesimdhenesi ms){
		if(index == m.length){
			System.out.println("Nuk ka vend ne array");
			return;
		}
		if(ekziston(ms)){
			System.out.println("Ky mesimdhenes gjendet ne array");
			return;
		}
		if(ms == null){
			System.out.println("Nuk lejohen vlerat null");
			return;
		}
		m[index++] = ms;
	}
	public Profesori thirrjaMeEVjeter(String thirrja){
		if(index == 0){
			return null;
		}

		Profesori iRi = null;
		for(int i = 0;i < index;i++){
			if(m[i] instanceof Profesori){
				Profesori p = (Profesori)m[i];
				if(p.getThirrjaAkademike().equals(thirrja) && (iRi == null || iRi.getVitiLindjes() >= p.getVitiLindjes())){
					iRi = p;
				}
			}
		}
		return iRi;
	}
	public void shtypMentoret(boolean mentoron){
		for(int i = 0;i < index;i++){
			if(m[i].mentoron() == mentoron){
				System.out.println(m[i]);
			}
		}
	}
	public static void main(String[] args){
		Fakulteti f = new Fakulteti("Shkenca Kompjuterike", 15);
		Profesori p1 = new Profesori("Filan1 Profa",1998,"Profesor i rregullt");
		Profesori p2 = new Profesori("Filan2 Profa",1997,"Profesor i asociuar");
		Profesori p3 = new Profesori("Filan3 Profa",1995,"Profesor i rregullt");
		Asistenti a1 = new Asistenti("Filan1 Asistenti",2000,"Java");
		Asistenti a2 = new Asistenti("Filan2 Asistenti",1999,"Matematike");
		Asistenti a3 = new Asistenti("Filan3 Asistenti",1998,"Web");

		f.shtoMesimdhenesin(a1);
		f.shtoMesimdhenesin(p3);
		f.shtoMesimdhenesin(a2);
		f.shtoMesimdhenesin(p1);
		f.shtoMesimdhenesin(a3);
		f.shtoMesimdhenesin(p2);

		System.out.println("Ekziston : ");
		System.out.println(f.ekziston(new Profesori("Filan1 Profa",1998,"Prof")));
		System.out.println("=============================");

		System.out.println("thirrjaMeEVjeter : " + f.thirrjaMeEVjeter());
		System.out.println("=============================");

		System.out.println("Mesimdhenesit qe mentorojne : ");
		f.shtypMentoret(true);
		System.out.println("=============================");

		System.out.println("Mesimdhenesit qe nuk mentorojne : ");
		f.shtypMentoret(false);
	}	
}
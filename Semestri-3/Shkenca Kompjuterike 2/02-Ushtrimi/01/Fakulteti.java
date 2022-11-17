public class Fakulteti{
	private String drejtimi;
	private Mesimdhenesi[] m;
	private int index;

	public Fakulteti(String drejtimi, int numri){
		this.drejtimi = drejtimi;
		m = new Mesimdhenesi[numri];
	}
	public boolean exist(Mesimdhenesi ms){
		for(int i = 0;i < index;i++){
			if(m[i].equals(ms)){
				return true;
			}
		}
		return false;
	}
	public void shtoMesimdhenesin(Mesimdhenesi ms){
		if(index == m.length){
			System.out.println("Nuk ka vend ne varg");
			return;
		}
		if(exist(ms)){
			System.out.println("Mesimdhensi gjendet ne varg");
			return;
		}
		if(ms == null){
			System.out.println("Mesimdhensi ka vleren null");
			return;
		}
		m[index++] = ms;
	}
	public Profesori profesoriMeIRi(){
		Profesori iRi = null;
		for(int i = 0;i < index;i++){
			if(m[i] instanceof Profesori){
				Profesori p = (Profesori)m[i];
				if(iRi == null || iRi.getVitiLindjes() < p.getVitiLindjes()){
					iRi = p;
				}
			}
		}
		return iRi;
	}
	public void shtypAngazhimet(String angazhimi){
		int count = 0;
		for(int i = 0;i < index;i++){
			if(m[i].getAngazhimi().equals(angazhimi)){
				System.out.println(m[i]);
					count++;
			}
		}
		if(count == 0){
			System.out.println("Asnje Mesimdhenes me kete angazhim");
		}
	}
	public void print(){
		for(Mesimdhenesi s : m){
			System.out.println(s);
		}
	}
	public static void main(String[] args){
		Fakulteti f = new Fakulteti("Shkenca Kompjuterike", 15);
		Profesori p1 = new Profesori("Filan Profa1", 1996,"Profesor i rregullt");	
		Profesori p2 = new Profesori("Filan Profa2", 2000,"Profesor i rregullt");	
		Profesori p3 = new Profesori("Filan Profa3", 1999,"Profesor i rregullt");	
		Asistenti a1 = new Asistenti("Filan Asist1", 1999,"Java");
		Asistenti a2 = new Asistenti("Filan Asist2", 2001,"Python");
		Asistenti a3 = new Asistenti("Filan Asist3", 1997,"Java");
		f.shtoMesimdhenesin(p1);
		f.shtoMesimdhenesin(p2);
		f.shtoMesimdhenesin(p3);
		f.shtoMesimdhenesin(a1);
		f.shtoMesimdhenesin(a2);
		f.shtoMesimdhenesin(a3);

		System.out.println("Ekziston :\n" + f.exist(new Profesori("Filan Profa3", 1999,"Profesor i rregullt")));

		System.out.println("\n=================\nProfesori me i  ri : " + f.profesoriMeIRi());

		System.out.println("=================");

		f.shtypAngazhimet("Ligjerata");

		System.out.println("=================");

		f.print();
	}
}
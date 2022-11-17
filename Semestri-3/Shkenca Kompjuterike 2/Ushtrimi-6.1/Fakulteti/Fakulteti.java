package Ushtrimi7;


public class Fakulteti {
	private String drejtimi;
	private Mesimdhenesi[] m;
	private int index = 0;
	
	public Fakulteti(String drejtimi, int kapaciteti) {
		this.drejtimi = drejtimi;
		m = new Mesimdhenesi[kapaciteti];
	}
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
	public void shtypFushaStudimit(String fushaStudimit) {
		if(index == 0) {
			System.out.println("Nuk ka mesimdhenes ne varg");
			return;
		}
		
		for(int i = 0;i < index;i++) {
			if(m[i].getFushaStudimit().equals(fushaStudimit)) {
				System.out.println(m[i]);
			}
		}
	}
	public Mesimdhenesi[] ktheAngazhimin(String angazhimi) {
		
		int count = 0;
		for(int i = 0; i < index;i++) {
			if(m[i].getAngazhimi().equals(angazhimi)) {
				count++;
			}
		}
		
		if(count == 0) {
			return null;
		}
		
		Mesimdhenesi temp[] = new Mesimdhenesi[count];
		int tempIndex = 0;
		for(int i = 0; i < index;i++) {
			if(m[i].getAngazhimi().equals(angazhimi)) {
				temp[tempIndex++] = m[i];
			}
		}
		
		return temp;
	}
	public static void main(String[] args) {
		Fakulteti f = new Fakulteti("Shkenca Kompjuterike",20);
		Profesori p1=new Profesori("Filan1 Fisteku1",1991,"Web Inxhinieria","Profesor asistent");
        Profesori p2=new Profesori("Filan2 Fisteku2",1992,"Data baza","Profesor asistent");
        Profesori p3=new Profesori("Filan3 Fisteku3",1992,"Algoritme","Profesor asistent");
        Asistenti a1=new Asistenti("Filan3 Fisteku3",1985,"Algoritme","Numerike");
        Asistenti a3=new Asistenti("Filan5 Fisteku5",1995,"Web Inxhinieria","Numerike");
        Asistenti a2=new Asistenti("Filan4 Fisteku4",1997,"Data Baza","Laboratorike");
        
        f.shtoMesimdhenesin(p1);
        f.shtoMesimdhenesin(a1);
        f.shtoMesimdhenesin(p3);
        f.shtoMesimdhenesin(a3);
        f.shtoMesimdhenesin(p2);
        f.shtoMesimdhenesin(a2);

        
        f.shtypFushaStudimit("Data Baza");
        System.out.println("==============================");
        
        Mesimdhenesi[] temp = f.ktheAngazhimin("Ligjerata");
        if(temp == null) {
        	System.out.println("Nuk ka Mesimdhenes me ket lloj angazhimi");
        }else {
        	for(Mesimdhenesi a : temp) {
        		System.out.println(a);
        	}
        }
	}
}




























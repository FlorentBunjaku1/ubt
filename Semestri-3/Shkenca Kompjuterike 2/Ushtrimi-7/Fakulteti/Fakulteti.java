public class Fakulteti {
	private String drejtimi;
	private Mesimdhenesi[] m;
	private int index = 0;
	
	public Fakulteti(String drejtimi, int kapaciteti) throws MesimdhenesiException{
		if(drejtimi == null || drejtimi.trim() == "")
			throw new MesimdhenesiException("Drejtimi i Fakultetit nuk duhet te jet i zbrazet!");
		else
			this.drejtimi = drejtimi;
		if(kapaciteti < 20)
			throw new MesimdhenesiException("Fakulteti duhet te ket kapacitet 20 ose me shume mesimdhenes");
		else
			m = new Mesimdhenesi[kapaciteti];
	}
	public void shtoMesimdhenesin(Mesimdhenesi ms) throws MesimdhenesiException{
		if(index == m.length) {
			throw new MesimdhenesiException("Nuk ka vend ne varg");
		}
		if(ms == null) {
			throw new MesimdhenesiException("Nuk lejohen objektet me vler null");
		}
		for(int i = 0;i < index;i++) {
			if(m[i].equals(ms)) {
				throw new MesimdhenesiException("Nuk lejohet shtimi i objekteve te njejta");
			}
		}
		m[index++] = ms;
	}
	public void shtypFushaStudimit(String fushaStudimit) throws MesimdhenesiException{
		if(index == 0) {
			throw new MesimdhenesiException("Nuk ka mesimdhenes ne varg");
		}
		
		for(int i = 0;i < index;i++) {
			if(m[i].getFushaStudimit().equals(fushaStudimit)) {
				System.out.println(m[i]);
			}
		}
	}
	public Mesimdhenesi[] ktheAngazhimin(String angazhimi) throws MesimdhenesiException{
		
		int count = 0;
		for(int i = 0; i < index;i++) {
			if(m[i].getAngazhimi().equals(angazhimi)) {
				count++;
			}
		}
		
		if(count == 0) {
			throw new MesimdhenesiException("Nuk ka mesimdhenes me kete angazhim");
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
		try{
			Fakulteti f = new Fakulteti("Shkenca Kompjuterike",20);
			Profesori p1 = new Profesori("",1991,"Web Inxhinieria","Profesor asistent");
	        Profesori p2 = new Profesori("Filan2 Fisteku2",1992,"Data baza","Profesor asistent");
	        Profesori p3 = new Profesori("Filan3 Fisteku3",1992,"Algoritme","Profesor asistent");
	        Asistenti a1 = new Asistenti("Filan6 Fisteku6",1990,"Algoritme","Numerike");
	        Asistenti a3 = new Asistenti("Filan5 Fisteku5",1995,"Web Inxhinieria","Numerike");
	        Asistenti a2 = new Asistenti("Filan4 Fisteku4",1997,"Data Baza","Laboratorike");
	        f.shtoMesimdhenesin(p1);
	        f.shtoMesimdhenesin(a1);
	        f.shtoMesimdhenesin(p3);
	        f.shtoMesimdhenesin(a3);
	        f.shtoMesimdhenesin(p2);
	        f.shtoMesimdhenesin(a2);

	        f.shtypFushaStudimit("Data Baza");
	        System.out.println("==============================");
	        
	        Mesimdhenesi[] temp = f.ktheAngazhimin("Ligjerata");
	        for(Mesimdhenesi a : temp) 
	        	System.out.println(a);
        
        }catch(MesimdhenesiException me){
        	System.out.println(me.getMessage() + "\nNe rreshtin : " + me.getStackTrace()[0].getLineNumber());
        }

      
        
        
	}
}




























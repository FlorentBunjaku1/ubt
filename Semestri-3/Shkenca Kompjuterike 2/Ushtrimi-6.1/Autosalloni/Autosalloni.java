package Ushtrimi7.Autosalloni;


public class Autosalloni {
	private String emri;
	private Automjeti[] a;
	private int index;
	
	public Autosalloni(String emri, int kapaciteti) {
		this.emri = emri;
		a = new Automjeti[kapaciteti];
	}
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
	public void shtypNumriShpejtesive(int shpejtesit) {
		if(index == 0) {
			System.out.println("Nuk ka asnje vetur ne autosallon");
			return;
		}
		for(int i = 0; i < index;i++) {
			if(a[i].numriShpejtesive() == shpejtesit) {
				System.out.println(a[i]);
			}
		}
	}
	public Automjeti[] ktheMeTempomat(boolean tempomatsi) {
		int count = 0;
		for(int i = 0;i < index;i++) {
			if(a[i].kaTempomat() == tempomatsi) {
				count++;
			}
		}
		if(count == 0) {
			return null;
		}
		
		Automjeti[] temp = new Automjeti[count];
		int tempIndex = 0;
		for(int i = 0; i < index;i++) {
			if(a[i].kaTempomat() == tempomatsi) {
				temp[tempIndex++] = a[i];
			}
		}
		return temp;
	}
	
	public static void main(String[] args) {
		Autosalloni salloni = new Autosalloni("Salloni ABC", 50);
		
		Limuzina l1 = new Limuzina("LIM1234", "Bently", 2015, "E Zez");
		Limuzina l2 = new Limuzina("LIM12345", "Audi", 2018, "E Zez");
		Limuzina l3 = new Limuzina("LIM12346", "Mercedes", 2020, "E Bardh");
		SUV s1 = new SUV("SUV1234", "Tesla", 2020, true);
		SUV s2 = new SUV("SUV12345", "Range Rover", 2019, true);
		SUV s3 = new SUV("SUV12346", "Suzuki", 2017, false);
	
		salloni.shtoAutomjetin(l2);
		salloni.shtoAutomjetin(s2);
		salloni.shtoAutomjetin(l3);
		salloni.shtoAutomjetin(s3);
		salloni.shtoAutomjetin(s1);
		salloni.shtoAutomjetin(l1);
		
		System.out.println("ShtypNumriShpejtesive:");
		salloni.shtypNumriShpejtesive(6);
		
		System.out.println("======================");
		
		
		System.out.println("KtheMeTempomat: ");
		Automjeti[] temp = salloni.ktheMeTempomat(true);
		if(temp == null) {
			System.out.println("Nuk ka asnje vatur me/pa tempomats");
		}else {
			for(Automjeti a : temp) {
				System.out.println(a);
			}
		}
		
		
		
		
		
		
		
		

	}
}












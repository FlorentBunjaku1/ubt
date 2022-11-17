public class Autosalloni {
	private String emri;
	private Automjeti[] a;
	private int index;
	
	public Autosalloni(String emri, int kapaciteti) throws AutomjetiException {
		if(emri == null || emri.trim() == "")
			throw new AutomjetiException("Emri i autosallonit nuk duhet te jet i zbrazet!");
		else
			this.emri = emri;
		if(kapaciteti <= 0)
			throw new AutomjetiException("Kapaciteti ne auto sallon duhet te jet me shum se 0");
		else
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
	public void shtoAutomjetin(Automjeti at) throws AutomjetiException {
	    if(index == a.length)
	    	throw new AutomjetiException("Nuk ka vend ne Autosallon");

	    if(exist(at))
	    	throw new AutomjetiException("Automjeti gjendet ne Autosallon");

	    if(at == null)
	    	throw new AutomjetiException("Nuk lejohet shtypja e objekteve null");

	    a[index++] = at;
	}
	public void shtypNumriShpejtesive(int shpejtesit) throws AutomjetiException{
		if(index == 0) 
			throw new AutomjetiException("Nuk ka asnje vetur ne autosallon");

		for(int i = 0; i < index;i++) {
			if(a[i].numriShpejtesive() == shpejtesit) {
				System.out.println(a[i]);
			}
		}
	}
	public Automjeti[] ktheMeTempomat(boolean tempomatsi) throws AutomjetiException{
		int count = 0;
		for(int i = 0;i < index;i++) {
			if(a[i].kaTempomat() == tempomatsi) {
				count++;
			}
		}

		if(count == 0) 
			throw new AutomjetiException("Nuk ka asnje automjet te kti lloji");
		
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

		try{

		Autosalloni salloni = new Autosalloni("Salloni ABC", 50);
		Limuzina l1 = new Limuzina("LIM1234", "Bently", 2015, "");
		Limuzina l2 = new Limuzina("LIM12345", "Audi", 2018, null);
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
		for(Automjeti a : temp) 
				System.out.println(a);
			
		}catch(AutomjetiException ae){
			System.out.println(ae.getMessage() + "\nNe rreshtin : " + ae.getStackTrace()[0].getLineNumber());
		}
		
		
		
		
		
		
		
		

	}
}












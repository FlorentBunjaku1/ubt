import java.io.*;
public class Autosalloni {
	private String emri;
	private Automjeti[] a;
	private int index;
	private String input;
	private String output;
	private BufferedReader br;
	private BufferedWriter bw;
	
	public Autosalloni(String emri, int kapaciteti, String input, String output) throws AutomjetiException, IOException {
		if(emri == null || emri.trim() == "")
			throw new AutomjetiException("Emri i autosallonit nuk duhet te jet i zbrazet!");
		else
			this.emri = emri;
		if(kapaciteti < 20)
			throw new AutomjetiException("Kapaciteti ne auto sallon duhet te jet me shum se 19");
		else
			a = new Automjeti[kapaciteti];
	
		this.input = input;
		this.output = output;
		br = new BufferedReader(new FileReader(input));
		bw = new BufferedWriter(new FileWriter(output));
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
	public void lexoAutomjetet() throws AutomjetiException, IOException{
		String s;
		while((s=br.readLine()) != null){
			String[] st = s.split(";");
			if(st.length == 5){
				if(st[0].equals("Limuzina"))
					shtoAutomjetin(new Limuzina(st[1],st[2],Integer.parseInt(st[3]),st[4]));
				else if(st[0].equals("SUV"))
					shtoAutomjetin(new SUV(st[1],st[2],Integer.parseInt(st[3]),Boolean.parseBoolean(st[4])));
			}
		}
	}
	public void shkruaj(String s) throws AutomjetiException, IOException{
		bw.write(s+"\n");
		bw.flush();
	}
	public void shkruajAutomjetet() throws AutomjetiException, IOException{
		for(int i = 0;i < index;i++){
			shkruaj(a[i].toString());
		}
	}
	public void closeR(){
		try{
			if(br != null)
				br.close();
			if(bw != null)
				bw.close();
			
		}catch(IOException ioe){
			System.out.println(ioe.getMessage());
		}
	}
	/*
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
	*/
	public static void main(String[] args) {
		Autosalloni salloni = null;
		try{
			salloni = new Autosalloni("Salloni ABC", 50,"atuomobilat.txt","automobilat.out");
			salloni.lexoAutomjetet();
			salloni.shkruajAutomjetet();
			
		}catch(AutomjetiException ae){
			System.out.println(ae.getMessage() + "\nNe rreshtin : " + ae.getStackTrace()[0].getLineNumber());
		}catch(IOException ioe){
			System.out.println(ioe.getMessage());
		}finally{
			if(salloni != null)
				salloni.closeR();
		}
		
		
		
		
		
		
		
		

	}
}












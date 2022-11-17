import java.io.*;
import java.util.*;
public class Autosalloni {
	private String emri;
	private ArrayList<Automjeti> a;
	private String input;
	private String output;
	private BufferedReader br;
	private BufferedWriter bw;
	public Autosalloni(String emri, String input, String output) throws AutomjetiException, IOException {
		if(emri == null || emri.trim() == "")
			throw new AutomjetiException("Emri i autosallonit nuk duhet te jet i zbrazet!");
		else
			this.emri = emri;
		
		a = new ArrayList<Automjeti>();
		this.input = input;
		this.output = output;
		br = new BufferedReader(new FileReader(input));
		bw = new BufferedWriter(new FileWriter(output));
	}
	public void shtoAutomjetin(Automjeti at) throws AutomjetiException {
	   if(a.contains(at))
	    	throw new AutomjetiException("Automjeti gjendet ne Autosallon");
	    if(at == null)
	    	throw new AutomjetiException("Nuk lejohet shtypja e objekteve null");

	    a.add(at);
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
		Iterator<Automjeti> itr = a.iterator();
		while(itr.hasNext()){
			shkruaj(itr.next().toString());
		}
	}
	public void shtypSipasNgjyres(String ngjyra){
		Iterator<Automjeti> itr = a.iterator();
		while(itr.hasNext()){
			Automjeti n = itr.next();
			if(n instanceof Limuzina){
				Limuzina a = (Limuzina)n;
				if(a.getNgjyra().equals(ngjyra))
					System.out.println(a);
			}
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

	public static void main(String[] args) {
		Autosalloni salloni = null;
		try{
			salloni = new Autosalloni("Salloni ABC","atuomobilat.txt","automobilat.out");
			salloni.lexoAutomjetet();
			salloni.shkruajAutomjetet();
			salloni.shtypSipasNgjyres("E Zez");
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












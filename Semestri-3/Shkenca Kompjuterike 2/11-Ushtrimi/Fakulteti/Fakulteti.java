import java.io.*;
import java.util.*;
public class Fakulteti {
	private String drejtimi;
	private ArrayList<Mesimdhenesi> m;
	private String input;
	private String output;
	private BufferedReader br;
	private BufferedWriter bw;
	
	public Fakulteti(String drejtimi, String input, String output) throws MesimdhenesiException, IOException{
		if(drejtimi == null || drejtimi.trim() == "")
			throw new MesimdhenesiException("Drejtimi i Fakultetit nuk duhet te jet i zbrazet!");
		else
			this.drejtimi = drejtimi;
		
		m = new ArrayList<Mesimdhenesi>();
		this.input = input;
		this.output = output;
		br = new BufferedReader(new FileReader(input));
		bw = new BufferedWriter(new FileWriter(output));
	}
	public void shtoMesimdhenesin(Mesimdhenesi ms) throws MesimdhenesiException, IOException{
		if(ms == null) {
			throw new MesimdhenesiException("Nuk lejohen objektet me vler null");
		}
		if(m.contains(ms)) 
			throw new MesimdhenesiException("Nuk lejohet shtimi i objekteve te njejta");
		
		m.add(ms);
	}
	public void lexoMesimdhenesit() throws MesimdhenesiException, IOException{
		String s;
		
		while((s = br.readLine()) != null){
			String[] input = s.split(";");
			if(input.length == 5){
				if(input[0].equals("Profesori"))
					shtoMesimdhenesin(new Profesori(input[1],Integer.parseInt(input[2]),input[3],input[4]));
				else if (input[0].equals("Asistenti"))
					shtoMesimdhenesin(new Asistenti(input[1],Integer.parseInt(input[2]),input[3],input[4]));
			}
		}
	}
	
	public void shkruaj(String s) throws MesimdhenesiException, IOException{
		bw.write(s+"\n");
		bw.flush();
	}
	public void shkruajMesimdhenesit()throws MesimdhenesiException, IOException{
		Iterator<Mesimdhenesi> itr = m.iterator();
		while(itr.hasNext()){
			shkruaj(itr.next().toString());
		}
	}
	public void shtypSipasUshtrimeve(String ushtrimi){
		Iterator<Mesimdhenesi> itr = m.iterator();
		while(itr.hasNext()){
			Mesimdhenesi n = itr.next();
			if(n instanceof Asistenti){
				Asistenti a = (Asistenti)n;
				if(a.getLlojiUshtrimeve().equals(ushtrimi))
					System.out.println(a);
			}
		}
	}
	public void closeR(){
		try{
			if(br!=null)
				br.close();
			if(bw!=null)
				bw.close();
		}catch(IOException ioe){
			System.out.println(ioe.getMessage());
		}
	}
	public static void main(String[] args) {
		Fakulteti f = null;
		try{
			f = new Fakulteti("Shkenca Kompjuterike","mesimdhenesit.txt","mesimdhenesit.out");
			f.lexoMesimdhenesit();
			f.shkruajMesimdhenesit();
			f.shtypSipasUshtrimeve("Numerike");
        }catch(MesimdhenesiException me){
        	System.out.println(me.getMessage() + "\nNe rreshtin : " + me.getStackTrace()[0].getLineNumber());
        }catch(IOException ioe){
        	System.out.println(ioe.getMessage());
        }finally{
			if(f!=null)
				f.closeR();
		}
	}
}
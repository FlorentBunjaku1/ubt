import java.io.*;
public class Fakulteti {
	private String drejtimi;
	private Mesimdhenesi[] m;
	private int index = 0;
	private String input;
	private String output;
	private BufferedReader br;
	private BufferedWriter bw;
	
	public Fakulteti(String drejtimi, int kapaciteti, String input, String output) throws MesimdhenesiException, IOException{
		if(drejtimi == null || drejtimi.trim() == "")
			throw new MesimdhenesiException("Drejtimi i Fakultetit nuk duhet te jet i zbrazet!");
		else
			this.drejtimi = drejtimi;
		if(kapaciteti < 10)
			throw new MesimdhenesiException("Fakulteti duhet te ket kapacitet 10 ose me shume mesimdhenes");
		else
			m = new Mesimdhenesi[kapaciteti];
		this.input = input;
		this.output = output;
		br = new BufferedReader(new FileReader(input));
		bw = new BufferedWriter(new FileWriter(output));
	}
	public void shtoMesimdhenesin(Mesimdhenesi ms) throws MesimdhenesiException, IOException{
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
		for(int i = 0;i < index;i++)
			shkruaj(m[i].toString());
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
	/*
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
	*/
	public void print(){
		for(Mesimdhenesi ms : m){
			System.out.println(ms);
		}
	}
	public static void main(String[] args) {
		Fakulteti f = null;
		try{
			f = new Fakulteti("Shkenca Kompjuterike",25,"mesimdhenesit.txt","mesimdhenesit.out");
			f.lexoMesimdhenesit();
			f.shkruajMesimdhenesit();
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




























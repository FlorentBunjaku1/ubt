import java.io.*;
public class NumeroReshtat{
	private String input;
	private String output;
	private FileWriter fw;
	private BufferedReader br;
	
	public void closeR(){
		try{
			if(fw != null){
				fw.close();
			}
			if(br != null){
				br.close();
			}
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
	}
	public NumeroReshtat(String input, String output)throws Exception{
		this.input = input;
		this.output = output;
		
		fw = new FileWriter(output);
		br = new BufferedReader(new FileReader(input));
	}
	public int numero(String v) throws Exception{
		int count = 0;
		String rreshti;
		
		while((rreshti = br.readLine()) != null){
			if(rreshti.startsWith(v)){
				count++;
			}
		}
	
		return count;	
	}
	
	public void numeroRreshtat(String v)throws Exception{
		int nrRreshtave = numero(v);
		
		fw.write("Numri i rreshtave ne file-in " + input +" qe fillojne me tekstin " + v + " eshte: " + nrRreshtave);
	
		fw.flush();
	}
	
	public static void main(String[] args){
		NumeroReshtat nr = null;
		try{
			nr = new NumeroReshtat("shk2.txt","shk2.out");
			nr.numeroRreshtat("Exception");
		}catch(Exception e){
			System.out.println(e.getMessage());
		}finally{
			if(nr != null){
				nr.closeR();
			}
		}
		
	}
}
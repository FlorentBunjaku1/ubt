import java.io.*;
public class NumeroRreshtat{
	private String input;
	private String output;
	private BufferedReader br;
	private BufferedWriter bw;
	
	public NumeroRreshtat(String input, String output) throws IOException{
		this.input = input;
		this.output = output;
		
		br = new BufferedReader(new FileReader(input));
		bw = new BufferedWriter(new FileWriter(output));
	}
	public int numero(String txt) throws IOException{
		int count = 0;
		String line;
		
		while((line = br.readLine()) != null){
			if(line.startsWith(txt))
				count++;
		}
		return count;
	}
	public void numeroRreshtat(String txt) throws IOException{
		int nrRreshtave = numero(txt);
		
		bw.write("Numri i rreshtave ne " + input + " qe fillojne me tekstin " + txt + " eshte " + nrRreshtave);
		bw.flush();
	}
	public void closeR(){
		try{
			if(bw != null){
				bw.close();
			}
			if(br != null){
				br.close();
			}
		}catch(IOException ioe){
			System.out.println(ioe.getMessage());
		}
	}
	public static void main(String[] args){
		NumeroRreshtat nr = null;
		try{
			nr = new NumeroRreshtat("shk2.txt","shk2.out");
			nr.numeroRreshtat("Exception");
		}catch(IOException ioe){
			System.out.println(ioe.getMessage());
		}
		finally{
			if(nr != null){
				nr.closeR();
			}
		}
		
		
	}
}











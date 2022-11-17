import java.io.*;
public class LineWithoutA{
	private String input;
	private String output;
	private BufferedReader br;
	private BufferedWriter bw;
	
	public LineWithoutA(String input) throws IOException{
		this.input = input;
		this.output = "ubt.out";
		
		br = new BufferedReader(new FileReader(input));
		bw = new BufferedWriter(new FileWriter(output));
	}
	public String longestNonALine() throws IOException{
		String curr;
		String prev = "";
		
		while((curr = br.readLine()) != null){
			if(!(curr.contains("A")) && curr.length() >= prev.length()){
				prev = curr;
			}
		}
		return prev;
	}
	public void shkruaj() throws IOException{
		String line = longestNonALine();
		
		bw.write("Rreshti i fundit me i gjate qe nuk permban shkonjen A eshte : " + line);
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
		LineWithoutA lwa = null;
		try{
			lwa = new LineWithoutA("shki2.txt");
			lwa.shkruaj();
		}catch(IOException ioe){
			System.out.println(ioe.getMessage());
		}finally{
			if(lwa != null)
				lwa.closeR();
		}
	}
}




















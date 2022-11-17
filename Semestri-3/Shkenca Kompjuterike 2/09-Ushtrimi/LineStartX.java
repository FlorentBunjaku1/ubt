import java.io.*;
public class LineStartX{
	private String input;
	private String output;
	private BufferedReader br;
	private BufferedWriter bw;
	
	public LineStartX(String input) throws IOException{
		this.input = input;
		this.output = "java.out";
		
		br = new BufferedReader(new FileReader(input));
		bw = new BufferedWriter(new FileWriter(output));
	}
	public String evenXLine () throws IOException{
		int line = 0;
		String curr;
		String prev = "";
		
		while((curr = br.readLine()) != null){
			line++;
			if((curr.length()%2 == 0 && curr.startsWith("X")) && curr.length() >= prev.length()){
				prev = curr;
			}
		}
		
		return prev + " i cili eshte rreshti i " + line + " me rradhe";
	}
	public void write() throws IOException{
		String msg = evenXLine();
		
		bw.write(msg);
		bw.flush();
	}
	public void closeR(){
		try{
			if(bw != null)
				bw.close();
			if(br != null)
				br.close();
		}catch(IOException ioe){
			System.out.println(ioe.getMessage());
		}

	}
	public static void main(String[] args){
		LineStartX lsx = null;
		try{
			lsx = new LineStartX("java.txt");
			lsx.write();
		}catch(IOException ioe){
			System.out.println(ioe.getMessage());
		}finally{
			if(lsx != null)
				lsx.closeR();
		}
	}
}










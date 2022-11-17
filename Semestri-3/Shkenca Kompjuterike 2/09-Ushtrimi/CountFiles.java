import java.io.*;
public class CountFiles{
	private File folder;
	private String output;
	private BufferedWriter bw;
	
	public CountFiles(String f) throws IOException{
		folder = new File(f);
		output = "file.out";
		bw = new BufferedWriter(new FileWriter(output));
	}
	public int count(int size) throws IOException{
		int count = 0;
		for(File f : folder.listFiles()){
			if(!f.isDirectory())
				if(f.length() <= size)
					count++;
		}
		return count;
	}
	public void write(int size) throws IOException{
		int s = count(size);
		bw.write("Total file ishin " +folder.listFiles().length+ "\nTotal file qe e plotesonin kushtin ishin " + s);
		bw.flush();
	}
	public void closeR(){
		try{
			if(bw != null)
				bw.close();
		}catch(IOException ioe){
			System.out.println(ioe.getMessage());
		}
	}
	public static void main(String[] args){
		CountFiles cf = null;
		try{
			cf = new CountFiles("C:\\Users\\Florent\\Desktop\\UBT\\Semestri-3\\Shkenca Kompjuterike 2");
			cf.write(500000);
		}catch(Exception e){
			System.out.println(e.getMessage());
		}finally{
			if(cf != null)
				cf.closeR();
		}
	}
}
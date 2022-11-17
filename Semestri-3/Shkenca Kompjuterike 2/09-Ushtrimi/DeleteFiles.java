import java.io.*;
public class DeleteFiles{
	private File folder;
	private String output;
	private BufferedWriter bw;
	
	public DeleteFiles(String f) throws IOException{
		folder = new File(f);
		output = "ubt.out";
		bw = new BufferedWriter(new FileWriter(output));
	}
	public void fshij(String part) throws IOException{
		int count = 0;
		int deleted = 0;
		int nrFiles = folder.listFiles().length;
		
		for(File f : folder.listFiles()){
			if(!f.isDirectory()){
				if(f.getName().contains(part)){
					count++;
					if(f.delete()){
						deleted++;
					}
				}
				
			}
		}
		write(count, deleted, nrFiles);
	}
	public void write(int count , int deleted, int nrFiles) throws IOException{
		bw.write("Total file-a ishin : " + nrFiles +
		"\nTotal file-a qe e plotesonin kushtin ishin: " + count + "\nTotal file-a te fshire: " + deleted);
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
		DeleteFiles df = null;
		try{
			df = new DeleteFiles("C:\\Users\\Florent\\Desktop\\fa");
			df.fshij("abc");
		}catch(Exception e){
			System.out.println(e.getMessage());
		}finally{
			if(df != null)
				df.closeR();
		}
	}
}
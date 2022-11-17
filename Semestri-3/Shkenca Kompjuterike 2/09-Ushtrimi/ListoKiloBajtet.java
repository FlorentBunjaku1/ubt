import java.io.*;
public class ListoKiloBajtet{
	private File folder;
	private String output;
	private BufferedWriter bw;
	
	public ListoKiloBajtet(String f) throws IOException{
		folder = new File(f);
		output = "ubt.out";
		bw = new BufferedWriter(new FileWriter(output));
	}
	public void listoKB(String ext, long kb) throws IOException{
		bw.write("File-a me extension "+ext+" me madhesi "+kb+" KB ne folderin "+ folder.getName() +" :\n");
		for(File f : folder.listFiles()){
			if(!f.isDirectory()){
				String[] name = f.getName().split("\\.");
				if(f.length() >= kb && name[1].equals(ext))
					bw.write(f.getName() + " - " + f.length()/1024 + " KB\n");
				bw.flush();
			}
		}
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
		ListoKiloBajtet lk = null;
		try{
			lk = new ListoKiloBajtet("C:\\Users\\Florent\\Desktop\\UBT\\Semestri-3\\Shkenca Kompjuterike 2");
			lk.listoKB("pdf",30);
		}catch(Exception e){
			System.out.println(e.getMessage());
		}finally{
			if(lk != null)
				lk.closeR();
		}
	}
}
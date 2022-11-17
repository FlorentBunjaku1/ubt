import java.io.*;
public class Ushtrimi3{
	public static void main(String[] args){
		System.out.println("");

		try{

			FileWriter fw = new FileWriter("rezultati.txt", true);
			
			fw.write("123");	
			fw.flush();

			fw.write("456\n");

			fw.close();
		}catch(Exception e){
			System.out.println(e.getMessage());
		}

	}
}
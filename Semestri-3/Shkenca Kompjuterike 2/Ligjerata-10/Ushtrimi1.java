import java.io.*;
public class Ushtrimi1{
	public static void main(String[] args){
		System.out.println("");

		try{
			FileReader fr = new FileReader("info.txt");
			int c;
			while((c=fr.read()) != -1){
				System.out.print((char)c); 
			}
			
			System.out.println("\nThe end");

			fr.close();
		}catch(Exception e){
			System.out.println(e.getMessage());
		}


	}
}
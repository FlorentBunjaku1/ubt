import java.io.*;
public class Ushtrimi2{
	public static void main(String[] args){
		System.out.println("");

		try{
			FileReader fr = new FileReader("info.txt");
			BufferedReader br = new BufferedReader(fr);
			String rreshti;

			while((rreshti=br.readLine()) != null){
				System.out.println(rreshti); 
			}

			br.close();
			fr.close();

			System.out.println("\nThe end");
		}catch(Exception e){
			System.out.println(e.getMessage());
		}


	}
}
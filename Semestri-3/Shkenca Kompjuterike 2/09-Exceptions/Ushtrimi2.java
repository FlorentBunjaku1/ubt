public class Ushtrimi2{

	public static void main(String[] args){
		int numrat[] = {0,1,2,3,4};

		try{
			System.out.println(numrat[12]);
		}
		catch(ArrayIndexOutOfBoundsException e){
			// System.out.println(e.getMessage());
			System.out.println("Nuk ekziston pozita ne fjale");
		}
		System.out.println("Fundi");
	}
}
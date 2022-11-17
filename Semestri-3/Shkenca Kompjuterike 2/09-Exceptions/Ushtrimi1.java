public class Ushtrimi1{

	public static void main(String[] args){
		int a = 5;
		int b = 0;

		try{
			double c = a/b;
			System.out.println(c);
		}
		catch(ArithmeticException e){
			System.out.println(e);
		}
		System.out.println("Fundi");
	}
}
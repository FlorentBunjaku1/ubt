public class Ushtrimi3{

	public void metoda() throws UBTException{
		int numrat[] = {0,1,2,3,4};
		int pozita = 12;
		if(pozita >= numrat.length){
			throw new UBTException("Pozita Nuk ekziston");
		}
		System.out.println(numrat[pozita]);
		
	}

	public static void main(String[] args){
		Ushtrimi3 u = new Ushtrimi3();
		try{
			u.metoda();
		}
		catch(UBTException ue){
			// System.out.println(e.getMessage());
			System.out.println(ue.getMessage());
		}		
		
		System.out.println("Fundi");
	}
}
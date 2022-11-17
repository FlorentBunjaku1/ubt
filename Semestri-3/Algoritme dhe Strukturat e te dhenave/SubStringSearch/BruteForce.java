public class BruteForce{

	public static void main (String[] args){

		String a = "ABACADCABRA";
		String b = "ABRA";

		System.out.println(search(b,a));

	}
	public static String search(String pat, String txt){

		int M = pat.length();
		int N = txt.length();

		for(int i = 0; i <= N-M;i++){
			int j;

			for(j = 0; j < M;j++)
				if(pat.charAt(j) != txt.charAt(i+j))
					break;

			if(j == M)
				return "SubString found in index : " + i;
		}	
		return "SubString Not Founded";
	}
}
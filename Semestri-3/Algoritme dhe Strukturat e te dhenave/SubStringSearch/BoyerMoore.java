import java.lang.Math;
public class BoyerMoore{
	public static void main(String[] args){
		String a = "FINDINAHAYNEEDLESTACKNEEDLEINA";
		String b = "NEEDLE";
		System.out.println(search(a,b));
	}

	public static int search(String txt, String pat){
		int  N = txt.length();
		int M = pat.length();
		int skip;

		int right[] = new int[250];
		for(int c = 0; c < right.length;c++){
			right[c] = -1;
		}
		for(int k = 0; k < M;k++){
			right[pat.charAt(k)] = k;
		}

		for(int i = 0; i <= N-M;i += skip){
			skip = 0;
			for(int j = M-1; j >= 0;j--){

				if(pat.charAt(j) != txt.charAt(i+j)){
					skip = Math.max(1, j - (right[txt.charAt(j+i)]));
					break;
				}
			}
			if(skip == 0) return i;
		}
		return N;
	}
}
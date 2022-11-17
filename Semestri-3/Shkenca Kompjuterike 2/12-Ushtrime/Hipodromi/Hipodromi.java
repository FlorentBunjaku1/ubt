
import java.util.*;

public class Hipodromi {
	private static final int MAX_PRIORITY = 0;
	private String emri;
	private Vector<KafshaGaruese> kafshet = new Vector<KafshaGaruese>();
	
	public Hipodromi(String emri) {
		this.emri = emri;
	}
	public void shtoKafshen(KafshaGaruese kg) throws GaraException{
		if(kg == null)
			throw new GaraException("Objekti nuk duhet te jet null");
		if(kafshet.contains(kg))
			throw new GaraException("Kjo Kafsh gjindet ne vektore");
		kafshet.add(kg);
	}
	public void shtypKafshet() {
		for(KafshaGaruese kg : kafshet)
			System.out.println(kg.toString());
	}
	public void filloGaren() {
		Enumeration<KafshaGaruese> em = kafshet.elements();
		while(em.hasMoreElements()) {
			KafshaGaruese kg = em.nextElement();
			if(kg instanceof KaliGarues)
				kg.setPriority(10);
			kg.start();
		}
	}
	public static void main(String[] args) {
		
		Hipodromi h = new Hipodromi("Hipodromi1");
		try {
			//Supposed me gjujt exception
			KaliGarues kg1 = new KaliGarues(3,"Kali 1",1);
			KaliGarues kg2 = new KaliGarues(2,"Kali 2",2);
			QeniGarues qg1 = new QeniGarues(10,"Qeni1",3);
			QeniGarues qg2 = new QeniGarues(3,"Qeni2",4);
			
			h.shtoKafshen(kg1);
			h.shtoKafshen(kg2);
			h.shtoKafshen(qg1);
			h.shtoKafshen(qg2);
			
			h.filloGaren();
		}catch(GaraException ge) {
			System.out.println(ge.getMessage());
			ge.printStackTrace();
		}
	}

}


import java.util.Random;

public class QeniGarues extends KafshaGaruese implements Garon{
	private int distanca;
	public QeniGarues(int mosha, String emri, int pozitaStartuese) throws GaraException{
		super(mosha, emri, pozitaStartuese);
		
	}
	public void vrapo() {
		distanca += 10;
		System.out.println("(QeniGarues) " + super.toString() + " vrapoi " + distanca);
	}
	public void run() {
		Random r = new Random();
		while(this.distanca < GJATESIA_PISTES) {
			vrapo();
			try {
				Thread.sleep(r.nextInt(2000));
			}catch(InterruptedException ie) {
				System.out.println(ie.getMessage());
			}
		}
		System.out.println(this.getEmri() + " E Perfundoi Garen");
	}
}

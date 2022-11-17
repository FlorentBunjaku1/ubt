
import java.util.Random;

public class VeturaGaruese extends MjetiGaruese {

    public VeturaGaruese(String prodhuesi, int vitiProdhimitm, double volumiMotorit, int pozitaStartuesem, int distanca, int gjatesia) throws GaraExcpetion{
        super(prodhuesi, vitiProdhimitm, volumiMotorit, pozitaStartuesem, distanca, gjatesia);
    }
    public String getLloji(){
        return "Vetura";
    }
    public void garo(){
        int d = this.getDistanca();
        this.setDistanca(d+150);
        System.out.println(this.toString());
    }
    public void run(){
        Random r = new Random();
        while(this.getDistanca() < this.getGjatesiaPistes()){
            garo();
            try{
                Thread.sleep(r.nextInt(750));
            }catch (InterruptedException ie){
                System.out.println(ie.getMessage());
            }
        }
           System.out.println(this.toString() + " Dhe e perfundoi garen");
    }
}

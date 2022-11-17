

import java.util.Random;

public class MotoGarues extends MjetiGaruese{

    public MotoGarues(String prodhuesi, int vitiProdhimitm, double volumiMotorit, int pozitaStartuesem, int distanca, int gjatesia) throws GaraExcpetion{
        super(prodhuesi, vitiProdhimitm, volumiMotorit, pozitaStartuesem, distanca,gjatesia);
    }
    public String getLloji(){
        return "Moto";
    }
    public void garo(){
        int d = this.getDistanca();
        this.setDistanca(d+100);
        System.out.println(this.toString());
    }
    public void run(){
        Random r = new Random();
        while(this.getDistanca() < this.getGjatesiaPistes()){
            garo();
            try {
                Thread.sleep(r.nextInt(1000));
            }catch (InterruptedException ie){
                System.out.println(ie.getMessage());
            }
        }
        System.out.println(this.toString() + " Dhe e perfundoi garen");
    }
}

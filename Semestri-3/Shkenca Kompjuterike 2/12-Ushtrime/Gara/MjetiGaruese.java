

public abstract class MjetiGaruese extends MjetiLevizes implements Garon,Runnable{
    private int pozitaStartuese;
    private int distanca;
    private final int gjatesiaPistes;


    public MjetiGaruese(String prodhuesi, int vitiProdhimitm, double volumiMotorit, int pozitaStartuese, int distanca, int gjatesiaPistes) throws GaraExcpetion{
        super(prodhuesi,vitiProdhimitm,volumiMotorit);
        this.gjatesiaPistes = gjatesiaPistes;
        this.pozitaStartuese = pozitaStartuese;
        this.distanca = distanca;
    }

    public void setDistanca(int distanca) {
        this.distanca = distanca;
    }

    public int getPozitaStartuese() {
        return pozitaStartuese;
    }

    public int getDistanca() {
        return distanca;
    }

    public int getGjatesiaPistes() {
        return gjatesiaPistes;
    }

    public abstract void garo();

    public String toString(){
        return pozitaStartuese + " :    " + getClass().getName() + " " + super.toString() + " pershkoi " + distanca + " metra";
    }
}

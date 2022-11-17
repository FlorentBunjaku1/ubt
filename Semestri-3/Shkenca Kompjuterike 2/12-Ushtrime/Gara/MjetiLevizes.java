

public abstract class MjetiLevizes {
    private String prodhuesi;
    private int vitiProdhimit;
    private double volumiMotorit;

    public MjetiLevizes(String prodhuesi, int vitiProdhimitm, double volumiMotorit) throws GaraExcpetion{
        if(vitiProdhimitm < 2000)
            throw new GaraExcpetion("Viti i prodhimit duhet min te jet 2000");

        if(this instanceof VeturaGaruese)
            if(volumiMotorit < 2.0)
                throw new GaraExcpetion("Volumi i Veturave duhet te jet me i madh se 2.0");
        if(this instanceof MotoGarues)
            if(volumiMotorit < 1.2 || this.volumiMotorit > 2.5)
                throw new GaraExcpetion("Volumi i Motocikletes duhet te jet ne mes te 1.2 dhe 2.5");

        this.prodhuesi = prodhuesi;
        this.vitiProdhimit = vitiProdhimitm;
        this.volumiMotorit = volumiMotorit;
    }
    public int getVitiProdhimit() {
        return vitiProdhimit;
    }
    public String getProdhuesi() {
        return prodhuesi;
    }
    public double getVolumiMotorit() {
        return volumiMotorit;
    }
    public String toString(){
        return prodhuesi + " " + volumiMotorit + " cc - " + vitiProdhimit;
    }
    public boolean equals(Object obj){
        if(obj instanceof MjetiLevizes){
            MjetiLevizes m = (MjetiLevizes)obj;
            if(m.vitiProdhimit == vitiProdhimit && m.prodhuesi.equals(this.prodhuesi) && m.volumiMotorit == this.volumiMotorit){
                return true;
            }
        }
        return false;
    }

}

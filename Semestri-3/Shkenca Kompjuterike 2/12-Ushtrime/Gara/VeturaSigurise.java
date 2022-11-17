
public class VeturaSigurise extends  MjetiLevizes{
    private String ngjyra;

    public VeturaSigurise(String prodhuesi, int vitiProdhimitm, double volumiMotorit, String ngjyra) throws GaraExcpetion{
        super(prodhuesi, vitiProdhimitm, volumiMotorit);
        this.ngjyra = ngjyra;
    }

    public String getNgjyra() {
        return ngjyra;
    }

    public String toString(){
        return "VeturaSigurise " + super.toString() + " : " + this.ngjyra;
    }
}

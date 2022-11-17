
import java.util.Enumeration;
import java.util.Vector;

public class Gara {
    private int gjatesiaPistes;
    private Vector<MjetiLevizes> mjetet = new Vector<MjetiLevizes>();

    public Gara(int gjatesiaPistes){
        this.gjatesiaPistes = gjatesiaPistes;
    }
    public void shtoMjetin(MjetiLevizes m) throws GaraExcpetion{
        if(mjetet.contains(m))
            throw new GaraExcpetion("Ky mjet gjindet ne vector");
        if(m == null)
            throw new GaraExcpetion("Nuk lejohen objektet null");
        mjetet.add(m);
    }
    public void shtypMjetet(){
        for(MjetiLevizes m : mjetet)
            System.out.println(m.toString());
    }
    public void filloGaren(String lloji){
        Enumeration<MjetiLevizes> em = mjetet.elements();
        while(em.hasMoreElements()){
            MjetiLevizes m = (MjetiLevizes)em.nextElement();
            if(m instanceof  MjetiGaruese){
                MjetiGaruese mg = (MjetiGaruese) m;
                Thread t = new Thread(mg);

                if(lloji.equals("Univerzal")){
                    t.start();
                }else if(lloji.equals("Vetura")){
                    if(mg.getLloji().equals(lloji))
                        t.start();
                }else if(lloji.equals("Moto")) {
                    if(mg.getLloji().equals(lloji))
                        t.start();
                }

            }
        }
    }
    public static void main(String[] args){
        Gara g1 = new Gara(2500);
        try{
            VeturaGaruese vg1 = new VeturaGaruese("Tesla", 2021, 2.5, 0, 0, g1.gjatesiaPistes);
            VeturaGaruese vg2 = new VeturaGaruese("BMW", 2021, 2.1, 1, 0, g1.gjatesiaPistes);
            VeturaGaruese vg3 = new VeturaGaruese("Audi", 2020, 2.5, 2, 0, g1.gjatesiaPistes);
            MotoGarues mg1 = new MotoGarues("Honda", 2019, 1.5, 3, 0, g1.gjatesiaPistes);
            MotoGarues mg2 = new MotoGarues("Kawasaki", 2020, 2.0, 4, 0, g1.gjatesiaPistes);
            MotoGarues mg3 = new MotoGarues("Suzuki", 2021, 3, 5, 0, g1.gjatesiaPistes);
			VeturaSigurise vs1 = new VeturaSigurise("Ford", 2000, 1.6, "E bardhe");
            g1.shtoMjetin(vg1);
            g1.shtoMjetin(vg2);
            g1.shtoMjetin(vg3);
            g1.shtoMjetin(mg1);
            g1.shtoMjetin(mg2);
            g1.shtoMjetin(mg3);

            g1.filloGaren("Univerzal");
        }catch (GaraExcpetion ge){
           System.out.println(ge.getMessage());
        }
    }
}

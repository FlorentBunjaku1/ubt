public class Autosalloni{
  private String emri;
  private Automjeti[] a;
  private int index;
  public Autosalloni(String emri,int numri){
    this.emri = emri;
    a = new Automjeti[numri];
  }
  public boolean exist(Automjeti at){
    for(int i = 0;i < index;i++){
      if(a[i].equals(at)){
        return true;
      }
    }
    return false;
  }
  public void shtoAutomjetin(Automjeti at){
    if(index == a.length){
      System.out.println("Nuk ka vend ne Autosallon");
      return;
    }
    if(exist(at)){
      System.out.println("Automjeti gjendet ne Autosallon");
      return;
    }
    if(at == null){
      System.out.println("Nuk lejohet shtypja e objekteve null");
      return;
    }
    a[index++] = at;
  }
  public void shtypSUVProdhuesi(String prodhuesi){
    for(int i = 0;i < index;i++){
      if(a[i] instanceof SUV){
        SUV s = (SUV)a[i];
        if(s.getProdhuesi().equals(prodhuesi)){
          System.out.println(s);
        }
      }
    }
  }
  public void shtypLimuzinaViti(int vitiProdhimit){
    for(int i = 0;i < index;i++){
      if(a[i] instanceof Limuzina){
        Limuzina l = (Limuzina)a[i];
        if(l.getVitiProdhimit() == vitiProdhimit){
          System.out.println(l);
        }
      }
    }
  }
  public Automjeti automatikuMeIRi(){
    Automjeti iRi = null;
    for(int i =0 ; i < index;i++){
      if(a[i].eshteAutomatik() == true){
        if(iRi == null || iRi.getVitiProdhimit() < a[i].getVitiProdhimit()){
          iRi = a[i];
        }
      }
    }
    return iRi;
  }
  public void print(){
    for(Automjeti at : a){
      System.out.println(at);
    }
  }
  public static void main(String[] args){
    Autosalloni salloni = new Autosalloni("Salloni ABC",50);
    Limuzina l1 = new Limuzina("LIM1234","Bently",2015,"E Zez");
    Limuzina l2 = new Limuzina("LIM12345","Audi",2018,"E Zez");
    Limuzina l3 = new Limuzina("LIM12346","Mercedes",2020,"E Bardh");
    SUV s1 = new SUV("SUV1234","Tesla",2020,true);
    SUV s2 = new SUV("SUV12345","Range Rover",2019,true);
    SUV s3 = new SUV("SUV12346","Suzuki",2017,false);

    salloni.shtoAutomjetin(l1);
    salloni.shtoAutomjetin(s2);
    salloni.shtoAutomjetin(s1);
    salloni.shtoAutomjetin(l3);
    salloni.shtoAutomjetin(l2);
    salloni.shtoAutomjetin(s3);

    System.out.println("Ekziston : " );
    System.out.println(salloni.exist(new Limuzina("LIM12346","Mercedes",2020,"E Bardh")));

    System.out.println("=================================");

    System.out.println("shtypSUVProdhuesi : ");
    salloni.shtypSUVProdhuesi("Tesla");

    System.out.println("=================================");

    System.out.println("shtypLimuzinaViti : ");
    salloni.shtypLimuzinaViti(2015);

    System.out.println("=================================");
    System.out.println("automatikuMeIRi : " + salloni.automatikuMeIRi());

    System.out.println("=================================");
    System.out.println("Te gjitha automjetet ne sallon : ");
    salloni.print();

  }
}

public class Automjeti{
  private String nrShasise; //readOnly
  private String prodhuesi;
  private int vitiProdhimit;
public Automjeti (String nrShasise, String prodhuesi, int vitiProdhimit){
  this.nrShasise = nrShasise;
  this.prodhuesi = prodhuesi;
  this.vitiProdhimit = vitiProdhimit;
}
public String getNrShasise(){
  return nrShasise;
}
public void setProdhuesi(String prodhuesi){
  this.prodhuesi = prodhuesi;
}
public String getProdhuesi(){
  return prodhuesi;
}
public void setVitiProdhimit(int vitiProdhimit){
  this.vitiProdhimit = vitiProdhimit;
}
public int getVitiProdhimit(){
  return vitiProdhimit;
}
public String toString(){
  return nrShasise + " : " + prodhuesi + " - " + vitiProdhimit;
}
public boolean equals(Object obj){
  if(obj instanceof Automjeti){
    Automjeti a = (Automjeti)obj;
    if(nrShasise.equals(a)){
      return true;
    }
  }
  return false;
}
}
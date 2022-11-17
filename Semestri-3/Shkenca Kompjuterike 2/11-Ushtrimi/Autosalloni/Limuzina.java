public class Limuzina extends Automjeti{
	  private String ngjyra;

	  public Limuzina(String nrShasise, String prodhuesi, int vitiProdhimit, String ngjyra) throws AutomjetiException{
	    super(nrShasise, prodhuesi,vitiProdhimit);
	    if(ngjyra == null || ngjyra.trim() == "")
	    	throw new AutomjetiException("Ngjyra nuk duhet te jet e zbrazet!");
	    else
	    	this.ngjyra = ngjyra;
	  }
	  public boolean eshteAutomatik(){
	  	return true;
	  }
	  public void setNgjyra(String ngjyra) throws AutomjetiException{
	    if(ngjyra == null || ngjyra.trim() == "")
	    	throw new AutomjetiException("Ngjyra nuk duhet te jet e zbrazet!");
	    else
	    	this.ngjyra = ngjyra;
	  }
	  public String getNgjyra(){
	    return ngjyra;
	  }
	  public String toString(){
	    return "Limuzina " + super.toString() + " : "  + ngjyra;
	  }
	  
//	  Implementimi i metodes abstratke te trasheguar nga interface 
	  @Override
	  public int numriShpejtesive() {
		  return 6;
	  }
//	  Mbishkrimi i metodes default te trasheguar nga interface
	  @Override
	  public boolean kaTempomat() {
		  return false;
	  }
	}
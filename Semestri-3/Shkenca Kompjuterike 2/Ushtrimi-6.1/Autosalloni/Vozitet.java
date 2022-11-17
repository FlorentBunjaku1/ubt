package Ushtrimi7.Autosalloni;

public interface Vozitet {
	
	int numriShpejtesive();
	
	default boolean kaTempomat(){
		return true;
	}
}

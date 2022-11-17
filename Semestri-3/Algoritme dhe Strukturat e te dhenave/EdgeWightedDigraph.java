public class EdgeWightedDigraph{

	private final int V;
	private final Bag<DirectedEdge>[] adj;

	public EdgeWightedDigraph(int V){
		this.V = V;
		adj = (Bag<DirectedEdge>[]) new Bag[V];
		for(int v = 0; v < V; v++){
			adj[v] = new Bag<EdgeWighted>();
		}
	}

	public void addEdge(EdgeWighted e){

		int v = e.to();
		adj[v].add(e);
	}
}
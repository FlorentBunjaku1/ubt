import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;

public class TopologicalSort {
    private Digraph graph;
    private boolean [] marked;
    private Deque<Integer> reversedPostOrder;

    public TopologicalSort(String path){
        this.graph = new Digraph(path);
        this.marked = new boolean[graph.getV()];
        reversedPostOrder = new ArrayDeque<>(graph.getV());
        calculateTopologicalSort();
    }

    private void calculateTopologicalSort() {
        for (int i = 0; i < graph.getV(); i++) {
            if(!marked[i])
                dfs(i);
        }
    }

    private void dfs(int v) {
        marked[v] = true;
        ArrayList<Integer> vertices = graph.getAdj(v);
        for (int i = 0; i < vertices.size(); i++) {
            int w = vertices.get(i);
            if(!marked[w])
                dfs(w);
        }
        reversedPostOrder.push(v);
    }

    public Iterable<Integer> getTopologicalOrder(){
        return reversedPostOrder;
    }

    public String toString(){
        return "Topological Sort:\n"+reversedPostOrder+"\nGraph Representation:\n"+graph;
    }
}

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Scanner;

public class Digraph {
    private int V;
    private int E;
    private ArrayList<ArrayList<Integer>> adj;

    public Digraph(int V){
        if(V < 0)
            throw new IllegalArgumentException("V must be positive!");
        this.V = V;
        this.E = 0;

        adj = new ArrayList<ArrayList<Integer>>(V);
        for (int i = 0; i < V; i++) {
            adj.add(new ArrayList<Integer>());
        }
    }

    public Digraph(String path){
        try {
            Scanner sc = new Scanner(new File(path));
            this.V = sc.nextInt();
            sc.nextLine();
            this.E = Integer.parseInt(sc.nextLine());

            adj = new ArrayList<ArrayList<Integer>>(V);
            for (int i = 0; i < V; i++) {
                adj.add(new ArrayList<Integer>());
            }

            for (int i = 0; i < E; i++) {
                int from = sc.nextInt();
                int to = sc.nextInt();
                if(i < E-1)
                    sc.nextLine();
                adj.get(from).add(to);
            }

        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
    }

    public void addEdge(int from, int to){
        checkVertex(from);
        checkVertex(to);
        adj.get(from).add(to);
        E++;
    }

    private void checkVertex(int v) {
        if(v < 0 || v >= this.V)
            throw new IllegalArgumentException("v must be between 0 and "+V);
    }

    public int getV() {
        return V;
    }

    public int getE() {
        return E;
    }

    public int outdegree(int v){
        checkVertex(v);
        return getAdj(v).size();
    }

    public ArrayList<Integer> getAdj(int v) {
        checkVertex(v);
        return adj.get(v);
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < V; i++) {
            sb.append(i);
            sb.append(":");
            for (int j = 0; j < getAdj(i).size(); j++) {
                sb.append(" ");
                sb.append(getAdj(i).get(j));
            }
            sb.append("\n");
        }
        return sb.toString();
    }
}

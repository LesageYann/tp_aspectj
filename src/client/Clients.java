package client;


import java.util.LinkedList;

public class Clients {
	protected LinkedList<Client> c;
	
	public Clients(){
		c = new LinkedList<Client>();
	}
	
	public void addClient(Client cl){
		c.push(cl);
		System.out.println("client ajouté a la liste client");
	}
	
	public void delClient(Client cl){
  	    c.remove(cl);
	}

}

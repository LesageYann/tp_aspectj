package order;

import java.util.LinkedList;

public class Orders {
	protected LinkedList<Order> o;
	
	public Orders(){
		o = new LinkedList<Order>();
	}
	
	public void addOrder(Order or){
		o.push(or);
		System.out.println("commande ajouté à la liste commande");
	}
	
	public void delOrder(Order or){
		o.remove(or);
		System.out.println("commande supprimé de la liste commande");
	}
}

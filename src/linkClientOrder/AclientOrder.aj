package linkClientOrder;
import client.*;
import order.*;
import java.util.LinkedList;

public aspect AclientOrder {
	
	private LinkedList<Order> Client.o=new LinkedList<Order>();
	
	public void Client.addOrder(Order order){
		o.push(order);
		order.setClient(this);
	}

	public Boolean Client.hasOrder(){
		return !o.isEmpty();
	}
	
	public void Client.delOrder(Order order){
		o.remove(order);
	}
	
    pointcut delClientifNoOrder(Client cl):execution(void Clients.delOrder(Client)) && args(cl);
	
	Object around(Client cl):delClientifNoOrder(cl){
		if(cl.hasOrder()){
			System.out.println("impossible de supprimer un client avec des commandes");
		}else {
			System.out.println("client supprimé de la liste client");
  		    proceed(cl);
		}
		return cl;
	}

	
		
}

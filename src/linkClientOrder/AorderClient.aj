package linkClientOrder;
import client.*;
import order.*;

public aspect AorderClient {

    private Client Order.client ;
	
	public void  Order.setClient(Client cl){
		this.client = cl;
	}
	
	public Client Order.getClient(){
		return client;
	}
	
	pointcut delOrderAndClient(Order or):execution(void Orders.delOrder(Order)) && args(or);
	
	before(Order or):delOrderAndClient(or){
		if(or.getClient() != null){
    		or.getClient().delOrder(or);
    		System.out.println("commande supprimé du client");
		}
	}
}

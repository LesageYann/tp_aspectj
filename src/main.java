import client.Client;
import client.Clients;
import order.Order;
import order.Orders;

public class main {
	public static void main(final String [] args){
		Clients c = new Clients();

		Client c1 = new Client("kevin", "36 rue du lilas");
		Client c2 = new Client("luc"," 10 rue henry barbusse");
		
		Orders o = new Orders();

		Order o1 = new Order(1,100.2);
		Order o2 = new Order(2,5.2);
		
		c.addClient(c1);
		c.addClient(c2);
		
		c = new Clients();
		o = new Orders();
		
		o.addOrder(o1);
		o.addOrder(o2);
		
		c1.addOrder(o1);
		
		o.delOrder(o2);
		c.delClient(c2);
		
		c.delClient(c1);
		o.delOrder(o1);
		c.delClient(c1);
	}

}

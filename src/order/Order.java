package order;

public class Order {
	protected int id;
	protected double amount;
	
	public Order(int i, double a){
		id = i;
		amount = a;
	}
	
	public void printOrder(){
		System.out.println( id + " : " + amount );
	}

}

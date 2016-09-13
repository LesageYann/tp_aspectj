package singleton;

import order.Orders;

public aspect OrdersSing {
	
	private static volatile Orders Orders.instance;
	
	Orders around(): call(order.Orders.new(..)){
		//Le "Double-Checked Singleton"/"Singleton doublement vérifié" permet 
        //d'éviter un appel coûteux à synchronized, 
        //une fois que l'instanciation est faite. cf wiki
		if( Orders.instance == null){
			synchronized(Orders.class) {
				if (Orders.instance == null) {
					System.out.println("Orders generation");
	            	Orders.instance=proceed();
				}
			}
		}

		System.out.println("Orders rendu");
		return Orders.instance;
	}
	

}

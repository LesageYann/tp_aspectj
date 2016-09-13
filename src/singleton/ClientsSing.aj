package singleton;

import client.Clients;

public aspect ClientsSing {
	
	private static volatile Clients Clients.instance;
	
	Clients around(): call(client.Clients.new(..)){
		//Le "Double-Checked Singleton"/"Singleton doublement vérifié" permet 
        //d'éviter un appel coûteux à synchronized, 
        //une fois que l'instanciation est faite. cf wiki
		if( Clients.instance == null){
			synchronized(Clients.class) {
				if (Clients.instance == null) {
					System.out.println("Clients generation");
	            	Clients.instance=proceed();
				}
			}
		}

		System.out.println("Clients rendu");
		return Clients.instance;
	}
	

}

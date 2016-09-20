package trace;

public aspect TraceMethod {

	pointcut toBeTraced ():call( * client..*(..));
	
//	before(): toBeTraced(){
//		System.out.println("> "+ thisJoinPoint.getSignature()+" call by "
//					+thisJoinPoint.getThis().toString() );
//	}
	
	after(): toBeTraced(){
		System.out.println("< end of "+ thisJoinPoint.getSignature());
	}
}

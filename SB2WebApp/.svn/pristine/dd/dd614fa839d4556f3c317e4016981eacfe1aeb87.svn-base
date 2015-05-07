package com.antra.aspect;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

/**
 * This is a class used to test Spring AOP module
 * Every time the DeptDAO runs the getList() method
 * the AOP will inject sysout method after that
 * @author Lester
 *
 */
@Aspect
@Component
public class AOP {
	@Pointcut("execution(* com.antra.dao.DeptDAO.getList(..))")
	public void performance() {}
	
	@Before("performance()")
	public void logBefore(JoinPoint joinPoint) {
		System.out.println("Before getList()");
	}
	@AfterReturning("performance()")
	public void logAfter(JoinPoint joinPoint) {
		System.out.println("after successfully getList()");
	}
	@AfterThrowing("performance()")
	public void logAfterException(JoinPoint joinPoint) {
		System.out.println("Something wrong with getList()");
	}
	/*@Around("performance()")
	public void logAround(ProceedingJoinPoint jp){
		try {
			System.out.println("Before1");
			System.out.println("Before2");
			jp.proceed();
			System.out.println("After");
		} 
		catch (Throwable e) {
			System.out.println("Exception");
		}
	}*/
}

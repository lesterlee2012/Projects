package com.antra.svn;

public class Child extends Parent {

	public Child(int var) {
		super(var);
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public int getVar(){
		return super.getVar()+10;
	}
	
	/*public static void print(){
		System.out.println("not override");
	}*/
	
	static class Inner{
		int i=100;
		public int getI(){
			return i;
		}
	}
	
	public static void main(String[] args) throws Exception{
		Inner inner=new Inner();
		Parent obj=new Child(10);
		System.out.println(inner.getI()+" "+obj.getVar());
		print();
		throw new Exception();
	}
}

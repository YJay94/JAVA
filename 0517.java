overriding
- 자식 클래스(메소드)가 부모 클래스(메소드)를 겹쳐써서 우선순위로 사용될때

overloading
- 같은 메소드이름을 사용하되, 입력값이 다른경우



package user;

interface Position{
	String hereis();
}

interface Pay{
	String Payis();
}

class Company{
	String where;
	String pay;
	
	void setWhere(String where) {
		this.where = where;
	}
	
	void setPay(String pay) {
		this.pay = pay;
	}
	
	public String hereis() {
		return where;
	}
	
	public String Payis() {
		return pay;
	}
}

class Lotte extends Company implements Position, Pay{
	
}

class Ssg extends Company implements Position, Pay{

}

class Lg extends Company implements Position, Pay{

}

class PrintWhere {
	void print(Position position) {
		System.out.println(position.hereis());
	}
}


public class Newsample{
	public static void main(String[] args) {
		PrintWhere printwhere = new PrintWhere();
		Lotte lotte = new Lotte();
		lotte.setWhere("고척");
//		System.out.println(lotte.where);
		printwhere.print(lotte);
		
	}
}


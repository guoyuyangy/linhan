package pers.s.student;
import java.util.*; 
public class Student {
    String name;
    String learn_num;
    double[] score;
    double[] value;
    public Student(){
    	name = "0";
    	learn_num = "2016220****";
    	score = new double[10];
    }
	public void input(String name,String learn_num, double[] s){
    	this.name = name;
    	this.learn_num = learn_num;
    	System.arraycopy(s, 0, score, 0, 10);
    }
	public double a_value(){
		double all = 0;
		for(int i = 0; i < score.length; i ++){
			all += score[i];
		}
		return all;
	}
	public double ave_value(){
		return a_value()/score.length;
	}
	public void out(){
		System.out.println("���֣�" + name);
		System.out.println("ѧ��:" + learn_num);
		System.out.println("�ܷ֣�" + a_value());
		System.out.println("ƽ���֣�" + ave_value());
	}
	public static void main(String[] args){
		String name,learn_num;
		double []score = new double[10];
		Scanner scan = new Scanner(System.in);
		Student stu = new Student();
		System.out.println("���������֡�ѧ���Լ�ʮ�ſγɼ�:");
		name = scan.next();
		learn_num = scan.next();
		for(int i = 0; i < 10; i ++){
			score[i] = scan.nextDouble();
		}
		stu.input(name,learn_num,score);
		stu.out();
	}
}
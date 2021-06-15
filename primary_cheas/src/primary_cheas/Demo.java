package primary_cheas;

import java.util.Scanner;

public class Demo {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);


        System.out.println("请输入第一个整数:");
        int num  = scan.nextInt();
        System.out.println("请输入第二个整数:");
        int num2  = scan.nextInt();
        System.out.println("请输入第三个整数:");
        int num3  = scan.nextInt();


        if(num >= num2){
            if(num3 >= num){
                System.out.println(num2+","+num+","+num3);
            }else if(num3 <= num2){
                System.out.println(num3+","+num2+","+num);
            }else{
                System.out.println(num2+","+num3+","+num);
            }
        }else{
            if(num3 >= num2){
                System.out.println(num+","+num2+","+num3);
            }else if(num3 <= num){
                System.out.println(num3+","+num+","+num2);
            }else{
                System.out.println(num+","+num3+","+num2);
            }
        }
    }
}

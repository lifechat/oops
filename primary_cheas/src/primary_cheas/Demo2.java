package primary_cheas;

import java.util.Scanner;

public class Demo2 {
    public static void main(String[] args) {

        Scanner scan = new Scanner(System.in);

        System.out.println("请输入岳小鹏期末成绩：（0-100）");
        int score = scan.nextInt();

        if(score == 100){
            System.out.println("奖励一亮BMW");
        }else if(score > 80 && score<=99){
            System.out.println("奖励一台iponex");
        }else if(score >= 60 && score <= 80){
            System.out.println("奖励一个iPad");
        }else{
            System.out.println("什么奖励也没有");
        }
    }
}

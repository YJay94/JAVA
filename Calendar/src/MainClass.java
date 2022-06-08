import java.util.Calendar;
import java.util.GregorianCalendar;

public class MainClass {
    public static void main(String[] args){
        /*

            Calendar : 일정관리, 인사관리, 입사정보

            Date -> JavaScript

            Calendar -> java == Spring framework

            Restful -> Sprint Boot
            Javascript -> Date

       * */


        Calendar cal = Calendar.getInstance();

        // 오늘 날짜 취득
        int year = cal.get(Calendar.YEAR);
        int month = cal.get(Calendar.MONTH) + 1;    // 0 ~ 11
        int day = cal.get(Calendar.DATE);

        System.out.println(year + "/" + month + "/" + day);

        //날짜 설정
        cal.set(Calendar.YEAR, 2022);
        cal.set(Calendar.MONTH, 8 - 1);
        cal.set(Calendar.DATE, 15);



        year = cal.get(Calendar.YEAR);
        month = cal.get(Calendar.MONTH) + 1;    // 0 ~ 11
        day = cal.get(Calendar.DATE);




        //달력출력
        for(int i = 0;  i < 12; i++) {
            int lastday = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
            cal.set(Calendar.YEAR, 2022);
            cal.set(Calendar.MONTH, i);
            cal.set(Calendar.DATE, 1);
            int weekday = cal.get(Calendar.DAY_OF_WEEK);    // 1(일) ~ 7(토)
            System.out.println(i+1);
            switch(weekday){
                case 1:
                    System.out.print("");
                    break;
                case 2:
                    System.out.print("*  ");
                    break;
                case 3:
                    System.out.print("*  *  ");
                    break;
                case 4:
                    System.out.print("*  *  *  ");
                    break;
                case 5:
                    System.out.print("*  *  *  *  ");
                    break;
                case 6:
                    System.out.print("*  *  *  *  *  ");
                    break;
                case 7:
                    System.out.print("*  *  *  *  *  *  ");
                    break;
            }
            for(int j = 1; j <= lastday; j++) {
                System.out.print(j+" ");
                if(j < 10) {
                    System.out.print(" ");
                }
                if((weekday+ j - 1) % 7 == 0){
                    System.out.println(" ");
                }
            }
            System.out.println(" ");
        }


    }
}

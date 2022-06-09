import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

public class MainClass {
    public static void main(String[] args){
        /*
            (java)                              web(json)
            HashMap : 사전

                            사과 : apple
                            key     value -> 한쌍(pair)
                            Tree 구조

                            key 값은 중복이 되지 않는다

            TreeMap : HashMap + sorting


         */

        HashMap<Integer, String> hMap = new HashMap<Integer, String>();

        // 추가
        hMap.put(1001, "Tigers");
        hMap.put(1002, "Lions");
        hMap.put(1003, "Twins");


        // 출력
        // 이터레이터 : 반복자(= 포인터) == cursor
        Iterator<Integer> it = hMap.keySet().iterator();
        while(it.hasNext()) {
            Integer key = it.next();
            String value = hMap.get(key);
            System.out.println(key + " : " + value);
        }

        // 삭제

        // 검색

        // 수정
        hMap.replace(1001, "Eagles");

        // HashMap key:String
        // Integer, String, MyData

//        Map<String, Object> map = new HashMap<String, Object>();
        // instanceof


        Map<String, String> map = new HashMap<String, String>();

        map.put("apple", "사과");
        map.put("pear", "배");
        map.put("grape", "포도");
        map.put("banana", "바나나");
        map.put("orange", "오렌지");

        Iterator<String> it1 = map.keySet().iterator();
        while(it1.hasNext()) {
            String k = it1.next();
            String v = map.get(k);
            System.out.println("키:" + k + " 값:" + v);
        }

        // TreeMap
        TreeMap<String, String> tMap = new TreeMap<String ,String>(map);

        // 오름차순
//        Iterator<String> itKey = tMap.keySet().iterator();

        //내림
        Iterator<String> itKey = tMap.descendingKeySet().iterator();

        while(itKey.hasNext()) {
            String k = itKey.next();
            String v = map.get(k);
            System.out.println("키:" + k + " 값:" + v);
        }
    }
}

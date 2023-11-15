import java.util.*;

public class CallBy {
   public static void foo(ArrayList<Integer> x) {
      x.set(0,6);
      x = new ArrayList<Integer>();
      x.insert(12);
      x.insert(18);
   }

   public static void main(String[] args ){
      ArrayList<Integer> a = new ArrayList<Integer>();
      a.add(5);
      System.out.println(a);
      foo(a);
      System.out.println(a);
   }
}

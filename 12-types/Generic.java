class ThingHolder<T> {
    public T thing;
}

public class Generic {
    public static void main(String[] args) {
        ThingHolder<Integer> ti = new ThingHolder<Integer>();
        ti.thing = 3;

        ThingHolder<String> ts = new ThingHolder<String>();
        ts.thing = "hello";

        System.out.println(ti.thing);
        System.out.println(ts.thing);

    }

}

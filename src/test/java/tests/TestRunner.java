package tests;

import com.intuit.karate.junit5.Karate;

public class TestRunner {


    @Karate.Test
    public Karate getUserPage() {
        return Karate.run("FirstTest").relativeTo(getClass());
    }
}

package users;

import com.intuit.karate.junit5.Karate;
//import org.junit.runner.RunWith;


public class UsersRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("users").relativeTo(getClass());
    }    

}

package home.study.helloWorld.Controller;

import org.springframework.web.bind.annotation.GetMapping;

public class HomePage {

    @GetMapping("/")
    public String greet(){
        return "Welcome to my simple app.";
    }

}

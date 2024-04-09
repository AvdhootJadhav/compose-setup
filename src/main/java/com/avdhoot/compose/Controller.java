package com.avdhoot.compose;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {

    @PostMapping("/new")
    public String greet() {
        return "Hello";
    }
}

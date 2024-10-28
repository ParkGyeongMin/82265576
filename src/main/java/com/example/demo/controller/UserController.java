package com.example.demo.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping("/api/v1/user")
@RestController
public class UserController {

    @GetMapping
    public ResponseEntity<?> getEmployeeId() {
        String employeeId = "82265576";

        return ResponseEntity.ok(employeeId);
    }

}

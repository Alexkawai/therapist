package com.example.therapist.controller;

import com.example.therapist.model.StatusResponse;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TherapistController {
    @GetMapping(value = "/health")
    public StatusResponse checkHealth() {
        StatusResponse statusResponse = new StatusResponse();
        statusResponse.setStatus("OK");
        return statusResponse;
    }
}

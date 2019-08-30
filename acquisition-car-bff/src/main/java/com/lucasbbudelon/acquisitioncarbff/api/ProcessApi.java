package com.lucasbbudelon.acquisitioncarbff.api;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1")
public class ProcessApi {

        @GetMapping("/process")
        public ResponseEntity<?> getAllDocuments() {

                return ResponseEntity.ok("Hello world!");
        }
}

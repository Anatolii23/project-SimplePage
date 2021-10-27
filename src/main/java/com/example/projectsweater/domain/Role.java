package com.example.projectsweater.domain;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.stereotype.Repository;


public enum Role implements GrantedAuthority {
    USER, ADMIN;

    @Override
    public String getAuthority() {
        return name();
    }
}

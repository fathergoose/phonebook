package com.ilseman.phonebook.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
@RooJson
public class Listing {

    /**
     */
    private String firstName;

    /**
     */
    private String lastName;

    /**
     */
    private String phoneNumber;
}

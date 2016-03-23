// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ilseman.phonebook.domain;

import com.ilseman.phonebook.domain.Listing;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect Listing_Roo_Json {
    
    public String Listing.toJson() {
        return new JSONSerializer()
        .exclude("*.class").serialize(this);
    }
    
    public String Listing.toJson(String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").serialize(this);
    }
    
    public static Listing Listing.fromJsonToListing(String json) {
        return new JSONDeserializer<Listing>()
        .use(null, Listing.class).deserialize(json);
    }
    
    public static String Listing.toJsonArray(Collection<Listing> collection) {
        return new JSONSerializer()
        .exclude("*.class").serialize(collection);
    }
    
    public static String Listing.toJsonArray(Collection<Listing> collection, String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").serialize(collection);
    }
    
    public static Collection<Listing> Listing.fromJsonArrayToListings(String json) {
        return new JSONDeserializer<List<Listing>>()
        .use("values", Listing.class).deserialize(json);
    }
    
}

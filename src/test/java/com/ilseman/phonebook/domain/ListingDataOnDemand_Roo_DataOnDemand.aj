// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ilseman.phonebook.domain;

import com.ilseman.phonebook.domain.Listing;
import com.ilseman.phonebook.domain.ListingDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.stereotype.Component;

privileged aspect ListingDataOnDemand_Roo_DataOnDemand {
    
    declare @type: ListingDataOnDemand: @Component;
    
    private Random ListingDataOnDemand.rnd = new SecureRandom();
    
    private List<Listing> ListingDataOnDemand.data;
    
    public Listing ListingDataOnDemand.getNewTransientListing(int index) {
        Listing obj = new Listing();
        setFirstName(obj, index);
        setLastName(obj, index);
        setPhoneNumber(obj, index);
        return obj;
    }
    
    public void ListingDataOnDemand.setFirstName(Listing obj, int index) {
        String firstName = "firstName_" + index;
        obj.setFirstName(firstName);
    }
    
    public void ListingDataOnDemand.setLastName(Listing obj, int index) {
        String lastName = "lastName_" + index;
        obj.setLastName(lastName);
    }
    
    public void ListingDataOnDemand.setPhoneNumber(Listing obj, int index) {
        String phoneNumber = "phoneNumber_" + index;
        obj.setPhoneNumber(phoneNumber);
    }
    
    public Listing ListingDataOnDemand.getSpecificListing(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Listing obj = data.get(index);
        Long id = obj.getId();
        return Listing.findListing(id);
    }
    
    public Listing ListingDataOnDemand.getRandomListing() {
        init();
        Listing obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return Listing.findListing(id);
    }
    
    public boolean ListingDataOnDemand.modifyListing(Listing obj) {
        return false;
    }
    
    public void ListingDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = Listing.findListingEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Listing' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Listing>();
        for (int i = 0; i < 10; i++) {
            Listing obj = getNewTransientListing(i);
            try {
                obj.persist();
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            obj.flush();
            data.add(obj);
        }
    }
    
}

package com.ilseman.phonebook.web;
import com.ilseman.phonebook.domain.Listing;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebJson(jsonObject = Listing.class)
@Controller
@RequestMapping("/listings")
public class ListingController {
}

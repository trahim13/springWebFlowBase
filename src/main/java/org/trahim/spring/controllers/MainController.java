package org.trahim.spring.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.Locale;

@Controller
public class MainController {
//    @Autowired
//    private MessageSource messageSource;
//
//    @RequestMapping(value = "/", method = RequestMethod.GET)
//    public ModelAndView main(Locale locale) {
//        return new ModelAndView("main-mcv", "message", messageSource.getMessage("hello_mcv", null, locale));
//    }

    @RequestMapping(value = "flowone", method = RequestMethod.GET)
    public String toFlowOne() {
        return "redirect:start";
    }


//    @RequestMapping(value = "flowtwo", method = RequestMethod.GET)
//    public String toFlowTwo() {
//        return "redirect:login";
//    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String toFlowTwo() {
        return "redirect:jsfflow";
    }

}

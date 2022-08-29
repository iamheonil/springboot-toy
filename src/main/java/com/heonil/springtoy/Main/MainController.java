package com.heonil.springtoy.Main;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

    private static final Logger LOGGER = LogManager.getLogger(MainController.class);

    @RequestMapping(value = "/")
    public String indexRedirect() {
        return "redirect:/main";
    }

    @RequestMapping(value = "/main", method = RequestMethod.GET)
    public ModelAndView index() {

        // 시스아웃은 이제 그만
        // System.out.print("MainController");

        LOGGER.error("로그 테스트!@#");

        ModelAndView mav = new ModelAndView();

        mav.setViewName("main");

        return mav;
    }

}

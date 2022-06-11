package com.heonil.givemethelotto;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("")
public class MainController {

    private static final Logger LOGGER = LogManager.getLogger(MainController.class);

    @GetMapping("/")
    public String index(Model model) {

        // 시스아웃은 이제 그만!
        // System.out.print("MainController");

        LOGGER.info("콘솔 로그 확인");
        LOGGER.debug("콘솔 로그 확인");
        LOGGER.error("콘솔 로그 확인");

        model.addAttribute("hello", "MainController 입니다옹");

        return "index";
    }

}

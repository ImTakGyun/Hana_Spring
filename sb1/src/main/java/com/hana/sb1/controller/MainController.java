package com.hana.sb1.controller;

import com.hana.app.data.dto.CustDto;
import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@Slf4j
public class MainController {

    private String id;
    private String pwd;
    private String name;

    @RequestMapping("/")
    public String main(){
        return "index";
    }

    @GetMapping("/login")
    public String login(Model model){
        model.addAttribute("center", "login");
        return "index";
    }

    @PostMapping("/login")
    public String login(Model model,
                        @RequestParam("id") String id,
                        @RequestParam("pwd") String pwd, HttpSession httpSession){
        log.info("------------------");
        log.info(id+" "+pwd);

        if(id.equals("qqq") && pwd.equals("111")){
            model.addAttribute("center", "center");
            httpSession.setAttribute("id", id);
        }
        else if(id.equals(this.id) && pwd.equals(this.pwd)){
            model.addAttribute("center", "center");
            httpSession.setAttribute("id", id);
        }else{
            model.addAttribute("center", "loginfail");
        }
        return "index";
    }

    @RequestMapping("/logout")
    public String logout(Model model, HttpSession httpSession){
        if(httpSession != null){
            httpSession.invalidate();
        }
        return "index";
    }

    @PostMapping("/register")
    public String register(Model model,
                           CustDto custDto,
                           HttpSession httpSession
                           ){

        log.info("------------------");
        log.info(String.valueOf(custDto));
        log.info(custDto.getId() + " "+ custDto.getPwd() + " " + custDto.getName());

        this.id = id;
        this.pwd = pwd;
        this.name = name;

        model.addAttribute("center", "center");
        httpSession.setAttribute("id", custDto.getId());

        return "index";
    }

    @GetMapping("/register")
    public String register(Model model){
        model.addAttribute("center", "register");
        return "index";
    }
}

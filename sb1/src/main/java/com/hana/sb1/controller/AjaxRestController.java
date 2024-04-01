package com.hana.sb1.controller;

import com.hana.app.data.dto.Chart2Dto;
import com.hana.app.data.dto.CustDto;
import com.hana.app.data.dto.ShopDto;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Slf4j
@RestController
public class AjaxRestController {
    @RequestMapping("/getservertime")
    public Object getservertime(){
        Date date = new Date();
        return date;
    }
    @RequestMapping("/geo/getdata")
    public Object geogetdata(){
        List<ShopDto> list = new ArrayList<>();
        log.info("출력 확인");
        list.add(new ShopDto(100,"순대국","a.jpg",37.5547611, 127.0654625));
        list.add(new ShopDto(101,"파스타","b.jpg",37.5747611, 127.0554625));
        list.add(new ShopDto(102,"햄버거","c.jpg",37.5147611, 127.0154625));


        return list;
    }
    @RequestMapping("/getdata")
    public Object getdata(){
        List<CustDto> list = new ArrayList<>();
        list.add(new CustDto("id01","pwd01","james"));
        list.add(new CustDto("id01","pwd01","james"));
        list.add(new CustDto("id01","pwd01","james"));
        list.add(new CustDto("id01","pwd01","james"));
        list.add(new CustDto("id01","pwd01","james"));
        return list;
    }
    @RequestMapping("/checkid")
    public Object checkid(@RequestParam("id") String id){
        String result = "1";
        if(id.equals("qqq")){
            result = "0";
        }
        return result;
    }

    @RequestMapping("/chart2")
    public Object chart2(){

        JSONArray ja = new JSONArray();

        List<Chart2Dto> list = new ArrayList<>();
        list.add(new Chart2Dto("S001",10,20,30, 20,10,15));
        list.add(new Chart2Dto("S002",13,24,33, 21,14,14));
        list.add(new Chart2Dto("S003",15,27,36, 23,18,19));
        list.add(new Chart2Dto("S004",18,21,31, 29,11,13));

        for(Chart2Dto c : list){
            JSONObject jo = new JSONObject();
            jo.put("name", c.getName());
            jo.put("data", c.getM2());
            ja.add(jo);
        }
        return ja;
    }

    @RequestMapping("/chart3")
    public Object chart3(){

        JSONArray result = new JSONArray();
        List<List<Chart2Dto>> Data = new ArrayList<>();

        List<Chart2Dto> list1 = new ArrayList<>();
        list1.add(new Chart2Dto("S001",10,20,30, 20,10,15));
        list1.add(new Chart2Dto("S002",13,24,33, 21,14,14));
        list1.add(new Chart2Dto("S003",15,27,36, 23,18,19));
        list1.add(new Chart2Dto("S004",18,21,31, 29,11,13));

        List<Chart2Dto> list2 = new ArrayList<>();
        list2.add(new Chart2Dto("B001",10,20,30, 20,10,15));
        list2.add(new Chart2Dto("B002",13,24,33, 21,14,14));
        list2.add(new Chart2Dto("B003",15,27,36, 23,18,19));
        list2.add(new Chart2Dto("B004",18,21,31, 29,11,13));

        List<Chart2Dto> list3 = new ArrayList<>();
        list3.add(new Chart2Dto("A001",10,20,30, 20,10,15));
        list3.add(new Chart2Dto("A002",13,24,33, 21,14,14));
        list3.add(new Chart2Dto("A003",15,27,36, 23,18,19));
        list3.add(new Chart2Dto("A004",18,21,31, 29,11,13));

        Data.add(list1);
        Data.add(list2);
        Data.add(list3);

        for(List<Chart2Dto> list : Data) {
            JSONArray ja = new JSONArray();

            list.stream().forEach(c -> {
                JSONObject jo = new JSONObject();
                jo.put("name", c.getName());
                jo.put("data", c.getM2());
                ja.add(jo);
            });

            result.add(ja);
        };

        log.info(result.toJSONString());
        return result;
    }

    @RequestMapping("/chart4")
    public Object chart4(@RequestParam("gender") String gender){

        JSONArray ja = new JSONArray();

        List<Chart2Dto> list = new ArrayList<>();
        list.add(new Chart2Dto("f",30,10,10, 10,20,20));
        list.add(new Chart2Dto("m",40,10,10, 10,10,20));


        list.stream().filter(c -> c.getName().equals(gender)).forEach(c -> {
            c.getM().stream().forEach(n -> {
                JSONArray ja2 = new JSONArray();

                ja2.add("OTT");
                ja2.add(n);
                ja.add(ja2);
            });
        });

        //{
        JSONObject jo = new JSONObject();
        jo.put("data", ja);
        jo.put("title", gender);

        return jo;
    }
}


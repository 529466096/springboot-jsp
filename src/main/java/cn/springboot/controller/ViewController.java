package cn.springboot.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ViewController {

    private static final Logger log = LoggerFactory.getLogger(ViewController.class);

    @RequestMapping(value = "view/sysconfig/setconfig", method = RequestMethod.GET)
    String setconfig() {
        log.info("# loding view/sysconfig/setconfig ");
        return "view/sysconfig/setconfig";
    }

    @RequestMapping(value = "view/tenant/tenant-list", method = RequestMethod.GET)
    String tenant_list() {
        log.info("# loding view/tenant/tenant-list ");
        return "view/tenant/tenant-list";
    }
    
    @RequestMapping(value = "view/tenant/tenant-add", method = RequestMethod.GET)
    String tenant_add() {
        log.info("# loding view/tenant/tenant-add ");
        return "view/tenant/tenant-add";
    }
    
    @RequestMapping(value = "view/tenantConfig/list", method = RequestMethod.GET)
    String tenantConfig_list() {
        log.info("# loding view/tenantConfig/list ");
        return "view/tenantConfig/list";
    }
    
    @RequestMapping(value = "view/city/add2", method = RequestMethod.GET)
    String city_add2() {
        log.info("# loding view/city/add2 ");
        return "view/city/add2";
    }
    
    @RequestMapping(value = "view/city/list", method = RequestMethod.GET)
    String city_list() {
        log.info("# loding view/city/list ");
        return "view/city/list";
    }

}

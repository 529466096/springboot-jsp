package cn.springboot.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.springboot.model.simple.News;
import cn.springboot.service.NewsService;

/** 
 * @Description 新闻示例
 * @author 王鑫 
 * @date Mar 16, 2017 3:58:01 PM  
 */
@Controller
public class NewsController {
    
    private static final Logger log = LoggerFactory.getLogger(NewsController.class);

    @Autowired
    private NewsService newsService;

    /*
     * 表单提交日期绑定
     */
    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        dateFormat.setLenient(false);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }

    @RequestMapping("index")
    public String home() {
        log.info("# 进入首页");
        return "index";
    }

    @RequestMapping(value = "/news", method = RequestMethod.GET)
    public String addNews() {
        return "news/news";
    }

    @RequestMapping(value = "/news", method = RequestMethod.POST)
    public String add(@ModelAttribute("newsForm") News news) {
        newsService.addNews(news);
        return "news/news_list";
    }

    @RequestMapping(value = "/news/list", method = RequestMethod.GET)
    public String search() {
        return "news/news_list";
    }

    @RequestMapping(value = "/news/list", method = RequestMethod.POST)
    @ResponseBody
    public List<News> search(@RequestParam(value = "keywords", required = false) String keywords) {
        return newsService.findNewsByKeywords(keywords);
    }
}

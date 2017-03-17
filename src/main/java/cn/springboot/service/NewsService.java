package cn.springboot.service;

import java.util.List;

import com.github.pagehelper.PageInfo;

import cn.springboot.model.simple.News;


/** 
 * @Description 新闻接口类
 * @author 王鑫 
 * @date Mar 16, 2017 5:19:14 PM  
 */
public interface NewsService {

    public boolean addNews(News news);
    
    public boolean editNews(News news);
    
    public News findNewsById(String newsId);

    public List<News> findNewsByKeywords(String keywords);

    public PageInfo<News> findNewsByPage(String keywords);

    public List<News> findNewsByKeywords1(String keywords);
    
    public List<News> findNewsByKeywords2(String keywords);

}
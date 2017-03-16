package cn.springboot.service;

import java.util.List;

import cn.springboot.common.util.Page;
import cn.springboot.model.simple.News;


/** 
 * @Description 新闻接口类
 * @author 王鑫 
 * @date Mar 16, 2017 5:19:14 PM  
 */
public interface NewsService {

    public void addNews(News news);

    public List<News> findNewsByKeywords(String keywords);

    public Page<News> findNewsByPage(Page<News> page,String keywords);

}
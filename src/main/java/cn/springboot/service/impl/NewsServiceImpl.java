package cn.springboot.service.impl;

import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.springboot.common.util.Page;
import cn.springboot.common.util.UUIDUtil;
import cn.springboot.mapper.simple.NewsMapper;
import cn.springboot.model.simple.News;
import cn.springboot.service.NewsService;

/** 
 * @Description 新闻接口实现类
 * @author 王鑫 
 * @date Mar 16, 2017 5:19:24 PM  
 */
@Service("newsService")
public class NewsServiceImpl implements NewsService {

    @Autowired
    private NewsMapper newsMapper;

    @Override
    public void addNews(News news) {
        if (news != null) {
            news.setId(UUIDUtil.getRandom32PK());
            news.setCreateTime(Calendar.getInstance().getTime());
            newsMapper.insert(news);
        }
    }

    @Override
    public List<News> findNewsByKeywords(String keywords) {
        return newsMapper.findNewsByKeywords(keywords);
    }

    @Override
    public Page<News> findNewsByPage(Page<News> page, String keywords) {
        Map<String, Object> param = new HashMap<String, Object>();
        param.put("keywords", keywords);
        page.setParamMap(param);
        List<News> news = newsMapper.findNewsByPage(page);
        page.setResultList(news);
        return page;
    }

}

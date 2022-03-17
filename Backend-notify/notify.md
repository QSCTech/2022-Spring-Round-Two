# Notify：来试一试爬虫吧

【注】：此题目为web爬虫的入门题目，**如果有过爬虫相关开发经验的，不建议选做此题目。**

## 前言

众所周知，由于学校离谱的网站架构，导致各学院、机构的新闻通知等分散在不同网站中。Notify便旨在统一这一乱象，提供统一的查询接口。（快上线了）

因此，需要面试者们尝试开发一个校园各网站中通知的爬虫，体验求是潮真实的开发流程。

## 爬取网站

- [学工部](http://www.xgb.zju.edu.cn/main.htm)
- [校团委](http://www.youth.zju.edu.cn)
- [综合服务网](https://zhfw.zju.edu.cn/)

> 其实爬取三个并不需要手写三份程序

## 爬取要求

请将爬取到的内容写入SQL数据库中，table和notice样例在notify.sql中给出。

由于求是潮内部较多的使用python和golang，推荐使用python或golang开发，以便更快融入项目组

## 提交方式

请将数据库导出为sql文件，发送给我们

（如果数据过大，可以导出一部分，`select * from X limit 50`)

## 一些提示

### 爬取方式

- 直接使用http请求，解析返回的body（注意请求体的Header）

    [py: request](https://www.jianshu.com/p/d78982126318)

    [go: http](https://www.cnblogs.com/zhaof/p/11346412.html)

- 对于文本解析，可以考虑正则表达式匹配或者XML解析

- 使用[selenium](https://www.selenium.dev/)等爬取框架

    > 笑死：Selenium Supports Ukraine

### 数据库操作
- 建议使用[MariaDB](https://mariadb.org/download/?t=mariadb)，配置方便且开源，兼容MySQL
- 注意中文字符的编码问题
- 对于大多数语言来说，除了拼接SQL语句，还有一种便捷的方式是使用ORM框架（这个题目里可能没什么区别，当数据和操作复杂时更为凸显，可以尝试）
    - [gorm](https://www.topgoer.com/%E6%95%B0%E6%8D%AE%E5%BA%93%E6%93%8D%E4%BD%9C/gorm/gorm%E7%94%A8%E6%B3%95%E4%BB%8B%E7%BB%8D.html)
    - [SQLAlchemy](https://zhuanlan.zhihu.com/p/387078089)

## Finally

二面交流群中禁止谈论任务具体开发的细节

但如果对题目本身有疑问的，可以向群里的老人咨询

> 出题人：PTA
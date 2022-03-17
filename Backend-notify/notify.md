# Notify：来试一试爬虫吧

【注】：此题目为web爬虫的入门题目，如果有过爬虫相关开发经验的，可以从进阶难道开始，或者跳过此题。

## 前言

众所周知，由于学校离谱的网站架构，导致各学院、机构的新闻通知等分散在不同网站中。Notify便旨在统一这一乱象，提供统一的查询接口。（快上线了）

因此，需要面试者们尝试开发一个搜集散落在各网站中通知的爬虫，体验求是潮真实的开发工作。

## 爬取网站

【新手】三选一

- [学工部](http://www.xgb.zju.edu.cn/main.htm)
- [校团委](http://www.youth.zju.edu.cn)
- [综合服务网](https://zhfw.zju.edu.cn/)

> 其实爬取以上三个并不需要手写三份程序

【进阶】（详见后文提示）
- [资讯中心](https://service.zju.edu.cn/_s2/students_zxzx/main.psp)

【COMBO】爬一下校车时刻表吧！（虽然不是通知）
- [校车路线](http://car.zju.edu.cn/index.php?c=Wei&a=car)

## 爬取主体任务

请将爬取到的内容写入SQL数据库中，table和notice样例在notify.sql中给出。

由于求是潮内部较多的使用python和golang，推荐使用python或golang开发，以便更快融入项目组

## 提交内容

### 过程记录
- 简述使用的内容爬取手段
    - 是正则表达式好还是xml好呢，或是其他奇技淫巧？
    - 妥善处理翻页问题
- 介绍基于ZJU统一认证的网站爬取原理
    - 从网页js中提取登录相关的重要函数；简述调用关系及函数作用
    - 提供抓包看到的登录相关http请求与响应内容
    - 分析如何在爬虫程序中模拟登录、并在后续请求中保持登录状态
    - ...
    - 说说遇到的坑及解决方式

### 结果呈现
- 你的项目工程（记得把配置中zjuid和password留空，不要公诸于世）
- 请将数据库导出为sql文件，放在项目根目录

（如果SQL数据过大，可以导出一部分，`select * from table_xxx limit 50`)

## 一些提示

### 爬取方式

- 直接使用http请求，解析返回的body（注意请求体的Header）

    [py: request](https://www.jianshu.com/p/d78982126318)

    [go: http](https://www.cnblogs.com/zhaof/p/11346412.html)

    - 对于文本解析，可以考虑正则表达式匹配或者XML解析

- 使用[selenium](https://www.selenium.dev/)等爬取框架（值得了解，不过在本任务中不推荐）

    > 笑死：Selenium Supports Ukraine

### html的布局可视化及数据调试
- chrome 开发者工具 [F12]，这个大家都懂的


### 数据库操作
- 建议使用[MariaDB](https://mariadb.org/download/?t=mariadb)，配置方便且开源，兼容MySQL
- 注意中文字符的编码问题
- 对于大多数语言来说，除了拼接SQL语句，还有一种便捷的方式是使用ORM框架（这个题目里可能没什么区别，当数据和操作复杂时更为凸显，建议尝试）
    - [gorm](https://www.topgoer.com/%E6%95%B0%E6%8D%AE%E5%BA%93%E6%93%8D%E4%BD%9C/gorm/gorm%E7%94%A8%E6%B3%95%E4%BB%8B%E7%BB%8D.html)
    - [SQLAlchemy](https://zhuanlan.zhihu.com/p/387078089)

### 登录鉴权
在【进阶】以上的难度中，网站需要首先进行ZJU统一认证才可以访问。

当然，Selenium一类的工具可以模拟用户输入和点击，方便极了；然而chrome的体积和效率、灵活性都远远比不上原生http请求。希望你能适应原生http请求进行探索。

另外，做好了需要统一认证之后，自动健康打卡一类的迷思也就迎刃而解了呢！

在这里，给出登录的相关工具和提示：

- 使用[Fiddler](https://www.telerik.com/fiddler) 等工具抓取程序发出的http请求，与浏览器中请求对比
- 善用"chrome开发者工具"调试js脚本，跟踪登录相关函数和变量
- 使用[Postman](https://www.postman.com/) 等工具手动模拟请求，看看哪里可能出问题
- 了解token、cookie、session等暂存数据的方式
- 了解并注意Header中关键项的内容及含义


## Finally

二面交流群中禁止谈论任务具体开发的细节

但如果对题目本身有疑问的，可以向群里的老人咨询

> 出题人：PTA
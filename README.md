本项目是一个Spring、SpringMVC、mybatis框架整合的项目，实现了用户的增删改查，前端使用了bootstrap，并用echarts做了数据的展示。

## 安装/运行
下载zip解压导入到eclipse中，或用eclipse import - projects from git 

## 数据来源
数据的来源是我用爬虫webmagic框架爬的聚币网 无限币 8月1日下午2点到5点左右的成交记录，并做了去重处理，去重结果为532条买卖记录，我所展示的是这段时间的买方的价格。

## 权限控制
权限控制使用的是shiro，实现了未授权用户不能随意对一些jsp和静态资源的访问。之后还可以增加角色、权限表，进而对方法或者页面标签元素进行权限控制。

## 配置文件
配置：sql文件是在config目录下的cuc_web.sql，数据库密码在jdbc.properties中修改。

## 爬虫相关
具体爬虫框架可查看webmagic，JubiPageprocessor为数据获取的部分

## 反馈
如有疑惑可发邮件给我：921894@gmail.com

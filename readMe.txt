SSM整合的具体步骤

SpringMVC：视图层， 界面层， 负责接收请求， 显示处理结果
Spring： 业务层， 管理Service， dao, 工具类对象
MyBatis: 持久层， 访问数据库

用户发起请求----》SpringMVC接收请求------》Spring处理业务-----》myBatis处理数据库中的数据


------------------------------------------------------------------------------------------------------------------------
SSM整合中的容器
    SpringMVC容器：管理Controller对象，以及Web开发中的相关对象， 讲这些对象写在SpringMVC的配置文件中
    Spring容器：管理Service, Dao工具类对象，定义在Spring的配置文件中

    SpringMVC容器是Spring容器的子容器，子容器SpringMVC可以访问Spring父容器中的对象，所以Controller对象可以调用Service对象


------------------------------------------------------------------------------------------------------------------------
开发步骤

    0、实现springDb的MySQL库
    1、新建maven web项目
    2、加入依赖
        springMVC， Spring， MyBatis个框架的依赖， jackson(实现将java对象转换为json对象）MySQL驱动， Druid连接池， jsp， servlet依赖
    3、写web.xml
        1）注册DispathcerServlet:  1、创建SpringMVC容器，Controller对象
                                  2、本身是个servlet对象中央调度器，可以接收转发请求
        2）注册Spring监听器:ContextLoaderListener: 创建Spring容器对象，及其中的Service， Dao工具类
        3）注册字符过滤器，以解决post请求中的中文乱码问题
    4、创建包，Controller包， Service，dao， 实体类包
    5、写springMVC， Spring， myBatis, 数据库的配置文件
    6、写代码、dao、mapper文件service和实现类， controller， 实体类
    7、写jsp页面

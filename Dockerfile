from tomcat
MAINTAINER zhangh@cosconetwork.com.cn 
RUN rm -rf /usr/local/tomcat/webapps/*
COPY ./test.war   /usr/local/tomcat/webapps
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# 选择运行时基础镜像
FROM maven:3.6.3-jdk-8

# 维护人员
MAINTAINER 徐晓伟 xuxiaowei@xuxiaowei.com.cn

# 添加 MySQL 源
RUN echo "deb https://repo.mysql.com/apt/debian/ buster mysql-8.0" >> /etc/apt/sources.list.d/mysql.list

# 更新源
RUN apt-get update -o Acquire::AllowInsecureRepositories=true

# 安装 mysql-client
RUN apt-get install -y --allow-unauthenticated mysql-client

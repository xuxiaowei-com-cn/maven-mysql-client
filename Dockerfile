# 选择运行时基础镜像
FROM maven:3.8.7-openjdk-18

# 维护人员
MAINTAINER 徐晓伟 xuxiaowei@xuxiaowei.com.cn

# 添加 mysql-client 依赖
ADD mysql-community-common-8.0.33-1.el8.x86_64.rpm .
ADD mysql-community-client-plugins-8.0.33-1.el8.x86_64.rpm .
ADD mysql-community-libs-8.0.33-1.el8.x86_64.rpm .
ADD mysql-community-client-8.0.33-1.el8.x86_64.rpm .

# 安装 mysql-client
RUN rpm -ivh mysql-community-common-8.0.33-1.el8.x86_64.rpm \
    && rpm -ivh mysql-community-client-plugins-8.0.33-1.el8.x86_64.rpm \
    && rpm -ivh mysql-community-libs-8.0.33-1.el8.x86_64.rpm \
    && rpm -ivh mysql-community-client-8.0.33-1.el8.x86_64.rpm \
    && mysql --version \
    && rm mysql-community-*.rpm -rf

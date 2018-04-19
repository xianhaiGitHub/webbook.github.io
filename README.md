# webbook.github.io
##########网上图书商城###########

##########开发工具：Myeclipse + Editplus + MySQL5.5#####

##########实现了简单的购物流程##########

##########所用到的技术点：jsp + javascript +mysql ##########

##############################具体实现##################

######前台实现######
##1.客户通过注册行为成为商城的会员，通过预览图书，支持模糊查寻等操作找到自己所爱之书。
##2.通过下单付款购买图书，此过程中若库存不足则提醒库存不足。

######后台实现######
##1.后台用户分为三个角色，超级管理员、普通管理员、会员用户。
##2.超级管理员权限最大，可以对整个后台模块进行操作，超级管理员默人对其他用户隐藏
##3 后台分为用户管理和图书管理两个模块

######################数据库建表相关语句###########
##user表####
create table users(
id int primary key auto_increment,
username varchar(20)not null,
password varchar(20)not null,
role varchar(15)
)engine=innodb default charset uft-8;

##图书表#######
create table book(
id int primary key auto_increment,
bookname varchar(30)not null,
bookprice double not null,
bookauthor varchar(30)not null,
booknumber int not null
)engine=innodb default charset utf-8;



##ID表（用来标记超级管理员）###
create table ID(
id int
)engine=innodb default charset utf-8;

create database job;

using job;

create table user(
  userID int primary key auto_increment,
  userAccount varchar(40), 
  userPassword varchar(16),                                                 
  userName varchar(40),                                                     
  identity varchar(20),
  sex varchar(12),
  education varchar(16),
  major varchar(40),
  userPhone varchar(20),
  resume varchar(255)
)

create table company(
  companyID int primary key auto_increment,
  companyAccount varchar(40),   
  companyPassword varchar(16),
  companyName varchar(40),        
  linkName varchar(40),
  linkPhone varchar(20)
  
)


CREATE TABLE application (
  id int(16) NOT NULL COMMENT '冗余处理加快查询效率',
  companyID varchar(32) DEFAULT NULL,
  jobName varchar(32) DEFAULT NULL COMMENT '岗位名称',
  jobPlace varchar(16) DEFAULT NULL COMMENT '工作地点',
  jobRequire varchar(256) DEFAULT NULL COMMENT '工作要求',
  salary varchar(64) DEFAULT NULL COMMENT '描述工资',
  releaseTime  time DEFAULT NULL,
  companyName  varchar(32) DEFAULT NULL,
  PRIMARY KEY (id),
  KEY `companyID` (`companyID`),
  KEY `companyName` (`companyName`),
  CONSTRAINT `companyID` FOREIGN KEY (`companyID`) REFERENCES `company` (`companyID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `companyName` FOREIGN KEY (`companyName`) REFERENCES `company` (`companyName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

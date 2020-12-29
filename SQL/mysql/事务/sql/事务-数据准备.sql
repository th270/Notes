

## 创建数据库 shiwu
DROP DATABASE IF EXISTS shiwu;
CREATE DATABASE shiwu;
USE shiwu;


## 创建表 account
DROP TABLE IF EXISTS account;
CREATE TABLE account(
	id INT PRIMARY KEY AUTO_INCREMENT,
	NAME VARCHAR(32),
	money DOUBLE
);

## 添加数据
INSERT INTO account VALUES 
	(NULL,'张三',1000),
	(NULL,'李四',1000);





-- 需求 张三给李四转账500元

-- 开启事务
START TRANSACTION

-- 1. 张三账号-500
UPDATE account SET money = money - 500 WHERE NAME='张三';

出错了。。。。

-- 2. 李四账号 +500
UPDATE account SET money = money + 500 WHERE NAME='李四';

-- 回滚事务
ROLLBACK;

-- 提交事务
COMMIT;









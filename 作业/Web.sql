CREATE DATABASE Web;
USER Web;

CREATE TABLE teacher(
id INT PRIMARY KEY AUTO_INCREMENT,
username VARCHAR(10),
PASSWORD VARCHAR(30),
telnet VARCHAR(30),
email VARCHAR(30)
)ENGINE=INNODB DEFAULT CHARSET=utf8;

INSERT INTO teacher VALUES(1,'teach1','123456',13909700315,'1511056694@qq.com');
INSERT INTO teacher VALUES(2,'teach2','qwert',13909700316,'1511056695@qq.com');

CREATE TABLE student(
id INT PRIMARY KEY AUTO_INCREMENT,
stunum INT,
username VARCHAR(10),
class VARCHAR(200),
PASSWORD VARCHAR(30),
qqnum INT(30),
email VARCHAR(30)
)ENGINE=INNODB DEFAULT CHARSET=utf8;
INSERT INTO student VALUES(1,1700802114,'stu1','计算机174班','123456',1511056694,'1511056694@qq.com');
INSERT INTO student VALUES(2,1700802115,'stu2','计算机174班','qwert',1511056695,'1511056695@qq.com');


CREATE TABLE tea_file(
id INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(50),
TIME DATE,
filename VARCHAR(200),
filepath VARCHAR(200)
)ENGINE=INNODB DEFAULT CHARSET=utf8;

CREATE TABLE stu_file(
id INT PRIMARY KEY AUTO_INCREMENT,
stunum INT,
filename VARCHAR(200),
filepath VARCHAR(200),
score INT
)ENGINE=INNODB DEFAULT CHARSET=utf8;

CREATE TABLE information(
id INT PRIMARY KEY AUTO_INCREMENT,
info VARCHAR(300),
filename VARCHAR(200),
filepath VARCHAR(200)
)ENGINE=INNODB DEFAULT CHARSET=utf8;

CREATE TABLE liuyan(
id   INT PRIMARY KEY AUTO_INCREMENT,
NAME VARCHAR(20), 
ask VARCHAR(500),
answer VARCHAR(500)
)ENGINE=INNODB DEFAULT CHARSET=utf8;


SELECT *FROM teacher;
SELECT *FROM student;
SELECT *FROM tea_file;
SELECT *FROM stu_file;
SELECT *FROM information;
SELECT *FROM liuyan;

DROP TABLE teacher;
DROP TABLE student;
DROP TABLE tea_file;
DROP TABLE stu_file;
DROP TABLE information;
DROP TABLE liuyan;

SELECT stu_file.*,tea_file.* FROM stu_file LEFT JOIN tea_file ON stu_file.id =tea_file.id ;

SELECT stu_file.stunum FROM tea_file,stu_file WHERE stu_file.id=tea_file.id;

SELECT student.username,tea_file.title,stu_file.score FROM student,tea_file,stu_file WHERE student.stunum=stu_file.stunum AND stu_file.id=tea_file.id AND stu_file.score>60;
INSERT INTO liuyan(NAME,ask,answer) VALUES ('stu2','你好','你好');
INSERT INTO teacher (username,PASSWORD,telnet,email)VALUES('teach1','123456',13909700315,'1511056694@qq.com');
INSERT INTO student (stunum,username,class,PASSWORD,qqnum,email)VALUES(1700802115,'stu3','计算机174班','qwert',1511056695,'1511056695@qq.com');
INSERT INTO liuyan(NAME,ask,answer) VALUES ('stu1','你好','你好');
INSERT INTO liuyan(NAME,ask,answer) VALUES ('stu1','你好','你好');
INSERT INTO liuyan(NAME,ask,answer) VALUES ('stu1','你好','你好');
INSERT INTO liuyan(NAME,ask,answer) VALUES ('stu2','你好','你好');
INSERT INTO liuyan(NAME,ask,answer) VALUES ('stu2','你好','你好');
INSERT INTO liuyan(NAME,ask,answer) VALUES ('stu3','你好','你好');
INSERT INTO liuyan(NAME,ask,answer) VALUES ('stu3','你好','你好');
INSERT INTO liuyan(NAME,ask,answer) VALUES ('stu3','你好','你好');
INSERT INTO liuyan(NAME,ask,answer) VALUES ('stu4','你好','你好');
INSERT INTO liuyan(NAME,ask,answer) VALUES ('stu4','你好','你好');
INSERT INTO liuyan(NAME,ask,answer) VALUES ('stu4','你好','你好');
INSERT INTO liuyan(NAME,ask,answer) VALUES ('stu5','你好','你好');
INSERT INTO liuyan(NAME,ask,answer) VALUES ('stu5','你好','你好');
INSERT INTO liuyan(NAME,ask,answer) VALUES ('stu5','你好','你好');
INSERT INTO liuyan(NAME,ask,answer) VALUES ('stu6','你好','你好');
INSERT INTO liuyan(NAME,ask,answer) VALUES ('stu6','你好','你好');
INSERT INTO liuyan(NAME,ask,answer) VALUES ('stu6','你好','你好');
INSERT INTO liuyan(NAME,ask,answer) VALUES ('stu7','你好','你好');
INSERT INTO liuyan(NAME,ask,answer) VALUES ('stu8','你好','你好');
INSERT INTO liuyan(NAME,ask,answer) VALUES ('stu7','你好','你好');
INSERT INTO liuyan(NAME,ask,answer) VALUES ('stu7','你好','你好');
INSERT INTO liuyan(NAME,ask,answer) VALUES ('stu7','你好','你好');
INSERT INTO liuyan(NAME,ask,answer) VALUES ('stu8','你好','你好');
INSERT INTO liuyan(NAME,ask,answer) VALUES ('stu8','你好','你好');
INSERT INTO liuyan(NAME,ask,answer) VALUES ('stu8','你好','你好');
INSERT INTO liuyan(NAME,ask,answer) VALUES ('stu9','你好','你好');
INSERT INTO liuyan(NAME,ask,answer) VALUES ('stu9','你好','你好');
INSERT INTO liuyan(NAME,ask,answer) VALUES ('stu9','你好','你好');
INSERT INTO liuyan(NAME,ask,answer) VALUES ('stu9','你好','你好');
INSERT INTO liuyan(NAME,ask,answer) VALUES ('stu10','你好','你好');
INSERT INTO liuyan(NAME,ask,answer) VALUES ('stu10','你好','你好');





INSERT INTO teacher (username,PASSWORD,telnet,email)VALUES('teach1','123456',13909700315,'1511056694@qq.com');
INSERT INTO teacher (username,PASSWORD,telnet,email)VALUES('teach1','123456',13909700315,'1511056694@qq.com');
INSERT INTO teacher (username,PASSWORD,telnet,email)VALUES('teach1','123456',13909700315,'1511056694@qq.com');
INSERT INTO teacher (username,PASSWORD,telnet,email)VALUES('teach2','123456',13909700315,'1511056694@qq.com');
INSERT INTO teacher (username,PASSWORD,telnet,email)VALUES('teach2','123456',13909700315,'1511056694@qq.com');
INSERT INTO teacher (username,PASSWORD,telnet,email)VALUES('teach2','123456',13909700315,'1511056694@qq.com');
INSERT INTO teacher (username,PASSWORD,telnet,email)VALUES('teach2','123456',13909700315,'1511056694@qq.com');
INSERT INTO teacher (username,PASSWORD,telnet,email)VALUES('teach3','123456',13909700315,'1511056694@qq.com');
INSERT INTO teacher (username,PASSWORD,telnet,email)VALUES('teach3','123456',13909700315,'1511056694@qq.com');
INSERT INTO teacher (username,PASSWORD,telnet,email)VALUES('teach3','123456',13909700315,'1511056694@qq.com');
INSERT INTO teacher (username,PASSWORD,telnet,email)VALUES('teach3','123456',13909700315,'1511056694@qq.com');
INSERT INTO teacher (username,PASSWORD,telnet,email)VALUES('teach4','123456',13909700315,'1511056694@qq.com');
INSERT INTO teacher (username,PASSWORD,telnet,email)VALUES('teach4','123456',13909700315,'1511056694@qq.com');
INSERT INTO teacher (username,PASSWORD,telnet,email)VALUES('teach4','123456',13909700315,'1511056694@qq.com');
INSERT INTO teacher (username,PASSWORD,telnet,email)VALUES('teach4','123456',13909700315,'1511056694@qq.com');
INSERT INTO teacher (username,PASSWORD,telnet,email)VALUES('teach5','123456',13909700315,'1511056694@qq.com');
INSERT INTO teacher (username,PASSWORD,telnet,email)VALUES('teach5','123456',13909700315,'1511056694@qq.com');
INSERT INTO teacher (username,PASSWORD,telnet,email)VALUES('teach5','123456',13909700315,'1511056694@qq.com');
INSERT INTO teacher (username,PASSWORD,telnet,email)VALUES('teach5','123456',13909700315,'1511056694@qq.com');
INSERT INTO teacher (username,PASSWORD,telnet,email)VALUES('teach6','123456',13909700315,'1511056694@qq.com');
INSERT INTO teacher (username,PASSWORD,telnet,email)VALUES('teach6','123456',13909700315,'1511056694@qq.com');
INSERT INTO teacher (username,PASSWORD,telnet,email)VALUES('teach6','123456',13909700315,'1511056694@qq.com');
INSERT INTO teacher (username,PASSWORD,telnet,email)VALUES('teach6','123456',13909700315,'1511056694@qq.com');
INSERT INTO teacher (username,PASSWORD,telnet,email)VALUES('teach7','123456',13909700315,'1511056694@qq.com');
INSERT INTO teacher (username,PASSWORD,telnet,email)VALUES('teach7','123456',13909700315,'1511056694@qq.com');
INSERT INTO teacher (username,PASSWORD,telnet,email)VALUES('teach7','123456',13909700315,'1511056694@qq.com');
INSERT INTO teacher (username,PASSWORD,telnet,email)VALUES('teach8','123456',13909700315,'1511056694@qq.com');
INSERT INTO teacher (username,PASSWORD,telnet,email)VALUES('teach8','123456',13909700315,'1511056694@qq.com');
INSERT INTO teacher (username,PASSWORD,telnet,email)VALUES('teach8','123456',13909700315,'1511056694@qq.com');
INSERT INTO teacher (username,PASSWORD,telnet,email)VALUES('teach8','123456',13909700315,'1511056694@qq.com');



INSERT INTO student (stunum,username,class,PASSWORD,qqnum,email)VALUES(1700802115,'stu1','计算机174班','qwert',1511056695,'1511056695@qq.com');
INSERT INTO student (stunum,username,class,PASSWORD,qqnum,email)VALUES(1700802115,'stu1','计算机174班','qwert',1511056695,'1511056695@qq.com');
INSERT INTO student (stunum,username,class,PASSWORD,qqnum,email)VALUES(1700802115,'stu1','计算机174班','qwert',1511056695,'1511056695@qq.com');
INSERT INTO student (stunum,username,class,PASSWORD,qqnum,email)VALUES(1700802115,'stu1','计算机174班','qwert',1511056695,'1511056695@qq.com');
INSERT INTO student (stunum,username,class,PASSWORD,qqnum,email)VALUES(1700802115,'stu2','计算机174班','qwert',1511056695,'1511056695@qq.com');
INSERT INTO student (stunum,username,class,PASSWORD,qqnum,email)VALUES(1700802115,'stu2','计算机174班','qwert',1511056695,'1511056695@qq.com');
INSERT INTO student (stunum,username,class,PASSWORD,qqnum,email)VALUES(1700802115,'stu2','计算机174班','qwert',1511056695,'1511056695@qq.com');
INSERT INTO student (stunum,username,class,PASSWORD,qqnum,email)VALUES(1700802115,'stu2','计算机174班','qwert',1511056695,'1511056695@qq.com');
INSERT INTO student (stunum,username,class,PASSWORD,qqnum,email)VALUES(1700802115,'stu3','计算机174班','qwert',1511056695,'1511056695@qq.com');
INSERT INTO student (stunum,username,class,PASSWORD,qqnum,email)VALUES(1700802115,'stu3','计算机174班','qwert',1511056695,'1511056695@qq.com');
INSERT INTO student (stunum,username,class,PASSWORD,qqnum,email)VALUES(1700802115,'stu3','计算机174班','qwert',1511056695,'1511056695@qq.com');
INSERT INTO student (stunum,username,class,PASSWORD,qqnum,email)VALUES(1700802115,'stu4','计算机174班','qwert',1511056695,'1511056695@qq.com');
INSERT INTO student (stunum,username,class,PASSWORD,qqnum,email)VALUES(1700802115,'stu4','计算机174班','qwert',1511056695,'1511056695@qq.com');
INSERT INTO student (stunum,username,class,PASSWORD,qqnum,email)VALUES(1700802115,'stu4','计算机174班','qwert',1511056695,'1511056695@qq.com');
INSERT INTO student (stunum,username,class,PASSWORD,qqnum,email)VALUES(1700802115,'stu5','计算机174班','qwert',1511056695,'1511056695@qq.com');
INSERT INTO student (stunum,username,class,PASSWORD,qqnum,email)VALUES(1700802115,'stu5','计算机174班','qwert',1511056695,'1511056695@qq.com');
INSERT INTO student (stunum,username,class,PASSWORD,qqnum,email)VALUES(1700802115,'stu5','计算机174班','qwert',1511056695,'1511056695@qq.com');
INSERT INTO student (stunum,username,class,PASSWORD,qqnum,email)VALUES(1700802115,'stu5','计算机174班','qwert',1511056695,'1511056695@qq.com');
INSERT INTO student (stunum,username,class,PASSWORD,qqnum,email)VALUES(1700802115,'stu6','计算机174班','qwert',1511056695,'1511056695@qq.com');
INSERT INTO student (stunum,username,class,PASSWORD,qqnum,email)VALUES(1700802115,'stu6','计算机174班','qwert',1511056695,'1511056695@qq.com');
INSERT INTO student (stunum,username,class,PASSWORD,qqnum,email)VALUES(1700802115,'stu6','计算机174班','qwert',1511056695,'1511056695@qq.com');
INSERT INTO student (stunum,username,class,PASSWORD,qqnum,email)VALUES(1700802115,'stu6','计算机174班','qwert',1511056695,'1511056695@qq.com');
INSERT INTO student (stunum,username,class,PASSWORD,qqnum,email)VALUES(1700802115,'stu7','计算机174班','qwert',1511056695,'1511056695@qq.com');
INSERT INTO student (stunum,username,class,PASSWORD,qqnum,email)VALUES(1700802115,'stu7','计算机174班','qwert',1511056695,'1511056695@qq.com');
INSERT INTO student (stunum,username,class,PASSWORD,qqnum,email)VALUES(1700802115,'stu7','计算机174班','qwert',1511056695,'1511056695@qq.com');
INSERT INTO student (stunum,username,class,PASSWORD,qqnum,email)VALUES(1700802115,'stu8','计算机174班','qwert',1511056695,'1511056695@qq.com');
INSERT INTO student (stunum,username,class,PASSWORD,qqnum,email)VALUES(1700802115,'stu8','计算机174班','qwert',1511056695,'1511056695@qq.com');
INSERT INTO student (stunum,username,class,PASSWORD,qqnum,email)VALUES(1700802115,'stu9','计算机174班','qwert',1511056695,'1511056695@qq.com');
INSERT INTO student (stunum,username,class,PASSWORD,qqnum,email)VALUES(1700802115,'stu9','计算机174班','qwert',1511056695,'1511056695@qq.com');
INSERT INTO student (stunum,username,class,PASSWORD,qqnum,email)VALUES(1700802115,'stu9','计算机174班','qwert',1511056695,'1511056695@qq.com');

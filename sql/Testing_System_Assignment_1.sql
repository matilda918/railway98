CREATE DATABASE sisting_system;
USE sisting_system;
CREATE TABLE Department(
DepartmentID int auto_increment primary key,
DepartmentName varchar(100)
);
CREATE TABLE `Position`(
PositionID int auto_increment primary key,
PositionName varchar(11)
);
CREATE TABLE `Account`(
AccountID int auto_increment primary key,
Email varchar(20),
Usename varchar(20),
DepartmentID int,
PositionID int,
CreateDate date
);
CREATE TABLE `Group`(
GroupID int auto_increment primary key,
GroupName varchar(15),
CreatorID int,
CreateDate date
);
CREATE TABLE GroupAccount(
GroupID int,
AccountID int,
JoinDate date
);
CREATE TABLE TypeQuestion(
TypeID int auto_increment primary key,
TypeName varchar(15)
);
CREATE TABLE CategoryQuestion(
CategoryID int auto_increment primary key,
CategoryName varchar(15)
);
CREATE TABLE Question(
QuestionID int auto_increment primary key,
Content varchar(100),
CategoryID int,
TypeID int,
CreatorID int,
CreateDate date
);
CREATE TABLE Answer(
AnswerID int auto_increment primary key,
Content varchar(100),
QuestionID int,
isCorrect varchar(3)
);
CREATE TABLE Exam(
ExamID int auto_increment primary key,
`Code` int,
Title varchar(30),
CategoryID int,
DurationID varchar(7),
CreatorID int,
CreateDate date
); 
CREATE TABLE ExamQuestion(
ExamID int,
QuestionID int
);

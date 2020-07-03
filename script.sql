create database student_examination_sys;
use student_examination_sys;
create table if not exists student
(
    id   varchar(3)              not null
        primary key,
    name varchar(50)             null,
    age  int(3)                  null,
    sex  enum ('male', 'female') not null
);

create table if not exists subject
(
    id          varchar(4)   not null
        primary key,
    subject     varchar(100) null,
    teacher     varchar(100) null,
    description varchar(200) null
);

create table if not exists score
(
    id         int auto_increment
        primary key,
    student_id varchar(3) null,
    subject_id varchar(4) null,
    score      int(3)     null
);

INSERT INTO student_examination_sys.student (id, name, age, sex) VALUES ('001', 'zhangsan', 18, 'male');
INSERT INTO student_examination_sys.student (id, name, age, sex) VALUES ('002', 'lisi', 20, 'female');

INSERT INTO student_examination_sys.subject (id, subject, teacher, description) VALUES ('1001', 'Chinese', 'Mr.Wang', 'the exam is easy');
INSERT INTO student_examination_sys.subject (id, subject, teacher, description) VALUES ('1002', 'math', 'Miss Liu', 'the exam is difficult');

INSERT INTO student_examination_sys.score (id, student_id, subject_id, score) VALUES (1, '001', '1001', 80);
INSERT INTO student_examination_sys.score (id, student_id, subject_id, score) VALUES (2, '002', '1002', 60);
INSERT INTO student_examination_sys.score (id, student_id, subject_id, score) VALUES (3, '001', '1001', 70);
INSERT INTO student_examination_sys.score (id, student_id, subject_id, score) VALUES (4, '002', '1002', 60);

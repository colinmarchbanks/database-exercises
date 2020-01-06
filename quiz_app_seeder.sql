CREATE DATABASE IF NOT EXISTS quiz_app;

USE quiz_app;

CREATE TABLE IF NOT EXISTS admins
(
    id       INT UNSIGNED AUTO_INCREMENT NOT NULL,
    name     VARCHAR(255)                NOT NULL,
    password VARCHAR(255)                NOT NULL,
    course   VARCHAR(255)                NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS quizzes
(
    id       INT UNSIGNED AUTO_INCREMENT NOT NULL,
    name     VARCHAR(255)                NOT NULL,
    admin_id INT UNSIGNED,
    PRIMARY KEY (id),
    FOREIGN KEY (admin_id) REFERENCES admins (id)
);

CREATE TABLE IF NOT EXISTS users
(
    id       INT UNSIGNED AUTO_INCREMENT NOT NULL,
    name     VARCHAR(255)                not null,
    password VARCHAR(255)                not null,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS questions
(
    id       INT UNSIGNED AUTO_INCREMENT NOT NULL,
    question VARCHAR(255)                NOT NULL,
    quiz_id  INT UNSIGNED,
    PRIMARY KEY (id),
    FOREIGN KEY (quiz_id) REFERENCES quizzes (id)
);

CREATE TABLE IF NOT EXISTS answers
(
    id     INT UNSIGNED AUTO_INCREMENT NOT NULL,
    answer varchar(255)                NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS answer_question
(
    answer_id INT UNSIGNED,
    question_id INT UNSIGNED,
    FOREIGN KEY (answer_id) REFERENCES answers(id),
    FOREIGN KEY (question_id) REFERENCES questions(id)
);

CREATE TABLE IF NOT EXISTS user_quizzes
(
    id INT UNSIGNED AUTO_INCREMENT NOT NULL,
    quiz_id INT UNSIGNED,
    user_id INT UNSIGNED,
    PRIMARY KEY (id),
    FOREIGN KEY (quiz_id) REFERENCES quizzes(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE IF NOT EXISTS user_input
(
    id INT UNSIGNED AUTO_INCREMENT NOT NULL,
    question_id INT UNSIGNED,
    user_id INT UNSIGNED,
    input INT UNSIGNED,
    PRIMARY KEY (id),
    FOREIGN KEY (question_id) REFERENCES questions(id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (input) REFERENCES answers(id)
);

insert into admins (name, password,course) values ('Bob', 'password','Math');

insert into quizzes (name,admin_id) values ('Math 1', 1);

insert into users (name, password) values ('Bird', 'passwerd');
insert into users (name, password) values ('Cat', 'passbird');
insert into users (name, password) values ('Dog', 'passedword');

insert into answers (answer) values ('The Pianist');
insert into answers (answer) values ('Aliens');

insert into answers (answer) values ('You');
insert into answers (answer) values ('Bob');
insert into answers (answer) values ('Not Bill');

insert into answers (answer) values ('Also Bob');

insert into answers (answer) values ('Like once');
insert into answers (answer) values ('Never');

insert into answers (answer) values ('2');
insert into answers (answer) values ('-2');


insert into questions (question, quiz_id) values ('What is the best math movie in the world?', 1);
insert into answer_question (answer_id,question_id) values (1,1);
insert into answer_question (answer_id,question_id) values (2,1);

insert into questions (question, quiz_id) values ('Who is the best math teacher??', 1);
insert into answer_question (answer_id,question_id) values (1,2);
insert into answer_question (answer_id,question_id) values (3,2);
insert into answer_question (answer_id,question_id) values (4,2);
insert into answer_question (answer_id,question_id) values (5,2);

insert into questions (question, quiz_id) values ('Who invented math?', 1);
insert into answer_question (answer_id,question_id) values (1,3);
insert into answer_question (answer_id,question_id) values (3,3);
insert into answer_question (answer_id,question_id) values (4,3);
insert into answer_question (answer_id,question_id) values (5,3);
insert into answer_question (answer_id,question_id) values (6,3);

insert into questions (question, quiz_id) values ('How often do you use calculus in a day to day environment?', 1);
insert into answer_question (answer_id,question_id) values (7,4);
insert into answer_question (answer_id,question_id) values (8,4);

insert into questions (question, quiz_id) values ('What is the square root of 4?', 1);
insert into answer_question (answer_id,question_id) values (9,5);
insert into answer_question (answer_id,question_id) values (10,5);

insert into user_quizzes (quiz_id, user_id) values (1,1);
insert into user_quizzes (quiz_id, user_id) values (1,2);
insert into user_quizzes (quiz_id, user_id) values (1,3);


insert into user_input (question_id, user_id, input) values (1,1,1);
insert into user_input (question_id, user_id, input) values (2,1,1);
insert into user_input (question_id, user_id, input) values (3,1,1);
insert into user_input (question_id, user_id, input) values (4,1,7);
insert into user_input (question_id, user_id, input) values (5,1,9);

insert into user_input (question_id, user_id, input) values (1,2,10);
insert into user_input (question_id, user_id, input) values (2,2,10);
insert into user_input (question_id, user_id, input) values (3,2,10);
insert into user_input (question_id, user_id, input) values (4,2,1);
insert into user_input (question_id, user_id, input) values (5,2,1);

insert into user_input (question_id, user_id, input) values (1,3,10);
insert into user_input (question_id, user_id, input) values (2,3,10);
insert into user_input (question_id, user_id, input) values (3,3,1);
insert into user_input (question_id, user_id, input) values (4,3,7);
insert into user_input (question_id, user_id, input) values (5,3,9);




























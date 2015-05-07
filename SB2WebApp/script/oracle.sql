drop table user_roles;
drop table users;

create table users(
    username varchar2(50) not null primary key,
    password varchar2(50) not null,
    enabled number(1) not null
);

create table user_roles (
    username varchar2(50) not null,
    role varchar2(50) not null,
    constraint fk_username foreign key(username) references users(username)
);

INSERT INTO users(username,password,enabled)
VALUES ('mkyong','123456', 1);
INSERT INTO users(username,password,enabled)
VALUES ('lester','123456', 1);

 
INSERT INTO user_roles (username, ROLE)
VALUES ('mkyong', 'ROLE_USER');
INSERT INTO user_roles (username, ROLE)
VALUES ('mkyong', 'ROLE_ADMIN');
INSERT INTO user_roles (username, ROLE)
VALUES ('lester', 'ROLE_USER');
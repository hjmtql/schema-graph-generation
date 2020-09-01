create table trans.account
(
    id integer primary key
);

create table trans.user
(
    id integer primary key,
    account_id integer references trans.account(id) unique not null,
    name varchar(256) not null
);

create table trans.project
(
    id integer primary key,
    name varchar(256) not null
);

create table trans.task
(
    id integer primary key,
    project_id integer references trans.project(id) not null,
    name varchar(256) not null
);

create table trans.project_user
(
    project_id integer references trans.project(id) not null,
    user_id integer references trans.user(id) not null
);

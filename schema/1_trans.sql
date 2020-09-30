create table trans.account (id serial primary key);

create table trans.user (
    id serial primary key,
    account_id integer references trans.account(id) unique not null,
    name varchar(255) not null
);

create table trans.project (
    id serial primary key,
    name varchar(255) not null
);

create table trans.task (
    id serial primary key,
    project_id integer references trans.project(id) not null,
    name varchar(255) not null
);

create table trans.project_user (
    project_id integer references trans.project(id) not null,
    user_id integer references trans.user(id) not null
);
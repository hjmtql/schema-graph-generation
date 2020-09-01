create table master.prefecture
(
    id integer primary key,
    name varchar(256) not null,
    prefecture_kind varchar(256) not null
);

create table master.city
(
    id integer primary key,
    prefecture_id integer references master.prefecture(id) not null,
    name varchar(256) not null
);

create table master.railway
(
    id integer primary key,
    name varchar(256) not null
);

create table master.station
(
    id integer primary key,
    railway_id integer references master.railway(id) not null,
    name varchar(256) not null
);

create table master.prefecture_railway
(
    prefecture_id integer references master.prefecture(id) not null,
    railway_id integer references master.railway(id) not null
);

create table master.town
(
    city_id integer references master.city(id) not null,
    postal_code varchar(256) unique not null,
    name varchar(256) not null
);

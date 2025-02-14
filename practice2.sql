create table users
(
    id         bigint unsigned auto_increment primary key,
    first_name VARCHAR(255)           not null,
    last_name  VARCHAR(255)           not null,
    email      VARCHAR(50)            not null,
    password   VARCHAR(255)           not null,
    biography  longtext,
    role       enum ('user', 'admin') not null default 'user',
    created_at timestamp                       default current_timestamp
);


create table events (
    id  bigint unsigned auto_increment primary key,
    name varchar(255),
    description text,
    date datetime,
    created_at datetime default current_timestamp
);

create table event_user (
    user_id bigint unsigned,
    event_id bigint unsigned,

    foreign key (user_id) references users(id),
    foreign key (event_id) references events(id)
);
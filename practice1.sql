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

create table posts
(
    id         bigint unsigned auto_increment primary key,
    user_id    bigint unsigned,
    title      varchar(255) not null,
    body       longtext     not null,
    created_at timestamp default current_timestamp,

    foreign key (user_id) references users(id)
);
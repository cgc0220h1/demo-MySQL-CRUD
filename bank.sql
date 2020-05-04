create table customers
(
    customer_number int auto_increment
        primary key,
    full_name       varchar(100) not null,
    address         varchar(200) not null,
    email           varchar(100) null,
    phone           varchar(15)  null
);

create table accounts
(
    account_number  int auto_increment
        primary key,
    account_type    varchar(20) not null,
    date            date        not null,
    balance         int         not null,
    customer_number int         not null,
    constraint customer_number
        foreign key (customer_number) references customers (customer_number)
);

create table transactions
(
    tran_number    int auto_increment
        primary key,
    account_number int          not null,
    date           date         not null,
    amounts        int          not null,
    description    varchar(100) not null,
    constraint transactions_accounts_account_number_fk
        foreign key (account_number) references accounts (account_number)
);


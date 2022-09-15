
-- 1 Production Company
CREATE TABLE production_company(
    pid INT NOT NULL,
    pname VARCHAR(225) NOT NULL,
    headquarter VARCHAR(225),
    company_owner VARCHAR(225),
    PRIMARY KEY(pid)
);
-- 2 theatre
CREATE TABLE theatre(
    theatreid INT NOT NULL,
    theatre_name VARCHAR(225) NOT NULL,
    theatre_location VARCHAR(50),
    PRIMARY KEY (theatreid)
);
-- 3 Seats
CREATE TABLE seats(
    theatreid INT NOT NULL,
    seatno INT NOT NULL,
    seat_availability VARCHAR(225),
    seat_type VARCHAR(225),
    FOREIGN KEY(theatreid) REFERENCES theatre(theatreid),
    PRIMARY KEY(theatreid, seatno)
);
-- 4 Movie
CREATE TABLE movie(
    mid INT NOT NULL,
    mname VARCHAR(225) NOT NULL,
    pid int NOT NULL,
    theatreid int,
    FOREIGN KEY(pid) REFERENCES production_company(pid),
    FOREIGN KEY(theatreid) REFERENCES theatre(theatreid),
    PRIMARY KEY(mid)
);
-- 5 Movie Genre
CREATE TABLE Movie_genre(
    mid INT NOT NULL,
    genre VARCHAR(255) NOT NULL,
    FOREIGN KEY(mid) REFERENCES movie(mid),
    PRIMARY KEY(mid, genre)
);
-- 6 Customer
create table customer(
    cid int not null,
    cname varchar(225) not null,
    email varchar(100),
    mid int ,
    primary key(cid),
    foreign key (mid) references movie(mid)
);
-- insert into customer(cid,cname,email) values(1,'Rahul Kumar Maurya','rahul@gmail.com');
-- 7 Customer Phone No
CREATE TABLE cutomer_phoneno(
    cid INT NOT NULL,
    phoneno VARCHAR(50) NOT NULL,
    FOREIGN KEY (cid) REFERENCES customer(cid),
    PRIMARY KEY (cid,phoneno)
);
-- insert into cutomer_phone values (1,987654321);
-- insert into cutomer_phone values (1,123456789);
-- 8 Payments
CREATE TABLE payment(
    refid INT NOT NULL,
    payment_type VARCHAR(225),
    payment_status VARCHAR(225),
    amount FLOAT,
    payment_date DATE,
    cid int NOT NULL,
    FOREIGN KEY (cid) REFERENCES customer(cid),
    PRIMARY KEY (refid)
);
-- 9 Tickets
CREATE TABLE tickets(
    ticketid INT NOT NULL,
    tdate   DATE,
    ttime   TIME,
    theatreid int NOT NULL,
    mid int NOT NULL,
    FOREIGN KEY(theatreid) REFERENCES theatre(theatreid),
    FOREIGN KEY(mid) REFERENCES movie(mid),
    PRIMARY KEY(ticketid)
);
-- 10 Booking
CREATE TABLE book(
    cid INT NOT null,
    ticketid INT NOT NULL,
    FOREIGN KEY (cid) REFERENCES customer(cid),
    FOREIGN KEY (ticketid) REFERENCES tickets(ticketid),
    PRIMARY KEY(cid, ticketid)
);
-- 11
CREATE TABLE actors(
    aid INT NOT NULL,
    aname VARCHAR(225) NOT NULL,
    PRIMARY KEY(aid)
);
-- 12
CREATE TABLE actors_phoneno(
    aid INT NOT NULL,
    phoneno VARCHAR(50) NOT NULL,
    FOREIGN KEY (aid) REFERENCES actors(aid),
    PRIMARY KEY(aid, phoneno)
);
-- 13
CREATE TABLE directors(
    did INT NOT NULL,
    dname VARCHAR (225) NOT NULL,
    PRIMARY KEY(did)
);
-- 14
CREATE TABLE directors_phoneno(
    did INT NOT NULL,
    phoneno VARCHAR(50) NOT NULL,
    FOREIGN KEY(did) REFERENCES directors(did),
    PRIMARY KEY(did,phoneno)
);
-- 15
CREATE TABLE directs(
    mid int not null,
    did int not null,
    directed_year VARCHAR(4),
    foreign key (mid) references movie(mid),
    foreign key(did) references directors(did),
    PRIMARY key(mid, did)
);
-- 16
CREATE TABLE acts_in(
    aid int not null,
    mid int not null,
    a_role varchar(225),
    foreign key(aid) references actors(aid),
    foreign key(mid) references movie(mid),
    primary key(aid,mid)
);
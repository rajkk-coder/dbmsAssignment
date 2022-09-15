--          Actors
INSERT INTO actors(aid, aname) VALUES (1,'Salman Khan');
INSERT INTO actors(aid, aname) VALUES (2,'Rajnikant');
INSERT INTO actors(aid, aname) VALUES (3,'Aishwarya Rai Bachchan');
INSERT INTO actors(aid, aname) VALUES (4,'Rashmika Mandanna');
INSERT INTO actors(aid, aname) VALUES (5,'Johnny Depp');

-- Actors Phone Number
INSERT INTO actors_phoneno VALUES (1,'9637854275');
INSERT INTO actors_phoneno VALUES (1,'8965372836');
INSERT INTO actors_phoneno VALUES (2,'8975372537');
INSERT INTO actors_phoneno VALUES (3,'9637234235');
INSERT INTO actors_phoneno VALUES (4,'9637354546');
INSERT INTO actors_phoneno VALUES (5,'9633453235');
INSERT INTO actors_phoneno VALUES (5,'9637345244');
INSERT INTO actors_phoneno VALUES (4,'7892434275');

--  Directors
INSERT INTO Directors VALUES (10,'S. S. Rajamouli');
INSERT INTO Directors VALUES (11,'Christopher Nolan');
INSERT INTO Directors VALUES (12,'Quentin Tarantino');
INSERT INTO Directors VALUES (13,'Rajkumar Hirani');
INSERT INTO Directors VALUES (14,'Zoya Akhtar');

--          Directors phone number
INSERT INTO directors_phoneno(did, phoneno) VALUES (10,'9876543218');
INSERT INTO directors_phoneno(did, phoneno) VALUES (10,'9867543258');
INSERT INTO directors_phoneno(did, phoneno) VALUES (11,'6834535218');
INSERT INTO directors_phoneno(did, phoneno) VALUES (12,'9876456418');
INSERT INTO directors_phoneno(did, phoneno) VALUES (13,'9873443218');
INSERT INTO directors_phoneno(did, phoneno) VALUES (14,'9235575218');
INSERT INTO directors_phoneno(did, phoneno) VALUES (15,'9346543218');

--  Production Company
INSERT INTO production_company(pid,pname,headquarter,company_owner) VALUES (21,'Yash Raj Films', 'Mumbai','ABCD');
INSERT INTO production_company(pid,pname,headquarter,company_owner) VALUES (22,'Cloud Nine Movies','New York','XYZ');
INSERT INTO production_company(pid,pname,headquarter,company_owner) VALUES (23,'Paramount Pictures','London','PRQS');
INSERT INTO production_company(pid,pname,headquarter,company_owner) VALUES (24,'Tips Industries','Tokyo','ASDF');
INSERT INTO production_company(pid,pname,headquarter,company_owner) VALUES (25,'Warner Bros Pictures','New York','TYBP');

--                  Theatre
INSERT INTO theatre VALUES (51,'Radha Theatre','Chennai');
INSERT INTO theatre VALUES (52,'Regal Cinema','Malkangiri');
INSERT INTO theatre VALUES (53,'Apsara Theatre','Calicut');
INSERT INTO theatre VALUES (54,'Crown','Chennai');
INSERT INTO theatre VALUES (55,'Movieland','Bangalore');

--                  Movie
INSERT INTO movie(mid,mname,pid,theatreid) VALUES (61,'Bahubali',21,51);
INSERT INTO movie(mid,mname,pid,theatreid) VALUES (62,'Thor Love and Thundre',22,53);
INSERT INTO movie(mid,mname,pid,theatreid) VALUES (63,'Puspa',25,55);
INSERT INTO movie(mid,mname,pid,theatreid) VALUES (64,'Brahmastra',23,51);
INSERT INTO movie(mid,mname,pid,theatreid) VALUES (65,'RRR',24,55);
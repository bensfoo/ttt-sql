--
-- PostgreSQL "People" Database
--

BEGIN;

SET client_encoding = 'LATIN1';

CREATE TABLE people (
    id integer NOT NULL,
    first_name text,
    last_name text,
    gender text,
    birth_date text,
    city text,
    province text,
    height integer,
    weight integer
);


COPY people (id, first_name, last_name, gender, birth_date, city, province, height, weight) FROM stdin;
1	Lebron	James	M	2000-01-01	London	London	180	70
2	Donald	Duck	M	2000-01-01	Sydney	Sydney	180	70
3	Jake	Owen	F	2000-01-01	Hong Kong	Hong Kong	180	70
4	Justin	Cui	M	2000-01-01	Sydney	Sydney	180	70
5	Greg	Martin	M	2000-01-01	Hong Kong	Hong Kong	180	70
6	Benjamin	Foo	F	2000-01-01	Sydney	Sydney	180	70
7	Jalen	Brunson	M	2000-01-01	Sydney	Sydney	180	70
8	Donald	Waterfield	M	2000-01-01	London	London	180	70
9	Jalen	Duren	F	2000-01-01	London	London	180	70
10	Michelle	Waterson	M	2000-01-01	Sydney	Sydney	180	70
11	Maya	Ausset	M	2000-01-01	Dubai	Dubai	180	70
12	Jalen	Smith	F	2000-01-01	London	London	180	70
13	John	Smith	M	2000-01-01	London	London	180	70
14	Michael	Myers	F	2000-01-01	Hong Kong	Hong Kong	180	70
15	John	Howard	M	2000-01-01	London	London	180	70
16	Martin	King	M	2000-01-01	Sydney	London	180	70
17	Hilary	Clinton	M	2000-01-01	London	London	180	70
18	Donald	Trump	M	2000-01-01	Dubai	Dubai	180	70
19	Sarah	Zhou	F	2000-01-01	Sydney	Sydney	180	70
20	Sarah	Kim	F	2000-01-01	London	London	180	70
21	Sarah	Ho	F	2000-01-01	Hong Kong	Hong Kong	180	70
22	Hello	Dummy	F	2000-01-01	London	London	180	70
23	Allen	Iverson	M	2000-01-01	Sydney	Sydney	180	70
24	Kobe	Bryant	M	2000-01-01	Sydney	Sydney	180	70
25	World	Dummy	M	2000-01-01	Dubai	Dubai	180	70
26	Grug	Martin	F	2000-01-01	London	London	180	70
27	Some	Dummy	M	2000-01-01	Sydney	London	180	70
28	Bye	Dummy	F	2000-01-01	Hong Kong	Hong Kong	180	70
29	Stuff	Dummy	M	2000-01-01	London	London	180	70
30	Test	Dummy	F	2000-01-01	London	London	180	70
31	Peanut	Dog	M	2000-01-01	Sydney	Sydney	180	70
32	Cat	Bean	F	2000-01-01	Sydney	Sydney	180	70
\.


ALTER TABLE ONLY people
    ADD CONSTRAINT id PRIMARY KEY (id);


COMMIT;

ANALYZE people;
--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: testDB; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "testDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Czech_Czechia.1250';


ALTER DATABASE "testDB" OWNER TO postgres;

\connect "testDB"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: person_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.person_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.person_seq OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: test_table; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.test_table (
    id bigint NOT NULL,
    email character varying(255),
    first_name character varying(255),
    gender character varying(255),
    last_name character varying(255)
);


ALTER TABLE public.test_table OWNER TO postgres;

--
-- Name: test_table_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.test_table_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.test_table_seq OWNER TO postgres;

--
-- Data for Name: test_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.test_table (id, email, first_name, gender, last_name) FROM stdin;
1	eomalley0@php.net	Elita	Female	O'Malley
2	rlathan1@time.com	Rowen	Male	Lathan
3	kgloster2@wordpress.org	Kennith	Male	Gloster
4	blinnane3@chron.com	Berkly	Male	Linnane
5	cmcrobert4@trellian.com	Candace	Bigender	McRobert
6	odurham5@macromedia.com	Olivero	Male	Durham
7	drockell6@mayoclinic.com	Dorena	Female	Rockell
8	afullilove7@clickbank.net	Anthe	Female	Fullilove
9	bidwalevans8@livejournal.com	Bent	Male	Idwal Evans
10	rstratiff9@aboutads.info	Roxie	Female	Stratiff
11	aarthura@indiegogo.com	Ailbert	Male	Arthur
12	gbrobynb@delicious.com	Gerik	Male	Brobyn
13	idilkesc@gov.uk	Idalia	Female	Dilkes
14	otiplerd@instagram.com	Orlando	Male	Tipler
15	pharolde@purevolume.com	Paquito	Male	Harold
16	tlymbournef@twitpic.com	Twila	Female	Lymbourne
17	cpapezg@ucoz.com	Carry	Female	Papez
18	shearnesh@ibm.com	Stevy	Male	Hearnes
19	fnovotnii@spiegel.de	Frank	Female	Novotni
20	tmawfordj@4shared.com	Teador	Non-binary	Mawford
\.


--
-- Name: person_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.person_seq', 1, false);


--
-- Name: test_table_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.test_table_seq', 1, false);


--
-- Name: test_table test_table_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test_table
    ADD CONSTRAINT test_table_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--


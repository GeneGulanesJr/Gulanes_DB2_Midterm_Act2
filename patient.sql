--
-- PostgreSQL database dump
--

-- Dumped from database version 11.6 (Ubuntu 11.6-1.pgdg16.04+1)
-- Dumped by pg_dump version 12.0

-- Started on 2020-01-25 21:54:54

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
-- TOC entry 3 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: srclbtmoexksgx
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO srclbtmoexksgx;

--
-- TOC entry 3835 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: srclbtmoexksgx
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

--
-- TOC entry 196 (class 1259 OID 26423475)
-- Name: owners; Type: TABLE; Schema: public; Owner: srclbtmoexksgx
--

CREATE TABLE public.owners (
    owner_id integer NOT NULL,
    name character varying(20) NOT NULL,
    gender character varying(20),
    age smallint,
    occupation character varying(30)
);


ALTER TABLE public.owners OWNER TO srclbtmoexksgx;

--
-- TOC entry 197 (class 1259 OID 26423504)
-- Name: pets; Type: TABLE; Schema: public; Owner: srclbtmoexksgx
--

CREATE TABLE public.pets (
    pet_id integer,
    pet_name character varying(20) NOT NULL,
    class character varying(30),
    age smallint,
    family character varying(30),
    owner_id integer
);


ALTER TABLE public.pets OWNER TO srclbtmoexksgx;

--
-- TOC entry 3828 (class 0 OID 26423475)
-- Dependencies: 196
-- Data for Name: owners; Type: TABLE DATA; Schema: public; Owner: srclbtmoexksgx
--

COPY public.owners (owner_id, name, gender, age, occupation) FROM stdin;
1	Alex	Male	15	Lawn Mower
2	Caroline	Female	34	Chemist
3	Mary	Female	53	Personal Trainer
4	Jason	Male	39	Writer
5	Edwina	Female	29	Hobo
6	Curtis	Male	18	Student
7	Judy	Female	44	Welder
8	Alex	None ya bizness	22	Programmer
9	Lucy	Female	6	Student
10	Chris	Male	56	Architect
11	Faith	Female	11	Painter
12	Giovanni	Male	32	Architect
13	John	Male	47	Cook
14	Allison	Female	26	Student
15	Kate	Female	62	Retired
16	Mary	None ya bizness	37	Nutritionist
17	Thomas	Male	10	Student
18	Owen	Male	26	Hobo
19	Sreehari	Male	38	Programmer
20	Zena	Female	25	Personal Trainer
21	Amy	Female	29	Accountant
22	Louie	Male	19	Construction
23	Monty	Male	14	Window Cleaner
24	Jackie	Female	24	Programmer
\.


--
-- TOC entry 3829 (class 0 OID 26423504)
-- Dependencies: 197
-- Data for Name: pets; Type: TABLE DATA; Schema: public; Owner: srclbtmoexksgx
--

COPY public.pets (pet_id, pet_name, class, age, family, owner_id) FROM stdin;
1	PJ	Mammal	15	Dog	13
2	Buffy	Mammal	14	Dog	13
3	Pixie	Mammal	8	Cat	11
4	Charlie	Mammal	7	Cat	7
5	Scooter	Mammal	10	Squirrel	7
6	Smoke	Bird	4	Parrot	8
7	Butch	Reptile	2	Iguana	14
8	Rex	Plant	8	Venus Flytrap	9
9	Snowflake	Amphibian	23	Salamander	11
10	Spot	Arthropod	4	Black widow	3
11	Daisy	Plant	2	Orchid	16
12	Squawk	Bird	9	Hawk	12
13	Skeeter	Reptile	3	Snake	13
14	Moonlight	Mammal	6	Dog	13
15	Sunshine	Fish	1	Piranha	3
16	Sandy	Fish	1	Koi	14
17	Wags	Mammal	2	Dog	1
18	Willy	Amphibian	9	Frog	11
19	Tank	Bird	7	Eagle	15
20	Ollie	reptile	14	Dragon	7
21	Coco	Bird	11	Parakeet	3
22	Luna	Arthropod	2	Scorpion	12
23	Molly	Mammal	5	Whale	3
24	Milly	Arthropod	4	Grasshopper	5
25	Simba	Mammal	8	Cat	3
26	Jaws	Fish	13	Barracuda	10
27	Yoshi	Reptile	4	Dragon	20
28	Rango	Amphibian	7	Frog	4
29	Pringle	Mammal	13	Dolphin	2
30	Lizzie	Reptile	3	Lizard	6
31	Norbert	Bird	7	Magpie	18
32	Godzilla	Reptile	20	Dragon	2
33	Blue	Mammal	40	Whale	17
34	Blizzard	Plant	6	Orchid	19
35	Spinner	Mammal	5	Dolphin	19
36	Charmander	Reptile	2	Lizard	4
\N	Puffy	Mammal	2	Dog	\N
\N	Jingle	Bird	4	Parrot	\N
\N	Sandstorm	Reptile	5	Lizard	\N
\N	Loggie	Reptile	8	Crocodile	\N
\.


--
-- TOC entry 3704 (class 2606 OID 26423479)
-- Name: owners owners_pkey; Type: CONSTRAINT; Schema: public; Owner: srclbtmoexksgx
--

ALTER TABLE ONLY public.owners
    ADD CONSTRAINT owners_pkey PRIMARY KEY (owner_id);


--
-- TOC entry 3706 (class 2606 OID 26423508)
-- Name: pets pets_pet_id_key; Type: CONSTRAINT; Schema: public; Owner: srclbtmoexksgx
--

ALTER TABLE ONLY public.pets
    ADD CONSTRAINT pets_pet_id_key UNIQUE (pet_id);


--
-- TOC entry 3836 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: srclbtmoexksgx
--

REVOKE ALL ON SCHEMA public FROM postgres;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO srclbtmoexksgx;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- TOC entry 3837 (class 0 OID 0)
-- Dependencies: 596
-- Name: LANGUAGE plpgsql; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON LANGUAGE plpgsql TO srclbtmoexksgx;


-- Completed on 2020-01-25 21:56:11

--
-- PostgreSQL database dump complete
--


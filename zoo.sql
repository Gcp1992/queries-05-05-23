--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

-- Started on 2023-05-05 14:48:03

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
-- TOC entry 218 (class 1259 OID 16504)
-- Name: id_animal_autoincrement; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.id_animal_autoincrement
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.id_animal_autoincrement OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 219 (class 1259 OID 16505)
-- Name: animal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.animal (
    n_identificacion integer DEFAULT nextval('public.id_animal_autoincrement'::regclass) NOT NULL,
    continente character varying(255),
    sexo character varying(15),
    "año_nacimiento" integer,
    id_especie integer
);


ALTER TABLE public.animal OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16495)
-- Name: id_especie_autoincrement; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.id_especie_autoincrement
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.id_especie_autoincrement OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16496)
-- Name: especie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.especie (
    id_especie integer DEFAULT nextval('public.id_especie_autoincrement'::regclass) NOT NULL,
    nombre_vulgar character varying(255),
    nombre_cientifico character varying(255),
    familia character varying(255),
    peligro boolean
);


ALTER TABLE public.especie OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16486)
-- Name: id_zoo_autoincrement; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.id_zoo_autoincrement
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.id_zoo_autoincrement OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16487)
-- Name: zoo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.zoo (
    id_zoo integer DEFAULT nextval('public.id_zoo_autoincrement'::regclass) NOT NULL,
    nombre character varying(255),
    ciudad character varying(255),
    pais character varying(255),
    "tamaño" integer,
    presupuesto integer
);


ALTER TABLE public.zoo OWNER TO postgres;

--
-- TOC entry 3340 (class 0 OID 16505)
-- Dependencies: 219
-- Data for Name: animal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.animal (n_identificacion, continente, sexo, "año_nacimiento", id_especie) FROM stdin;
\.


--
-- TOC entry 3338 (class 0 OID 16496)
-- Dependencies: 217
-- Data for Name: especie; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.especie (id_especie, nombre_vulgar, nombre_cientifico, familia, peligro) FROM stdin;
\.


--
-- TOC entry 3336 (class 0 OID 16487)
-- Dependencies: 215
-- Data for Name: zoo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.zoo (id_zoo, nombre, ciudad, pais, "tamaño", presupuesto) FROM stdin;
\.


--
-- TOC entry 3346 (class 0 OID 0)
-- Dependencies: 218
-- Name: id_animal_autoincrement; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.id_animal_autoincrement', 1, false);


--
-- TOC entry 3347 (class 0 OID 0)
-- Dependencies: 216
-- Name: id_especie_autoincrement; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.id_especie_autoincrement', 1, false);


--
-- TOC entry 3348 (class 0 OID 0)
-- Dependencies: 214
-- Name: id_zoo_autoincrement; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.id_zoo_autoincrement', 1, false);


--
-- TOC entry 3191 (class 2606 OID 16510)
-- Name: animal animal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.animal
    ADD CONSTRAINT animal_pkey PRIMARY KEY (n_identificacion);


--
-- TOC entry 3189 (class 2606 OID 16503)
-- Name: especie especie_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.especie
    ADD CONSTRAINT especie_pkey PRIMARY KEY (id_especie);


--
-- TOC entry 3187 (class 2606 OID 16494)
-- Name: zoo zoo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zoo
    ADD CONSTRAINT zoo_pkey PRIMARY KEY (id_zoo);


--
-- TOC entry 3192 (class 2606 OID 16511)
-- Name: animal animal_id_especie_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.animal
    ADD CONSTRAINT animal_id_especie_fkey FOREIGN KEY (id_especie) REFERENCES public.especie(id_especie);


-- Completed on 2023-05-05 14:48:03

--
-- PostgreSQL database dump complete
--


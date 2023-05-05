--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

-- Started on 2023-05-05 14:48:37

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
-- TOC entry 224 (class 1259 OID 16599)
-- Name: id_almacen_autoincrement; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.id_almacen_autoincrement
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.id_almacen_autoincrement OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 227 (class 1259 OID 16630)
-- Name: almacenes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.almacenes (
    id_almacen integer DEFAULT nextval('public.id_almacen_autoincrement'::regclass) NOT NULL,
    direccion character varying NOT NULL,
    fecha date NOT NULL,
    id_provincia integer NOT NULL
);


ALTER TABLE public.almacenes OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16548)
-- Name: id_coleccion_autoincrement; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.id_coleccion_autoincrement
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.id_coleccion_autoincrement OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16549)
-- Name: colecciones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.colecciones (
    id_coleccion integer DEFAULT nextval('public.id_coleccion_autoincrement'::regclass) NOT NULL,
    volumenes integer NOT NULL
);


ALTER TABLE public.colecciones OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16572)
-- Name: id_detalles_pedido_autoincrement; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.id_detalles_pedido_autoincrement
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.id_detalles_pedido_autoincrement OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16573)
-- Name: detalles_pedidos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.detalles_pedidos (
    id_detalles_pedido integer DEFAULT nextval('public.id_detalles_pedido_autoincrement'::regclass) NOT NULL,
    cantidad integer NOT NULL,
    isbn integer NOT NULL,
    id_pedido integer NOT NULL
);


ALTER TABLE public.detalles_pedidos OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16529)
-- Name: id_pedido_autoincrement; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.id_pedido_autoincrement
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.id_pedido_autoincrement OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 16643)
-- Name: id_poblacion_autoincrement; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.id_poblacion_autoincrement
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.id_poblacion_autoincrement OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16620)
-- Name: id_provincia_autoincrement; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.id_provincia_autoincrement
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.id_provincia_autoincrement OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16517)
-- Name: id_socio_autoincrement; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.id_socio_autoincrement
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.id_socio_autoincrement OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16555)
-- Name: isbn_autoincrement; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.isbn_autoincrement
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.isbn_autoincrement OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16556)
-- Name: libros; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.libros (
    isbn integer DEFAULT nextval('public.isbn_autoincrement'::regclass) NOT NULL,
    titulo character varying(50) NOT NULL,
    autor character varying(90) NOT NULL,
    editorial character varying(50) NOT NULL,
    id_coleccion integer NOT NULL
);


ALTER TABLE public.libros OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16530)
-- Name: pedidos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pedidos (
    id_pedido integer DEFAULT nextval('public.id_pedido_autoincrement'::regclass) NOT NULL,
    cantidad integer NOT NULL,
    forma_pago character varying NOT NULL,
    forma_envio character varying NOT NULL,
    id_socio integer NOT NULL
);


ALTER TABLE public.pedidos OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 16644)
-- Name: poblacion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.poblacion (
    id_poblacion integer DEFAULT nextval('public.id_poblacion_autoincrement'::regclass) NOT NULL,
    nombre character varying(50) NOT NULL,
    habitantes integer NOT NULL,
    id_provincia integer NOT NULL
);


ALTER TABLE public.poblacion OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16621)
-- Name: provincias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.provincias (
    id_provincia integer DEFAULT nextval('public.id_provincia_autoincrement'::regclass) NOT NULL,
    extension numeric(10,2) NOT NULL
);


ALTER TABLE public.provincias OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16521)
-- Name: socios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socios (
    id_socio integer DEFAULT nextval('public.id_socio_autoincrement'::regclass) NOT NULL,
    nombre character varying NOT NULL,
    apellidos character varying NOT NULL,
    dni character varying(9) NOT NULL
);


ALTER TABLE public.socios OWNER TO postgres;

--
-- TOC entry 3397 (class 0 OID 16630)
-- Dependencies: 227
-- Data for Name: almacenes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.almacenes (id_almacen, direccion, fecha, id_provincia) FROM stdin;
\.


--
-- TOC entry 3389 (class 0 OID 16549)
-- Dependencies: 219
-- Data for Name: colecciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.colecciones (id_coleccion, volumenes) FROM stdin;
\.


--
-- TOC entry 3393 (class 0 OID 16573)
-- Dependencies: 223
-- Data for Name: detalles_pedidos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.detalles_pedidos (id_detalles_pedido, cantidad, isbn, id_pedido) FROM stdin;
\.


--
-- TOC entry 3391 (class 0 OID 16556)
-- Dependencies: 221
-- Data for Name: libros; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libros (isbn, titulo, autor, editorial, id_coleccion) FROM stdin;
\.


--
-- TOC entry 3387 (class 0 OID 16530)
-- Dependencies: 217
-- Data for Name: pedidos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pedidos (id_pedido, cantidad, forma_pago, forma_envio, id_socio) FROM stdin;
\.


--
-- TOC entry 3399 (class 0 OID 16644)
-- Dependencies: 229
-- Data for Name: poblacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.poblacion (id_poblacion, nombre, habitantes, id_provincia) FROM stdin;
\.


--
-- TOC entry 3396 (class 0 OID 16621)
-- Dependencies: 226
-- Data for Name: provincias; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.provincias (id_provincia, extension) FROM stdin;
\.


--
-- TOC entry 3385 (class 0 OID 16521)
-- Dependencies: 215
-- Data for Name: socios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socios (id_socio, nombre, apellidos, dni) FROM stdin;
\.


--
-- TOC entry 3405 (class 0 OID 0)
-- Dependencies: 224
-- Name: id_almacen_autoincrement; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.id_almacen_autoincrement', 1, false);


--
-- TOC entry 3406 (class 0 OID 0)
-- Dependencies: 218
-- Name: id_coleccion_autoincrement; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.id_coleccion_autoincrement', 1, false);


--
-- TOC entry 3407 (class 0 OID 0)
-- Dependencies: 222
-- Name: id_detalles_pedido_autoincrement; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.id_detalles_pedido_autoincrement', 1, false);


--
-- TOC entry 3408 (class 0 OID 0)
-- Dependencies: 216
-- Name: id_pedido_autoincrement; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.id_pedido_autoincrement', 1, false);


--
-- TOC entry 3409 (class 0 OID 0)
-- Dependencies: 228
-- Name: id_poblacion_autoincrement; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.id_poblacion_autoincrement', 1, false);


--
-- TOC entry 3410 (class 0 OID 0)
-- Dependencies: 225
-- Name: id_provincia_autoincrement; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.id_provincia_autoincrement', 1, false);


--
-- TOC entry 3411 (class 0 OID 0)
-- Dependencies: 214
-- Name: id_socio_autoincrement; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.id_socio_autoincrement', 1, false);


--
-- TOC entry 3412 (class 0 OID 0)
-- Dependencies: 220
-- Name: isbn_autoincrement; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.isbn_autoincrement', 1, false);


--
-- TOC entry 3229 (class 2606 OID 16637)
-- Name: almacenes almacenes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.almacenes
    ADD CONSTRAINT almacenes_pkey PRIMARY KEY (id_almacen);


--
-- TOC entry 3221 (class 2606 OID 16554)
-- Name: colecciones colecciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colecciones
    ADD CONSTRAINT colecciones_pkey PRIMARY KEY (id_coleccion);


--
-- TOC entry 3225 (class 2606 OID 16578)
-- Name: detalles_pedidos detalles_pedidos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalles_pedidos
    ADD CONSTRAINT detalles_pedidos_pkey PRIMARY KEY (id_detalles_pedido);


--
-- TOC entry 3223 (class 2606 OID 16561)
-- Name: libros libros_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libros
    ADD CONSTRAINT libros_pkey PRIMARY KEY (isbn);


--
-- TOC entry 3219 (class 2606 OID 16537)
-- Name: pedidos pedidos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_pkey PRIMARY KEY (id_pedido);


--
-- TOC entry 3217 (class 2606 OID 16528)
-- Name: socios pk_socio; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socios
    ADD CONSTRAINT pk_socio PRIMARY KEY (id_socio);


--
-- TOC entry 3231 (class 2606 OID 16649)
-- Name: poblacion poblacion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.poblacion
    ADD CONSTRAINT poblacion_pkey PRIMARY KEY (id_poblacion);


--
-- TOC entry 3227 (class 2606 OID 16626)
-- Name: provincias provincias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.provincias
    ADD CONSTRAINT provincias_pkey PRIMARY KEY (id_provincia);


--
-- TOC entry 3240 (class 2606 OID 16638)
-- Name: almacenes almacenes_id_provincia_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.almacenes
    ADD CONSTRAINT almacenes_id_provincia_fkey FOREIGN KEY (id_provincia) REFERENCES public.provincias(id_provincia);


--
-- TOC entry 3236 (class 2606 OID 16584)
-- Name: detalles_pedidos detalles_pedidos_id_pedido_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalles_pedidos
    ADD CONSTRAINT detalles_pedidos_id_pedido_fkey FOREIGN KEY (id_pedido) REFERENCES public.pedidos(id_pedido);


--
-- TOC entry 3237 (class 2606 OID 16579)
-- Name: detalles_pedidos detalles_pedidos_isbn_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalles_pedidos
    ADD CONSTRAINT detalles_pedidos_isbn_fkey FOREIGN KEY (isbn) REFERENCES public.libros(isbn);


--
-- TOC entry 3234 (class 2606 OID 16567)
-- Name: libros fk_id_coleccion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libros
    ADD CONSTRAINT fk_id_coleccion FOREIGN KEY (id_coleccion) REFERENCES public.colecciones(id_coleccion) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3238 (class 2606 OID 16589)
-- Name: detalles_pedidos fk_id_pedido; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalles_pedidos
    ADD CONSTRAINT fk_id_pedido FOREIGN KEY (id_pedido) REFERENCES public.pedidos(id_pedido);


--
-- TOC entry 3232 (class 2606 OID 16543)
-- Name: pedidos fk_id_socio; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT fk_id_socio FOREIGN KEY (id_socio) REFERENCES public.socios(id_socio) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3239 (class 2606 OID 16594)
-- Name: detalles_pedidos fk_isbn; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalles_pedidos
    ADD CONSTRAINT fk_isbn FOREIGN KEY (isbn) REFERENCES public.libros(isbn) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3235 (class 2606 OID 16562)
-- Name: libros libros_id_coleccion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libros
    ADD CONSTRAINT libros_id_coleccion_fkey FOREIGN KEY (id_coleccion) REFERENCES public.colecciones(id_coleccion);


--
-- TOC entry 3233 (class 2606 OID 16538)
-- Name: pedidos pedidos_id_socio_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_id_socio_fkey FOREIGN KEY (id_socio) REFERENCES public.socios(id_socio);


--
-- TOC entry 3241 (class 2606 OID 16650)
-- Name: poblacion poblacion_id_provincia_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.poblacion
    ADD CONSTRAINT poblacion_id_provincia_fkey FOREIGN KEY (id_provincia) REFERENCES public.provincias(id_provincia);


-- Completed on 2023-05-05 14:48:37

--
-- PostgreSQL database dump complete
--


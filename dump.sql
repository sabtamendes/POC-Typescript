--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5 (Ubuntu 14.5-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.5 (Ubuntu 14.5-0ubuntu0.22.04.1)

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: username; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.username (
    id integer NOT NULL,
    name text NOT NULL
);


--
-- Name: username_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.username_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: username_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.username_id_seq OWNED BY public.username.id;


--
-- Name: username id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.username ALTER COLUMN id SET DEFAULT nextval('public.username_id_seq'::regclass);


--
-- Data for Name: username; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.username VALUES (8, '{"nome":"Sabta"}');
INSERT INTO public.username VALUES (9, '{"nome":"Luiz"}');
INSERT INTO public.username VALUES (10, '{"nome":"Luiz"}');
INSERT INTO public.username VALUES (11, '{"nome":"Luizao"}');
INSERT INTO public.username VALUES (12, '{"nome":"Luizao"}');
INSERT INTO public.username VALUES (13, '{"nome":"Luizfffao"}');
INSERT INTO public.username VALUES (14, '{"nome":"Luizfffao"}');
INSERT INTO public.username VALUES (15, '{"nome":"Luizfffao"}');
INSERT INTO public.username VALUES (16, '{"nome":"Luizfffao"}');
INSERT INTO public.username VALUES (19, 'Luizfffao');
INSERT INTO public.username VALUES (20, 'Luizfffao');
INSERT INTO public.username VALUES (21, 'Luizfffao');
INSERT INTO public.username VALUES (22, 'Luizfffao');
INSERT INTO public.username VALUES (23, 'Luizfffao');
INSERT INTO public.username VALUES (24, 'Luizfffao');
INSERT INTO public.username VALUES (25, 'Sabta');
INSERT INTO public.username VALUES (26, 'Luiz');


--
-- Name: username_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.username_id_seq', 26, true);


--
-- Name: username username_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.username
    ADD CONSTRAINT username_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--


--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    age_in_millions integer,
    distance_from_earth integer,
    is_spherical boolean,
    has_life numeric,
    has_aliens boolean,
    name character varying(30) NOT NULL,
    identifier integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_identifier_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_identifier_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_identifier_seq OWNER TO freecodecamp;

--
-- Name: galaxy_identifier_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_identifier_seq OWNED BY public.galaxy.identifier;


--
-- Name: galaxy_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_table_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_table_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: government; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.government (
    government_id integer NOT NULL,
    age_in_millions integer,
    distance_from_earth integer,
    is_spherical boolean,
    has_life numeric,
    has_aliens boolean,
    name character varying(30) NOT NULL,
    government_grade text
);


ALTER TABLE public.government OWNER TO freecodecamp;

--
-- Name: government_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.government_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.government_table_id_seq OWNER TO freecodecamp;

--
-- Name: government_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.government_table_id_seq OWNED BY public.government.government_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    age_in_millions integer,
    distance_from_earth integer,
    is_spherical boolean,
    has_life numeric,
    has_aliens boolean,
    name character varying(30) NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_table_id_seq OWNER TO freecodecamp;

--
-- Name: moon_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_table_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    age_in_millions integer,
    distance_from_earth integer,
    is_spherical boolean,
    has_life numeric,
    has_aliens boolean,
    name character varying(30) NOT NULL,
    identifier integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_identifier_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_identifier_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_identifier_seq OWNER TO freecodecamp;

--
-- Name: planet_identifier_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_identifier_seq OWNED BY public.planet.identifier;


--
-- Name: planet_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_table_id_seq OWNER TO freecodecamp;

--
-- Name: planet_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_table_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    age_in_millions integer,
    distance_from_earth integer,
    is_spherical boolean,
    has_life numeric,
    has_aliens boolean,
    name character varying(30) NOT NULL,
    identifier integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_identifier_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_identifier_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_identifier_seq OWNER TO freecodecamp;

--
-- Name: star_identifier_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_identifier_seq OWNED BY public.star.identifier;


--
-- Name: star_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_table_id_seq OWNER TO freecodecamp;

--
-- Name: star_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_table_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_table_id_seq'::regclass);


--
-- Name: galaxy identifier; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN identifier SET DEFAULT nextval('public.galaxy_identifier_seq'::regclass);


--
-- Name: government government_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.government ALTER COLUMN government_id SET DEFAULT nextval('public.government_table_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_table_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_table_id_seq'::regclass);


--
-- Name: planet identifier; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN identifier SET DEFAULT nextval('public.planet_identifier_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_table_id_seq'::regclass);


--
-- Name: star identifier; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN identifier SET DEFAULT nextval('public.star_identifier_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 245, 393, false, 1, true, 'Cygnus A', 1);
INSERT INTO public.galaxy VALUES (2, 576, 754, true, 0, false, 'Virgo A', 2);
INSERT INTO public.galaxy VALUES (3, 8838, 6362, true, 1, true, 'Andromeda', 3);
INSERT INTO public.galaxy VALUES (4, 6272, 646, false, 0, false, 'Maffei I', 4);
INSERT INTO public.galaxy VALUES (5, 7574, 363, true, 1, true, 'Maffei II', 5);
INSERT INTO public.galaxy VALUES (6, 75743, 838, true, 1, true, 'Hunger Madra', 6);


--
-- Data for Name: government; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.government VALUES (1, NULL, 727, NULL, 0, false, 'Brivantian', NULL);
INSERT INTO public.government VALUES (2, NULL, 7278, NULL, 1, true, 'Nigerian', NULL);
INSERT INTO public.government VALUES (3, NULL, 433, NULL, 0, false, 'Calandian', NULL);
INSERT INTO public.government VALUES (4, NULL, 6262, NULL, 1, true, 'Primorian', NULL);
INSERT INTO public.government VALUES (5, NULL, 8282, NULL, 0, false, 'Gregoruian', NULL);
INSERT INTO public.government VALUES (6, NULL, 82828, NULL, 1, true, 'Bimbian', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, NULL, NULL, true, 1, true, 'Phobos');
INSERT INTO public.moon VALUES (2, NULL, NULL, false, 0, false, 'Deimos');
INSERT INTO public.moon VALUES (3, NULL, NULL, true, 1, true, 'Thebe');
INSERT INTO public.moon VALUES (4, NULL, NULL, true, 1, true, 'Io');
INSERT INTO public.moon VALUES (5, NULL, NULL, true, 1, true, 'Europa');
INSERT INTO public.moon VALUES (6, NULL, NULL, true, 1, true, 'Callisto');
INSERT INTO public.moon VALUES (7, NULL, NULL, true, 1, true, 'Pan');
INSERT INTO public.moon VALUES (8, NULL, NULL, false, 0, false, 'Homea');
INSERT INTO public.moon VALUES (9, NULL, NULL, true, 1, true, 'Gertj');
INSERT INTO public.moon VALUES (10, NULL, NULL, false, 0, false, 'Lille');
INSERT INTO public.moon VALUES (11, NULL, NULL, true, 1, true, 'Panam');
INSERT INTO public.moon VALUES (12, NULL, NULL, true, 1, true, 'Celtic');
INSERT INTO public.moon VALUES (13, NULL, NULL, true, 1, true, 'Silkie');
INSERT INTO public.moon VALUES (14, NULL, NULL, true, 1, true, 'Pradi');
INSERT INTO public.moon VALUES (15, NULL, NULL, true, 1, true, 'Emil');
INSERT INTO public.moon VALUES (16, NULL, NULL, false, 0, false, 'Pall');
INSERT INTO public.moon VALUES (17, NULL, NULL, true, 1, true, 'Hunger');
INSERT INTO public.moon VALUES (18, NULL, NULL, true, 1, true, 'Madra');
INSERT INTO public.moon VALUES (19, NULL, NULL, true, 1, true, 'Limit');
INSERT INTO public.moon VALUES (20, NULL, NULL, true, 1, true, 'Lindo');
INSERT INTO public.moon VALUES (21, NULL, NULL, true, 1, true, 'Salso');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 6262, 72625, true, 0, false, 'Mercury', 1);
INSERT INTO public.planet VALUES (2, 72727, 7273, true, 0, true, 'Venus', 2);
INSERT INTO public.planet VALUES (3, 8282, 463, false, 0, false, 'Mars', 3);
INSERT INTO public.planet VALUES (4, 6, 0, true, 1, true, 'Earth', 4);
INSERT INTO public.planet VALUES (5, 71719, 6262, false, 1, false, 'Jupiter', 5);
INSERT INTO public.planet VALUES (6, 626, 7582, true, 1, true, 'Saturn', 6);
INSERT INTO public.planet VALUES (7, 772, 8282, true, 1, true, 'Uranus', 7);
INSERT INTO public.planet VALUES (8, 62, 743, false, 0, false, 'Neptune', 8);
INSERT INTO public.planet VALUES (9, 6583, 929, true, 1, false, 'Ceres', 9);
INSERT INTO public.planet VALUES (10, 7282, 83, true, 1, true, 'Eris', 10);
INSERT INTO public.planet VALUES (11, 728, 938, false, 1, false, 'Haumea', 11);
INSERT INTO public.planet VALUES (12, 3882, 922, true, 1, true, 'Pluto', 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 64, 828, false, 0, false, 'Sirius', 1);
INSERT INTO public.star VALUES (2, 7, 55, false, 0, false, 'Canophus', 2);
INSERT INTO public.star VALUES (3, 882, 445, true, 1, true, 'Arcturus', 3);
INSERT INTO public.star VALUES (4, 28, 45, false, 0, false, 'Vega', 4);
INSERT INTO public.star VALUES (5, 7373, 22, false, 0, false, 'Rigel', 5);
INSERT INTO public.star VALUES (6, 772, 34, true, 1, true, 'Alpha Centauri', 6);


--
-- Name: galaxy_identifier_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_identifier_seq', 6, true);


--
-- Name: galaxy_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_table_id_seq', 6, true);


--
-- Name: government_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.government_table_id_seq', 6, true);


--
-- Name: moon_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_table_id_seq', 21, true);


--
-- Name: planet_identifier_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_identifier_seq', 12, true);


--
-- Name: planet_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_table_id_seq', 12, true);


--
-- Name: star_identifier_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_identifier_seq', 12, true);


--
-- Name: star_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_table_id_seq', 12, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: government government_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.government
    ADD CONSTRAINT government_pkey PRIMARY KEY (government_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: government unique_govt_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.government
    ADD CONSTRAINT unique_govt_name UNIQUE (name);


--
-- Name: galaxy unique_identifier; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_identifier UNIQUE (identifier);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_idfier; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_idfier UNIQUE (identifier);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: star fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star FOREIGN KEY (identifier) REFERENCES public.galaxy(identifier);


--
-- PostgreSQL database dump complete
--


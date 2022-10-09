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
    name character varying(30) NOT NULL,
    planet_types text,
    relevance integer NOT NULL,
    color text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth integer,
    planet_id integer,
    size integer,
    is_alone_moon boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric(4,1),
    distance_from_earth integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    light_strength integer,
    size integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: summary; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.summary (
    name character varying(30),
    summary_id integer NOT NULL,
    calculation integer NOT NULL
);


ALTER TABLE public.summary OWNER TO freecodecamp;

--
-- Name: summary_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.summary_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.summary_id_seq OWNER TO freecodecamp;

--
-- Name: summary_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.summary_id_seq OWNED BY public.summary.summary_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Name: summary summary_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.summary ALTER COLUMN summary_id SET DEFAULT nextval('public.summary_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'Inner planet', 1, NULL);
INSERT INTO public.galaxy VALUES (2, 'Antennae', 'Outer planet', 2, NULL);
INSERT INTO public.galaxy VALUES (3, 'Backward', 'Outer planet', 3, NULL);
INSERT INTO public.galaxy VALUES (4, 'Cigar', 'Outer planet', 4, NULL);
INSERT INTO public.galaxy VALUES (5, 'Black Eye', 'Outer planet', 5, NULL);
INSERT INTO public.galaxy VALUES (6, 'Butterfly', 'Inner planet', 6, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 100, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Europa', 200, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Titan', 300, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Io', 500, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Himalia', 600, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Carme', 600, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Callisto', 700, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Ganymedes', 700, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Ananke', 700, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Iocaste', 800, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Carpo', 800, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Elara', 800, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Adrastea', 800, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Callirrhoe', 1800, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Carme', 1800, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Euporie', 1800, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Herse', 1800, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Hermippe', 1200, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Erinome', 1200, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Aoede', 1300, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Venus', false, true, 450.1, 108000000, NULL);
INSERT INTO public.planet VALUES (2, 'Mars', false, true, 320.2, 198633, NULL);
INSERT INTO public.planet VALUES (3, 'Mercure', false, true, 420.2, 298633, NULL);
INSERT INTO public.planet VALUES (4, 'Jupiter', false, true, 520.2, 398633, NULL);
INSERT INTO public.planet VALUES (5, 'Saturn', false, true, 520.2, 398633, NULL);
INSERT INTO public.planet VALUES (6, 'Neptunus', false, true, 820.2, 698633, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', false, true, 192.2, 798633, NULL);
INSERT INTO public.planet VALUES (8, 'Pluto', false, true, 132.2, 4588633, NULL);
INSERT INTO public.planet VALUES (9, 'Dione', false, false, 232.2, 4778633, NULL);
INSERT INTO public.planet VALUES (10, 'Rhea', false, false, 932.2, 4778637, NULL);
INSERT INTO public.planet VALUES (11, 'Proteus', true, false, 432.2, 578637, NULL);
INSERT INTO public.planet VALUES (12, 'Nereid', true, false, 832.2, 878637, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Betelgeuze', 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Antares', 1, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Deneb', 2, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Fomalhaut', 2, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Beta Tauri', 2, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Aludra', 3, NULL, NULL);
INSERT INTO public.star VALUES (7, 'Achemar', 4, NULL, NULL);


--
-- Data for Name: summary; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.summary VALUES ('addition', 1, 1);
INSERT INTO public.summary VALUES ('multiplication', 2, 2);
INSERT INTO public.summary VALUES ('division', 3, 3);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 1, false);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 1, false);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 1, false);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 1, true);


--
-- Name: summary_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.summary_id_seq', 1, false);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_relevance_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_relevance_key UNIQUE (relevance);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_size_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_size_key UNIQUE (size);


--
-- Name: planet name_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT name_unq UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_light_strength_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_light_strength_key UNIQUE (light_strength);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: summary summary_calculation_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.summary
    ADD CONSTRAINT summary_calculation_key UNIQUE (calculation);


--
-- Name: summary summary_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.summary
    ADD CONSTRAINT summary_pkey PRIMARY KEY (summary_id);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--


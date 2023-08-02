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
-- Name: astronomers; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astronomers (
    name character varying(30) NOT NULL,
    nacionality text,
    is_alive boolean,
    salary numeric(5,2),
    year_born integer,
    year_died integer,
    astronomers_id integer NOT NULL
);


ALTER TABLE public.astronomers OWNER TO freecodecamp;

--
-- Name: astronomers_atronomers_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astronomers_atronomers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astronomers_atronomers_id_seq OWNER TO freecodecamp;

--
-- Name: astronomers_atronomers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astronomers_atronomers_id_seq OWNED BY public.astronomers.astronomers_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    number_of_stars integer,
    radius numeric(5,2),
    diameter_light_years integer,
    localization text,
    has_black_hole boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    radius numeric(5,2),
    orbital_period_hours integer,
    localization text,
    has_atmosphere boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer,
    radius numeric(5,2),
    number_of_moons integer,
    localization text,
    has_moons boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    number_of_planets integer,
    radius numeric(5,2),
    localization text,
    has_planets boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: astronomers astronomers_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomers ALTER COLUMN astronomers_id SET DEFAULT nextval('public.astronomers_atronomers_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: astronomers; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astronomers VALUES ('Albert Einstein', 'German', false, 500.00, 1879, 1955, 1);
INSERT INTO public.astronomers VALUES ('Carl Sagan', 'North American', false, 700.00, 1934, 1996, 2);
INSERT INTO public.astronomers VALUES ('Marie Curie', 'Polish', false, 600.00, 1867, 1934, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 100000, 200.00, 220000, 'Near the Milky Way', true);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 4000000, 500.00, 100000, 'Local Group', true);
INSERT INTO public.galaxy VALUES (3, 'Whirlpool', 300000, 180.00, 60000, 'Canes Venatici constellation', false);
INSERT INTO public.galaxy VALUES (4, 'Centaurus A', 10000000, 300.00, 200000, 'Centaurus constellation', true);
INSERT INTO public.galaxy VALUES (5, 'Triangulum', 400000, 120.00, 90000, 'Near Andromeda', false);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 5000000, 210.00, 75000, 'Virgo constellation', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3, 0.27, 709, 'Orbiting Earth', true);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 0.03, 8, 'Orbiting Mars', false);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 0.02, 30, 'Orbiting Mars', false);
INSERT INTO public.moon VALUES (4, 'Ganymede', 5, 2.63, 1710, 'Orbiting Jupiter', true);
INSERT INTO public.moon VALUES (5, 'Europa', 5, 1.35, 853, 'Orbiting Jupiter', true);
INSERT INTO public.moon VALUES (6, 'Io', 5, 1.81, 432, 'Orbiting Jupiter', true);
INSERT INTO public.moon VALUES (7, 'Callisto', 5, 2.41, 4000, 'Orbiting Jupiter', false);
INSERT INTO public.moon VALUES (8, 'Titan', 6, 1.62, 3827, 'Orbiting Saturn', true);
INSERT INTO public.moon VALUES (9, 'Rhea', 6, 0.76, 459, 'Orbiting Saturn', false);
INSERT INTO public.moon VALUES (10, 'Dione', 6, 0.56, 377, 'Orbiting Saturn', false);
INSERT INTO public.moon VALUES (11, 'Enceladus', 6, 0.25, 33, 'Orbiting Saturn', false);
INSERT INTO public.moon VALUES (12, 'Miranda', 9, 0.24, 34, 'Orbiting Uranus', false);
INSERT INTO public.moon VALUES (13, 'Ariel', 9, 0.36, 58, 'Orbiting Uranus', false);
INSERT INTO public.moon VALUES (14, 'Umbriel', 9, 0.46, 72, 'Orbiting Uranus', false);
INSERT INTO public.moon VALUES (15, 'Triton', 8, 1.35, 1413, 'Orbiting Neptune', true);
INSERT INTO public.moon VALUES (16, 'Nereid', 8, 0.17, 360, 'Orbiting Neptune', false);
INSERT INTO public.moon VALUES (17, 'Pluto I Charon', 10, 0.09, 153, 'Orbiting Pluto', false);
INSERT INTO public.moon VALUES (18, 'Alpha Centauri Bb I', 10, 0.05, 10, 'Orbiting Alpha Centauri Bb', false);
INSERT INTO public.moon VALUES (19, 'Alpha Centauri Bb II', 10, 0.06, 15, 'Orbiting Alpha Centauri Bb', false);
INSERT INTO public.moon VALUES (20, 'Pandora I', 11, 0.02, 15, 'Orbiting Pandora', false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 0.38, 0, 'Inner Solar System', false);
INSERT INTO public.planet VALUES (2, 'Venus', 1, 0.95, 0, 'Inner Solar System', false);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 1.00, 1, 'Inner Solar System', true);
INSERT INTO public.planet VALUES (4, 'Mars', 1, 0.53, 2, 'Inner Solar System', true);
INSERT INTO public.planet VALUES (5, 'Jupiter', 2, 11.20, 79, 'Outer Solar System', true);
INSERT INTO public.planet VALUES (6, 'Saturn', 2, 9.45, 82, 'Outer Solar System', true);
INSERT INTO public.planet VALUES (7, 'Uranus', 2, 4.01, 27, 'Outer Solar System', true);
INSERT INTO public.planet VALUES (8, 'Neptune', 2, 3.88, 14, 'Outer Solar System', true);
INSERT INTO public.planet VALUES (9, 'Pluto', 3, 0.18, 5, 'Kuiper Belt', true);
INSERT INTO public.planet VALUES (10, 'Alpha Centauri Bb', 3, 0.21, 0, 'Alpha Centauri System', false);
INSERT INTO public.planet VALUES (11, 'Pandora', 5, 0.05, 2, 'Orbiting Alpha Centauri B', true);
INSERT INTO public.planet VALUES (12, 'Endor', 6, 0.07, 1, 'Orbiting Proxima Centauri', true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 2, 8, 1.00, 'Solar System', true);
INSERT INTO public.star VALUES (2, 'Sirius', 1, 2, 2.10, 'Canis Major', true);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 4, 3, 1.50, 'Alpha Centauri System', true);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 2, 0, 800.00, 'Orion', false);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 4, 1, 0.15, 'Alpha Centauri System', true);
INSERT INTO public.star VALUES (6, 'Polaris', 1, 0, 50.00, 'Ursa Minor', false);


--
-- Name: astronomers_atronomers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astronomers_atronomers_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: astronomers astronomers_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomers
    ADD CONSTRAINT astronomers_pkey PRIMARY KEY (astronomers_id);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id PRIMARY KEY (moon_id);


--
-- Name: astronomers not_null_astronomers; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomers
    ADD CONSTRAINT not_null_astronomers UNIQUE (name);


--
-- Name: moon not_null_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT not_null_moon_name UNIQUE (name);


--
-- Name: galaxy not_null_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT not_null_name UNIQUE (name);


--
-- Name: planet not_null_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT not_null_planet_name UNIQUE (name);


--
-- Name: star not_null_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT not_null_star_name UNIQUE (name);


--
-- Name: planet planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id PRIMARY KEY (planet_id);


--
-- Name: star star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id PRIMARY KEY (star_id);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--
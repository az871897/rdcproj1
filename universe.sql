--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    age_in_millions_of_years numeric(7,1) NOT NULL,
    has_life boolean NOT NULL,
    description text,
    number_of_star_systems integer NOT NULL
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
-- Name: life_stage; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.life_stage (
    life_stage_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    next_stage character varying(30)
);


ALTER TABLE public.life_stage OWNER TO freecodecamp;

--
-- Name: life_stage_life_stage_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.life_stage_life_stage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.life_stage_life_stage_id_seq OWNER TO freecodecamp;

--
-- Name: life_stage_life_stage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.life_stage_life_stage_id_seq OWNED BY public.life_stage.life_stage_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years numeric(7,1) NOT NULL,
    planet_id integer NOT NULL,
    star_id integer NOT NULL
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
    has_life boolean NOT NULL,
    age_in_millions_of_years numeric(7,1) NOT NULL,
    number_of_moons integer NOT NULL,
    star_id integer NOT NULL,
    planet_type_id integer NOT NULL
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
-- Name: planet_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_type (
    planet_type_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.planet_type OWNER TO freecodecamp;

--
-- Name: planet_type_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_type_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_type_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_type_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_type_planet_id_seq OWNED BY public.planet_type.planet_type_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years numeric(7,1) NOT NULL,
    number_of_planets integer NOT NULL,
    galaxy_id integer NOT NULL,
    total_orbiting_bodies integer NOT NULL
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: life_stage life_stage_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life_stage ALTER COLUMN life_stage_id SET DEFAULT nextval('public.life_stage_life_stage_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_type planet_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type ALTER COLUMN planet_type_id SET DEFAULT nextval('public.planet_type_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13610.0, true, 'where we are', 3200);
INSERT INTO public.galaxy VALUES (2, 'Ursa Major III', 11000.0, false, 'closest to us', 60);
INSERT INTO public.galaxy VALUES (3, 'Draco II', 10000.0, false, 'disputed', 14);
INSERT INTO public.galaxy VALUES (4, 'Tucana III', 13000.0, false, 'discovered in 2017', 26);
INSERT INTO public.galaxy VALUES (5, 'Segue I', 13000.0, false, 'one of the oldest in universe', 250);
INSERT INTO public.galaxy VALUES (6, 'Sagittarius dSph', 13800.0, false, 'discovered in 1994', 9);
INSERT INTO public.galaxy VALUES (7, 'gnosis', 15000.0, true, 'space-time loop', 1);


--
-- Data for Name: life_stage; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.life_stage VALUES (1, 'protostar', NULL, NULL);
INSERT INTO public.life_stage VALUES (2, 'sun-like star', NULL, NULL);
INSERT INTO public.life_stage VALUES (3, 'red giant', NULL, NULL);
INSERT INTO public.life_stage VALUES (4, 'planetary nebula', NULL, NULL);
INSERT INTO public.life_stage VALUES (5, 'white dwarf', NULL, NULL);
INSERT INTO public.life_stage VALUES (6, 'massive star', NULL, NULL);
INSERT INTO public.life_stage VALUES (7, 'red supergiant', NULL, NULL);
INSERT INTO public.life_stage VALUES (8, 'supernova', NULL, NULL);
INSERT INTO public.life_stage VALUES (9, 'black hole', NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'the moon', 4600.0, 3, 1);
INSERT INTO public.moon VALUES (2, 'ganymede', 4600.0, 5, 1);
INSERT INTO public.moon VALUES (3, 'io', 4500.0, 5, 1);
INSERT INTO public.moon VALUES (4, 'calisto', 4500.0, 5, 1);
INSERT INTO public.moon VALUES (5, 'europa', 4500.0, 5, 1);
INSERT INTO public.moon VALUES (6, 'titan', 4500.0, 6, 1);
INSERT INTO public.moon VALUES (7, 'enceladus', 4500.0, 6, 1);
INSERT INTO public.moon VALUES (8, 'mimas', 4500.0, 6, 1);
INSERT INTO public.moon VALUES (9, 'iapetus', 4500.0, 6, 1);
INSERT INTO public.moon VALUES (10, 'tethys', 4500.0, 6, 1);
INSERT INTO public.moon VALUES (11, 'dione', 4500.0, 6, 1);
INSERT INTO public.moon VALUES (12, 'rhea', 4500.0, 6, 1);
INSERT INTO public.moon VALUES (13, 'methone', 4000.0, 6, 1);
INSERT INTO public.moon VALUES (14, 'anthe', 4000.0, 6, 1);
INSERT INTO public.moon VALUES (15, 'pallene', 4000.0, 6, 1);
INSERT INTO public.moon VALUES (16, 'J1407b moon', 16.0, 12, 2);
INSERT INTO public.moon VALUES (17, 'WASP-12b moon', 5.0, 13, 3);
INSERT INTO public.moon VALUES (18, 'triton', 100.0, 8, 1);
INSERT INTO public.moon VALUES (19, 'thalassa', 100.0, 8, 1);
INSERT INTO public.moon VALUES (20, 'umbriel', 4500.0, 7, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mercury', false, 4600.0, 0, 1, 7);
INSERT INTO public.planet VALUES (2, 'venus', false, 4600.0, 0, 1, 7);
INSERT INTO public.planet VALUES (3, 'earth', true, 4600.0, 1, 1, 7);
INSERT INTO public.planet VALUES (4, 'mars', false, 4600.0, 2, 1, 7);
INSERT INTO public.planet VALUES (5, 'jupiter', false, 4600.0, 79, 1, 1);
INSERT INTO public.planet VALUES (6, 'saturn', false, 4600.0, 82, 1, 1);
INSERT INTO public.planet VALUES (7, 'uranus', false, 4600.0, 27, 1, 1);
INSERT INTO public.planet VALUES (8, 'nepture', false, 4600.0, 14, 1, 1);
INSERT INTO public.planet VALUES (9, 'pluto', false, 4600.0, 5, 1, 1);
INSERT INTO public.planet VALUES (10, 'jenni', true, 2600.0, 2, 3, 1);
INSERT INTO public.planet VALUES (11, 'marvin', true, 600.0, 1, 5, 6);
INSERT INTO public.planet VALUES (12, 'cleveland', false, 30.0, 2, 3, 6);
INSERT INTO public.planet VALUES (13, 'new hampshire', false, 150.0, 0, 6, 6);


--
-- Data for Name: planet_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_type VALUES (1, 'dry', 'no liquid molecules present');
INSERT INTO public.planet_type VALUES (2, 'gaseous', 'no visible solid or liquid matter');
INSERT INTO public.planet_type VALUES (3, 'volcanic', 'planetary surface 75% lava or magma');
INSERT INTO public.planet_type VALUES (4, 'water', 'no land masses');
INSERT INTO public.planet_type VALUES (5, 'sulphuric', 'mix of sulphuric acid and vapor');
INSERT INTO public.planet_type VALUES (6, 'cheese', 'mix of cheddar and gouda');
INSERT INTO public.planet_type VALUES (7, 'carbon', 'could be earth');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'the sun', 4600.0, 9, 1, 302);
INSERT INTO public.star VALUES (2, 'proxima centauri', 4853.0, 2, 1, 3);
INSERT INTO public.star VALUES (3, 'Rigil Kentaurus', 4723.0, 140, 1, 350);
INSERT INTO public.star VALUES (4, 'Toliman', 4722.0, 15, 1, 200);
INSERT INTO public.star VALUES (5, 'Barnard''s Star', 10000.1, 1, 1, 3);
INSERT INTO public.star VALUES (6, 'Luhman 16 A', 4500.0, 2, 1, 3);
INSERT INTO public.star VALUES (7, 'dubhe', 13520.2, 6, 2, 28);
INSERT INTO public.star VALUES (8, 'mizar', 12000.0, 3, 2, 8);
INSERT INTO public.star VALUES (9, 'alcor', 7005.2, 15, 2, 70);
INSERT INTO public.star VALUES (10, 'polaris', 500.0, 2, 1, 2);
INSERT INTO public.star VALUES (11, 'ariadne', 25.7, 100, 3, 6);
INSERT INTO public.star VALUES (12, 'diana', 25.6, 75, 3, 100);
INSERT INTO public.star VALUES (13, 'achilles', 300.1, 8, 4, 50);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: life_stage_life_stage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.life_stage_life_stage_id_seq', 9, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: planet_type_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_type_planet_id_seq', 7, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 20, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: life_stage life_stage_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life_stage
    ADD CONSTRAINT life_stage_name_key UNIQUE (name);


--
-- Name: life_stage life_stage_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life_stage
    ADD CONSTRAINT life_stage_pkey PRIMARY KEY (life_stage_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet_type planet_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_type_name_key UNIQUE (name);


--
-- Name: planet_type planet_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_type_pkey PRIMARY KEY (planet_type_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: planet planet_planet_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_type_fkey FOREIGN KEY (planet_type_id) REFERENCES public.planet_type(planet_type_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


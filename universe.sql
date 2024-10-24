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
-- Name: earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.earth (
    earth_id integer NOT NULL,
    name character varying NOT NULL,
    code integer NOT NULL
);


ALTER TABLE public.earth OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying NOT NULL,
    is_long boolean,
    code text NOT NULL,
    diameter_light_years integer,
    galaxy_id integer NOT NULL,
    star_id integer,
    reference text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying NOT NULL,
    age_years integer,
    moon_id integer NOT NULL,
    planet_id integer,
    code integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying NOT NULL,
    diameter_km integer,
    planet_id integer NOT NULL,
    star_id integer,
    moon_id integer,
    code integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying NOT NULL,
    code numeric NOT NULL,
    is_dead boolean,
    star_id integer NOT NULL,
    galaxy_id integer,
    planet_id integer,
    mass_m integer,
    temperature_k integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.earth VALUES (1, 'Aqui', 111);
INSERT INTO public.earth VALUES (2, 'Alla', 222);
INSERT INTO public.earth VALUES (3, 'De alla', 333);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky way', true, '123', 123, 1, NULL, 'wikipedia');
INSERT INTO public.galaxy VALUES ('LMC', false, '111', 111, 2, NULL, 'wikipedia');
INSERT INTO public.galaxy VALUES ('Andromeda', true, '222', 222, 3, NULL, 'wikipedia');
INSERT INTO public.galaxy VALUES ('Cigar Galaxy', true, '333', 333, 4, NULL, 'wikipedia');
INSERT INTO public.galaxy VALUES ('Pinwheel', false, '444', 444, 5, NULL, 'wikipedia');
INSERT INTO public.galaxy VALUES ('Sombrero', true, '555', 555, 6, NULL, 'wikipedia');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Phobos', 432178908, 1, 1, 111);
INSERT INTO public.moon VALUES ('Deimos', 432178908, 2, 1, 222);
INSERT INTO public.moon VALUES ('Io', 432178908, 3, 1, 333);
INSERT INTO public.moon VALUES ('Europa', 432178908, 4, 1, 444);
INSERT INTO public.moon VALUES ('Ganymede', 432178908, 5, 3, 555);
INSERT INTO public.moon VALUES ('Callisto', 432178908, 6, 3, 666);
INSERT INTO public.moon VALUES ('Amalthea', 432178908, 7, 3, 777);
INSERT INTO public.moon VALUES ('Himalia', 432178908, 8, 1, 888);
INSERT INTO public.moon VALUES ('Elara', 432178908, 9, 1, 999);
INSERT INTO public.moon VALUES ('Pasiphae', 432178908, 10, 1, 112);
INSERT INTO public.moon VALUES ('Sinope', 432178908, 11, 1, 123);
INSERT INTO public.moon VALUES ('Lysithea', 432178908, 12, 1, 113);
INSERT INTO public.moon VALUES ('Carme', 432178908, 13, 1, 114);
INSERT INTO public.moon VALUES ('Ananke', 432178908, 14, 1, 115);
INSERT INTO public.moon VALUES ('PhoLedabos', 432178908, 15, 1, 116);
INSERT INTO public.moon VALUES ('Adrastea', 432178908, 16, 2, 117);
INSERT INTO public.moon VALUES ('Metis', 432178908, 17, 2, 118);
INSERT INTO public.moon VALUES ('Callirrhoe', 432178908, 18, 2, 119);
INSERT INTO public.moon VALUES ('Themisto', 432178908, 19, 2, 120);
INSERT INTO public.moon VALUES ('Megaclite', 432178908, 20, 2, 121);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Earth', 111, 1, 1, NULL, 111);
INSERT INTO public.planet VALUES ('Saturno', 222, 2, 1, NULL, 222);
INSERT INTO public.planet VALUES ('Pluton', 333, 3, 1, NULL, 333);
INSERT INTO public.planet VALUES ('Jupiter', 444, 4, 1, NULL, 444);
INSERT INTO public.planet VALUES ('Mercury', 555, 5, 1, NULL, 555);
INSERT INTO public.planet VALUES ('Venus', 666, 13, 6, NULL, 666);
INSERT INTO public.planet VALUES ('Neptune', 777, 7, 1, NULL, 777);
INSERT INTO public.planet VALUES ('Makemake', 888, 8, 3, NULL, 888);
INSERT INTO public.planet VALUES ('Eris', 999, 9, 3, NULL, 999);
INSERT INTO public.planet VALUES ('Ceres', 123, 10, 3, NULL, 123);
INSERT INTO public.planet VALUES ('Uranus', 321, 11, 2, NULL, 312);
INSERT INTO public.planet VALUES ('Uranus', 322, 12, 2, NULL, 322);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Solar system', 111, false, 1, 1, NULL, 111, 111);
INSERT INTO public.star VALUES ('Alpha Centauri', 222, false, 2, 1, NULL, 222, 222);
INSERT INTO public.star VALUES ('Barnards Star', 333, false, 3, 1, NULL, 333, 333);
INSERT INTO public.star VALUES ('Luhman 16', 444, false, 4, 2, NULL, 444, 444);
INSERT INTO public.star VALUES ('Wolf 359', 555, false, 5, 2, NULL, 555, 555);
INSERT INTO public.star VALUES ('Alpha Canis Majoris', 666, false, 6, 2, NULL, 666, 666);
INSERT INTO public.star VALUES ('Ross 154', 777, false, 7, 3, NULL, 777, 777);
INSERT INTO public.star VALUES ('Ross 248', 888, false, 8, 3, NULL, 888, 888);


--
-- Name: earth earth_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_code_key UNIQUE (code);


--
-- Name: earth earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_pkey PRIMARY KEY (earth_id);


--
-- Name: galaxy galaxy_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_code_key UNIQUE (code);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_code_key UNIQUE (code);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_code_key UNIQUE (code);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_code_key UNIQUE (code);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy galaxy_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


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
-- Name: star star_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--



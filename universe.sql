--
-- PostgreSQL database dump
--

-- Dumped from database version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)

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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    name character varying(30),
    constellation_id integer NOT NULL,
    year_of_discovery numeric NOT NULL,
    shape text
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_name character varying(30),
    galaxy_id integer NOT NULL,
    year_of_discovery numeric,
    number_of_stars_bn integer NOT NULL,
    diameter_light_years integer,
    name character varying(30)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30),
    moon_id integer NOT NULL,
    year_of_discovery numeric,
    diameter_km integer NOT NULL,
    human_life boolean,
    planet_name character varying(30)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_name character varying(30),
    planet_id integer NOT NULL,
    year_of_discovery integer,
    age numeric NOT NULL,
    earth_distance_km bigint,
    human_life boolean,
    star_name character varying(30),
    name character varying(30)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_name character varying(40),
    star_id integer NOT NULL,
    year_of_discovery numeric,
    age integer NOT NULL,
    galaxy_name character varying(30),
    name character varying(30)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES ('Southern Cross', 1, -2069, 'Cross');
INSERT INTO public.constellation VALUES ('Orion', 2, -2000, 'Hunter');
INSERT INTO public.constellation VALUES ('Ursa Major', 3, -3000, 'Bear');
INSERT INTO public.constellation VALUES ('Cancer', 4, -2000, 'Crab');
INSERT INTO public.constellation VALUES ('Leo', 5, -2000, 'Lion');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 1, 1610, 350, 100000, 'Milky Way');
INSERT INTO public.galaxy VALUES ('Andromeda', 2, 964, 1000, 220000, 'Andromeda');
INSERT INTO public.galaxy VALUES ('Triangulum', 3, 1604, 50, 60000, 'Triangulum');
INSERT INTO public.galaxy VALUES ('Sculptor', 4, 1783, 20, 70000, 'Sculptor');
INSERT INTO public.galaxy VALUES ('Sombrero', 5, 1781, 10, 60000, 'Sombrero');
INSERT INTO public.galaxy VALUES ('Ring Nebula', 6, 1785, 10, 100000, 'Ring Nebula');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon', 1, -2069, 3474, false, 'Earth');
INSERT INTO public.moon VALUES ('Phobos', 2, 1877, 22, false, 'Mars');
INSERT INTO public.moon VALUES ('Deimos', 3, 1877, 13, false, 'Mars');
INSERT INTO public.moon VALUES ('Io', 4, 1610, 3462, false, 'Jupiter');
INSERT INTO public.moon VALUES ('Europa', 5, 1610, 3121, false, 'Jupiter');
INSERT INTO public.moon VALUES ('Ganymede', 6, 1610, 5262, false, 'Jupiter');
INSERT INTO public.moon VALUES ('Callisto', 7, 1610, 4820, false, 'Jupiter');
INSERT INTO public.moon VALUES ('Titan', 8, 1655, 5150, false, 'Saturn');
INSERT INTO public.moon VALUES ('Rhea', 9, 1672, 1528, false, 'Saturn');
INSERT INTO public.moon VALUES ('Iapetus', 10, 1671, 1470, false, 'Saturn');
INSERT INTO public.moon VALUES ('Dione', 11, 1684, 1122, false, 'Saturn');
INSERT INTO public.moon VALUES ('Enceladus', 12, 1789, 505, false, 'Saturn');
INSERT INTO public.moon VALUES ('Mimas', 13, 1789, 400, false, 'Saturn');
INSERT INTO public.moon VALUES ('Tethys', 14, 1684, 1062, false, 'Saturn');
INSERT INTO public.moon VALUES ('Hyperion', 15, 1848, 270, false, 'Saturn');
INSERT INTO public.moon VALUES ('Phoebe', 16, 1898, 225, false, 'Saturn');
INSERT INTO public.moon VALUES ('Miranda', 17, 1948, 472, false, 'Uranus');
INSERT INTO public.moon VALUES ('Ariel', 18, 1851, 1200, false, 'Uranus');
INSERT INTO public.moon VALUES ('Umbriel', 19, 1851, 1170, false, 'Uranus');
INSERT INTO public.moon VALUES ('Titania', 20, 1787, 1578, false, 'Uranus');
INSERT INTO public.moon VALUES ('Oberon', 21, 1787, 1526, false, 'Uranus');
INSERT INTO public.moon VALUES ('Triton', 22, 1846, 2700, false, 'Neptune');
INSERT INTO public.moon VALUES ('Nereid', 23, 1949, 340, false, 'Neptune');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Mercury', 1, -460, 4600000000, 57900000, false, 'R Andromedae', 'Mercury');
INSERT INTO public.planet VALUES ('Venus', 2, -2000, 4600000000, 41400000, false, 'V383 Tri', 'Venus');
INSERT INTO public.planet VALUES ('Mars', 4, -2400, 4600000000, 225000000, false, 'V383 Tri', 'Mars');
INSERT INTO public.planet VALUES ('Saturn', 6, -2700, 4600000000, 1400000000, false, 'R Andromedae', 'Saturn');
INSERT INTO public.planet VALUES ('Uranus', 7, 1781, 4600000000, 2800000000, false, 'HD 38029', 'Uranus');
INSERT INTO public.planet VALUES ('Neptune', 8, 1846, 4600000000, 4500000000, false, 'HD 38029', 'Neptune');
INSERT INTO public.planet VALUES ('Earth', 3, NULL, 4600000000, 0, true, 'S Doradus', 'Earth');
INSERT INTO public.planet VALUES ('TRAPPIST-1d', 9, 2016, 4600000000, 1500000, false, 'Sombrero', 'TRAPPIST-1d');
INSERT INTO public.planet VALUES ('TRAPPIST-1e', 10, 2016, 460000000, 1300000, false, 'Sombrero', 'TRAPPIST-1e');
INSERT INTO public.planet VALUES ('Proxima b', 11, 2016, 4500000000, 4200000, false, 'SAO 206462', 'Proxima b');
INSERT INTO public.planet VALUES ('Gliese 832 c', 12, 2014, 4500000000, 5900000, false, 'SAO 206462', 'Gliese 832 c');
INSERT INTO public.planet VALUES ('Jupiter', 5, 1610, 4900000000, 630000000, false, 'S Doradus', 'Jupiter');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('S Doradus', 1, 1837, 1, 'Milky Way', 'S Doradus');
INSERT INTO public.star VALUES ('R Andromedae', 2, 1885, 10, 'Andromeda', 'R Andromedae');
INSERT INTO public.star VALUES ('V383 Tri', 3, 1917, 500, 'Triangulum', 'V383 Tri');
INSERT INTO public.star VALUES ('HD 38029', 4, 1897, 10000, 'Sculptor', 'HD 38029');
INSERT INTO public.star VALUES ('Sombrero', 5, 1781, 10000, 'Sombrero', 'Sombrero');
INSERT INTO public.star VALUES ('SAO 206462', 6, 1917, 10000, 'Ring Nebula', 'SAO 206462');


--
-- Name: constellation constellation_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_id PRIMARY KEY (constellation_id);


--
-- Name: constellation constellation_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name UNIQUE (name);


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
-- Name: moon moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name UNIQUE (name);


--
-- Name: galaxy name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name_unique UNIQUE (galaxy_name);


--
-- Name: planet planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id PRIMARY KEY (planet_id);


--
-- Name: planet planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name UNIQUE (planet_name);


--
-- Name: star star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id PRIMARY KEY (star_id);


--
-- Name: star star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name UNIQUE (star_name);


--
-- Name: planet closest_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT closest_star FOREIGN KEY (star_name) REFERENCES public.star(star_name);


--
-- Name: star found_in_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT found_in_galaxy FOREIGN KEY (galaxy_name) REFERENCES public.galaxy(galaxy_name);


--
-- Name: moon moon_planet_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_name_fkey FOREIGN KEY (planet_name) REFERENCES public.planet(planet_name);


--
-- PostgreSQL database dump complete
--


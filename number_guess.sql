--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 17, 9);
INSERT INTO public.games VALUES (2, 18, 845);
INSERT INTO public.games VALUES (3, 18, 933);
INSERT INTO public.games VALUES (4, 19, 364);
INSERT INTO public.games VALUES (5, 19, 123);
INSERT INTO public.games VALUES (6, 18, 737);
INSERT INTO public.games VALUES (7, 18, 765);
INSERT INTO public.games VALUES (8, 18, 971);
INSERT INTO public.games VALUES (9, 20, 505);
INSERT INTO public.games VALUES (10, 20, 29);
INSERT INTO public.games VALUES (11, 21, 789);
INSERT INTO public.games VALUES (12, 21, 570);
INSERT INTO public.games VALUES (13, 20, 636);
INSERT INTO public.games VALUES (14, 20, 320);
INSERT INTO public.games VALUES (15, 20, 133);
INSERT INTO public.games VALUES (16, 17, 8);
INSERT INTO public.games VALUES (17, 22, 918);
INSERT INTO public.games VALUES (18, 22, 368);
INSERT INTO public.games VALUES (19, 23, 506);
INSERT INTO public.games VALUES (20, 23, 287);
INSERT INTO public.games VALUES (21, 22, 417);
INSERT INTO public.games VALUES (22, 22, 874);
INSERT INTO public.games VALUES (23, 22, 735);
INSERT INTO public.games VALUES (24, 24, 933);
INSERT INTO public.games VALUES (25, 24, 85);
INSERT INTO public.games VALUES (26, 25, 412);
INSERT INTO public.games VALUES (27, 25, 118);
INSERT INTO public.games VALUES (28, 24, 847);
INSERT INTO public.games VALUES (29, 24, 219);
INSERT INTO public.games VALUES (30, 24, 969);
INSERT INTO public.games VALUES (31, 26, 878);
INSERT INTO public.games VALUES (32, 26, 911);
INSERT INTO public.games VALUES (33, 27, 284);
INSERT INTO public.games VALUES (34, 27, 441);
INSERT INTO public.games VALUES (35, 26, 579);
INSERT INTO public.games VALUES (36, 26, 292);
INSERT INTO public.games VALUES (37, 26, 9);
INSERT INTO public.games VALUES (38, 28, 231);
INSERT INTO public.games VALUES (39, 28, 568);
INSERT INTO public.games VALUES (40, 29, 622);
INSERT INTO public.games VALUES (41, 29, 376);
INSERT INTO public.games VALUES (42, 28, 377);
INSERT INTO public.games VALUES (43, 28, 559);
INSERT INTO public.games VALUES (44, 28, 745);
INSERT INTO public.games VALUES (45, 30, 254);
INSERT INTO public.games VALUES (46, 30, 1000);
INSERT INTO public.games VALUES (47, 31, 684);
INSERT INTO public.games VALUES (48, 31, 958);
INSERT INTO public.games VALUES (49, 30, 11);
INSERT INTO public.games VALUES (50, 30, 142);
INSERT INTO public.games VALUES (51, 30, 441);
INSERT INTO public.games VALUES (52, 32, 566);
INSERT INTO public.games VALUES (53, 32, 759);
INSERT INTO public.games VALUES (54, 33, 368);
INSERT INTO public.games VALUES (55, 33, 224);
INSERT INTO public.games VALUES (56, 32, 26);
INSERT INTO public.games VALUES (57, 32, 453);
INSERT INTO public.games VALUES (58, 32, 920);
INSERT INTO public.games VALUES (59, 34, 917);
INSERT INTO public.games VALUES (60, 34, 776);
INSERT INTO public.games VALUES (61, 35, 279);
INSERT INTO public.games VALUES (62, 35, 997);
INSERT INTO public.games VALUES (63, 34, 171);
INSERT INTO public.games VALUES (64, 34, 590);
INSERT INTO public.games VALUES (65, 34, 564);
INSERT INTO public.games VALUES (66, 36, 294);
INSERT INTO public.games VALUES (67, 36, 517);
INSERT INTO public.games VALUES (68, 37, 537);
INSERT INTO public.games VALUES (69, 37, 30);
INSERT INTO public.games VALUES (70, 36, 567);
INSERT INTO public.games VALUES (71, 36, 550);
INSERT INTO public.games VALUES (72, 36, 708);
INSERT INTO public.games VALUES (73, 38, 618);
INSERT INTO public.games VALUES (74, 38, 456);
INSERT INTO public.games VALUES (75, 39, 850);
INSERT INTO public.games VALUES (76, 39, 57);
INSERT INTO public.games VALUES (77, 38, 991);
INSERT INTO public.games VALUES (78, 38, 634);
INSERT INTO public.games VALUES (79, 38, 538);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1782252620110');
INSERT INTO public.users VALUES (2, 'user_1782252620109');
INSERT INTO public.users VALUES (3, 'user_1782253219679');
INSERT INTO public.users VALUES (5, 'user_1782253219678');
INSERT INTO public.users VALUES (10, 'user_1782253260028');
INSERT INTO public.users VALUES (11, 'user_1782253260027');
INSERT INTO public.users VALUES (12, 'user_1782253296722');
INSERT INTO public.users VALUES (13, 'user_1782253296721');
INSERT INTO public.users VALUES (14, 'Jay');
INSERT INTO public.users VALUES (15, 'user_1782253640490');
INSERT INTO public.users VALUES (16, 'user_1782253640489');
INSERT INTO public.users VALUES (17, 'Tim');
INSERT INTO public.users VALUES (18, 'user_1782254099594');
INSERT INTO public.users VALUES (19, 'user_1782254099593');
INSERT INTO public.users VALUES (20, 'user_1782254140084');
INSERT INTO public.users VALUES (21, 'user_1782254140083');
INSERT INTO public.users VALUES (22, 'user_1782254265779');
INSERT INTO public.users VALUES (23, 'user_1782254265778');
INSERT INTO public.users VALUES (24, 'user_1782254282454');
INSERT INTO public.users VALUES (25, 'user_1782254282453');
INSERT INTO public.users VALUES (26, 'user_1782254313858');
INSERT INTO public.users VALUES (27, 'user_1782254313857');
INSERT INTO public.users VALUES (28, 'user_1782254337781');
INSERT INTO public.users VALUES (29, 'user_1782254337780');
INSERT INTO public.users VALUES (30, 'user_1782254351827');
INSERT INTO public.users VALUES (31, 'user_1782254351826');
INSERT INTO public.users VALUES (32, 'user_1782254647271');
INSERT INTO public.users VALUES (33, 'user_1782254647270');
INSERT INTO public.users VALUES (34, 'user_1782256329531');
INSERT INTO public.users VALUES (35, 'user_1782256329530');
INSERT INTO public.users VALUES (36, 'user_1782256359073');
INSERT INTO public.users VALUES (37, 'user_1782256359072');
INSERT INTO public.users VALUES (38, 'user_1782256382956');
INSERT INTO public.users VALUES (39, 'user_1782256382955');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 79, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 39, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--


--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3


CREATE TABLE public.ammo (
    id integer NOT NULL,
    title character varying,
    price integer,
    count integer
);


--
-- TOC entry 240 (class 1259 OID 16627)
-- Name: ammo_buy; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ammo_buy (
    id integer NOT NULL,
    user_id integer,
    ammo_id integer,
    count integer,
    price integer,
    "time" timestamp without time zone
);



--
-- TOC entry 239 (class 1259 OID 16626)
-- Name: ammo_buy_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.ammo_buy ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.ammo_buy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 237 (class 1259 OID 16613)
-- Name: ammo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.ammo ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.ammo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 221 (class 1259 OID 16439)
-- Name: box; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.box (
    id integer NOT NULL,
    status boolean DEFAULT true,
    room_id integer,
    max_range integer,
    min_range integer
);



--
-- TOC entry 220 (class 1259 OID 16438)
-- Name: box_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.box ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.box_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 217 (class 1259 OID 16420)
-- Name: employee; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee (
    id integer NOT NULL,
    user_id integer,
    salary integer
);



--
-- TOC entry 216 (class 1259 OID 16419)
-- Name: employee_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.employee ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.employee_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 232 (class 1259 OID 16559)
-- Name: masterclass; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.masterclass (
    id integer NOT NULL,
    employee_id integer,
    room_id integer,
    programm_id integer,
    date date,
    users_count integer,
    price integer,
    "time" integer[]
);



--
-- TOC entry 231 (class 1259 OID 16558)
-- Name: masterclass_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.masterclass ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.masterclass_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 226 (class 1259 OID 16509)
-- Name: news; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.news (
    id integer NOT NULL,
    title character varying,
    text character varying,
    image_url character varying,
    "time" timestamp without time zone
);



--
-- TOC entry 225 (class 1259 OID 16508)
-- Name: news_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.news ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.news_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 228 (class 1259 OID 16526)
-- Name: programm; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.programm (
    id integer NOT NULL,
    title character varying,
    text character varying,
    "time" integer,
    image_url character varying,
    price integer
);



--
-- TOC entry 227 (class 1259 OID 16525)
-- Name: programm_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.programm ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.programm_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 242 (class 1259 OID 16653)
-- Name: refreshtoken; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.refreshtoken (
    id integer NOT NULL,
    user_email character varying,
    refreshtoken character varying
);



--
-- TOC entry 241 (class 1259 OID 16652)
-- Name: refreshtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.refreshtoken ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.refreshtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 219 (class 1259 OID 16433)
-- Name: room; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.room (
    id integer NOT NULL,
    number integer,
    status character varying,
    type character varying
);



--
-- TOC entry 218 (class 1259 OID 16432)
-- Name: room_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.room ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.room_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 224 (class 1259 OID 16479)
-- Name: session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.session (
    id integer NOT NULL,
    date timestamp without time zone,
    "time" integer,
    user_id integer,
    box_id integer,
    employee_id integer,
    weapon_id integer,
    status character varying
);



--
-- TOC entry 223 (class 1259 OID 16478)
-- Name: session_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.session ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.session_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 230 (class 1259 OID 16534)
-- Name: timetable; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.timetable (
    id integer NOT NULL,
    room_id integer,
    employee_id integer,
    date date
);


--
-- TOC entry 229 (class 1259 OID 16533)
-- Name: timetable_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.timetable ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.timetable_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 215 (class 1259 OID 16400)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    first_name character varying,
    last_name character varying,
    email character varying,
    certificate_002 boolean DEFAULT false,
    date_of_birth date,
    password character varying,
    ammo_score integer DEFAULT 0,
    role character varying DEFAULT USER
);



--
-- TOC entry 214 (class 1259 OID 16399)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.users ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 236 (class 1259 OID 16598)
-- Name: usersinmc; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usersinmc (
    id integer NOT NULL,
    user_id integer,
    masterclass_id integer
);



--
-- TOC entry 235 (class 1259 OID 16597)
-- Name: usersinmc_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.usersinmc ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.usersinmc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 234 (class 1259 OID 16582)
-- Name: weaponinprog; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.weaponinprog (
    id integer NOT NULL,
    weapon_id integer,
    programm_id integer
);



--
-- TOC entry 233 (class 1259 OID 16581)
-- Name: weaponinmc_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.weaponinprog ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.weaponinmc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 222 (class 1259 OID 16450)
-- Name: weapons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.weapons (
    id integer NOT NULL,
    title character varying,
    count integer,
    price integer,
    type character varying,
    ammo_id integer
);



--
-- TOC entry 3460 (class 0 OID 16614)
-- Dependencies: 238
-- Data for Name: ammo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.ammo (id, title, price, count) OVERRIDING SYSTEM VALUE VALUES (1, '9x19mm', 1, 234);
INSERT INTO public.ammo (id, title, price, count) OVERRIDING SYSTEM VALUE VALUES (2, '7.62x32mm', 3, 432);
INSERT INTO public.ammo (id, title, price, count) OVERRIDING SYSTEM VALUE VALUES (3, '7.62x39mm', 3, 423);
INSERT INTO public.ammo (id, title, price, count) OVERRIDING SYSTEM VALUE VALUES (4, '9mm', 1, 52);
INSERT INTO public.ammo (id, title, price, count) OVERRIDING SYSTEM VALUE VALUES (5, '5.7x28mm', 1, 523);
INSERT INTO public.ammo (id, title, price, count) OVERRIDING SYSTEM VALUE VALUES (6, '5.56x45mm', 2, 3);


--
-- TOC entry 3462 (class 0 OID 16627)
-- Dependencies: 240
-- Data for Name: ammo_buy; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.ammo_buy (id, user_id, ammo_id, count, price, "time") OVERRIDING SYSTEM VALUE VALUES (41, 5, 2, 23, 35, '2023-06-15 23:54:27.487');


--
-- TOC entry 3443 (class 0 OID 16439)
-- Dependencies: 221
-- Data for Name: box; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.box (id, status, room_id, max_range, min_range) OVERRIDING SYSTEM VALUE VALUES (1, true, 1, 50, 10);
INSERT INTO public.box (id, status, room_id, max_range, min_range) OVERRIDING SYSTEM VALUE VALUES (2, true, 1, 50, 10);
INSERT INTO public.box (id, status, room_id, max_range, min_range) OVERRIDING SYSTEM VALUE VALUES (3, true, 1, 50, 10);
INSERT INTO public.box (id, status, room_id, max_range, min_range) OVERRIDING SYSTEM VALUE VALUES (4, true, 1, 50, 10);
INSERT INTO public.box (id, status, room_id, max_range, min_range) OVERRIDING SYSTEM VALUE VALUES (5, false, 1, 50, 10);
INSERT INTO public.box (id, status, room_id, max_range, min_range) OVERRIDING SYSTEM VALUE VALUES (7, true, 2, 79, 20);
INSERT INTO public.box (id, status, room_id, max_range, min_range) OVERRIDING SYSTEM VALUE VALUES (8, true, 2, 79, 20);
INSERT INTO public.box (id, status, room_id, max_range, min_range) OVERRIDING SYSTEM VALUE VALUES (9, true, 2, 79, 20);
INSERT INTO public.box (id, status, room_id, max_range, min_range) OVERRIDING SYSTEM VALUE VALUES (10, true, 2, 79, 20);
INSERT INTO public.box (id, status, room_id, max_range, min_range) OVERRIDING SYSTEM VALUE VALUES (11, true, 2, 79, 20);
INSERT INTO public.box (id, status, room_id, max_range, min_range) OVERRIDING SYSTEM VALUE VALUES (12, true, 3, 159, 25);


--
-- TOC entry 3439 (class 0 OID 16420)
-- Dependencies: 217
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.employee (id, user_id, salary) OVERRIDING SYSTEM VALUE VALUES (1, 5, 3333);


--
-- TOC entry 3454 (class 0 OID 16559)
-- Dependencies: 232
-- Data for Name: masterclass; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3448 (class 0 OID 16509)
-- Dependencies: 226
-- Data for Name: news; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.news (id, title, text, image_url, "time") OVERRIDING SYSTEM VALUE VALUES (1, 'Открытие', 'мы открылись', 'https://tir-nn.ru/wp-content/uploads/2018/04/02.jpg', '2023-05-12 15:25:00');
INSERT INTO public.news (id, title, text, image_url, "time") OVERRIDING SYSTEM VALUE VALUES (2, 'Акция', 'Те, кто верит – налетай. Те, кто жадный – убегай.
Отделяем мух от котлет, а тех, кто мне верит – от тех, кто нет.
Для вас свеженький товарчик, а для нас – солидный наварчик.
Товар без изъяна, товар без обмана. Надёжный, как пружина от дивана!', 'https://avatars.dzeninfra.ru/get-zen_doc/1587710/pub_5e291dc4cddb718258d440f7_5e2920b642b03d00b06955f5/scale_1200', '2023-05-12 15:25:00');
INSERT INTO public.news (id, title, text, image_url, "time") OVERRIDING SYSTEM VALUE VALUES (3, 'Приём на работу', 'В честь открытия приглашаем работать в наш дружный коллектив
', 'https://businessman.ru/static/img/a/18274/137721/2156.jpg', '2023-05-20 23:00:00');
INSERT INTO public.news (id, title, text, image_url, "time") OVERRIDING SYSTEM VALUE VALUES (4, 'День котиков', 'В честь дня котиков дарим плюшевого котика первому посетителю, который попадёт в центр мишени на расстоянии 50 метров', 'https://th.bing.com/th/id/R.38dd373d27e74f91b1933c127105b644?rik=VfIgQ3PRcLhosg&pid=ImgRaw&r=0', '2023-05-20 23:00:00');


--
-- TOC entry 3450 (class 0 OID 16526)
-- Dependencies: 228
-- Data for Name: programm; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.programm (id, title, text, "time", image_url, price) OVERRIDING SYSTEM VALUE VALUES (1, 'Современное оружие', 'всего за 1 час мы научим вас базовым знаниям о обращении с 3 современными видами оружия', 1, 'https://i.ytimg.com/vi/3_geVg_CJIA/maxresdefault.jpg', 4500);
INSERT INTO public.programm (id, title, text, "time", image_url, price) OVERRIDING SYSTEM VALUE VALUES (2, 'Современное оружие - максимум', 'всего за 2 часа мы обучим вас владению 6 видами огнестрельного оружия', 2, 'https://th.bing.com/th/id/OIP.r3l5ldIqMKstBI9jEhWFbgHaE7?pid=ImgDet&rs=1', 7800);
INSERT INTO public.programm (id, title, text, "time", image_url, price) OVERRIDING SYSTEM VALUE VALUES (3, 'Джон уик', 'Научим вас ', 3, 'https://data-vykhoda.su/wp-content/uploads/2020/01/kadry-dzhon-uik-4.jpg', 18000);


--
-- TOC entry 3464 (class 0 OID 16653)
-- Dependencies: 242
-- Data for Name: refreshtoken; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.refreshtoken (id, user_email, refreshtoken) OVERRIDING SYSTEM VALUE VALUES (4, 'gvido1982@mail.ru', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJndmlkbzE5ODJAbWFpbC5ydSIsInJvbGVzIjpbImFkbWluIl0sImlhdCI6MTY4Njg3MzgyNiwiZXhwIjoxNjg3NDA2Mjc5fQ.pTdRaUO5QkkNlkvGWLpu4R-LiAC0dRyCWjeibUJZu5k');
INSERT INTO public.refreshtoken (id, user_email, refreshtoken) OVERRIDING SYSTEM VALUE VALUES (6, 'gvido1982@mail.ru', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJndmlkbzE5ODJAbWFpbC5ydSIsInJvbGVzIjpbImFkbWluIl0sImlhdCI6MTY4Njg3NDk3NSwiZXhwIjoxNjg3NDA3NDI5fQ.FkavUXlfDTGIOAi1SD06xslnYAnwkYbALTbcioPrxaI');
INSERT INTO public.refreshtoken (id, user_email, refreshtoken) OVERRIDING SYSTEM VALUE VALUES (8, 'gvido1982@mail.ru', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJndmlkbzE5ODJAbWFpbC5ydSIsInJvbGVzIjpbImFkbWluIl0sImlhdCI6MTY4Njg3NTEzMiwiZXhwIjoxNjg3NDA3NTg2fQ.ggP1BJRbkbo5hhRqQENCP3f6iHCUsEhsimLc7mRYbIQ');
INSERT INTO public.refreshtoken (id, user_email, refreshtoken) OVERRIDING SYSTEM VALUE VALUES (10, 'gvido1982@mail.ru', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJndmlkbzE5ODJAbWFpbC5ydSIsInJvbGVzIjpbImFkbWluIl0sImlhdCI6MTY4Njg3NTQxOSwiZXhwIjoxNjg3NDA3ODcyfQ.juqSv-LATWLzRa2sD-n2L9QJ1gteiShhKjZCYs0HdNQ');
INSERT INTO public.refreshtoken (id, user_email, refreshtoken) OVERRIDING SYSTEM VALUE VALUES (12, 'gvido1982@mail.ru', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJndmlkbzE5ODJAbWFpbC5ydSIsInJvbGVzIjpbImFkbWluIl0sImlhdCI6MTY4Njg3NTU1OCwiZXhwIjoxNjg3NDA4MDEyfQ.W81NUpVI9PDhXjCrQKwHHc9POiLRRDZEr_cqEJ-u_Oc');
INSERT INTO public.refreshtoken (id, user_email, refreshtoken) OVERRIDING SYSTEM VALUE VALUES (14, 'gvido1982@mail.ru', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJndmlkbzE5ODJAbWFpbC5ydSIsInJvbGVzIjpbImFkbWluIl0sImlhdCI6MTY4Njg3NTY4NSwiZXhwIjoxNjg3NDA4MTM5fQ.M3x3dUqvRKiSCHGXLfTSSoEQJkGBoU6tM3Wqq60MyEw');
INSERT INTO public.refreshtoken (id, user_email, refreshtoken) OVERRIDING SYSTEM VALUE VALUES (16, 'gvido1982@mail.ru', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJndmlkbzE5ODJAbWFpbC5ydSIsInJvbGVzIjpbImFkbWluIl0sImlhdCI6MTY4Njg3NTc1NywiZXhwIjoxNjg3NDA4MjEwfQ.KyQI4r373oFE9CIRnJpl-rMoCADPQXsCcygYD1XwjyM');
INSERT INTO public.refreshtoken (id, user_email, refreshtoken) OVERRIDING SYSTEM VALUE VALUES (18, 'gvido1982@mail.ru', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJndmlkbzE5ODJAbWFpbC5ydSIsInJvbGVzIjpbImFkbWluIl0sImlhdCI6MTY4Njg3NTgxNywiZXhwIjoxNjg3NDA4MjcwfQ.lwntNomo2QqXJYCu4oQznBHP6S8H6M8CBhXQvuCk6FI');
INSERT INTO public.refreshtoken (id, user_email, refreshtoken) OVERRIDING SYSTEM VALUE VALUES (20, 'gvido1982@mail.ru', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJndmlkbzE5ODJAbWFpbC5ydSIsInJvbGVzIjpbImFkbWluIl0sImlhdCI6MTY4Njg3NTk1OSwiZXhwIjoxNjg3NDA4NDEzfQ.BN6ZeCtoi1W5zeX9XIWU_EDMdukJa_932A_y38V3Ppo');
INSERT INTO public.refreshtoken (id, user_email, refreshtoken) OVERRIDING SYSTEM VALUE VALUES (22, 'gvido1982@mail.ru', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJndmlkbzE5ODJAbWFpbC5ydSIsInJvbGVzIjpbImFkbWluIl0sImlhdCI6MTY4Njg3NjA0MSwiZXhwIjoxNjg3NDA4NDk0fQ.J__VpseqZZxL_pc7HAxiKksOoPXZVdUG-yNhvgw3c1g');
INSERT INTO public.refreshtoken (id, user_email, refreshtoken) OVERRIDING SYSTEM VALUE VALUES (23, 'gvido1982@mail.ru', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJndmlkbzE5ODJAbWFpbC5ydSIsInJvbGVzIjpbImFkbWluIl0sImlhdCI6MTY4Njg3NjA5MCwiZXhwIjoxNjg3NDA4NTQ0fQ.ldtqhJmIPjMDmQUZVwMfZ1CJzrrXKQn3VQsy4CJu7ho');
INSERT INTO public.refreshtoken (id, user_email, refreshtoken) OVERRIDING SYSTEM VALUE VALUES (24, 'gvido1982@mail.ru', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJndmlkbzE5ODJAbWFpbC5ydSIsInJvbGVzIjpbImFkbWluIl0sImlhdCI6MTY4Njg4MTYyOCwiZXhwIjoxNjg3NDE0MDgxfQ.t0W8dxh10W5AIOudww16mPpaCuhVhlgZm07rAfva-yE');
INSERT INTO public.refreshtoken (id, user_email, refreshtoken) OVERRIDING SYSTEM VALUE VALUES (25, 'gvido1982@mail.ru', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJndmlkbzE5ODJAbWFpbC5ydSIsInJvbGVzIjpbImFkbWluIl0sImlhdCI6MTY4Njg4OTk3NiwiZXhwIjoxNjg3NDIyNDI5fQ.o4sGvHg4zORm-MOzBaKWRhu0oF964iD_cbXoybUqOK8');
INSERT INTO public.refreshtoken (id, user_email, refreshtoken) OVERRIDING SYSTEM VALUE VALUES (26, 'gvido1982@mail.ru', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJndmlkbzE5ODJAbWFpbC5ydSIsInJvbGVzIjpbImFkbWluIl0sImlhdCI6MTY4Njg5MTg5NCwiZXhwIjoxNjg3NDI0MzQ4fQ.TccPVHJVsHTgrEpVmWLH2XGhYCXpgPpRLTuagru6lSw');
INSERT INTO public.refreshtoken (id, user_email, refreshtoken) OVERRIDING SYSTEM VALUE VALUES (27, 'gvido1982@mail.ru', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJndmlkbzE5ODJAbWFpbC5ydSIsInJvbGVzIjpbImFkbWluIl0sImlhdCI6MTY4Njg5NTMxOSwiZXhwIjoxNjg3NDI3NzczfQ.tHrF8PlgvMKB5OcLo1Bo_JbKqCFKVfrKsR-72XY-gaU');
INSERT INTO public.refreshtoken (id, user_email, refreshtoken) OVERRIDING SYSTEM VALUE VALUES (28, 'gvido1982@mail.ru', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJndmlkbzE5ODJAbWFpbC5ydSIsInJvbGVzIjpbImFkbWluIl0sImlhdCI6MTY4Njg5ODIzMiwiZXhwIjoxNjg3NDMwNjg2fQ.5zjzNbaJynxNWkbqQONGEaiBenyc9U6CLHrt83eDBzE');
INSERT INTO public.refreshtoken (id, user_email, refreshtoken) OVERRIDING SYSTEM VALUE VALUES (29, 'gvido1982@mail.ru', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJndmlkbzE5ODJAbWFpbC5ydSIsInJvbGVzIjpbImFkbWluIl0sImlhdCI6MTY4Njg5OTU3OSwiZXhwIjoxNjg3NDMyMDMyfQ.sac607sYxlRFp3WGm3IfVA1b2SICVKPkB6p9pUOUq3k');
INSERT INTO public.refreshtoken (id, user_email, refreshtoken) OVERRIDING SYSTEM VALUE VALUES (31, 'gvido1282@mail.ru', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJndmlkbzEyODJAbWFpbC5ydSIsInJvbGVzIjpbInVzZXIiXSwiaWF0IjoxNjg2ODk5NzcwLCJleHAiOjE2ODc0MzIyMjN9.qO-J1jOVbTPHaYmW5WJwGBzax3pKK0aRUY5a3JUbLrU');
INSERT INTO public.refreshtoken (id, user_email, refreshtoken) OVERRIDING SYSTEM VALUE VALUES (32, 'gvido1982@mail.ru', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJndmlkbzE5ODJAbWFpbC5ydSIsInJvbGVzIjpbImFkbWluIl0sImlhdCI6MTY4Njg5OTc3NSwiZXhwIjoxNjg3NDMyMjI4fQ.7bfmK-vIxxlvzEepNIKjat0UneyroXwZVkroXd8E32Y');
INSERT INTO public.refreshtoken (id, user_email, refreshtoken) OVERRIDING SYSTEM VALUE VALUES (34, 'gvido1982@mail.ru', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJndmlkbzE5ODJAbWFpbC5ydSIsInJvbGVzIjpbImFkbWluIl0sImlhdCI6MTY4NjkwMDQyMCwiZXhwIjoxNjg3NDMyODc0fQ.-282W_EOk8_evUQ07BlmHifBx3cSx45G2WUFsvlUykI');


--
-- TOC entry 3441 (class 0 OID 16433)
-- Dependencies: 219
-- Data for Name: room; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.room (id, number, status, type) OVERRIDING SYSTEM VALUE VALUES (1, 1, 'ok', 'room');
INSERT INTO public.room (id, number, status, type) OVERRIDING SYSTEM VALUE VALUES (2, 2, 'ok', 'room');
INSERT INTO public.room (id, number, status, type) OVERRIDING SYSTEM VALUE VALUES (3, 3, 'ok', 'room');
INSERT INTO public.room (id, number, status, type) OVERRIDING SYSTEM VALUE VALUES (4, 1, 'ok', 'polygon');
INSERT INTO public.room (id, number, status, type) OVERRIDING SYSTEM VALUE VALUES (5, 2, 'ok', 'polygon');
INSERT INTO public.room (id, number, status, type) OVERRIDING SYSTEM VALUE VALUES (6, 3, 'ok', 'polygon');


--
-- TOC entry 3446 (class 0 OID 16479)
-- Dependencies: 224
-- Data for Name: session; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.session (id, date, "time", user_id, box_id, employee_id, weapon_id, status) OVERRIDING SYSTEM VALUE VALUES (8, '2023-06-17 00:00:00', 10, 5, 1, 1, 1, 'ok');
INSERT INTO public.session (id, date, "time", user_id, box_id, employee_id, weapon_id, status) OVERRIDING SYSTEM VALUE VALUES (9, '2023-06-17 00:00:00', 11, 5, 1, 1, 1, 'ok');
INSERT INTO public.session (id, date, "time", user_id, box_id, employee_id, weapon_id, status) OVERRIDING SYSTEM VALUE VALUES (10, '2023-06-17 00:00:00', 12, 5, 1, 1, 1, 'ok');
INSERT INTO public.session (id, date, "time", user_id, box_id, employee_id, weapon_id, status) OVERRIDING SYSTEM VALUE VALUES (11, '2023-06-17 00:00:00', 13, 5, 1, 1, 1, 'ok');
INSERT INTO public.session (id, date, "time", user_id, box_id, employee_id, weapon_id, status) OVERRIDING SYSTEM VALUE VALUES (19, '2023-06-16 10:19:53.576', 11, 5, 2, 1, 5, 'ok');
INSERT INTO public.session (id, date, "time", user_id, box_id, employee_id, weapon_id, status) OVERRIDING SYSTEM VALUE VALUES (20, '2023-06-16 10:24:30.065', 17, 5, 2, 1, 3, 'ok');


--
-- TOC entry 3452 (class 0 OID 16534)
-- Dependencies: 230
-- Data for Name: timetable; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3437 (class 0 OID 16400)
-- Dependencies: 215
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users (id, first_name, last_name, email, certificate_002, date_of_birth, password, ammo_score, role) OVERRIDING SYSTEM VALUE VALUES (5, 'Миста', 'Гвидо', 'gvido1982@mail.ru', false, '1982-12-03', '$2a$10$/BASJK8AAf8r5QGFFtIX6uGtWo.L5S9hvadj6N4TpwIceh39ehSU.', 0, 'admin');
INSERT INTO public.users (id, first_name, last_name, email, certificate_002, date_of_birth, password, ammo_score, role) OVERRIDING SYSTEM VALUE VALUES (6, 'Александр', 'Шиловский', 'gvido1282@mail.ru', false, '1993-03-08', '$2a$10$.XJvvz6GqcRQ2i/aubWIFuXZOO8o3NKANTW6aFVD.jQMVmMLfNLku', 0, 'user');


--
-- TOC entry 3458 (class 0 OID 16598)
-- Dependencies: 236
-- Data for Name: usersinmc; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3456 (class 0 OID 16582)
-- Dependencies: 234
-- Data for Name: weaponinprog; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.weaponinprog (id, weapon_id, programm_id) OVERRIDING SYSTEM VALUE VALUES (1, 1, 1);
INSERT INTO public.weaponinprog (id, weapon_id, programm_id) OVERRIDING SYSTEM VALUE VALUES (2, 3, 1);
INSERT INTO public.weaponinprog (id, weapon_id, programm_id) OVERRIDING SYSTEM VALUE VALUES (3, 2, 1);
INSERT INTO public.weaponinprog (id, weapon_id, programm_id) OVERRIDING SYSTEM VALUE VALUES (4, 4, 2);
INSERT INTO public.weaponinprog (id, weapon_id, programm_id) OVERRIDING SYSTEM VALUE VALUES (5, 5, 2);
INSERT INTO public.weaponinprog (id, weapon_id, programm_id) OVERRIDING SYSTEM VALUE VALUES (6, 3, 2);
INSERT INTO public.weaponinprog (id, weapon_id, programm_id) OVERRIDING SYSTEM VALUE VALUES (7, 6, 3);


--
-- TOC entry 3444 (class 0 OID 16450)
-- Dependencies: 222
-- Data for Name: weapons; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.weapons (id, title, count, price, type, ammo_id) VALUES (6, 'Галиль', 4, 233, 'Автомат', 6);
INSERT INTO public.weapons (id, title, count, price, type, ammo_id) VALUES (5, 'Глок 18', 15, 28, 'Пистолет', 1);
INSERT INTO public.weapons (id, title, count, price, type, ammo_id) VALUES (4, 'ПМ', 12, 20, 'Пистолет', 4);
INSERT INTO public.weapons (id, title, count, price, type, ammo_id) VALUES (3, 'M4', 7, 300, 'Автомат', 6);
INSERT INTO public.weapons (id, title, count, price, type, ammo_id) VALUES (2, 'АК-47', 9, 250, 'Автомат', 3);
INSERT INTO public.weapons (id, title, count, price, type, ammo_id) VALUES (1, 'Five-seveN', 17, 45, 'Пистолет
', 5);


--
-- TOC entry 3470 (class 0 OID 0)
-- Dependencies: 239
-- Name: ammo_buy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ammo_buy_id_seq', 45, true);


--
-- TOC entry 3471 (class 0 OID 0)
-- Dependencies: 237
-- Name: ammo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ammo_id_seq', 6, true);


--
-- TOC entry 3472 (class 0 OID 0)
-- Dependencies: 220
-- Name: box_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.box_id_seq', 12, true);


--
-- TOC entry 3473 (class 0 OID 0)
-- Dependencies: 216
-- Name: employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employee_id_seq', 1, true);


--
-- TOC entry 3474 (class 0 OID 0)
-- Dependencies: 231
-- Name: masterclass_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.masterclass_id_seq', 1, false);


--
-- TOC entry 3475 (class 0 OID 0)
-- Dependencies: 225
-- Name: news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.news_id_seq', 4, true);


--
-- TOC entry 3476 (class 0 OID 0)
-- Dependencies: 227
-- Name: programm_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.programm_id_seq', 3, true);


--
-- TOC entry 3477 (class 0 OID 0)
-- Dependencies: 241
-- Name: refreshtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.refreshtoken_id_seq', 34, true);


--
-- TOC entry 3478 (class 0 OID 0)
-- Dependencies: 218
-- Name: room_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.room_id_seq', 6, true);


--
-- TOC entry 3479 (class 0 OID 0)
-- Dependencies: 223
-- Name: session_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.session_id_seq', 20, true);


--
-- TOC entry 3480 (class 0 OID 0)
-- Dependencies: 229
-- Name: timetable_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.timetable_id_seq', 1, false);


--
-- TOC entry 3481 (class 0 OID 0)
-- Dependencies: 214
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 6, true);


--
-- TOC entry 3482 (class 0 OID 0)
-- Dependencies: 235
-- Name: usersinmc_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usersinmc_id_seq', 1, false);


--
-- TOC entry 3483 (class 0 OID 0)
-- Dependencies: 233
-- Name: weaponinmc_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.weaponinmc_id_seq', 7, true);


--
-- TOC entry 3273 (class 2606 OID 16631)
-- Name: ammo_buy ammo_buy_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ammo_buy
    ADD CONSTRAINT ammo_buy_pkey PRIMARY KEY (id);


--
-- TOC entry 3271 (class 2606 OID 16620)
-- Name: ammo ammo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ammo
    ADD CONSTRAINT ammo_pkey PRIMARY KEY (id);


--
-- TOC entry 3253 (class 2606 OID 16444)
-- Name: box box_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.box
    ADD CONSTRAINT box_pkey PRIMARY KEY (id);


--
-- TOC entry 3249 (class 2606 OID 16426)
-- Name: employee employee_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (id);


--
-- TOC entry 3265 (class 2606 OID 16563)
-- Name: masterclass masterclass_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.masterclass
    ADD CONSTRAINT masterclass_pkey PRIMARY KEY (id);


--
-- TOC entry 3259 (class 2606 OID 16515)
-- Name: news news_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news
    ADD CONSTRAINT news_pkey PRIMARY KEY (id);


--
-- TOC entry 3261 (class 2606 OID 16532)
-- Name: programm programm_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.programm
    ADD CONSTRAINT programm_pkey PRIMARY KEY (id);


--
-- TOC entry 3275 (class 2606 OID 16659)
-- Name: refreshtoken refreshtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.refreshtoken
    ADD CONSTRAINT refreshtoken_pkey PRIMARY KEY (id);


--
-- TOC entry 3251 (class 2606 OID 16437)
-- Name: room room_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.room
    ADD CONSTRAINT room_pkey PRIMARY KEY (id);


--
-- TOC entry 3257 (class 2606 OID 16483)
-- Name: session session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.session
    ADD CONSTRAINT session_pkey PRIMARY KEY (id);


--
-- TOC entry 3263 (class 2606 OID 16538)
-- Name: timetable timetable_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.timetable
    ADD CONSTRAINT timetable_pkey PRIMARY KEY (id);


--
-- TOC entry 3247 (class 2606 OID 16406)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3269 (class 2606 OID 16602)
-- Name: usersinmc usersinmc_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usersinmc
    ADD CONSTRAINT usersinmc_pkey PRIMARY KEY (id);


--
-- TOC entry 3267 (class 2606 OID 16586)
-- Name: weaponinprog weaponinmc_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.weaponinprog
    ADD CONSTRAINT weaponinmc_pkey PRIMARY KEY (id);


--
-- TOC entry 3255 (class 2606 OID 16477)
-- Name: weapons weapons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.weapons
    ADD CONSTRAINT weapons_pkey PRIMARY KEY (id);


--
-- TOC entry 3278 (class 2606 OID 16621)
-- Name: weapons ammo_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.weapons
    ADD CONSTRAINT ammo_id FOREIGN KEY (ammo_id) REFERENCES public.ammo(id) MATCH FULL NOT VALID;


--
-- TOC entry 3292 (class 2606 OID 16637)
-- Name: ammo_buy ammo_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ammo_buy
    ADD CONSTRAINT ammo_id FOREIGN KEY (ammo_id) REFERENCES public.ammo(id) MATCH FULL;


--
-- TOC entry 3279 (class 2606 OID 16494)
-- Name: session box_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.session
    ADD CONSTRAINT box_id FOREIGN KEY (box_id) REFERENCES public.box(id) MATCH FULL;


--
-- TOC entry 3277 (class 2606 OID 16445)
-- Name: box box_room_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.box
    ADD CONSTRAINT box_room_id_fkey FOREIGN KEY (room_id) REFERENCES public.room(id) MATCH FULL;


--
-- TOC entry 3283 (class 2606 OID 16544)
-- Name: timetable employee; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.timetable
    ADD CONSTRAINT employee FOREIGN KEY (employee_id) REFERENCES public.employee(id) MATCH FULL;


--
-- TOC entry 3280 (class 2606 OID 16489)
-- Name: session employee_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.session
    ADD CONSTRAINT employee_id FOREIGN KEY (employee_id) REFERENCES public.employee(id) MATCH FULL;


--
-- TOC entry 3285 (class 2606 OID 16564)
-- Name: masterclass employee_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.masterclass
    ADD CONSTRAINT employee_id FOREIGN KEY (employee_id) REFERENCES public.employee(id) MATCH FULL;


--
-- TOC entry 3290 (class 2606 OID 16603)
-- Name: usersinmc masterclass; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usersinmc
    ADD CONSTRAINT masterclass FOREIGN KEY (masterclass_id) REFERENCES public.masterclass(id) MATCH FULL;


--
-- TOC entry 3286 (class 2606 OID 16574)
-- Name: masterclass programm_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.masterclass
    ADD CONSTRAINT programm_id FOREIGN KEY (programm_id) REFERENCES public.programm(id) MATCH FULL;


--
-- TOC entry 3288 (class 2606 OID 16592)
-- Name: weaponinprog programm_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.weaponinprog
    ADD CONSTRAINT programm_id FOREIGN KEY (programm_id) REFERENCES public.programm(id) MATCH FULL;


--
-- TOC entry 3284 (class 2606 OID 16539)
-- Name: timetable room; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.timetable
    ADD CONSTRAINT room FOREIGN KEY (room_id) REFERENCES public.room(id) MATCH FULL;


--
-- TOC entry 3287 (class 2606 OID 16569)
-- Name: masterclass room_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.masterclass
    ADD CONSTRAINT room_id FOREIGN KEY (room_id) REFERENCES public.room(id) MATCH FULL;


--
-- TOC entry 3291 (class 2606 OID 16608)
-- Name: usersinmc user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usersinmc
    ADD CONSTRAINT "user" FOREIGN KEY (user_id) REFERENCES public.users(id) MATCH FULL;


--
-- TOC entry 3276 (class 2606 OID 16427)
-- Name: employee user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT user_id FOREIGN KEY (user_id) REFERENCES public.users(id) MATCH FULL;


--
-- TOC entry 3281 (class 2606 OID 16484)
-- Name: session user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.session
    ADD CONSTRAINT user_id FOREIGN KEY (user_id) REFERENCES public.users(id) MATCH FULL;


--
-- TOC entry 3293 (class 2606 OID 16632)
-- Name: ammo_buy user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ammo_buy
    ADD CONSTRAINT user_id FOREIGN KEY (user_id) REFERENCES public.users(id) MATCH FULL;


--
-- TOC entry 3282 (class 2606 OID 16499)
-- Name: session weapon_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.session
    ADD CONSTRAINT weapon_id FOREIGN KEY (weapon_id) REFERENCES public.weapons(id) MATCH FULL;


--
-- TOC entry 3289 (class 2606 OID 16587)
-- Name: weaponinprog weaponsid; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.weaponinprog
    ADD CONSTRAINT weaponsid FOREIGN KEY (weapon_id) REFERENCES public.weapons(id) MATCH FULL;


-- Completed on 2024-01-09 16:02:51

--
-- PostgreSQL database dump complete
--


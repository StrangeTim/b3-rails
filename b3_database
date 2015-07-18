--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: abouts; Type: TABLE; Schema: public; Owner: strangetim; Tablespace: 
--

CREATE TABLE abouts (
    id integer NOT NULL,
    title character varying,
    body character varying,
    contact_email character varying,
    contact_phone character varying,
    contact_address character varying,
    image_file_name character varying,
    image_content_type character varying,
    image_file_size integer,
    image_updated_at timestamp without time zone
);


ALTER TABLE public.abouts OWNER TO strangetim;

--
-- Name: abouts_id_seq; Type: SEQUENCE; Schema: public; Owner: strangetim
--

CREATE SEQUENCE abouts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.abouts_id_seq OWNER TO strangetim;

--
-- Name: abouts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strangetim
--

ALTER SEQUENCE abouts_id_seq OWNED BY abouts.id;


--
-- Name: artists; Type: TABLE; Schema: public; Owner: strangetim; Tablespace: 
--

CREATE TABLE artists (
    id integer NOT NULL,
    name character varying,
    bio character varying,
    updated_by character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    profile_pic_file_name character varying,
    profile_pic_content_type character varying,
    profile_pic_file_size integer,
    profile_pic_updated_at timestamp without time zone,
    display_image_id integer
);


ALTER TABLE public.artists OWNER TO strangetim;

--
-- Name: artists_id_seq; Type: SEQUENCE; Schema: public; Owner: strangetim
--

CREATE SEQUENCE artists_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artists_id_seq OWNER TO strangetim;

--
-- Name: artists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strangetim
--

ALTER SEQUENCE artists_id_seq OWNED BY artists.id;


--
-- Name: artworks; Type: TABLE; Schema: public; Owner: strangetim; Tablespace: 
--

CREATE TABLE artworks (
    id integer NOT NULL,
    name character varying,
    blurb character varying,
    image_description character varying,
    updated_by character varying,
    image_file_name character varying,
    image_content_type character varying,
    image_file_size integer,
    image_updated_at timestamp without time zone,
    artist_id integer
);


ALTER TABLE public.artworks OWNER TO strangetim;

--
-- Name: artworks_id_seq; Type: SEQUENCE; Schema: public; Owner: strangetim
--

CREATE SEQUENCE artworks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artworks_id_seq OWNER TO strangetim;

--
-- Name: artworks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strangetim
--

ALTER SEQUENCE artworks_id_seq OWNED BY artworks.id;


--
-- Name: homes; Type: TABLE; Schema: public; Owner: strangetim; Tablespace: 
--

CREATE TABLE homes (
    id integer NOT NULL,
    title character varying,
    left_header character varying,
    left_body character varying,
    right_header character varying,
    right_body character varying
);


ALTER TABLE public.homes OWNER TO strangetim;

--
-- Name: homes_id_seq; Type: SEQUENCE; Schema: public; Owner: strangetim
--

CREATE SEQUENCE homes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.homes_id_seq OWNER TO strangetim;

--
-- Name: homes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strangetim
--

ALTER SEQUENCE homes_id_seq OWNED BY homes.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: strangetim; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO strangetim;

--
-- Name: users; Type: TABLE; Schema: public; Owner: strangetim; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    username character varying DEFAULT ''::character varying NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip inet,
    last_sign_in_ip inet,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.users OWNER TO strangetim;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: strangetim
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO strangetim;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strangetim
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: strangetim
--

ALTER TABLE ONLY abouts ALTER COLUMN id SET DEFAULT nextval('abouts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: strangetim
--

ALTER TABLE ONLY artists ALTER COLUMN id SET DEFAULT nextval('artists_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: strangetim
--

ALTER TABLE ONLY artworks ALTER COLUMN id SET DEFAULT nextval('artworks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: strangetim
--

ALTER TABLE ONLY homes ALTER COLUMN id SET DEFAULT nextval('homes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: strangetim
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: abouts; Type: TABLE DATA; Schema: public; Owner: strangetim
--

COPY abouts (id, title, body, contact_email, contact_phone, contact_address, image_file_name, image_content_type, image_file_size, image_updated_at) FROM stdin;
1	About Us	lorem ipsum	unknown@questionmark.com	(812)-988-6675	Van Buren St, Nashville, Indiana	b3_owners.jpg	image/jpeg	49788	2015-07-18 15:31:25.011198
\.


--
-- Name: abouts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strangetim
--

SELECT pg_catalog.setval('abouts_id_seq', 1, true);


--
-- Data for Name: artists; Type: TABLE DATA; Schema: public; Owner: strangetim
--

COPY artists (id, name, bio, updated_by, created_at, updated_at, profile_pic_file_name, profile_pic_content_type, profile_pic_file_size, profile_pic_updated_at, display_image_id) FROM stdin;
\.


--
-- Name: artists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strangetim
--

SELECT pg_catalog.setval('artists_id_seq', 1, true);


--
-- Data for Name: artworks; Type: TABLE DATA; Schema: public; Owner: strangetim
--

COPY artworks (id, name, blurb, image_description, updated_by, image_file_name, image_content_type, image_file_size, image_updated_at, artist_id) FROM stdin;
\.


--
-- Name: artworks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strangetim
--

SELECT pg_catalog.setval('artworks_id_seq', 1, true);


--
-- Data for Name: homes; Type: TABLE DATA; Schema: public; Owner: strangetim
--

COPY homes (id, title, left_header, left_body, right_header, right_body) FROM stdin;
1	B3 Art Gallery	Featured Artist	Bacon ipsum dolor amet pig shank short loin tri-tip capicola, short ribs hamburger rump tail. Turkey boudin bacon pork chop bresaola shoulder leberkas pig fatback sirloin meatloaf. Tongue short ribs spare ribs prosciutto jowl kielbasa sausage. Drumstick doner hamburger landjaeger sirloin beef alcatra jerky.\r\n\r\nKielbasa spare ribs boudin, alcatra tri-tip bacon capicola turkey turducken strip steak ribeye cow. Boudin bresaola hamburger ground round meatloaf, biltong pork loin pastrami tri-tip ham capicola tongue. Pig biltong frankfurter venison. Fatback tenderloin tongue strip steak swine ribeye. Spare ribs beef ribs pork loin strip steak ham, bacon swine pig shankle doner meatloaf ground round cupim rump turkey. Ground round prosciutto short ribs meatloaf, strip steak sausage jowl fatback doner shankle chuck rump short loin. Pig alcatra pork loin short ribs venison pork chop shankle short loin kielbasa kevin.	Recent Happenings	Mlkshk wayfarers Blue Bottle direct trade slow-carb, Pitchfork chambray semiotics jean shorts twee. Migas drinking vinegar fap, freegan post-ironic literally seitan gentrify sustainable fashion axe gastropub banh mi Schlitz forage. Pinterest deep v mustache Godard Banksy, keytar hoodie Blue Bottle Neutra pour-over put a bird on it iPhone artisan. Mumblecore church-key Portland, dreamcatcher disrupt street art Truffaut. Mumblecore kitsch fap DIY cray Tumblr, umami church-key meditation chambray farm-to-table flexitarian Vice trust fund brunch. Retro ennui irony, food truck Pinterest Marfa cornhole jean shorts farm-to-table polaroid letterpress four dollar toast asymmetrical. Tote bag hoodie umami chambray, mustache mumblecore gluten-free 8-bit banjo biodiesel.\r\n\r\nCred normcore mumblecore, wayfarers seitan leggings fashion axe bespoke put a bird on it. Art party direct trade photo booth, shabby chic pork belly readymade pour-over. Cronut cray PBR&B PBR fingerstache American Apparel. Jean shorts crucifix 3 wolf moon, bespoke asymmetrical roof party cold-pressed biodiesel. Plaid DIY small batch tousled, jean shorts mlkshk Marfa sartorial chia photo booth. Street art hella Marfa artisan +1 mustache. American Apparel PBR yr, salvia Austin forage farm-to-table Wes Anderson mumblecore tilde kitsch beard.
\.


--
-- Name: homes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strangetim
--

SELECT pg_catalog.setval('homes_id_seq', 1, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: strangetim
--

COPY schema_migrations (version) FROM stdin;
20150716211706
20150716171512
20150715165908
20150715163700
20150718054843
20150718151552
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: strangetim
--

COPY users (id, username, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at) FROM stdin;
1	strangetim	strangetim@strangetim.com	$2a$10$kNGeFQWSIHCYFkkAoMM8COy8xavAWFTphuLzjJaHv0rgX1s57O252	\N	\N	\N	2	2015-07-18 06:56:16.598096	2015-07-17 04:21:00.862727	127.0.0.1	127.0.0.1	2015-07-17 03:25:28.810474	2015-07-18 06:56:16.599818
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strangetim
--

SELECT pg_catalog.setval('users_id_seq', 2, true);


--
-- Name: abouts_pkey; Type: CONSTRAINT; Schema: public; Owner: strangetim; Tablespace: 
--

ALTER TABLE ONLY abouts
    ADD CONSTRAINT abouts_pkey PRIMARY KEY (id);


--
-- Name: artists_pkey; Type: CONSTRAINT; Schema: public; Owner: strangetim; Tablespace: 
--

ALTER TABLE ONLY artists
    ADD CONSTRAINT artists_pkey PRIMARY KEY (id);


--
-- Name: artworks_pkey; Type: CONSTRAINT; Schema: public; Owner: strangetim; Tablespace: 
--

ALTER TABLE ONLY artworks
    ADD CONSTRAINT artworks_pkey PRIMARY KEY (id);


--
-- Name: homes_pkey; Type: CONSTRAINT; Schema: public; Owner: strangetim; Tablespace: 
--

ALTER TABLE ONLY homes
    ADD CONSTRAINT homes_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: strangetim; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: strangetim; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_email ON users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: strangetim; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON users USING btree (reset_password_token);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: strangetim; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--


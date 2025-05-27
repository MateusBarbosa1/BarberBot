--
-- PostgreSQL database dump
--

-- Dumped from database version 16.8 (Debian 16.8-1.pgdg120+1)
-- Dumped by pg_dump version 16.8 (Ubuntu 16.8-1.pgdg20.04+1)

-- Started on 2025-05-27 22:50:03 UTC

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

--
-- TOC entry 5 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: agendamento_bruno_user
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO agendamento_bruno_user;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 215 (class 1259 OID 16396)
-- Name: Agendamentos; Type: TABLE; Schema: public; Owner: agendamento_bruno_user
--

CREATE TABLE public."Agendamentos" (
    id text NOT NULL,
    date timestamp(3) without time zone NOT NULL,
    "time" text NOT NULL,
    name text NOT NULL,
    barbeiro text NOT NULL,
    numero text NOT NULL,
    "horarioAgendamento" timestamp(3) without time zone NOT NULL,
    servico text NOT NULL
);


ALTER TABLE public."Agendamentos" OWNER TO agendamento_bruno_user;

--
-- TOC entry 216 (class 1259 OID 16401)
-- Name: HorariosBruno; Type: TABLE; Schema: public; Owner: agendamento_bruno_user
--

CREATE TABLE public."HorariosBruno" (
    "diaSemana" text NOT NULL,
    horarios text[]
);


ALTER TABLE public."HorariosBruno" OWNER TO agendamento_bruno_user;

--
-- TOC entry 217 (class 1259 OID 16406)
-- Name: HorariosWallyson; Type: TABLE; Schema: public; Owner: agendamento_bruno_user
--

CREATE TABLE public."HorariosWallyson" (
    "diaSemana" text NOT NULL,
    horarios text[]
);


ALTER TABLE public."HorariosWallyson" OWNER TO agendamento_bruno_user;

--
-- TOC entry 218 (class 1259 OID 16411)
-- Name: _prisma_migrations; Type: TABLE; Schema: public; Owner: agendamento_bruno_user
--

CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);


ALTER TABLE public._prisma_migrations OWNER TO agendamento_bruno_user;

--
-- TOC entry 3369 (class 0 OID 16396)
-- Dependencies: 215
-- Data for Name: Agendamentos; Type: TABLE DATA; Schema: public; Owner: agendamento_bruno_user
--

COPY public."Agendamentos" (id, date, "time", name, barbeiro, numero, "horarioAgendamento", servico) FROM stdin;
2f9a57f8-0c11-4756-975b-1abac655221f	2025-01-04 00:00:00	09:00	Lucas	Wallyson	local	2025-01-04 21:03:12.474	Cabelo
2d424049-30e4-4985-acdb-c5780928e4db	2025-01-27 00:00:00	18:00	hugo	Bruno	558199154395@s.whatsapp.net	2025-01-23 00:00:00	Cabelo+Sobrancelha
5933f28e-e1c8-4fd9-969c-40708b200eaa	2025-01-24 00:00:00	16:40	matheus vinícius	Wallyson	558192338346@s.whatsapp.net	2025-01-23 00:00:00	Cabelo
3d30d9d1-9902-46c5-aa1f-cebd46e8be05	2025-02-01 00:00:00	18:00	eduardo	Bruno	558196073942@s.whatsapp.net	2025-01-28 00:00:00	Cabelo+Barba
51fb1961-0222-4c6b-ae8f-620501b3cd51	2025-01-31 00:00:00	16:00	hatus	Bruno	558199706416@s.whatsapp.net	2025-01-29 00:00:00	Cabelo+Barba
2d306b44-a5c3-4f44-8bb6-d93131b2ca0b	2025-01-29 00:00:00	17:20	Felipe botox 	Bruno	local	2025-01-29 13:51:18.091	Cabelo
26259db5-0e72-4105-87c3-02f381aac57b	2025-02-08 00:00:00	08:00	jose eudes	Wallyson	558184793136@s.whatsapp.net	2025-01-24 00:00:00	Cabelo
60ed2a76-9a27-4200-968e-293ec6ffb90a	2025-01-24 00:00:00	13:20	antônio medeiros frança lins	Wallyson	558171024799@s.whatsapp.net	2025-01-24 00:00:00	Cabelo
acaf04fa-c3d1-4b77-923a-bd63d822092e	2025-01-27 00:00:00	15:20	sérgio	Bruno	558198288830@s.whatsapp.net	2025-01-24 00:00:00	Cabelo
4573b66d-5716-46ad-b6ea-c064dd35bac2	2025-01-24 00:00:00	20:00	Eduardo 	Wallyson	local	2025-01-24 19:22:05.863	Cabelo
44c9fe24-d1c3-4c0b-ba7a-69a262847c44	2025-01-29 00:00:00	09:00	DEL ALUMINIO	Bruno	558197796167@s.whatsapp.net	2025-01-22 00:00:00	Cabelo
b005c138-9cc7-445f-8398-0525afe6287d	2025-01-29 00:00:00	14:40	andrey henry	Bruno	558199743955@s.whatsapp.net	2025-01-24 00:00:00	Cabelo+Sobrancelha
f6b44192-1688-4a07-969a-30d2c0727138	2025-02-04 00:00:00	13:20	~~JFZINNXY	Wallyson	local	2025-01-20 02:58:45.733	Cabelo
e052d924-22ae-4cee-8302-b4d82086c4c4	2025-01-25 00:00:00	11:20	Ryan jogador 	Bruno	local	2025-01-22 21:06:21.962	Cabelo
84a11ecc-466f-47d7-b878-50ea2725ce57	2025-02-01 00:00:00	16:00	ismael pedro	Bruno	558199824318@s.whatsapp.net	2025-01-29 00:00:00	Cabelo
c63671eb-57b8-4c8e-92e6-ded1cd6416e3	2025-01-28 00:00:00	16:40	Lucas José	Bruno	558199311183@s.whatsapp.net	2025-01-22 00:00:00	Cabelo+Sobrancelha
6d6a6330-eb03-45cb-9ecb-6ea54db44304	2025-02-03 00:00:00	13:20	júlio césar	Bruno	558196440108@s.whatsapp.net	2025-01-29 00:00:00	Cabelo
f0d4bc54-6f76-4d25-9ec0-14ad038377a4	2025-02-01 00:00:00	16:40	ryan	Wallyson	558199792268@s.whatsapp.net	2025-01-29 00:00:00	Cabelo
5955a98f-535c-4887-8e43-90e3bc9f2ec4	2025-02-04 00:00:00	08:00	luan	Wallyson	558197092692@s.whatsapp.net	2025-01-29 00:00:00	Cabelo
6cb96120-438e-43b2-bc14-ae3e469bcdbf	2025-01-27 00:00:00	16:40	Léo botox 	Bruno	local	2025-01-25 10:04:00.554	Cabelo
87651f60-2e24-4647-8ca5-97e95f500be8	2025-01-27 00:00:00	11:00	fernando	Bruno	558196035269@s.whatsapp.net	2025-01-25 00:00:00	Cabelo
fe8a19b6-3775-4232-9571-969ca5d4c3ac	2025-01-27 00:00:00	17:20	noah	Wallyson	558196533335@s.whatsapp.net	2025-01-25 00:00:00	Cabelo
78d7fc5a-62cd-4b11-b59d-69bd8c6767bf	2025-01-27 00:00:00	14:00	Eraldo	Wallyson	local	2025-01-25 16:58:45.628	Cabelo+Barba
c310ce08-39fe-4bc7-8643-d463b00f5475	2025-01-27 00:00:00	16:00	Heitor 	Wallyson	local	2025-01-25 16:59:08.886	Cabelo
6c91ae2b-7fd4-4906-9f1e-f1a3a158d0cf	2025-01-27 00:00:00	11:40	leonardo	Bruno	558174001016@s.whatsapp.net	2025-01-26 00:00:00	Cabelo
768df28b-49d6-4683-9e7a-3540ff7abcf9	2025-01-25 00:00:00	18:00	Gustavo	Bruno	558196111653@c.us	2025-01-20 00:00:00	Cabelo
55fe1b91-a906-4cc1-8f31-ab3c89163f91	2025-01-28 00:00:00	16:00	lucas farias	Bruno	558187782121@s.whatsapp.net	2025-01-26 00:00:00	Cabelo+Barba
11277864-2d70-47a9-a032-aec6c5a54e8a	2025-01-31 00:00:00	18:00	heytor	Bruno	558197714625@s.whatsapp.net	2025-01-26 00:00:00	Cabelo+Barba
e22c0415-c777-4b6a-ad4e-2effa90425a2	2025-01-29 00:00:00	18:40	Robson 	Wallyson	local	2025-01-27 00:12:19.501	Cabelo+Barba
1dbcaa48-b834-4015-accc-bac55fe96953	2025-01-24 00:00:00	14:00	Yuri 	Wallyson	local	2025-01-20 14:57:31.999	Cabelo
a27b5269-bd87-4eb7-8d87-1c3fc0d3d570	2025-01-29 00:00:00	10:20	Italo 	Bruno	local	2025-01-27 01:43:32.747	Cabelo+Sobrancelha
33fc3d0c-3c62-4381-a1ff-de03a00d4101	2025-01-24 00:00:00	18:00	João Paulo 	Wallyson	local	2025-01-20 15:08:23.813	Cabelo/Barba
54f50009-4da5-4092-918d-3ce90942c954	2025-01-24 00:00:00	14:40	Hiago	Wallyson	local	2025-01-20 15:10:17.814	Cabelo
d43cfaff-ba3d-47bf-8831-89353a5bdd0a	2025-02-01 00:00:00	08:40	Heraldo 	Bruno	local	2025-01-27 09:24:56.592	Cabelo
c93d7a49-11cf-414a-80ec-4c02af9b1e3b	2025-01-28 00:00:00	14:00	ítalo	Bruno	558195671075@s.whatsapp.net	2025-01-27 00:00:00	Cabelo
1a55eba2-d890-4de6-b246-33d23450551f	2025-01-27 00:00:00	09:40	Thiago 	Wallyson	local	2025-01-27 10:49:55.925	Cabelo
87f1f19a-f64d-4129-b597-a8fdb8da4b30	2025-01-24 00:00:00	10:20	Luan do Marista 	Bruno	local	2025-01-20 15:42:51.436	Cabelo
76fb32c4-127d-4d61-b58d-4d3d2153e1af	2025-01-24 00:00:00	16:40	Andre	Bruno	558198995821@c.us	2025-01-20 00:00:00	Cabelo+Sobrancelha
ace4f157-e7fe-4791-80ab-5a37a0639a25	2025-01-24 00:00:00	16:00	Iann	Bruno	local	2025-01-20 15:47:09.637	Cabelo
351b7a83-ed97-4c9d-a013-fee100bc015e	2025-02-01 00:00:00	08:40	wesley	Wallyson	558181016662@s.whatsapp.net	2025-01-27 00:00:00	Cabelo+Sobrancelha
2e61c8fc-32f6-491c-bde5-05de80f462a4	2025-01-24 00:00:00	20:00	João Danielson 	Bruno	local	2025-01-20 15:57:19.264	Cabelo+Barba
8bc9e929-89a1-430c-8d13-f7fd4af15555	2025-01-25 00:00:00	08:00	Matheus amg J. Lucas 	Bruno	local	2025-01-20 15:58:11.841	Cabelo
0ba9cf2e-b286-40c1-a36e-648bb525e58c	2025-01-25 00:00:00	08:40	João Lucas 	Bruno	local	2025-01-20 15:58:35.131	Cabelo+Sobrancelha
a606b9c0-cdbc-40ca-a5ed-ac25ab8be8fb	2025-01-25 00:00:00	10:00	Gabriel Pedrosa 	Bruno	local	2025-01-20 15:59:09.058	Cabelo
a647806d-ca6a-4999-897b-8d35ef78a320	2025-01-25 00:00:00	10:40	Neto Gonzaga 	Bruno	local	2025-01-20 15:59:31.98	Cabelo
0d414883-268c-4c92-b527-321c8eb05f05	2025-01-25 00:00:00	13:20	Emanoel combo	Bruno	local	2025-01-20 16:00:21.079	Cabelo+Barba
be28ab4b-96aa-42f3-acf3-f9b392955027	2025-01-25 00:00:00	15:20	Vinicin 	Bruno	local	2025-01-20 16:01:25.714	Cabelo+Sobrancelha
e25e2917-9903-48b0-ba32-fd70e4df8ffc	2025-01-27 00:00:00	10:20	Andrezza ( Mateus ) 	Bruno	local	2025-01-20 16:02:45.073	Cabelo
7a6b568b-d127-418f-ab57-f764e5451cb5	2025-01-27 00:00:00	14:00	Guga	Bruno	local	2025-01-20 16:03:18.076	Cabelo
2045f5f2-d6c8-4fa4-ac62-c81af0882e95	2025-01-31 00:00:00	10:20	Ana Beatriz ( João) 	Bruno	local	2025-01-20 16:03:58.011	Cabelo
1309e4b4-a99b-4ceb-a66d-dee6fa4d555d	2025-02-04 00:00:00	15:20	PH	Bruno	local	2025-01-20 16:04:52.887	Cabelo
58de780f-38df-4e45-a258-ff99c2439cc7	2025-01-25 00:00:00	09:20	Josivaldo Gomes	Bruno	558196887942@c.us	2025-01-20 00:00:00	Cabelo
2068d39a-ab12-4a76-80cb-2b6eed8be9a1	2025-01-25 00:00:00	16:00	Neto	Bruno	558194759358@c.us	2025-01-20 00:00:00	Cabelo+Sobrancelha
d3445f0a-354c-4519-8522-8cf6408c5d9a	2025-01-28 00:00:00	18:00	valker	Bruno	558196956758@s.whatsapp.net	2025-01-27 00:00:00	Cabelo+Sobrancelha
cb9a38da-2409-4ad3-a06f-cb028712c491	2025-01-27 00:00:00	14:40	Cauã Cea 	Bruno	local	2025-01-23 16:34:03.968	Cabelo
53786bf6-edce-400d-91b9-f5f599b054ac	2025-01-29 00:00:00	08:40	joão lucas	Wallyson	558198783426@s.whatsapp.net	2025-01-27 00:00:00	Cabelo
d04d520b-e135-4e7c-98c7-c22f0729204b	2025-02-01 00:00:00	09:20	erick apolloni	Bruno	558197051743@s.whatsapp.net	2025-01-23 00:00:00	Cabelo
d0095454-5d6e-4cc3-b5a4-b559d0d57c7d	2025-01-30 00:00:00	18:40	eduardo	Wallyson	558194699903@s.whatsapp.net	2025-01-28 00:00:00	Cabelo
5e916b50-2799-4d71-9297-6243c745ae5a	2025-01-27 00:00:00	17:20	paulo	Bruno	558174004953@s.whatsapp.net	2025-01-23 00:00:00	Cabelo
6e092356-de12-49e1-9a4d-142d699b1b2d	2025-01-27 00:00:00	18:40	allef ryan	Bruno	558195740243@s.whatsapp.net	2025-01-23 00:00:00	Cabelo
c73acc66-83d3-4c3d-9eeb-12df6cd52d5a	2025-01-24 00:00:00	14:40	Deyvson	Bruno	558195479577@c.us	2025-01-22 00:00:00	Cabelo
4c73ec0f-e649-457e-a6d4-aaf701d56db3	2025-01-24 00:00:00	13:20	João Paulo	Bruno	558179098531@c.us	2025-01-22 00:00:00	Cabelo+Barba
a4a5e625-5794-4c69-b650-0199fda8f61c	2025-02-01 00:00:00	16:40	carlos henrique	Bruno	558196639360@s.whatsapp.net	2025-01-29 00:00:00	Acabamento (Pezinho)
d843fd9f-76fa-4b0a-82dc-6fc469ceaf9c	2025-02-04 00:00:00	10:00	marcus	Wallyson	558199349818@s.whatsapp.net	2025-01-24 00:00:00	Cabelo
0a3165a1-c7fc-4f13-9109-6f64be18eb8e	2025-01-29 00:00:00	11:20	daiane	Wallyson	558189141585@s.whatsapp.net	2025-01-29 00:00:00	Cabelo
d78b622e-c4ca-403e-82e3-71e73f5e18d8	2025-01-24 00:00:00	18:40	Douglas 	Wallyson	local	2025-01-22 18:42:00.598	Cabelo
d1e7dbe1-5f55-4f0d-a1a9-0528e7712f34	2025-01-31 00:00:00	09:40	matheus lima	Bruno	558199670970@s.whatsapp.net	2025-01-29 00:00:00	Cabelo
42bd0989-a927-4903-90e7-e310a4c28aa2	2025-01-29 00:00:00	09:40	CAUÊ	Bruno	558197796167@s.whatsapp.net	2025-01-22 00:00:00	Cabelo
1d72ff73-d559-4b2c-af8a-cd2035be484c	2025-01-24 00:00:00	09:00	Lucas Victor	Bruno	558196941962@s.whatsapp.net	2025-01-22 00:00:00	Cabelo
48b9dab2-d292-4fb1-9937-32211fca01ac	2025-01-29 00:00:00	16:00	joão breno	Bruno	558197349442@s.whatsapp.net	2025-01-24 00:00:00	Cabelo
fb1cf63c-7398-4a0d-9b51-73f4c3328e80	2025-02-04 00:00:00	10:40	hellen	Wallyson	558199475614@s.whatsapp.net	2025-01-29 00:00:00	Cabelo
e0d11299-84d8-4a89-ac44-7d179173adf1	2025-01-24 00:00:00	15:20	Eduardo	Bruno	558194297236@s.whatsapp.net	2025-01-22 00:00:00	Cabelo+Barba
316a39a1-b3f7-4615-9142-80524457b803	2025-01-24 00:00:00	17:20	João sedoufo 	Wallyson	local	2025-01-23 01:34:21.117	Cabelo+Sobrancelha
d58b46cc-c04e-4d61-9f96-e0f36f372919	2025-01-24 00:00:00	19:20	Daniel 	Wallyson	local	2025-01-23 01:44:20.566	Cabelo+Sobrancelha
60d6ab83-94dc-4083-97b2-62a459f5e59b	2025-01-27 00:00:00	09:40	joão victor	Bruno	558196049253@s.whatsapp.net	2025-01-23 00:00:00	Cabelo+Sobrancelha
543723b4-3d3f-4f7a-8474-f4f44453f9d8	2025-01-30 00:00:00	16:00	Higor 	Wallyson	local	2025-01-29 18:54:28.949	Cabelo+Barba
0ccb9b75-f690-4c18-93dc-0ce59e8c80c0	2025-01-27 00:00:00	16:00	leonardo guedes	Bruno	558196987419@s.whatsapp.net	2025-01-24 00:00:00	Cabelo
33ed8517-c7b2-4acf-bd14-82ae8ff34a22	2025-01-24 00:00:00	18:00	Wesley santos	Bruno	558196817233@c.us	2025-01-20 00:00:00	Cabelo
2e8ad183-a290-41c4-8d91-ea11fbf8fea9	2025-02-01 00:00:00	17:20	Kaio 	Wallyson	local	2025-01-30 10:10:48.483	Cabelo
b30de59d-2ed2-4cf1-aa76-0d2972b41eef	2025-01-27 00:00:00	13:20	Adilene 	Bruno	local	2025-01-25 10:06:39.777	Cabelo
34f44c10-1ab2-419e-89ef-796a97b7c170	2025-02-04 00:00:00	09:20	Allison 	Wallyson	local	2025-01-30 10:11:12.434	Cabelo
7cdb75d3-bdb6-4bc2-8520-dae1aa30efac	2025-01-30 00:00:00	14:00	matheus	Bruno	558196073942@s.whatsapp.net	2025-01-30 00:00:00	Cabelo+Barba
d48036ee-74de-4e14-bf3f-d4e189139aee	2025-01-30 00:00:00	15:20	Robert	Bruno	local	2025-01-30 15:13:13.065	Cabelo
d4699604-b2f3-459f-b610-bb9bc7dacb65	2025-01-24 00:00:00	15:20	Melqui 	Wallyson	local	2025-01-23 16:38:36.485	Cabelo
d6fae49e-bdc1-4a0f-9374-f6c1f5a41a01	2025-01-24 00:00:00	11:00	Ivisson Melo Shoes	Bruno	558197279446@c.us	2025-01-20 00:00:00	Cabelo
a493acfa-67ed-4c8d-9bf0-2dffd50e4dc6	2025-01-24 00:00:00	09:40	Luan victor	Bruno	558181307345@c.us	2025-01-20 00:00:00	Cabelo+Sobrancelha
ec481cee-2c41-4e59-8576-edca16afd575	2025-01-27 00:00:00	09:00	Rubens 	Wallyson	local	2025-01-23 20:50:35.504	Cabelo
40f641ab-c0e2-4213-a2c8-93f8c9c44492	2025-01-27 00:00:00	15:20	Wendel 	Wallyson	local	2025-01-25 12:26:05.934	Cabelo
a8f36a17-f5c2-40b7-bc04-8992353a8adb	2025-01-25 00:00:00	16:40	Weslley	Bruno	558197215641@c.us	2025-01-20 00:00:00	Cabelo
ceeba14b-89fa-4290-9606-324f9ea3cbe6	2025-01-30 00:00:00	10:20	Deyvid Jhonatan	Bruno	558199201610@c.us	2025-01-21 00:00:00	Cabelo
44eb1cfb-a290-4549-b94b-bf0afb116df1	2025-01-25 00:00:00	14:40	Gustavo	Bruno	558198983986@c.us	2025-01-21 00:00:00	Cabelo
26f0d7e4-26be-4145-a81a-2963b3802470	2025-01-27 00:00:00	10:20	Gustavo 	Wallyson	local	2025-01-25 15:02:29.091	Cabelo
5bc2bc8c-37e3-4608-8b5f-fdf791cc8aab	2025-02-01 00:00:00	13:20	Emanoel 	Bruno	local	2025-01-25 16:50:05.293	Barba
6cba65fc-3bcf-42fe-9da1-d00b652602b6	2025-01-25 00:00:00	17:20	Maicon	Bruno	558194686969@c.us	2025-01-21 00:00:00	Cabelo
96a1c20c-4e2b-4a46-a856-5d64a58cc7a7	2025-01-24 00:00:00	17:20	Ullisses	Bruno	558182686327@c.us	2025-01-21 00:00:00	Cabelo
38623cd8-511c-4f5a-b946-9f595858cbe3	2025-01-30 00:00:00	18:00	wellington	Wallyson	558196852620@s.whatsapp.net	2025-01-26 00:00:00	Cabelo+Barba
fd8b27de-a5ab-4001-ad97-30b45eebc310	2025-01-27 00:00:00	14:40	ryan	Wallyson	5511959620317@s.whatsapp.net	2025-01-26 00:00:00	Cabelo+Sobrancelha
1cc27f3c-60cd-42c6-a66b-922047a9223b	2025-01-24 00:00:00	14:00	Yago	Bruno	558195055274@c.us	2025-01-21 00:00:00	Cabelo+Sobrancelha
b511346e-ef7c-4111-b769-160e4bfdde64	2025-01-24 00:00:00	19:20	Rafael Melo (gostosão)	Bruno	558199365900@c.us	2025-01-21 00:00:00	Cabelo
0f91512b-6fcb-442f-a51e-e27691a70791	2025-02-01 00:00:00	08:00	paulo campos	Bruno	558173402335@s.whatsapp.net	2025-01-27 00:00:00	Cabelo+Barba
94853ba6-de06-4898-ae74-f8b3b1a251e6	2025-02-01 00:00:00	10:00	Heraldo progressiva	Bruno	local	2025-01-27 10:11:06.492	Cabelo+Barba
06a8f171-5e16-4fb2-9a60-2d6a8ed7b750	2025-02-01 00:00:00	10:40	Heraldo 	Bruno	local	2025-01-27 10:12:35.675	Cabelo
3993917b-d8e3-411f-9cca-c6008b1cb3be	2025-01-27 00:00:00	13:20	letho	Wallyson	558199387144@s.whatsapp.net	2025-01-27 00:00:00	Cabelo
c696fa83-aea1-44cc-a88e-0f0c280443fa	2025-01-27 00:00:00	11:00	Volution plus	Wallyson	local	2025-01-27 11:47:37.218	Cabelo
835b3cf2-00a9-4ac0-9c8f-e320fe767ed4	2025-01-24 00:00:00	11:40	André Leal	Bruno	558197273032@c.us	2025-01-21 00:00:00	Cabelo
57b66a76-41d5-4c60-8ad8-75f7660733d8	2025-01-27 00:00:00	11:40	Ana carla	Wallyson	local	2025-01-27 11:48:22.252	Cabelo
8dbe0716-b55a-4378-9646-0c870a0bd2f9	2025-01-28 00:00:00	11:40	breno	Bruno	558198437880@s.whatsapp.net	2025-01-27 00:00:00	Cabelo+Sobrancelha
766e49ed-b6fe-40c8-b241-750057493bb2	2025-02-04 00:00:00	18:40	felipe	Wallyson	558181451150@s.whatsapp.net	2025-01-27 00:00:00	Cabelo
94ca9240-ebab-4276-829e-c670a24e4012	2025-01-24 00:00:00	16:00	IAguiar 	Wallyson	local	2025-01-21 19:46:47.112	Cabelo
5000fb04-7ae0-4071-8854-8207932cfbc2	2025-01-24 00:00:00	18:40	Arthur	Bruno	558194115511@c.us	2025-01-21 00:00:00	Cabelo+Barba
e1bcbaef-495c-486f-9535-e6fc5994d72a	2025-01-25 00:00:00	14:00	Lucas Gabriel	Bruno	558199333703@c.us	2025-01-21 00:00:00	Cabelo
7d31a636-f2f5-4d9d-a9cd-f93710f24de8	2025-01-25 00:00:00	12:00	Gabriel	Bruno	558192417684@c.us	2025-01-21 00:00:00	Cabelo+Sobrancelha
932ffe13-f2cb-4709-a616-4d06f6652c0d	2025-01-27 00:00:00	16:40	Tacila 	Wallyson	local	2025-01-27 14:46:32.933	Cabelo
2394d932-d877-40db-b624-80afbe4b706f	2025-01-27 00:00:00	18:00	Jesus 	Wallyson	local	2025-01-27 15:10:27.861	Cabelo
c85b4ba7-7b54-42c6-bb93-92b056a72c2b	2025-02-01 00:00:00	11:20	luis	Bruno	558199061615@s.whatsapp.net	2025-01-27 00:00:00	Cabelo+Sobrancelha
74bf49c2-d034-4edb-9b46-40636fb3881c	2025-02-01 00:00:00	12:00	horlean	Bruno	558281363560@s.whatsapp.net	2025-01-27 00:00:00	Cabelo+Sobrancelha
89535f55-94fa-4012-a63f-2f5322f14473	2025-01-28 00:00:00	17:20	Lucas Bruna 	Bruno	local	2025-01-27 16:13:02.732	Cabelo
f0badb36-f8e3-407a-ae9d-ee4fc3445607	2025-01-28 00:00:00	13:20	ataliba	Bruno	558182671510@s.whatsapp.net	2025-01-27 00:00:00	Barba
d0a32aad-8596-46a2-9942-c96c6e054477	2025-01-28 00:00:00	14:40	Vicente neto 	Bruno	local	2025-01-27 17:14:43.389	Cabelo
9e622eb7-3fd5-4e91-b8b2-acf143519e2a	2025-01-29 00:00:00	14:00	joão neto	Bruno	558197626118@s.whatsapp.net	2025-01-27 00:00:00	Cabelo
efe1ddb7-a347-4dda-b001-bd6c79e7e9b3	2025-01-31 00:00:00	16:40	elizaldo lindao	Bruno	558198591039@s.whatsapp.net	2025-01-29 00:00:00	Cabelo
0fc8ea9d-3199-4a01-94b2-07caab37d45e	2025-02-03 00:00:00	09:40	Juninho 	Bruno	local	2025-01-29 13:26:10.597	Cabelo
d4a08bdc-51ba-409a-9bf0-82e362fbb735	2025-01-28 00:00:00	18:40	0	Bruno	558196098296@s.whatsapp.net	2025-01-27 00:00:00	Cabelo
644f4e38-5e25-4a09-b4f2-5d27c1a4474d	2025-02-01 00:00:00	17:20	Dirceu prog	Bruno	local	2025-01-29 13:29:42.718	Cabelo
22b78e1e-2932-47ec-9f82-99496d70a8bc	2025-01-29 00:00:00	16:00	Michel 	Wallyson	local	2025-01-27 20:25:10.876	Cabelo
de562480-5944-4f33-8da0-a3df2afcab6a	2025-01-29 00:00:00	17:20	everaldo	Wallyson	558199297533@s.whatsapp.net	2025-01-29 00:00:00	Cabelo
cf519d6e-36ff-4c8f-ab16-20640ec13155	2025-02-04 00:00:00	11:20	natacha	Wallyson	558197947166@s.whatsapp.net	2025-01-29 00:00:00	Cabelo+Sobrancelha
4dc65580-5ff8-49cc-ac62-f18fd35121d8	2025-01-31 00:00:00	20:00	Guilherme jogador	Bruno	local	2025-01-29 17:36:55.841	Cabelo
41acdad2-2365-4a74-bd88-b52e5759de16	2025-01-31 00:00:00	11:00	bruno	Bruno	558189873832@s.whatsapp.net	2025-01-29 00:00:00	Cabelo+Barba
d3aa9ab1-7cd6-4f8d-b1f9-7ea3c451b176	2025-01-31 00:00:00	18:40	Juninho compadre 	Wallyson	local	2025-01-30 09:43:51.693	Cabelo+Barba
1e7d2ae2-8e6f-4f77-a588-392ac70a15dc	2025-01-30 00:00:00	13:20	nickolas gabriel silva gomes	Bruno	558196326770@s.whatsapp.net	2025-01-30 00:00:00	Cabelo
1c64d4c1-eba8-45d9-9524-f08747a6278b	2025-01-31 00:00:00	11:40	paulo victor	Bruno	558171068205@s.whatsapp.net	2025-01-30 00:00:00	Cabelo+Sobrancelha
e9fd1514-836b-4e0f-937a-503180ef0c82	2025-01-30 00:00:00	13:20	carlos	Wallyson	558192507833@s.whatsapp.net	2025-01-30 00:00:00	Cabelo
227e9411-74ec-4670-8d92-0591ac62fc1a	2025-02-01 00:00:00	14:40	erick vinícius	Bruno	558195786256@s.whatsapp.net	2025-01-30 00:00:00	Cabelo+Sobrancelha
44f6a015-e6ff-4225-ae94-1da78b9c61de	2025-02-04 00:00:00	16:00	Flávio 	Wallyson	local	2025-01-30 17:12:24.93	Cabelo
067312dc-0f76-4ce1-a289-4bfc8df9e0ca	2025-01-31 00:00:00	15:20	pedro robson	Wallyson	558198929820@s.whatsapp.net	2025-01-30 00:00:00	Cabelo
f615322b-b868-4634-ae45-6010822fc96f	2025-01-31 00:00:00	14:40	matheus	Wallyson	558196490565@s.whatsapp.net	2025-01-30 00:00:00	Cabelo
ce902a5a-70c0-479c-99b6-5a79e5cc06c1	2025-02-01 00:00:00	08:00	pedro, irmão de tiago.	Wallyson	558181319163@s.whatsapp.net	2025-01-30 00:00:00	Cabelo
58c1b146-d3ed-4997-884a-5d3ee988f487	2025-02-03 00:00:00	16:00	geovane silva	Bruno	558198906893@s.whatsapp.net	2025-01-30 00:00:00	Cabelo
e597423f-5c23-45a5-b603-57530056529a	2025-01-31 00:00:00	09:00	ian menezes	Bruno	558196739228@s.whatsapp.net	2025-01-30 00:00:00	Cabelo
5cee8be4-7f15-4382-ad5e-2bc54da79a08	2025-01-31 00:00:00	10:40	Paulo 	Wallyson	local	2025-01-31 12:17:16.587	Cabelo
15053f44-c07e-4cac-96e0-06d39e8a946e	2025-01-31 00:00:00	13:20	Irmão Jesus 	Wallyson	local	2025-01-31 12:17:43.555	Cabelo
a074dee2-da16-47e1-ae75-cf0389806580	2025-01-31 00:00:00	16:00	Allysson 	Wallyson	local	2025-01-31 12:19:38.154	Cabelo
9e94632d-ddc9-4b0a-ada2-5a47c9ae6e51	2025-01-27 00:00:00	18:40	miguel	Wallyson	558199980878@s.whatsapp.net	2025-01-27 00:00:00	Cabelo
2327850e-b532-4f43-9b1b-7c756ce48828	2025-01-29 00:00:00	14:40	Felipe Barbosa 	Wallyson	local	2025-01-27 21:59:49.671	Cabelo+Barba
3cbcc510-3352-403e-adf6-b497ee8437be	2025-01-28 00:00:00	15:20	henrique	Bruno	558194159367@s.whatsapp.net	2025-01-27 00:00:00	Cabelo+Sobrancelha
6b37c151-fe7c-4fd5-9ec1-92a3cb2d1c70	2025-01-31 00:00:00	18:40	josé kauã	Bruno	558196327506@s.whatsapp.net	2025-01-27 00:00:00	Cabelo+Sobrancelha
eec2f3b3-424c-4fed-915e-dd43b26694d2	2025-01-31 00:00:00	17:20	Matheus 	Wallyson	local	2025-01-31 14:19:00.36	Cabelo
ce053029-d0e8-4148-8401-5d3067c1a739	2025-01-29 00:00:00	08:00	Fernando 	Wallyson	local	2025-01-28 12:21:10.321	Cabelo
0013c97b-37b4-4528-8a77-616e3848c636	2025-01-29 00:00:00	11:00	bruno andrade	Bruno	558171155699@s.whatsapp.net	2025-01-28 00:00:00	Cabelo+Barba
bec8f7ef-99f6-4f82-b617-a4a45a76cd4e	2025-01-29 00:00:00	11:40	adson	Bruno	558195002521@s.whatsapp.net	2025-01-28 00:00:00	Cabelo
e6c278d3-0e34-459b-955a-c0229479633d	2025-01-29 00:00:00	10:40	john	Wallyson	558197904314@s.whatsapp.net	2025-01-28 00:00:00	Cabelo+Barba
78f9a97e-a7e6-4268-a17b-418dcb881898	2025-02-01 00:00:00	14:00	daniel jonas martins queiroz	Bruno	558181473848@s.whatsapp.net	2025-01-28 00:00:00	Cabelo
8f9962fd-0d36-4cb7-8b02-7e47db407cb2	2025-01-28 00:00:00	11:00	Fernando 	Bruno	local	2025-01-28 13:34:34.29	Cabelo
d3fb6472-bf12-4bcf-a5f2-aa8d60df5cde	2025-02-01 00:00:00	11:20	Davi 	Wallyson	local	2025-01-28 13:41:25.552	Cabelo
0179a915-9f79-4f92-9f64-9586c7c82d95	2025-02-03 00:00:00	14:00	Ryan 	Bruno	local	2025-01-31 16:11:00.3	Cabelo+Barba
ddc57723-3a02-4996-ab64-ac01b5127ea9	2025-02-04 00:00:00	18:00	samuel	Wallyson	558196448583@s.whatsapp.net	2025-01-28 00:00:00	Cabelo
2f4b78ba-3bc1-4db6-8cd0-938671969460	2025-01-30 00:00:00	16:00	elane	Bruno	558197087531@s.whatsapp.net	2025-01-28 00:00:00	Cabelo
b2fef6ca-41d0-4400-b855-43831ef313ff	2025-02-03 00:00:00	09:00	Reservar se precisar	Bruno	local	2025-01-31 16:11:42.066	Cabelo
90040e28-a890-4ac5-897d-0f186f4e8520	2025-01-29 00:00:00	18:40	felipe silva	Bruno	558196065070@s.whatsapp.net	2025-01-28 00:00:00	Cabelo
3b32a9c7-1107-4811-8f83-92887cec8e9f	2025-01-30 00:00:00	08:00	pedro lucas	Wallyson	558197832195@s.whatsapp.net	2025-01-28 00:00:00	Cabelo
939da402-5e02-4cb1-b73e-10a28badd3b7	2025-01-29 00:00:00	16:40	Allysson 	Wallyson	local	2025-01-28 17:27:35.494	Cabelo
264b1f6d-2945-4349-bfc1-ac657a30f93c	2025-01-29 00:00:00	13:20	paulo césar	Bruno	558195254306@s.whatsapp.net	2025-01-28 00:00:00	Cabelo
62e2c4b6-1a28-4baf-846d-3f4e18efa45a	2025-01-29 00:00:00	14:00	Carmen (João)	Wallyson	local	2025-01-28 18:23:17.102	Cabelo
bdb9ca9b-d658-4069-b931-ebb70ca7aff0	2025-01-29 00:00:00	15:20	Carlos cabelo cacheado	Bruno	local	2025-01-28 20:38:38.103	Cabelo
47c1e68b-41c7-4350-bdf1-9c9638c2e2ea	2025-01-29 00:00:00	18:00	Levino 	Wallyson	local	2025-01-28 20:40:17.133	Cabelo+Barba
253186fd-946d-4d1e-ac93-27fe981a4eac	2025-01-29 00:00:00	15:20	Ruan 	Wallyson	local	2025-01-28 20:45:48.731	Cabelo
9f786b5a-6eb4-4b70-9af1-4adab5f4c7da	2025-01-31 00:00:00	17:20	osmar gouveia	Bruno	558196267018@s.whatsapp.net	2025-01-28 00:00:00	Cabelo
a023a589-2531-4c57-89ea-766ccdf69a1f	2025-01-30 00:00:00	17:20	Lucian 	Bruno	local	2025-01-29 11:24:37.312	Cabelo+Barba
e8f47d48-8035-4ea6-97e0-66606c4d4580	2025-01-30 00:00:00	18:40	denílson	Bruno	558197084296@s.whatsapp.net	2025-01-28 00:00:00	Barba
5556f44f-5cb3-450f-be32-3cb73e4159d9	2025-01-31 00:00:00	19:20	lucas	Bruno	558182451503@s.whatsapp.net	2025-01-28 00:00:00	Cabelo+Sobrancelha
6d35074e-07a0-4f56-8b2a-9f2ddffddccb	2025-01-18 00:00:00	08:00	Indisponivel	Bruno	Indisponivel	2025-01-28 22:59:32.046	
742ccd5f-ab0a-4052-b389-dcc82f16e05e	2025-01-18 00:00:00	08:40	Indisponivel	Bruno	Indisponivel	2025-01-28 22:59:32.152	
876be521-1d11-4a58-ac7d-ee0c719a0fc6	2025-01-18 00:00:00	09:20	Indisponivel	Bruno	Indisponivel	2025-01-28 23:00:31.836	
a6f6c482-5821-4e58-acc7-6c8169722ac0	2025-01-18 00:00:00	10:00	Indisponivel	Bruno	Indisponivel	2025-01-28 23:00:31.908	
dcbadaeb-af68-4170-913f-0dc09119c74f	2025-01-18 00:00:00	10:40	Indisponivel	Bruno	Indisponivel	2025-01-28 23:00:31.943	
88878790-0fab-4f9a-b3a3-6217c135763d	2025-01-18 00:00:00	11:20	Indisponivel	Bruno	Indisponivel	2025-01-28 23:00:31.979	
fd8e03bd-c0a0-442b-a60b-6e7aeb634243	2025-02-01 00:00:00	15:20	João lucas( Alan Max 	Bruno	local	2025-01-28 23:16:46.824	Cabelo
f995c270-c263-491e-ab1a-c23f6b5093a8	2025-01-31 00:00:00	14:00	Vinicius melo 	Bruno	local	2025-01-28 23:29:45.801	Cabelo+Sobrancelha
37236fe3-6cdc-41cb-afde-99dcea2d5c98	2025-02-03 00:00:00	10:20	antônio henrique	Bruno	558198446899@s.whatsapp.net	2025-01-29 00:00:00	Cabelo
157f542e-7bb0-4b0c-9b1b-e368e3f236c0	2025-01-30 00:00:00	17:20	raul augusto	Wallyson	558197886583@s.whatsapp.net	2025-01-29 00:00:00	Cabelo
c8455042-613c-4aeb-9e03-1ef7c9fb84df	2025-01-30 00:00:00	09:00	Dorgyl o melhor do Brasil 	Bruno	local	2025-01-30 10:05:46.594	Cabelo+Barba
64df7f90-dd21-409e-8e5e-ac747da3024b	2025-02-04 00:00:00	08:40	adaias gabriel	Wallyson	558195077253@s.whatsapp.net	2025-01-30 00:00:00	Cabelo
9a01c83c-e61d-49d3-b3aa-721f7fcd421a	2025-01-30 00:00:00	14:40	Guilherme Ângela 	Bruno	local	2025-01-30 15:08:05.1	Cabelo
3a511e09-5d7f-4a1d-83f1-072a779142f2	2025-01-30 00:00:00	18:00	marcos paulo	Bruno	558197806162@s.whatsapp.net	2025-01-30 00:00:00	Cabelo+Sobrancelha
ba38dbe9-422d-41a0-8b3c-f1d75ac5aaf3	2025-02-01 00:00:00	15:20	Leandro 	Wallyson	local	2025-01-30 17:16:20.619	Cabelo+Sobrancelha
4c2ca551-ca03-4de7-ae60-7c6bf89db3bb	2025-01-31 00:00:00	14:00	gabriel	Wallyson	558181774084@s.whatsapp.net	2025-01-30 00:00:00	Cabelo
0b944fb1-63ca-4497-aebe-c90f214d4cc8	2025-02-04 00:00:00	13:20	luan	Bruno	558197301690@s.whatsapp.net	2025-01-30 00:00:00	Cabelo
ed15e310-5996-43d2-8ff4-664876dfa85f	2025-02-03 00:00:00	11:00	Pai de Daniel 	Bruno	local	2025-01-31 00:21:17.949	Cabelo
06a93178-796a-4821-9b27-55f74d00bae5	2025-02-03 00:00:00	11:40	Deyvid Jhonatan 	Bruno	local	2025-01-31 00:21:49.494	Cabelo
047cf916-5290-4305-b58b-36b78c7748bf	2025-01-31 00:00:00	16:00	levi gabriel	Wallyson	558199292453@s.whatsapp.net	2025-01-30 00:00:00	Cabelo
0bcbd2e7-3163-4c0f-97da-846bf0713f97	2025-02-01 00:00:00	10:00	Cleiton 	Wallyson	local	2025-01-31 12:21:01.45	Cabelo
310380cd-5a7a-4502-a51c-bf84a910428d	2025-01-31 00:00:00	15:20	sidney júnior	Bruno	558191536718@s.whatsapp.net	2025-01-31 00:00:00	Cabelo
888e860a-7ddf-435f-8891-8f49e92b2608	2025-01-31 00:00:00	16:40	elysson	Wallyson	558199697267@s.whatsapp.net	2025-01-31 00:00:00	Cabelo+Sobrancelha
eba76379-eced-4391-8195-744ad76eef6a	2025-01-31 00:00:00	18:00	Indisponivel	Wallyson	Indisponivel	2025-01-31 16:39:14.355	
166831e7-8452-44b9-bb39-9bc73cf3ff3b	2025-02-04 00:00:00	18:00	Valney	Bruno	local	2025-01-31 17:56:04.435	Cabelo
3a58d9bf-b54c-4155-a57d-114a5d217139	2025-02-04 00:00:00	18:40	Valney 	Bruno	local	2025-01-31 17:56:21.352	Cabelo
44a112a5-8825-483d-aa2f-e4269a9c5643	2025-02-01 00:00:00	16:00	Moisés 	Wallyson	local	2025-01-31 19:00:36.398	Cabelo
c1eacbc3-b875-4518-a78e-c5020dc576ed	2025-02-05 00:00:00	09:00	pedro henrique	Bruno	558198446899@s.whatsapp.net	2025-01-31 00:00:00	Cabelo
d3484a30-7fe8-4dc6-9369-deeaf760221b	2025-01-31 00:00:00	19:20	ricardo sóstenes	Wallyson	558182727353@s.whatsapp.net	2025-01-31 00:00:00	Cabelo
981712ed-b729-472b-a4f9-dc22a749c4c6	2025-02-01 00:00:00	18:00	João Paulo 	Wallyson	local	2025-01-31 21:41:20.318	Cabelo+Barba
a5b9a024-8a0b-41e8-977b-777f72475e19	2025-02-03 00:00:00	18:00	renan silva	Bruno	558199185971@s.whatsapp.net	2025-01-31 00:00:00	Cabelo
dbc8591f-45cf-4c8b-947b-44f22bc7acc1	2025-02-04 00:00:00	16:40	glaucio	Wallyson	558187255411@s.whatsapp.net	2025-01-31 00:00:00	Cabelo
a49e1df6-cc88-4f86-955c-ed46cc472681	2025-02-01 00:00:00	14:00	Zé véi 	Wallyson	local	2025-01-31 23:38:59.809	Cabelo
b5d73d66-f47f-4191-a8fa-a6bc1826cfc8	2025-02-03 00:00:00	15:20	pedro	Bruno	558198110192@s.whatsapp.net	2025-01-31 00:00:00	Cabelo
25475756-23d7-4379-9693-9f6be81aebf1	2025-02-06 00:00:00	13:20	Indisponivel	Bruno	Indisponivel	2025-02-01 10:18:37.546	
dc53c7f5-44a0-43e0-bce1-eb583795a86e	2025-02-06 00:00:00	14:00	Indisponivel	Bruno	Indisponivel	2025-02-01 10:18:37.69	
897a54ea-5249-4103-a80a-95ac5ee9c052	2025-02-06 00:00:00	14:40	Indisponivel	Bruno	Indisponivel	2025-02-01 10:18:37.721	
27fddb5f-1734-4560-9c93-2ee0c9990cb1	2025-02-06 00:00:00	15:20	Indisponivel	Bruno	Indisponivel	2025-02-01 10:18:37.754	
4e6847a3-9491-4aad-adb4-9303be1b3cbf	2025-02-06 00:00:00	16:00	Indisponivel	Bruno	Indisponivel	2025-02-01 10:18:37.785	
d7efc563-960d-4664-8382-2d46e035d67f	2025-02-06 00:00:00	16:40	Indisponivel	Bruno	Indisponivel	2025-02-01 10:18:37.818	
082ae2e1-e91b-4999-a9ee-d3af4d312f86	2025-02-06 00:00:00	17:20	Indisponivel	Bruno	Indisponivel	2025-02-01 10:18:37.85	
4c0e281a-c96d-46fa-bd2c-8196687c70e3	2025-02-06 00:00:00	18:00	Indisponivel	Bruno	Indisponivel	2025-02-01 10:18:37.881	
b2d472ca-1b24-4f94-9343-8d13cf04e775	2025-02-06 00:00:00	18:40	Indisponivel	Bruno	Indisponivel	2025-02-01 10:18:37.916	
0e610d6a-842e-4c0f-93f4-1d8271845e70	2025-02-03 00:00:00	18:40	ryan	Bruno	558196680308@s.whatsapp.net	2025-02-01 00:00:00	Cabelo
1a11a704-2ab3-46b0-88c8-2aad74ad7968	2025-02-01 00:00:00	14:40	Fabrício 	Wallyson	local	2025-02-01 12:50:10.558	Cabelo
066b3400-083c-4b82-be13-dc3e26292e86	2025-02-04 00:00:00	14:00	horlean	Wallyson	558281363560@s.whatsapp.net	2025-02-01 00:00:00	Cabelo+Sobrancelha
8e067e42-780a-446d-aa55-87eeae9583cd	2025-02-05 00:00:00	18:00	Emanoel	Bruno	local	2025-02-01 17:10:15.924	Cabelo+Barba
5a44ef15-97d4-4339-b7c1-88258ac9a2c3	2025-02-05 00:00:00	14:00	luiz henrique arruda de lima	Bruno	558189496855@s.whatsapp.net	2025-02-01 00:00:00	Cabelo
2dd2f2a1-2a43-424d-869c-b7f36259af15	2025-02-05 00:00:00	14:40	kayque da silva	Bruno	558197975570@s.whatsapp.net	2025-02-01 00:00:00	Cabelo+Sobrancelha
01690a90-a13b-4f96-9c71-2d350f989a5a	2025-02-27 00:00:00	18:40	Caio 	Wallyson	local	2025-02-01 21:09:35.191	Cabelo
95174185-6d2f-4516-a614-38f72f576fe7	2025-02-08 00:00:00	08:40	Wilson 	Wallyson	local	2025-02-02 15:45:02.252	Cabelo+Sobrancelha
337595a1-7563-4727-bebb-3e649e56c1c3	2025-02-05 00:00:00	16:40	bruno henrique	Bruno	558197349442@s.whatsapp.net	2025-02-02 00:00:00	Cabelo
9c0e1fed-1a77-4019-bb16-2472ba04e7bc	2025-02-05 00:00:00	16:40	joão martins	Wallyson	558197349442@s.whatsapp.net	2025-02-02 00:00:00	Cabelo
362e7dc9-53e1-4ffb-925d-378e0742bdf2	2025-02-04 00:00:00	10:20	george luiz	Bruno	558198592917@s.whatsapp.net	2025-02-02 00:00:00	Cabelo
576cb334-f591-4406-badd-d5ff4e3530d0	2025-02-04 00:00:00	15:20	Miguel 	Wallyson	local	2025-02-02 19:55:57.645	Cabelo
cfee1a75-2937-4e82-bcb2-4944036dc05a	2025-02-04 00:00:00	16:00	pedro sérgio	Bruno	558197271391@s.whatsapp.net	2025-02-02 00:00:00	Cabelo+Sobrancelha
da3baac7-7c23-4c16-bb9d-7c9e3b0897ec	2025-02-05 00:00:00	18:40	matheus fillipe	Bruno	558192151856@s.whatsapp.net	2025-02-02 00:00:00	Cabelo+Sobrancelha
333d318c-6441-4949-9f86-efd1bf5d59ea	2025-02-03 00:00:00	14:40	Renan 	Bruno	local	2025-02-03 00:58:08.661	Cabelo
913e9979-c8ab-4014-808e-762b973a71e1	2025-02-04 00:00:00	14:40	enzo gabriel	Wallyson	558198812494@s.whatsapp.net	2025-02-03 00:00:00	Cabelo
99e50039-2d61-47d8-82e9-c73e9dae15b5	2025-02-05 00:00:00	13:20	fabiano	Bruno	558194610556@s.whatsapp.net	2025-02-03 00:00:00	Cabelo
9973d0bc-4366-4b4c-b037-c428e1f39b65	2025-03-15 00:00:00	08:40	Heraldo	Bruno	local	2025-03-06 23:23:08.92	Barba
97bb0a37-7d25-45ad-9143-dda826e30d22	2025-02-04 00:00:00	17:20	vandro júnior	Wallyson	558196610362@s.whatsapp.net	2025-02-03 00:00:00	Cabelo
a1988cfd-2d3b-43fc-aea6-88d5b51b2617	2025-02-03 00:00:00	17:20	breno	Bruno	558198437880@s.whatsapp.net	2025-02-03 00:00:00	Cabelo+Sobrancelha
92279f6d-8542-4fa2-9a89-d98d44298de6	2025-02-03 00:00:00	16:40	Juninho	Bruno	local	2025-02-03 13:25:10.304	Cabelo+Sobrancelha
58effdf4-2e22-4683-b6bc-c04f2c70015f	2025-02-04 00:00:00	11:00	gabriel henrique	Bruno	558185537298@s.whatsapp.net	2025-02-03 00:00:00	Cabelo
a8a79d7a-4265-40b7-a9d9-785ea5561cc4	2025-02-04 00:00:00	11:40	joão pedro campos	Bruno	558196073970@s.whatsapp.net	2025-02-03 00:00:00	Cabelo+Barba
c66fae51-94ce-4a86-9fd8-ec4d4a6317f5	2025-02-05 00:00:00	16:00	Breno irmão de Ruan 	Wallyson	local	2025-02-03 14:57:33.155	Cabelo
fecb555d-f56f-4c52-9efd-8a84b5cae995	2025-02-04 00:00:00	17:20	rhuan	Bruno	558195251500@s.whatsapp.net	2025-02-03 00:00:00	Cabelo
2a3b07c1-142d-4d79-b757-e61ce1a9c0fc	2025-02-04 00:00:00	09:40	marlon	Bruno	558194187583@s.whatsapp.net	2025-02-03 00:00:00	Cabelo
3db2f7a7-2715-429c-b94e-a6f619cafaaa	2025-02-05 00:00:00	09:40	Wellington supremo botox	Bruno	local	2025-02-03 18:04:05.228	Cabelo
06f088e0-eb1b-4f62-9f2f-27909334db24	2025-02-04 00:00:00	16:40	ualesson	Bruno	558199786467@s.whatsapp.net	2025-02-03 00:00:00	Cabelo
95a7a373-d28c-4e58-bcd3-d285c4e24892	2025-02-08 00:00:00	08:00	Josivaldo	Bruno	local	2025-02-03 18:54:37.133	Cabelo
2ad0e3a5-bd35-480b-8b5f-d19bb6e917ba	2025-02-06 00:00:00	10:20	ricardo	Bruno	5513982174481@s.whatsapp.net	2025-02-03 00:00:00	Cabelo
3d3deef3-1630-41c5-b100-a4cb6a3c52f1	2025-02-05 00:00:00	11:40	manoel neto	Bruno	558195055212@s.whatsapp.net	2025-02-03 00:00:00	Cabelo
10782fb6-8e44-4546-bec5-f7c1e4f3b51e	2025-02-07 00:00:00	15:20	joão lucas	Bruno	558189785404@s.whatsapp.net	2025-02-03 00:00:00	Cabelo+Sobrancelha
22e4523d-98d1-4883-90c6-dabdb236ba23	2025-02-04 00:00:00	14:40	pedro henrique	Bruno	558199656200@s.whatsapp.net	2025-02-03 00:00:00	Cabelo+Barba
5bf10ee4-c382-45cb-bda4-8724a497372d	2025-02-04 00:00:00	09:00	arthur sales	Bruno	558199775133@s.whatsapp.net	2025-02-03 00:00:00	Cabelo+Sobrancelha
d55e5a0c-3c59-4c98-bb04-df6eb70a2539	2025-02-05 00:00:00	15:20	Luiz 	Wallyson	local	2025-02-03 22:23:04.99	Cabelo+Sobrancelha
97ad56f8-79fd-40ee-b1be-86193a335fdb	2025-02-05 00:00:00	17:20	welliton fonseca	Bruno	558198022472@s.whatsapp.net	2025-02-03 00:00:00	Cabelo+Barba
a4b44075-0527-4f9f-9304-9f6e481fe46c	2025-02-05 00:00:00	18:00	Vinicius 	Wallyson	local	2025-02-04 00:10:40.853	Cabelo
40bd78b5-f3d9-47b5-bdf5-dd77bfa06931	2025-02-08 00:00:00	08:40	Heraldo 	Bruno	local	2025-02-04 01:14:54.636	Barba
72590cc4-8de9-412a-85af-ac7c08167503	2025-02-08 00:00:00	09:20	Janielson	Bruno	local	2025-02-04 01:15:21.238	Cabelo
faef6b7a-a0ef-436e-9091-66c0cc267b8b	2025-02-08 00:00:00	10:00	Janielson 	Bruno	local	2025-02-04 01:15:36.575	Cabelo
c2295717-883a-4462-a19e-4bdce79d7735	2025-02-07 00:00:00	19:20	fernando loja de suplementos	Bruno	558199948217@s.whatsapp.net	2025-02-04 00:00:00	Cabelo
1f0c55c2-32f7-42af-80bf-bb983f7bfff4	2025-02-08 00:00:00	15:20	aryel emanoel	Bruno	558199124476@s.whatsapp.net	2025-02-04 00:00:00	Cabelo
1805fa81-3328-40f9-a26c-6d25dbd2a6d5	2025-02-08 00:00:00	16:00	manoel josé	Bruno	558199124476@s.whatsapp.net	2025-02-04 00:00:00	Cabelo
3ad99da6-c969-4794-b262-e67216562ed5	2025-02-08 00:00:00	17:20	david callebe	Bruno	558191447860@s.whatsapp.net	2025-02-04 00:00:00	Cabelo
258b5437-c6b3-4a33-b76b-d535e2fe0818	2025-02-05 00:00:00	17:20	miguel	Wallyson	558199980878@s.whatsapp.net	2025-02-04 00:00:00	Cabelo
4315b069-0cc5-4ea7-a317-407134cb4a80	2025-02-07 00:00:00	11:40	Kaio VR	Bruno	local	2025-02-04 18:58:11.878	Cabelo
941c751a-6a26-4886-96f4-f476712f534d	2025-02-08 00:00:00	14:40	pedro	Bruno	558198110192@s.whatsapp.net	2025-02-04 00:00:00	Cabelo
58edc450-5bd8-4f0e-a680-dfaf8a03207f	2025-02-05 00:00:00	08:00	Adaias	Wallyson	local	2025-02-04 22:46:28.066	Cabelo
0b20ff6a-da00-4158-9fb7-23e6f1210841	2025-02-08 00:00:00	10:00	Vaninho 	Wallyson	local	2025-02-04 23:03:40.432	Cabelo+Barba
f7bc90b7-ee64-453e-868c-9057c1227846	2025-02-05 00:00:00	10:20	larissa	Bruno	558195712225@s.whatsapp.net	2025-02-04 00:00:00	Cabelo
3f74cc7c-f866-46c1-8c10-a8cae026e968	2025-02-05 00:00:00	18:40	Samuel ferreira 	Wallyson	local	2025-02-05 01:27:34.159	Cabelo+Barba
5a20d7bf-f0bb-45e6-aec3-a21b20303b27	2025-02-05 00:00:00	11:00	ítalo sena	Bruno	558199966048@s.whatsapp.net	2025-02-05 00:00:00	Cabelo
e1936ff0-7e32-48f5-9d40-936548387b51	2025-02-08 00:00:00	09:20	felipe	Wallyson	558181622879@s.whatsapp.net	2025-02-05 00:00:00	Barba
2438e2e3-638e-4453-bfbc-adf4993ea939	2025-02-12 00:00:00	18:00	lucas josé	Bruno	558199311183@s.whatsapp.net	2025-02-05 00:00:00	Cabelo+Sobrancelha
c539070b-2a46-46fa-9409-65b8e041aa8b	2025-02-08 00:00:00	11:20	Bruno botox 	Bruno	local	2025-02-05 16:00:57.782	Cabelo
88007cb6-21e7-4d74-a246-c8f5cba878e0	2025-02-08 00:00:00	12:00	Botox	Bruno	local	2025-02-05 16:02:07.093	Cabelo
726958a1-91aa-48a8-b567-6278d90a3075	2025-02-08 00:00:00	16:00	gustavo	Wallyson	558196195368@s.whatsapp.net	2025-02-05 00:00:00	Cabelo
e9ddfde3-faf1-4bc8-9798-3cb2882288ce	2025-02-07 00:00:00	14:40	gabriel	Bruno	558197699397@s.whatsapp.net	2025-02-05 00:00:00	Cabelo
28c905ef-3af5-47cc-93be-aaab237d9615	2025-02-05 00:00:00	16:00	glecio	Bruno	558198973109@s.whatsapp.net	2025-02-05 00:00:00	Cabelo
b79fd77e-2b7c-4473-9bca-de630a5060b5	2025-02-06 00:00:00	11:00	0	Bruno	558191612352@s.whatsapp.net	2025-02-05 00:00:00	Cabelo
2cc76750-720b-4d55-be8e-799b59612bd7	2025-02-08 00:00:00	10:40	joão guilherme	Bruno	558192101006@s.whatsapp.net	2025-02-05 00:00:00	Cabelo
74c5b514-b176-40ec-9c2c-e321e69fd212	2025-02-07 00:00:00	18:40	Denilson 	Bruno	local	2025-02-05 21:29:36.01	Barba
84dc7287-ad75-4ae8-8b04-47bbb6c2d53f	2025-02-14 00:00:00	17:20	arthur miguel	Bruno	558197819478@s.whatsapp.net	2025-02-05 00:00:00	Cabelo
c8791ea5-f211-48b6-916c-e076611d9ea4	2025-02-08 00:00:00	14:00	william gabriel	Bruno	558198087356@s.whatsapp.net	2025-02-06 00:00:00	Cabelo
af72fc64-66bc-4038-8f66-35182c565f2b	2025-02-08 00:00:00	16:40	josé guilherme	Bruno	558196081518@s.whatsapp.net	2025-02-06 00:00:00	Cabelo
48a8c068-9a22-417e-a057-db210781a90f	2025-03-01 00:00:00	12:00	anderson	Wallyson	558197186991@s.whatsapp.net	2025-02-06 00:00:00	Cabelo+Barba
4f7f9594-bb3c-4961-9262-2da41986a904	2025-02-06 00:00:00	09:00	rennan	Bruno	558196502964@s.whatsapp.net	2025-02-06 00:00:00	Barba
197aed62-cc58-4605-97fd-0b3a5b0c969c	2025-02-06 00:00:00	10:20	Indisponivel	Bruno	Indisponivel	2025-02-06 13:20:44.817	
a36b219d-815b-4906-bb52-0dd83d76bb8f	2025-02-06 00:00:00	11:00	Indisponivel	Bruno	Indisponivel	2025-02-06 13:20:45.179	
0dc689fc-baa6-4f0d-8e1a-139fdec0090e	2025-02-06 00:00:00	11:40	Indisponivel	Bruno	Indisponivel	2025-02-06 13:20:45.216	
5421fded-e7d7-4719-98ba-1b6ab2165f72	2025-02-06 00:00:00	13:20	Indisponivel	Bruno	Indisponivel	2025-02-06 13:20:45.25	
a49c0e99-5e45-4d0c-9c70-df74bb33d3b4	2025-02-07 00:00:00	16:00	heitor	Bruno	558182601936@s.whatsapp.net	2025-02-06 00:00:00	Cabelo
781d036a-d555-4889-9963-acd6bb5253e0	2025-02-08 00:00:00	17:20	juinin (cunhado de zaldinho)	Wallyson	558198591039@s.whatsapp.net	2025-02-06 00:00:00	Cabelo
c654811a-0043-4eee-8d55-e42b3eb7fc2d	2025-02-12 00:00:00	14:40	emídio arruda	Bruno	558181606802@s.whatsapp.net	2025-02-06 00:00:00	Cabelo
6839680d-b8e0-4152-bc5c-46e9d6cf2292	2025-02-08 00:00:00	18:00	paulo marcos	Bruno	558199302136@s.whatsapp.net	2025-02-06 00:00:00	Cabelo
b4f4f63d-75b7-4401-9bc8-32c3ea784a16	2025-02-13 00:00:00	13:20	Indisponivel	Bruno	Indisponivel	2025-02-06 16:26:53.12	
dc18ae88-cd8e-4538-8320-a1023027480d	2025-02-13 00:00:00	14:00	Indisponivel	Bruno	Indisponivel	2025-02-06 16:26:53.222	
8d0a2214-39db-482c-8171-a5511b3c0578	2025-02-13 00:00:00	14:40	Indisponivel	Bruno	Indisponivel	2025-02-06 16:26:53.258	
17633f0a-8aba-4ca9-8742-9fbee8a4c775	2025-02-13 00:00:00	15:20	Indisponivel	Bruno	Indisponivel	2025-02-06 16:26:53.293	
826c66b4-3a9d-4326-b96b-6c1fe7af7e65	2025-02-13 00:00:00	16:40	Indisponivel	Bruno	Indisponivel	2025-02-06 16:26:53.328	
dacb94c6-79c3-4f12-b641-78ff1bc4c2f9	2025-02-13 00:00:00	17:20	Indisponivel	Bruno	Indisponivel	2025-02-06 16:26:53.362	
7811a83c-f500-4747-87da-4130c6f3e13b	2025-02-13 00:00:00	18:00	Indisponivel	Bruno	Indisponivel	2025-02-06 16:26:53.643	
f804a7bd-8b8f-4703-b3d3-11f837618837	2025-02-13 00:00:00	18:40	Indisponivel	Bruno	Indisponivel	2025-02-06 16:26:53.675	
07f17d6c-2615-47f0-8a96-9fb16e2ba2a0	2025-02-13 00:00:00	16:00	Indisponivel	Bruno	Indisponivel	2025-02-06 16:27:28.555	
916c2dca-46c7-4046-8b38-a898de6b459c	2025-02-07 00:00:00	09:00	Jeferson 	Bruno	local	2025-02-06 19:06:45.96	Cabelo
f93365e0-3fa6-4e86-83b3-fcc23175fe9a	2025-02-08 00:00:00	13:20	Júnior umari	Bruno	local	2025-02-06 19:12:11.263	Cabelo
0c8526c4-ad6a-4399-b7eb-b7012bf825db	2025-02-07 00:00:00	09:40	Hatus	Bruno	local	2025-02-06 19:16:54.676	Barba
45e259fc-4497-41b3-a1ec-19707ae4d864	2025-02-14 00:00:00	18:00	Fabiano 	Bruno	local	2025-02-06 19:30:35.108	Cabelo+Barba
1435ceef-e475-4423-bc74-6fed0c820e55	2025-02-07 00:00:00	14:00	Ivan	Bruno	local	2025-02-06 20:19:15.897	Cabelo
f7112c6e-b107-436c-b732-4e2a0ea1595f	2025-02-07 00:00:00	16:40	Eliel 	Bruno	local	2025-02-06 21:42:59.212	Cabelo
93d77b1b-364a-4779-ae21-970f4c4d278d	2025-02-08 00:00:00	10:40	Matheus 	Wallyson	local	2025-02-06 22:07:21.449	Cabelo
92bccf78-d8b4-4c07-ba2e-fd0d707bdd43	2025-02-08 00:00:00	11:20	Francelino 	Wallyson	local	2025-02-06 22:07:39.586	Cabelo
ccf5ca60-fa45-4d4b-b653-fcf714dee9d1	2025-02-07 00:00:00	10:20	Kamila 	Bruno	local	2025-02-06 22:28:40.076	Cabelo
01e9bdd2-449d-44ab-94ce-90983da30621	2025-02-10 00:00:00	14:40	mathias lima	Wallyson	558187494403@s.whatsapp.net	2025-02-06 00:00:00	Cabelo+Barba
6434368c-75a8-466a-9b38-912883a66212	2025-02-07 00:00:00	13:20	lucas	Bruno	558197326785@s.whatsapp.net	2025-02-06 00:00:00	Cabelo
d05b641a-afe8-49d2-b250-e3e10a9be400	2025-02-10 00:00:00	17:20	mateus oliveira	Wallyson	558186880205@s.whatsapp.net	2025-02-06 00:00:00	Cabelo+Barba
e4166066-3e91-4d9b-9d1e-c9e9ca81637d	2025-02-10 00:00:00	14:00	luan	Bruno	558196003977@s.whatsapp.net	2025-02-06 00:00:00	Cabelo+Sobrancelha
c035624a-5254-4f7c-95f7-cb7f7d7697f5	2025-02-08 00:00:00	14:00	john	Wallyson	558199297533@s.whatsapp.net	2025-02-06 00:00:00	Cabelo+Barba
54fe607f-38bb-44e4-9458-947727b2ed62	2025-02-07 00:00:00	11:00	Romerio 	Bruno	local	2025-02-07 09:42:26.057	Cabelo+Barba
e636c137-06ae-48dc-8085-182914665ede	2025-02-07 00:00:00	18:00	luiz guilherme chagas do nascimento	Bruno	558191612352@s.whatsapp.net	2025-02-07 00:00:00	Cabelo
a435031c-1b4a-430a-9e42-14d81f34e461	2025-02-10 00:00:00	16:00	andrew	Bruno	558198694494@s.whatsapp.net	2025-02-07 00:00:00	Cabelo
3186ed92-cefa-498f-87d9-90775296c5cd	2025-02-10 00:00:00	09:00	lucas cauã	Bruno	558186630022@s.whatsapp.net	2025-02-07 00:00:00	Cabelo
6ac2a467-1d63-4037-9e61-90c0d0dd1a40	2025-02-08 00:00:00	15:20	Rivaldo 	Wallyson	local	2025-02-07 12:29:50.324	Cabelo
379626b4-5b4c-4a44-8f6d-eb56ddc56e11	2025-02-07 00:00:00	20:00	Romerio 	Bruno	local	2025-02-07 13:48:58.923	Cabelo+Barba
55f04dc8-c976-40df-bfeb-46217c41c297	2025-02-08 00:00:00	14:40	Thiago fiel 	Wallyson	local	2025-02-07 14:16:27.513	Cabelo
25ff4328-ae74-402c-8c7e-44bead93d2a8	2025-02-07 00:00:00	17:20	andre	Bruno	558198995821@s.whatsapp.net	2025-02-07 00:00:00	Cabelo+Sobrancelha
55fc4d1a-9790-4d74-8c61-4f0f19941b5a	2025-02-08 00:00:00	16:40	Victor 	Wallyson	local	2025-02-07 16:27:02.853	Cabelo+Barba
0ffd70b3-4799-4038-b03c-3e89a4e9fbca	2025-02-08 00:00:00	18:00	João Henrique 	Wallyson	local	2025-02-07 16:27:25.047	Cabelo
52358bde-8ed0-46fd-a708-6db513a5e026	2025-02-12 00:00:00	16:00	davi	Bruno	558197480186@s.whatsapp.net	2025-02-07 00:00:00	Cabelo+Sobrancelha
6da6b235-2b3f-43cc-b088-bbba1e050d64	2025-02-08 00:00:00	13:20	isaque	Wallyson	558182470021@s.whatsapp.net	2025-02-07 00:00:00	Cabelo
28883ab0-d19c-4600-8f36-0ede7d613b70	2025-02-08 00:00:00	12:00	Thiago 	Wallyson	local	2025-02-07 18:21:32.303	Cabelo
0a3a4d5f-ff1b-4843-84e7-f3f084ad18b2	2025-02-10 00:00:00	18:00	neto	Wallyson	558196586838@s.whatsapp.net	2025-02-07 00:00:00	Cabelo
1c049927-19d4-4aea-b433-18bf1aaadafb	2025-02-10 00:00:00	15:20	Pedro 	Wallyson	local	2025-02-08 00:46:10.196	Cabelo+Sobrancelha
6c0639a9-505f-4e53-9ea2-d3387c227945	2025-02-10 00:00:00	09:40	elysson	Bruno	558199697267@s.whatsapp.net	2025-02-07 00:00:00	Cabelo+Sobrancelha
58d8443a-d82c-411c-8a05-ed8fad26066a	2025-02-10 00:00:00	14:40	Irmã Anyele 	Bruno	local	2025-02-08 09:25:51.453	Cabelo
604b4ece-6735-4098-b50d-ca9c2b926947	2025-02-10 00:00:00	15:20	Irmã Anyele 	Bruno	local	2025-02-08 09:26:11.495	Cabelo
f1f05230-32fd-4e1a-9315-03c474cad7c4	2025-02-10 00:00:00	11:00	Paulo de Ronaldo 	Bruno	local	2025-02-08 11:55:08.631	Cabelo
1c2c133e-b42d-4fe6-a07c-0b991ba4a4b6	2025-02-12 00:00:00	18:40	Édson raissa	Wallyson	local	2025-02-08 13:49:42.039	Cabelo
6c11f4e9-811a-4b51-843e-cc92d128073a	2025-02-10 00:00:00	16:00	Roney 	Wallyson	local	2025-02-08 16:08:28.711	Cabelo
389e0c27-23ed-464d-82e7-33c4562fa298	2025-02-10 00:00:00	13:20	Indisponivel	Wallyson	Indisponivel	2025-02-08 16:12:21.003	
b1f8c6ed-6a91-40a1-8927-e3fe8f8630bb	2025-02-11 00:00:00	14:00	Gustavo 	Wallyson	local	2025-02-08 16:18:14.727	Cabelo
ccc2cca2-2fc7-48e6-b050-4d13196da8ab	2025-02-11 00:00:00	14:40	Gustavo 	Wallyson	local	2025-02-08 16:18:32.27	Cabelo
9dc1e284-a450-4b0e-bbed-64ad4611c36d	2025-02-10 00:00:00	14:00	guilherme	Wallyson	558196437778@s.whatsapp.net	2025-02-08 00:00:00	Cabelo
da4d2331-c067-41e4-9018-12be7ade95d7	2025-02-10 00:00:00	13:20	mateus barbosa	Bruno	558197626344@s.whatsapp.net	2025-02-08 00:00:00	Cabelo+Sobrancelha
30fa1adb-dcdd-485c-b8a5-f32d116d2e5b	2025-02-10 00:00:00	16:40	yago	Bruno	558195055274@s.whatsapp.net	2025-02-09 00:00:00	Cabelo+Sobrancelha
53db5020-f6ec-4afb-b807-4f599d3c4f36	2025-02-10 00:00:00	10:20	mathias	Bruno	558181310245@s.whatsapp.net	2025-02-09 00:00:00	Cabelo+Sobrancelha
35ed7db6-6401-4c4d-8c82-4cfd7bee47d1	2025-02-15 00:00:00	09:20	matheus lima	Bruno	558199670970@s.whatsapp.net	2025-02-09 00:00:00	Cabelo+Sobrancelha
b3f10c10-598c-4ecf-97e1-b98f32c8f0b5	2025-02-10 00:00:00	09:00	miguel	Wallyson	558199297533@s.whatsapp.net	2025-02-09 00:00:00	Cabelo
965b79d8-9abb-4fa1-9d26-d763713ede54	2025-02-10 00:00:00	17:20	matheus	Bruno	558197941830@s.whatsapp.net	2025-02-09 00:00:00	Cabelo
bb6d9175-2382-4843-9c0c-f87c18dcafa8	2025-02-10 00:00:00	18:40	paulo celino	Bruno	558181345912@s.whatsapp.net	2025-02-09 00:00:00	Cabelo
21debdbc-baaa-4e99-abd4-0ddc2ceff848	2025-02-15 00:00:00	10:00	ian menezes	Bruno	558196739228@s.whatsapp.net	2025-02-09 00:00:00	Cabelo
7e2734a7-252f-4cb9-99ae-d03312b03a18	2025-02-10 00:00:00	18:00	gonzaga neto	Bruno	558198514795@s.whatsapp.net	2025-02-09 00:00:00	Cabelo
050b58e6-024f-4fe6-90c5-4383d5d59325	2025-02-20 00:00:00	18:40	lucas leal	Bruno	558182605271@s.whatsapp.net	2025-02-09 00:00:00	Cabelo+Sobrancelha
1447e814-b78d-4aa0-bb83-856b5302fa91	2025-02-15 00:00:00	10:40	matheus ryan	Bruno	558198446732@s.whatsapp.net	2025-02-09 00:00:00	Cabelo
ca0c758d-205f-4169-9fa8-fb3c2bb0f51e	2025-02-10 00:00:00	10:20	Lucas 	Wallyson	local	2025-02-10 01:17:17.856	Cabelo
fbcdae56-d170-4e35-bf60-2927e5728b7f	2025-02-10 00:00:00	18:40	Isaías 	Wallyson	local	2025-02-10 01:17:57.73	Cabelo
08369e8f-5df1-420e-abac-3b9189ee09ea	2025-02-10 00:00:00	11:40	elma cristina	Wallyson	558181323380@s.whatsapp.net	2025-02-10 00:00:00	Cabelo
526fe352-e50d-48e1-842d-0187ea4f2740	2025-02-11 00:00:00	18:00	Paulo 	Wallyson	local	2025-02-10 10:00:45.057	Cabelo
6c7c7645-54f2-4814-8886-f23b339a19c6	2025-02-11 00:00:00	18:40	Juninho cunhado elizaldo	Wallyson	local	2025-02-10 10:16:12.255	Cabelo
6f0b9c11-2d84-4728-be2e-8e3c206aa492	2025-02-10 00:00:00	11:40	Indisponivel	Bruno	Indisponivel	2025-02-10 11:36:56.805	
3a173f11-2387-4b8b-99e5-da805a94f110	2025-02-10 00:00:00	11:00	pedro	Wallyson	558195071416@s.whatsapp.net	2025-02-10 00:00:00	Cabelo+Sobrancelha
1c0757cd-899f-4a72-9919-920bda1585cf	2025-02-10 00:00:00	16:40	João 	Wallyson	local	2025-02-10 13:32:27.777	Cabelo
6c7d0c7a-94e2-4639-9a40-53da31d203b6	2025-02-11 00:00:00	14:40	mateus	Bruno	558196083218@s.whatsapp.net	2025-02-10 00:00:00	Cabelo
daaac9ce-efe2-4723-8790-afd07f5fbfb1	2025-02-11 00:00:00	13:20	Francisco 	Wallyson	local	2025-02-10 15:31:29.127	Cabelo
4ebeca0f-c665-456f-bbfb-44c06fc981b0	2025-02-15 00:00:00	16:00	marcos rodrigues	Bruno	558196681292@s.whatsapp.net	2025-02-10 00:00:00	Cabelo
d87eb666-c073-4832-9a02-0a6f9506222f	2025-02-14 00:00:00	14:00	joão vitor	Bruno	558188511046@s.whatsapp.net	2025-02-10 00:00:00	Cabelo
6d316f6a-79ed-4984-a951-68905dcde76c	2025-02-11 00:00:00	16:00	Gomes 	Wallyson	local	2025-02-10 17:04:06.032	Cabelo
45201e8b-1bc3-4501-87b3-2d31d6d715bd	2025-02-12 00:00:00	09:00	joaquim gonçalo	Bruno	558199504021@s.whatsapp.net	2025-02-10 00:00:00	Cabelo+Sobrancelha
d3bfc0f1-6c45-4865-8fb3-4e5f49087739	2025-02-11 00:00:00	16:40	joão guilherme	Bruno	558181673375@s.whatsapp.net	2025-02-10 00:00:00	Cabelo
6775e54e-b39c-4a94-ba4e-25f5501f254c	2025-02-11 00:00:00	16:40	fernando	Wallyson	558197789968@s.whatsapp.net	2025-02-10 00:00:00	Cabelo
7fd53728-d6ba-4168-8242-3c760407f9cf	2025-03-12 00:00:00	15:20	antônio medeiros frança lins	Wallyson	558171024799@s.whatsapp.net	2025-02-10 00:00:00	Cabelo+Sobrancelha
efe0a4c4-f7f1-4b2a-b4e0-551a3a2957c2	2025-02-15 00:00:00	14:00	sérgio josé gomes filho	Bruno	558195354617@s.whatsapp.net	2025-02-10 00:00:00	Cabelo
80214cec-f51e-4c47-8b46-d0f0300a2de7	2025-02-27 00:00:00	18:40	yago	Bruno	558195055274@s.whatsapp.net	2025-02-10 00:00:00	Cabelo+Sobrancelha
00dccd62-255f-4e8d-bcf2-d606db1c0741	2025-02-11 00:00:00	17:20	gabriell	Wallyson	558199481850@s.whatsapp.net	2025-02-10 00:00:00	Cabelo
e7801366-a090-4f01-9047-c21bf2373787	2025-02-11 00:00:00	15:20	Ruan 	Wallyson	local	2025-02-10 22:34:59.062	Cabelo
b0889f13-0148-440a-8a97-970a5fffee96	2025-02-27 00:00:00	18:00	gonzaga neto	Bruno	558198514795@s.whatsapp.net	2025-02-10 00:00:00	Cabelo
f74f6f0f-efaf-446e-ad9f-4c3ff93fb584	2025-02-11 00:00:00	08:00	Indisponivel	Wallyson	Indisponivel	2025-02-10 23:06:59.715	
8e18141a-90d3-47a6-82ad-1e7b61ff6297	2025-02-13 00:00:00	11:40	wesley	Bruno	558196817233@s.whatsapp.net	2025-02-10 00:00:00	Cabelo
52727ba4-395b-4e4e-866a-6ead8025b760	2025-02-12 00:00:00	16:40	fernando	Bruno	558199817133@s.whatsapp.net	2025-02-10 00:00:00	Cabelo
f4237b1a-453e-4b4c-8f7e-871acfe651dd	2025-02-12 00:00:00	15:20	joão pedro	Bruno	558197967548@s.whatsapp.net	2025-02-10 00:00:00	Cabelo+Sobrancelha
fd8c330d-2d87-4ba5-bc24-a741c5f98945	2025-02-11 00:00:00	16:00	felipe silva	Bruno	558196065070@s.whatsapp.net	2025-02-11 00:00:00	Cabelo
7348476f-f400-4f45-b362-dfa39d47487e	2025-02-15 00:00:00	12:00	kayke	Wallyson	558197180683@s.whatsapp.net	2025-02-11 00:00:00	Cabelo+Barba
db8a0dd6-7d78-41bc-9167-af2ea13c2e48	2025-02-14 00:00:00	11:40	Manoel neto 	Bruno	local	2025-02-11 12:01:52.04	Barba
85cfa745-c478-464f-867b-1a9258fed3b8	2025-02-15 00:00:00	15:20	Júnior Santa Maria 	Bruno	local	2025-02-11 12:02:49.919	Cabelo
2f417c29-fe4e-4f72-85b4-0390e1422b94	2025-02-12 00:00:00	17:20	antonio	Bruno	558796427818@s.whatsapp.net	2025-02-11 00:00:00	Cabelo+Barba
69569f94-972e-4909-ac52-a84ad7b68128	2025-02-14 00:00:00	09:00	miguel josé	Bruno	558196843988@s.whatsapp.net	2025-02-11 00:00:00	Cabelo
713b614b-0eb0-4391-9df1-09d83c74df8c	2025-02-11 00:00:00	10:00	0	Wallyson	558182163068@s.whatsapp.net	2025-02-11 00:00:00	Cabelo
53578610-1b47-4819-bc5f-189a0667db80	2025-02-12 00:00:00	10:00	josé henrique	Wallyson	558182163068@s.whatsapp.net	2025-02-11 00:00:00	Cabelo
b07badcd-b0f3-4070-bed0-8c7b39061245	2025-02-12 00:00:00	13:20	kellinghton	Bruno	558195330370@s.whatsapp.net	2025-02-11 00:00:00	Cabelo+Barba
87182254-c6c3-42f9-9bd3-9f9afba7cb9a	2025-02-15 00:00:00	08:00	ismael pedro	Bruno	558199824318@s.whatsapp.net	2025-02-11 00:00:00	Cabelo
d24aca5e-d97f-4ee0-9ffe-d2e55787602e	2025-02-15 00:00:00	08:40	Heraldo	Bruno	local	2025-02-11 15:57:57.344	Barba
6aaf6a04-2771-419b-a15d-5ecfaec71331	2025-02-12 00:00:00	09:40	Juninho	Bruno	local	2025-02-11 17:04:00.908	Cabelo
c8c46ceb-f927-4bd9-b1de-bc4415f1d55c	2025-02-14 00:00:00	09:40	Samuel 	Bruno	local	2025-02-11 17:42:27.458	Cabelo
6663a2d9-9b94-496d-b4ec-ec0b1f61acaf	2025-02-13 00:00:00	09:00	mayrlon	Bruno	558196600679@s.whatsapp.net	2025-02-11 00:00:00	Cabelo+Sobrancelha
96461b6c-a4a4-4252-a15e-a93d5cf07a0b	2025-02-12 00:00:00	14:00	igor henrique	Bruno	558197708336@s.whatsapp.net	2025-02-11 00:00:00	Cabelo
66b1c768-6dbb-44a3-bde8-cb27893f2d97	2025-02-11 00:00:00	17:20	paulo henrique	Bruno	558174004953@s.whatsapp.net	2025-02-11 00:00:00	Cabelo
d65f05c3-2c3e-44db-bdca-4e870c45e2ab	2025-02-14 00:00:00	18:40	rennan	Bruno	558196502964@s.whatsapp.net	2025-02-11 00:00:00	Cabelo
5d6ab18c-5609-4e58-a1fc-f37d35bafc6a	2025-02-13 00:00:00	10:20	renan lucena	Bruno	558182497215@s.whatsapp.net	2025-02-11 00:00:00	Cabelo+Sobrancelha
c5f90c9f-7a2a-4e23-9af9-36daf77e927c	2025-02-15 00:00:00	14:40	allef ryan	Bruno	558195740243@s.whatsapp.net	2025-02-11 00:00:00	Cabelo
83c2b03d-7a11-4dc6-a05e-f988b29c653a	2025-02-12 00:00:00	18:40	lucas	Bruno	558182451503@s.whatsapp.net	2025-02-11 00:00:00	Cabelo+Sobrancelha
bf13390e-8c6b-4160-89d8-c0e17a4ed8b3	2025-02-14 00:00:00	16:40	anderson carlos	Bruno	558196579148@s.whatsapp.net	2025-02-11 00:00:00	Cabelo
78d1c217-35bc-41ee-ad00-10f2be226df1	2025-02-15 00:00:00	13:20	maurício	Bruno	558182705181@s.whatsapp.net	2025-02-11 00:00:00	Cabelo
f20aaed5-6bf9-4ccc-baa0-13fde26853af	2025-02-15 00:00:00	12:00	Jao botox	Bruno	local	2025-02-11 21:47:15.071	Cabelo
7d95eb46-b1f7-450f-9728-148285368290	2025-02-12 00:00:00	11:40	pedro augusto	Bruno	558171185174@s.whatsapp.net	2025-02-11 00:00:00	Cabelo
f9cb26e7-a61b-4aa8-8db0-25823fb53806	2025-02-14 00:00:00	19:20	denílson	Bruno	558197084296@s.whatsapp.net	2025-02-11 00:00:00	Barba
5ae408da-3c54-4167-b701-5e6dceffa8a9	2025-02-12 00:00:00	08:40	Wellington 	Wallyson	local	2025-02-12 09:54:11.307	Cabelo
f3155e35-e098-4c5b-b70e-fd044571875a	2025-02-14 00:00:00	08:40	Paulinho 	Wallyson	local	2025-02-12 10:48:05.294	Acabamento (Pezinho)
1a641fa0-d9a3-4724-acec-3287514bf5c0	2025-02-12 00:00:00	14:00	Valmir 	Wallyson	local	2025-02-12 11:20:55.391	Cabelo+Barba
e5db5ac2-7d74-4cea-8fa5-791f000e55fa	2025-02-14 00:00:00	10:20	zaldinho	Bruno	558198591039@s.whatsapp.net	2025-02-12 00:00:00	Cabelo
c4a8d424-9c75-4a98-b82f-cc83f991e19f	2025-02-17 00:00:00	14:00	shérgyo	Wallyson	558189870188@s.whatsapp.net	2025-02-12 00:00:00	Cabelo
cacefe80-cdab-43ee-9d26-37c22e065656	2025-02-12 00:00:00	18:00	daniel	Wallyson	558199459046@s.whatsapp.net	2025-02-12 00:00:00	Cabelo
00d157eb-7226-4a4f-8cc7-f0119d69ea7f	2025-02-14 00:00:00	16:00	eduardo	Bruno	558194297236@s.whatsapp.net	2025-02-12 00:00:00	Cabelo+Barba
3fdd8dd9-b546-4825-8238-d067bac6edfb	2025-02-12 00:00:00	15:20	Pedro 	Wallyson	local	2025-02-12 16:29:55.792	Cabelo+Sobrancelha
4e982f15-9f31-46f6-96a0-898ac57c7810	2025-02-17 00:00:00	10:20	nicolas	Bruno	558189554545@s.whatsapp.net	2025-02-12 00:00:00	Cabelo
8525a19b-4fe4-453d-8c67-43ff85194418	2025-02-19 00:00:00	16:00	Allyson 	Wallyson	local	2025-02-12 22:21:06.232	Cabelo
9679ea35-9d26-426c-960d-0b0a722f5001	2025-02-14 00:00:00	20:00	lucas gomes	Bruno	558198471608@s.whatsapp.net	2025-02-12 00:00:00	Cabelo
a7a42763-f701-4685-9882-f61080f46e40	2025-02-14 00:00:00	15:20	roberto (irmão de ryan)	Bruno	558181779060@s.whatsapp.net	2025-02-12 00:00:00	Cabelo+Barba
72e17911-0d2f-4069-8137-6952b994991d	2025-02-14 00:00:00	13:20	joão vitor	Bruno	558192250093@s.whatsapp.net	2025-02-12 00:00:00	Cabelo
5d524e0d-396e-4a6d-8b59-343e268949cf	2025-02-13 00:00:00	11:00	fernando	Bruno	558196035269@s.whatsapp.net	2025-02-13 00:00:00	Cabelo
e364a819-0e41-4c29-900f-2b009b635996	2025-02-14 00:00:00	11:00	Dorgyl 	Bruno	local	2025-02-13 10:30:52.325	Barba
3a97c7f5-af1f-448b-b8cd-3dbed23b1e22	2025-02-14 00:00:00	14:40	bruno	Bruno	558189873832@s.whatsapp.net	2025-02-13 00:00:00	Cabelo+Barba
c9e1dbe9-8ddf-4ae5-8af9-22b45929de39	2025-02-28 00:00:00	16:00	Paulo 	Wallyson	local	2025-02-13 12:19:27.904	Cabelo
0874344e-d6b6-4229-9537-508a431f700e	2025-02-28 00:00:00	16:40	João Pedro filho de Paulo 	Wallyson	local	2025-02-13 12:19:55.72	Cabelo
80af174f-9ecd-4cb1-91a4-6fc7771572c6	2025-02-18 00:00:00	11:00	moisés	Bruno	558171076971@s.whatsapp.net	2025-02-13 00:00:00	Cabelo
be41509d-f98f-48aa-9a4f-487305a75941	2025-02-15 00:00:00	17:20	flávio	Bruno	5511992553806@s.whatsapp.net	2025-02-13 00:00:00	Cabelo
7d0eedd4-72a3-4fbf-9e63-e8a725c5463a	2025-02-14 00:00:00	20:00	eduardo	Wallyson	558181806550@s.whatsapp.net	2025-02-13 00:00:00	Cabelo
0c977588-6e0a-4de8-98e6-a6ff71c17209	2025-03-01 00:00:00	17:20	eduardo	Bruno	558194297236@s.whatsapp.net	2025-02-13 00:00:00	Cabelo+Barba
73ac17b6-a270-4679-9fd1-2301aa9d9666	2025-02-15 00:00:00	10:00	mayrlon	Wallyson	558196600679@s.whatsapp.net	2025-02-13 00:00:00	Cabelo+Sobrancelha
e9491e9e-6493-4835-9dde-3851343d70af	2025-03-07 00:00:00	18:40	eduardo	Bruno	558194297236@s.whatsapp.net	2025-02-13 00:00:00	Cabelo+Barba
cd04acdb-07de-4082-bbd2-cde7432928f1	2025-02-15 00:00:00	11:20	Kaio 	Bruno	local	2025-02-13 18:18:57.931	Cabelo
79ec5367-96cb-403e-8872-39780c99b91f	2025-02-14 00:00:00	10:20	Éverton 	Wallyson	local	2025-02-13 19:21:56.559	Cabelo
103eedd4-e48b-4094-97ec-4f8821db23f2	2025-02-15 00:00:00	16:40	Arthur Ulises 	Bruno	local	2025-02-13 19:31:07.39	Cabelo+Sobrancelha
feff5f88-6cd4-47e3-8550-be858749f00e	2025-02-14 00:00:00	8:00	ruan sousa da silva	Wallyson	558199445445@s.whatsapp.net	2025-02-13 00:00:00	Cabelo
5778590f-a73a-4bda-b0f4-aaba5f44fb16	2025-02-14 00:00:00	16:00	Jonai 	Wallyson	local	2025-02-13 20:31:49.142	Cabelo
ef341abf-6b5a-47d6-866f-dedfff85cf5c	2025-02-20 00:00:00	18:00	Vinicius 	Bruno	local	2025-02-13 20:37:02.464	Cabelo+Sobrancelha
35ccbbee-4c1d-432d-8b50-551cef246dcf	2025-02-14 00:00:00	17:20	lucas filho	Wallyson	558197326785@s.whatsapp.net	2025-02-13 00:00:00	Cabelo
32fcf0ed-704e-4f54-b1b5-10591e6fa584	2025-02-14 00:00:00	18:00	cláudio henrique	Wallyson	558188482085@s.whatsapp.net	2025-02-13 00:00:00	Cabelo
967e0f75-f5d1-4054-a457-401a676aa8dd	2025-02-14 00:00:00	15:20	Jaciel 	Wallyson	local	2025-02-14 00:02:10.006	Cabelo
55a4a093-f088-4bb5-9766-c687c3281f50	2025-02-17 00:00:00	11:00	ryan valério	Bruno	558181779060@s.whatsapp.net	2025-02-14 00:00:00	Cabelo+Barba
b3256c5c-cc9c-4bec-819d-6ff8c9767adb	2025-02-14 00:00:00	18:40	Adegilson 	Wallyson	local	2025-02-14 12:18:32.881	Cabelo
c5aae349-6a65-4081-8b41-ca8d56b389b7	2025-02-14 00:00:00	10:40	lucas	Wallyson	558198659687@s.whatsapp.net	2025-02-14 00:00:00	Cabelo+Sobrancelha
87c7721f-206a-4039-ae47-a3f8e27db15c	2025-02-15 00:00:00	09:20	Adaias 	Wallyson	local	2025-02-14 12:58:12.239	Cabelo
82705935-2fb8-4c4c-a73c-b1ce1f308ee2	2025-02-28 00:00:00	20:00	maicon	Bruno	558194686969@s.whatsapp.net	2025-02-14 00:00:00	Cabelo
f71adc70-1989-4c05-be8c-e3e242d76cf1	2025-02-15 00:00:00	15:20	Melqui 	Wallyson	local	2025-02-14 13:19:20.208	Cabelo+Sobrancelha
b552801f-4b49-4780-a139-af2492daa259	2025-02-15 00:00:00	13:20	ranieli	Wallyson	558195637127@s.whatsapp.net	2025-02-14 00:00:00	Cabelo
a16bde84-335a-498d-bf52-f81d662d3d0f	2025-02-15 00:00:00	14:00	breno terror de walison no x1	Wallyson	558198437880@s.whatsapp.net	2025-02-14 00:00:00	Cabelo+Sobrancelha
db370b58-bec7-4069-9ad0-20551ef430d3	2025-02-14 00:00:00	16:40	Eudes 	Wallyson	local	2025-02-14 15:47:45.942	Cabelo
babea686-684c-4d0f-8b50-1e160f545b0c	2025-02-27 00:00:00	16:00	guilherme	Bruno	558182869031@s.whatsapp.net	2025-02-14 00:00:00	Cabelo
c09d2dc5-c5ef-432a-9cb2-f7db39d652d4	2025-02-27 00:00:00	16:40	mikael	Bruno	558182869031@s.whatsapp.net	2025-02-14 00:00:00	Cabelo
2bffba51-648a-4bdd-9306-582485129d46	2025-02-17 00:00:00	18:00	levi	Wallyson	558199459046@s.whatsapp.net	2025-02-14 00:00:00	Cabelo
6322d271-7bc0-4781-ac00-8fd43eba0cb3	2025-02-17 00:00:00	15:20	joão gabriel	Bruno	558195216795@s.whatsapp.net	2025-02-14 00:00:00	Cabelo
6711c8fc-17c5-46b4-823d-88f8ca19156e	2025-02-17 00:00:00	14:40	ryan carlos	Wallyson	5511959620317@s.whatsapp.net	2025-02-14 00:00:00	Cabelo+Sobrancelha
70c36c36-72a5-47de-8e56-d804c3da8f6b	2025-02-17 00:00:00	17:20	Italo da Ete 	Bruno	local	2025-02-14 19:53:14.971	Cabelo
639e419d-63f6-492f-99e6-f199bc11b911	2025-02-18 00:00:00	16:40	lucas farias	Bruno	558187782121@s.whatsapp.net	2025-02-14 00:00:00	Cabelo+Barba
8199e4fd-0e77-4e83-9e9c-cf2e0c494f53	2025-02-19 00:00:00	18:00	Denilson 	Bruno	local	2025-02-14 22:41:15.219	Cabelo+Barba
ca474979-9134-4ff9-ab95-81049bac7875	2025-02-15 00:00:00	14:40	matheus	Wallyson	558196073942@s.whatsapp.net	2025-02-14 00:00:00	Cabelo+Barba
7ac9c932-dbde-4612-b3a7-43db79f3ee5d	2025-02-20 00:00:00	14:00	luiz henrique	Bruno	558189496855@s.whatsapp.net	2025-02-14 00:00:00	Cabelo
4eebca78-dc69-4fd7-8569-35c88cc5f0cf	2025-02-15 00:00:00	10:40	Wellington 	Wallyson	local	2025-02-15 11:55:18.275	Cabelo
69a15063-28cc-409d-9d39-12f9e554cb21	2025-02-17 00:00:00	16:00	Matheus 	Wallyson	local	2025-02-15 11:56:01.758	Cabelo
93c05b54-cdd9-4852-988e-e399554b1338	2025-02-15 00:00:00	11:20	Edinho 	Wallyson	local	2025-02-15 12:53:06.27	Cabelo
d33e623c-7111-4ae6-ad7a-1f3dc977656f	2025-02-17 00:00:00	09:40	Carlos cabelo cacheado 	Bruno	local	2025-02-15 15:24:43.508	Cabelo
c28f03ba-f66f-46a6-a3ea-b811f301d331	2025-02-17 00:00:00	09:00	Ocupado	Bruno	local	2025-02-15 15:24:56.699	Cabelo
fc3394d7-cb00-40ab-a9a9-265f14066aae	2025-02-27 00:00:00	18:00	Fabrício 	Wallyson	local	2025-02-15 15:36:04.129	Cabelo
9f9ce784-2e32-48d1-9269-eee770caf08e	2025-02-15 00:00:00	16:40	kayke	Wallyson	558197180683@s.whatsapp.net	2025-02-15 00:00:00	Cabelo+Barba
878cbadc-8618-425c-a13b-b3589a124bd8	2025-02-17 00:00:00	18:00	arthur sales	Bruno	558199775133@s.whatsapp.net	2025-02-15 00:00:00	Cabelo+Sobrancelha
8fa0fddf-33ee-4c2a-81b9-879ab8ecd185	2025-02-15 00:00:00	17:20	ricardo	Wallyson	558182727353@s.whatsapp.net	2025-02-15 00:00:00	Cabelo
87931903-8eed-4806-bd1a-214602a8275f	2025-02-17 00:00:00	13:20	Elton	Wallyson	local	2025-02-15 20:37:24.7	Cabelo
ec7355a7-dd41-4e5c-8314-64f676471399	2025-02-22 00:00:00	15:20	matheus	Bruno	558197708718@s.whatsapp.net	2025-02-15 00:00:00	Cabelo
c9e22d74-bb56-480e-b8fa-0850b7dd94c0	2025-02-17 00:00:00	15:20	Elton	Wallyson	local	2025-02-15 21:01:00.145	Cabelo
1a6b5483-0519-44c7-819d-0d0d9ab4ae0c	2025-02-17 00:00:00	14:00	Robert	Bruno	local	2025-02-15 21:02:07.824	Cabelo
096cde76-6559-421e-9019-20e31e542681	2025-02-21 00:00:00	13:20	joão vitor	Bruno	558192250093@s.whatsapp.net	2025-02-15 00:00:00	Cabelo
e5cb84d4-7ddb-418c-b400-b3aa9949c690	2025-02-22 00:00:00	13:20	Emanoel	Bruno	local	2025-02-15 22:16:11.473	Cabelo+Barba
029d2898-3fa1-44ca-a23a-0e6a135186eb	2025-02-19 00:00:00	18:40	Wendel 	Wallyson	local	2025-02-15 22:48:32.493	Cabelo
ba4254d0-d9ee-4873-a003-6ce7105234b3	2025-02-17 00:00:00	09:40	john	Wallyson	558197904314@s.whatsapp.net	2025-02-15 00:00:00	Cabelo+Barba
52376e2c-8750-4994-a139-abf8789add2f	2025-02-22 00:00:00	08:40	Heraldo 	Bruno	local	2025-02-16 11:49:12.604	Barba
f08d8c18-ba36-4d3f-b1b0-124be827ad6e	2025-02-21 00:00:00	18:00	heytor	Bruno	558197714625@s.whatsapp.net	2025-02-16 00:00:00	Cabelo+Barba
074bf6e7-4a3e-4d1c-886f-784f72653e34	2025-02-22 00:00:00	18:00	gustavo	Bruno	558196111653@s.whatsapp.net	2025-02-16 00:00:00	Cabelo+Sobrancelha
d72a7722-2481-4ca8-b451-d8009fac9d6f	2025-02-21 00:00:00	16:00	Eraldo 	Wallyson	local	2025-02-16 22:22:54.026	Cabelo+Barba
64d6119c-e9f0-42fb-97b9-a6942845a0a5	2025-02-21 00:00:00	17:20	Heitor 	Wallyson	local	2025-02-16 22:23:22.067	Cabelo
a461340d-5e54-4adf-89eb-cf72f2f5bd73	2025-02-27 00:00:00	16:40	glaucio	Wallyson	558187255411@s.whatsapp.net	2025-02-16 00:00:00	Cabelo
5af238e9-0b18-4e2d-b22c-dba679881bc5	2025-02-17 00:00:00	18:40	Diego 	Wallyson	local	2025-02-17 08:34:28.833	Cabelo
a0d75d0e-b6b5-4c2b-a6de-1cc2dfcbeb8e	2025-02-21 00:00:00	14:00	joao lucas	Bruno	558189785404@s.whatsapp.net	2025-02-17 00:00:00	Cabelo+Sobrancelha
1c71733c-f65e-4c2d-943f-1702a0bb5b8d	2025-02-21 00:00:00	14:40	wanderson	Bruno	558189785404@s.whatsapp.net	2025-02-17 00:00:00	Cabelo+Sobrancelha
87ff1346-c530-4452-82ca-6d68516c8011	2025-02-18 00:00:00	17:20	keven	Bruno	558189774392@s.whatsapp.net	2025-02-17 00:00:00	Cabelo+Sobrancelha
ac272b1d-5491-4872-9887-7ff4305dd2b2	2025-02-17 00:00:00	16:40	Dafnis	Wallyson	local	2025-02-17 10:42:17.534	Cabelo
e68231f1-7c36-40d3-a7f1-3dffca310669	2025-02-17 00:00:00	17:20	Pedro	Wallyson	local	2025-02-17 11:18:49.837	Cabelo
622b3455-3349-423a-a553-a0bd95c75982	2025-02-17 00:00:00	16:00	deyvson	Bruno	558195479577@s.whatsapp.net	2025-02-17 00:00:00	Cabelo
232f9916-e970-4817-8784-d445804e607c	2025-02-21 00:00:00	18:40	sidney	Bruno	558191536718@s.whatsapp.net	2025-02-17 00:00:00	Cabelo+Sobrancelha
dac3852c-a926-4b46-81fc-5b7b0039dc2b	2025-02-17 00:00:00	16:40	nicolas nóbrega	Bruno	558195411441@s.whatsapp.net	2025-02-17 00:00:00	Cabelo
f9d6ba71-7183-4182-b719-5ae2b2c98a2f	2025-02-21 00:00:00	09:40	Alan progressiva	Bruno	local	2025-02-17 15:09:52.428	Cabelo
4bf18c91-5b44-4c88-9d54-e77966457dfe	2025-02-21 00:00:00	10:20	bruno	Bruno	558171155699@s.whatsapp.net	2025-02-17 00:00:00	Cabelo+Barba
6492d28b-92e4-4b4c-98d2-adbfdbcbc4f5	2025-02-24 00:00:00	15:20	valker	Bruno	558196956758@s.whatsapp.net	2025-02-17 00:00:00	Cabelo+Sobrancelha
068f99cf-d684-4ad8-a5af-63e0e979d361	2025-02-22 00:00:00	09:20	tiago	Bruno	558181319163@s.whatsapp.net	2025-02-17 00:00:00	Cabelo
a3fb6409-f466-4e05-b8ae-b8e885637be9	2025-02-27 00:00:00	09:40	bruno	Bruno	558189873832@s.whatsapp.net	2025-02-17 00:00:00	Cabelo+Barba
bfc7fba3-68e0-46ab-85c7-760d916445da	2025-02-18 00:00:00	18:00	adeilson	Bruno	558182086614@s.whatsapp.net	2025-02-17 00:00:00	Cabelo
f3fa7a8e-b35c-4a5f-9444-c963fcf360cd	2025-02-18 00:00:00	18:40	arthur	Bruno	558182086614@s.whatsapp.net	2025-02-17 00:00:00	Cabelo
60cdbe9d-c201-4cdf-b3e1-617da2aaa02e	2025-02-21 00:00:00	19:20	iann lucas	Bruno	558196612255@s.whatsapp.net	2025-02-17 00:00:00	Cabelo+Sobrancelha
c6ce0256-6c07-4b70-ab34-bd4acd7966f2	2025-02-27 00:00:00	17:20	Renan Silva 	Bruno	local	2025-02-17 21:08:54.346	Cabelo
1a7a9a3a-8ea4-4a56-acdd-f2845e42c5ec	2025-02-20 00:00:00	09:00	luis	Bruno	558199061615@s.whatsapp.net	2025-02-17 00:00:00	Cabelo+Sobrancelha
43b40583-a8ee-4ac5-81c6-e20ae0fe27da	2025-02-20 00:00:00	13:20	bruno, agendei aqui para quinta-feira à tarde às 13h20	Bruno	558198874006@s.whatsapp.net	2025-02-17 00:00:00	Cabelo+Barba
e2dfdf60-04f6-40f1-aa3e-b225d6551836	2025-02-20 00:00:00	14:40	Alex progressiva 	Bruno	local	2025-02-17 22:04:05.083	Cabelo
c7716785-5b51-413e-a9f4-93674ef8ae2a	2025-03-29 00:00:00	08:40	Diego luzes 	Wallyson	local	2025-02-17 22:43:37.974	Cabelo
4796f48c-b06a-44ae-a131-6c98e66343c9	2025-02-18 00:00:00	15:20	sérgio	Bruno	558198288830@s.whatsapp.net	2025-02-18 00:00:00	Cabelo
2b220226-cbc2-4235-8e0e-ea2e90b92f6e	2025-02-19 00:00:00	14:00	Paloma	Wallyson	local	2025-02-18 10:23:32.104	Cabelo
e8d0aeeb-0016-4a9a-adf1-44cc2340c495	2025-02-19 00:00:00	18:40	Marcos + filho 	Bruno	local	2025-02-18 10:35:28.058	Cabelo+Sobrancelha
7d99a2ee-b8d2-4efe-ab0d-c6b902759b43	2025-02-22 00:00:00	10:00	luiz	Bruno	558181486379@s.whatsapp.net	2025-02-18 00:00:00	Cabelo
009dc24b-f192-42d3-8e25-798e2c3af708	2025-02-24 00:00:00	18:40	yallison	Bruno	558198734964@s.whatsapp.net	2025-02-18 00:00:00	Cabelo+Barba
4ab948aa-3479-44e9-8e8f-a3d19313b75d	2025-03-22 00:00:00	16:00	matheus	Bruno	558196191710@s.whatsapp.net	2025-02-18 00:00:00	Cabelo+Barba
61d7809b-9d70-4f70-b796-068bdd7f48d7	2025-02-19 00:00:00	16:40	césar	Wallyson	558197520499@s.whatsapp.net	2025-02-18 00:00:00	Cabelo+Sobrancelha
efa41fc0-93e9-4c88-8dbf-794e46215d0b	2025-02-24 00:00:00	14:00	kayque da silva	Bruno	558197975570@s.whatsapp.net	2025-02-18 00:00:00	Cabelo+Sobrancelha
226d8332-2192-4fb8-be3e-fbaee2a5be70	2025-02-22 00:00:00	12:00	Guilherme Ângela 	Bruno	local	2025-02-18 17:17:43.013	Cabelo
366abd1c-2313-4dd9-9c1b-05bad6aa0839	2025-02-27 00:00:00	09:00	tarcísio	Bruno	558181901441@s.whatsapp.net	2025-02-18 00:00:00	Cabelo
a661a820-c1c4-42ba-bda8-1f7c57036629	2025-02-19 00:00:00	09:00	João Danielson 	Bruno	local	2025-02-18 22:23:16.837	Cabelo
5645e9c0-261e-4411-b852-cac1bfa736ea	2025-02-19 00:00:00	10:00	Michel	Wallyson	local	2025-02-18 23:11:39.575	Cabelo
73205c24-8171-444d-b2dc-2d208ee2456a	2025-02-19 00:00:00	10:40	Lucas pio 	Wallyson	local	2025-02-18 23:12:43.269	Cabelo
bc0ba586-0d7e-43da-8f66-a5dfd1e4c14f	2025-02-19 00:00:00	17:20	marcos	Bruno	558197149668@s.whatsapp.net	2025-02-18 00:00:00	Cabelo+Sobrancelha
7ea20889-7830-4808-8090-c716f733f6ec	2025-02-21 00:00:00	17:20	ivisson melo shoes	Bruno	558197279446@s.whatsapp.net	2025-02-19 00:00:00	Cabelo+Sobrancelha
f98e9a8a-b7dd-4944-acc1-fa7388d45e68	2025-02-21 00:00:00	19:20	Marcos 	Wallyson	local	2025-02-19 11:54:25.662	Cabelo+Barba
10a00960-7ab8-4d71-ae22-473a2a1a092a	2025-02-24 00:00:00	16:00	joão miguel	Bruno	558198328109@s.whatsapp.net	2025-02-19 00:00:00	Cabelo
20a5ff3b-8980-488c-902d-c395ee037a68	2025-02-28 00:00:00	19:20	deyvid	Bruno	558194686969@s.whatsapp.net	2025-02-19 00:00:00	Cabelo
87181b86-99af-47c0-8ba8-f8720f1d20c3	2025-02-19 00:00:00	16:40	Dr Marcos 	Bruno	local	2025-02-19 13:06:43.494	Cabelo
5fd5c743-9ded-4183-a64f-e1927838c37d	2025-02-20 00:00:00	11:40	Enzo	Bruno	local	2025-02-19 13:18:52.284	Cabelo
fdf10eb3-8ede-4343-acb2-b33d6888461b	2025-02-21 00:00:00	15:20	marcus	Bruno	558198507164@s.whatsapp.net	2025-02-19 00:00:00	Cabelo
331f7922-ecdb-4c69-9b1b-818464b067bb	2025-02-28 00:00:00	09:00	renan silva	Bruno	558199185971@s.whatsapp.net	2025-02-19 00:00:00	Cabelo
6fe20502-b8ae-4e5a-b2e9-c4907d4c94f2	2025-02-19 00:00:00	13:20	Indisponivel	Bruno	Indisponivel	2025-02-19 14:58:27.991	
97105383-3c4a-4c34-8573-cee6ccc7d4b5	2025-02-19 00:00:00	14:00	genildo	Bruno	558199736143@s.whatsapp.net	2025-02-19 00:00:00	Cabelo
fed6263e-9cfb-4667-b75d-12a229470844	2025-02-19 00:00:00	14:40	João da Costa 	Bruno	local	2025-02-19 17:08:41.05	Cabelo
15d1629b-7fb1-451f-8103-917a9111f90f	2025-02-21 00:00:00	13:20	João sedoufo 	Wallyson	local	2025-02-19 17:48:42.436	Cabelo+Sobrancelha
07eab7f8-53ff-43a0-9429-69d06f71902b	2025-02-19 00:00:00	17:20	Francisco 	Wallyson	local	2025-02-19 18:02:15.845	Cabelo
6eecf332-b569-449d-8ae9-8cba82b54769	2025-02-20 00:00:00	11:00	joão pedro campos	Bruno	558196073970@s.whatsapp.net	2025-02-19 00:00:00	Cabelo+Barba
931893c2-0267-46f3-ad37-558b1a569a48	2025-02-22 00:00:00	14:00	gabriel	Bruno	558192417684@s.whatsapp.net	2025-02-19 00:00:00	Cabelo+Sobrancelha
86cc2d0d-97e7-44d2-82a5-553638031ffb	2025-02-21 00:00:00	16:00	genildo	Bruno	558199736143@s.whatsapp.net	2025-02-19 00:00:00	Cabelo
d1269346-591b-41c4-acf4-bc20e956f7e5	2025-02-28 00:00:00	13:20	arthur	Wallyson	558196972098@s.whatsapp.net	2025-02-19 00:00:00	Cabelo
6e92238c-e3e3-4fc7-9c91-5a9ae0ebab1a	2025-02-26 00:00:00	17:20	Noa 	Wallyson	local	2025-02-19 22:03:52.834	Cabelo
25e4a6e5-37ca-4a86-9638-92438620bf0d	2025-02-24 00:00:00	16:40	emanuel	Bruno	558197496524@s.whatsapp.net	2025-02-19 00:00:00	Cabelo+Sobrancelha
1914c8c4-0f13-4396-bec5-20b514f25182	2025-02-21 00:00:00	16:40	jefferson	Bruno	558192507833@s.whatsapp.net	2025-02-19 00:00:00	Cabelo
54102703-0345-4f12-b260-a9a1bc1d4c39	2025-02-20 00:00:00	17:20	thomas	Bruno	558181391720@s.whatsapp.net	2025-02-19 00:00:00	Cabelo+Sobrancelha
2fb779f8-e006-495b-aeb4-21535e5fa93c	2025-02-22 00:00:00	08:00	João neto Santa Rita 	Bruno	local	2025-02-20 00:21:22.39	Cabelo
3eba2ad6-14c0-40f1-ae89-04784d7f4d38	2025-02-22 00:00:00	14:40	breno	Bruno	558198437880@s.whatsapp.net	2025-02-19 00:00:00	Cabelo+Sobrancelha
5f88d684-bbce-4653-a1ee-d1132e05f8da	2025-02-27 00:00:00	11:40	apollo	Bruno	558195055274@s.whatsapp.net	2025-02-20 00:00:00	Cabelo+Sobrancelha
f91d5492-adfa-42b2-967d-ea0b52cba3c1	2025-02-21 00:00:00	18:40	Gildevan 	Wallyson	local	2025-02-20 10:53:53.772	Cabelo+Barba
070634c5-30bf-46eb-af8c-f018dfd726e7	2025-02-28 00:00:00	16:00	lucas josé	Bruno	558199311183@s.whatsapp.net	2025-02-20 00:00:00	Cabelo+Sobrancelha
de1394f7-a10f-496a-8fd1-8e46a88d6a29	2025-02-28 00:00:00	18:00	joão do bolo	Bruno	558196647899@s.whatsapp.net	2025-02-20 00:00:00	Cabelo+Sobrancelha
404d302e-2de7-4b57-be61-b02000d63af7	2025-02-21 00:00:00	09:00	Vinicius melo 	Bruno	local	2025-02-20 14:13:46.111	Cabelo
130aedee-c0dc-443b-b083-698a8465b94e	2025-02-27 00:00:00	10:20	ewerton adryan	Bruno	558198289810@s.whatsapp.net	2025-02-20 00:00:00	Cabelo
ca747d4d-c3ec-4a0d-829d-44f22252811a	2025-12-26 00:00:00	18:00	wellington	Wallyson	558196852620@s.whatsapp.net	2025-02-20 00:00:00	Cabelo+Barba
921bc941-4b2c-4e81-9e08-de9fcfea4b28	2025-02-21 00:00:00	14:00	Armando 	Wallyson	local	2025-02-20 15:33:22.091	Cabelo
70f65481-e09d-4187-8304-303c447063c6	2025-02-25 00:00:00	09:00	emanoel	Bruno	558181079674@s.whatsapp.net	2025-02-20 00:00:00	Cabelo
aab4a96f-7cd1-4536-9f63-5f917328f605	2025-02-25 00:00:00	09:40	leonardo	Bruno	558197413226@s.whatsapp.net	2025-02-20 00:00:00	Cabelo
61e53465-27c9-4af8-9938-2f812675d934	2025-02-20 00:00:00	15:20	rennan	Bruno	558179005726@s.whatsapp.net	2025-02-20 00:00:00	Cabelo
888e9dfe-9b73-43b8-aa3d-f629e7c1725c	2025-02-21 00:00:00	15:20	Marcílio 	Wallyson	local	2025-02-20 19:54:21.578	Cabelo
faaee5fc-8f31-46b0-828f-26c7bca4cbec	2025-02-28 00:00:00	16:40	tallisson	Bruno	558197036819@s.whatsapp.net	2025-02-20 00:00:00	Cabelo
f3858b56-b459-44f1-b318-032333012283	2025-02-21 00:00:00	20:00	wellington fonseca	Bruno	558198022472@s.whatsapp.net	2025-02-20 00:00:00	Cabelo
e926af11-7a28-4078-a8e9-12f3d4fb44d2	2025-02-20 00:00:00	16:00	0	Bruno	558181410909@s.whatsapp.net	2025-02-20 00:00:00	Cabelo
8666f0e9-a1f1-4601-83ef-e5265c53fae1	2025-02-28 00:00:00	14:00	gabriel	Bruno	558197699397@s.whatsapp.net	2025-02-20 00:00:00	Cabelo
d66650a3-a156-4b55-9970-21692740d8af	2025-02-22 00:00:00	16:00	antonio	Bruno	558796427818@s.whatsapp.net	2025-02-20 00:00:00	Barba
baaa1904-97c4-4a4d-83fa-47cde0d9313e	2025-02-28 00:00:00	10:20	anderson	Bruno	558198694494@s.whatsapp.net	2025-02-20 00:00:00	Cabelo
a8af1ac6-a513-49eb-8c0b-6e94571efbe4	2025-02-28 00:00:00	09:40	matheus	Bruno	558199219447@s.whatsapp.net	2025-02-20 00:00:00	Cabelo
2534931d-519c-410c-a683-a937a7266443	2025-02-24 00:00:00	17:20	Adilene 	Bruno	local	2025-02-21 01:11:47.708	Cabelo
04e6b874-b67a-4a96-a164-86316f9fbf3e	2025-02-24 00:00:00	18:00	Adilene 	Bruno	local	2025-02-21 01:12:08.686	Cabelo
e40deabd-6104-493a-914f-ab8edd9d049b	2025-02-21 00:00:00	11:40	Tute 	Bruno	local	2025-02-21 01:16:03.721	Cabelo
0fa9950c-29fc-4e74-9dca-462dad52a96b	2025-02-28 00:00:00	11:00	Juninho 	Bruno	local	2025-02-21 01:25:45.254	Cabelo+Sobrancelha
62f7f4c7-8881-4323-a989-491dc8365110	2025-02-21 00:00:00	14:40	Daniel 	Wallyson	local	2025-02-21 01:34:19.633	Cabelo
67feba0b-e4a1-457a-b5f8-e47400252524	2025-02-22 00:00:00	10:40	Mateus amg j. Lucas 	Bruno	local	2025-02-21 01:43:39.539	Cabelo
84c1345d-58e5-4314-b960-a96bf983180a	2025-02-28 00:00:00	15:20	matheus lenmer silva de sales	Bruno	558195204749@s.whatsapp.net	2025-02-21 00:00:00	Cabelo+Sobrancelha
b75a5b2e-9112-462c-a1ab-4c6fce19b5cf	2025-02-28 00:00:00	8:00	Paulinho 	Wallyson	local	2025-02-21 12:04:01.381	Cabelo
1e633aee-f797-42ab-893e-2c53bd35d3bf	2025-02-21 00:00:00	11:00	ataliba	Bruno	558182671510@s.whatsapp.net	2025-02-21 00:00:00	Barba
9bcb4450-9488-4861-a14a-c85fbe23cdce	2025-02-22 00:00:00	17:20	guilherme guedes	Bruno	558197832898@s.whatsapp.net	2025-02-21 00:00:00	Cabelo
2e726afa-4f60-4957-a81e-af99997d908e	2025-02-24 00:00:00	14:40	letho	Wallyson	558199387144@s.whatsapp.net	2025-02-21 00:00:00	Cabelo
9c4b3d85-29ea-4bd8-bf73-655befe04edf	2025-03-01 00:00:00	09:20	erick apolloni	Bruno	558197051743@s.whatsapp.net	2025-02-21 00:00:00	Cabelo
8e0ff939-1dcb-4d07-acdc-411db89cb1a8	2025-02-22 00:00:00	16:40	alysson	Bruno	558195985705@s.whatsapp.net	2025-02-21 00:00:00	Cabelo
9f1fdf64-dbb3-48a9-a05b-beeefb85469f	2025-02-24 00:00:00	09:00	João advogado	Bruno	local	2025-02-21 17:34:55.412	Cabelo
983ffbcc-580c-4007-9dcc-74fc0fa9a319	2025-02-21 00:00:00	20:00	Douglas 	Wallyson	local	2025-02-21 20:03:49.045	Cabelo
2dc09357-833d-43fc-97ff-01c70b6ae5d0	2025-02-27 00:00:00	14:00	Handerson 	Wallyson	local	2025-02-21 20:06:29.924	Cabelo
8314b0d9-9aa5-4e46-8f27-b089d8e9d2ca	2025-02-27 00:00:00	14:40	Handerson 	Wallyson	local	2025-02-21 20:06:46.52	Cabelo
8cded9f5-767d-4efd-af2e-492486201039	2025-02-26 00:00:00	18:00	rhuan	Bruno	558195251500@s.whatsapp.net	2025-02-21 00:00:00	Cabelo+Sobrancelha
844f3962-b9b5-4a67-b596-ed443c0758c7	2025-02-26 00:00:00	16:00	andre	Bruno	558198995821@s.whatsapp.net	2025-02-21 00:00:00	Cabelo+Sobrancelha
16488cb3-8513-407c-a8cd-d1b5a67299f3	2025-02-22 00:00:00	11:20	vicente neto	Bruno	558197192758@s.whatsapp.net	2025-02-21 00:00:00	Cabelo+Barba
c0156370-d4dd-4436-86ba-a64951e3cbaa	2025-02-24 00:00:00	14:40	paulo henrique	Bruno	558174004953@s.whatsapp.net	2025-02-21 00:00:00	Cabelo+Sobrancelha
c42e7c70-1ac9-44c4-bfcb-1dc15af873c7	2025-02-24 00:00:00	13:20	matheus	Bruno	558197941830@s.whatsapp.net	2025-02-21 00:00:00	Cabelo
13b5bf34-d717-45a7-8885-1eb2ee53a1c4	2025-03-01 00:00:00	08:40	Heraldo	Bruno	local	2025-02-22 01:14:51.831	Barba
bca43351-5fba-493a-9160-8169c789599d	2025-02-28 00:00:00	13:20	Bruno	Bruno	local	2025-02-22 10:12:12.448	Cabelo
15ae7173-35a8-4513-9524-478f55f08997	2025-03-01 00:00:00	14:00	neto	Bruno	558181091175@s.whatsapp.net	2025-02-22 00:00:00	Cabelo+Sobrancelha
39017a07-e781-4c1a-a72f-e1030ab196d9	2025-03-07 00:00:00	17:20	fernando	Wallyson	558199410150@s.whatsapp.net	2025-02-22 00:00:00	Cabelo+Sobrancelha
87b17b12-2b1a-4bd5-b257-f183ab2ca2ec	2025-03-01 00:00:00	13:20	Emanoel 	Bruno	local	2025-02-22 16:45:57.805	Cabelo+Barba
e68d7919-20d9-411c-b968-b9789220d42c	2025-03-01 00:00:00	14:40	Emanoel botox 	Bruno	local	2025-02-22 16:46:22.749	Cabelo
9c10a667-a340-4ae2-9453-5f415ffce174	2025-02-27 00:00:00	13:20	arthur	Bruno	558194115511@s.whatsapp.net	2025-02-22 00:00:00	Cabelo+Barba
b0c635e8-e7b5-4959-a21b-7df76c788cae	2025-02-24 00:00:00	13:20	joão marcelo	Wallyson	558197941830@s.whatsapp.net	2025-02-22 00:00:00	Cabelo
4ba9b5ba-6d24-465c-a265-3db414cc344c	2025-02-28 00:00:00	18:40	felipe	Wallyson	558181451150@s.whatsapp.net	2025-02-22 00:00:00	Cabelo
2473e152-0cdd-461c-b74a-ca446d559ca1	2025-03-01 00:00:00	10:00	neto	Bruno	558194759358@s.whatsapp.net	2025-02-23 00:00:00	Cabelo+Sobrancelha
e96629c6-a5b0-4776-b600-b1f86a44f26e	2025-03-21 00:00:00	20:00	Mercia	Wallyson	local	2025-03-21 00:17:40.28	Cabelo
f429542c-4787-48ce-b952-398d590f5f56	2025-02-24 00:00:00	14:00	Vinicius marista	Wallyson	local	2025-02-23 14:52:32.856	Cabelo
ab72a952-b207-4d5d-929e-c287bb699260	2025-02-24 00:00:00	11:00	matheus lima	Bruno	558199670970@s.whatsapp.net	2025-02-23 00:00:00	Cabelo+Sobrancelha
892d8319-8c37-4fe5-aab8-5bf47347ef78	2025-02-27 00:00:00	14:00	Romerio 	Bruno	local	2025-02-23 20:42:55.454	Cabelo
1f863232-8673-4d47-807e-71f033a7f7f7	2025-02-27 00:00:00	14:40	Romerio 	Bruno	local	2025-02-23 20:43:09.924	Cabelo
765d930d-de21-44fc-a546-d26632a04ad8	2025-02-26 00:00:00	18:00	Vinicius 	Wallyson	local	2025-02-23 21:12:55.108	Cabelo
0a03fed1-0c8f-49ea-ac2d-656bfc7aa413	2025-02-27 00:00:00	11:00	Italo	Bruno	local	2025-02-23 21:24:29.317	Cabelo
61d9982d-5d8a-43ac-9fe1-a7bf2c4bd916	2025-02-26 00:00:00	18:40	kauã	Bruno	558196327506@s.whatsapp.net	2025-02-23 00:00:00	Cabelo+Sobrancelha
957c7ba8-7f29-4e2e-a28e-00d7c109cad9	2025-02-26 00:00:00	14:00	arthur	Bruno	558198951857@s.whatsapp.net	2025-02-23 00:00:00	Cabelo
14d78576-4b75-4f5d-8ad9-590a83b0662a	2025-02-26 00:00:00	16:40	júlio césar	Bruno	558196440108@s.whatsapp.net	2025-02-23 00:00:00	Cabelo
c33f0b25-33f0-4fc0-9079-6e86ed75a5ff	2025-02-26 00:00:00	11:00	paulo césar	Bruno	558195254306@s.whatsapp.net	2025-02-23 00:00:00	Cabelo
f1d41650-9db0-45cf-b475-371511f9b4cb	2025-02-24 00:00:00	11:40	samuel barbosa da silva	Wallyson	558198897466@s.whatsapp.net	2025-02-24 00:00:00	Cabelo+Sobrancelha
0487164d-828b-40ca-80ea-b669b83a87f1	2025-02-24 00:00:00	18:00	Ivonaldo 	Wallyson	local	2025-02-24 10:41:33.99	Cabelo
0357bb82-1e27-4abc-b2cc-c5024bd1d707	2025-02-27 00:00:00	16:00	Ruan 	Wallyson	local	2025-02-24 11:34:53.898	Cabelo
6931cf5d-6989-41b7-889c-f2444dd09be4	2025-02-24 00:00:00	11:40	andré	Bruno	558198646935@s.whatsapp.net	2025-02-24 00:00:00	Cabelo+Sobrancelha
afd2c4c4-f2bc-48d5-9f2e-86c912a77086	2025-02-24 00:00:00	10:20	marcos paulo	Bruno	558197806162@s.whatsapp.net	2025-02-24 00:00:00	Cabelo+Sobrancelha
9e1d07b4-1bb0-424b-a903-72ece4cc717d	2025-02-24 00:00:00	15:20	adriel gomes	Wallyson	558196649167@s.whatsapp.net	2025-02-24 00:00:00	Cabelo+Barba
b37d61ee-42b3-4451-a622-de1611b34887	2025-02-24 00:00:00	18:40	Luiz 	Wallyson	local	2025-02-24 13:00:16.102	Cabelo+Sobrancelha
be328359-5618-456b-a14a-0fb68053f7a7	2025-02-25 00:00:00	08:00	Marcado pelada 	Wallyson	local	2025-02-24 13:01:09.393	Cabelo
1f6bf7f5-cd71-421b-8d0d-312fba4492d2	2025-02-25 00:00:00	18:00	rennan	Bruno	558196502964@s.whatsapp.net	2025-02-24 00:00:00	Cabelo
3f445a58-92d4-4057-8019-d239440dd11e	2025-02-28 00:00:00	17:20	arthur sales	Bruno	558199775133@s.whatsapp.net	2025-02-24 00:00:00	Cabelo+Sobrancelha
dcf0b10b-2107-45af-8487-cf5e710ac835	2025-03-01 00:00:00	16:00	ismael pedro	Bruno	558199824318@s.whatsapp.net	2025-02-24 00:00:00	Cabelo
ed434045-2bce-4acc-ac74-f80ffafff4b3	2025-03-01 00:00:00	16:40	luiz felipe	Bruno	558197800927@s.whatsapp.net	2025-02-24 00:00:00	Cabelo
9fb86175-da6e-4deb-b0fe-9fa12886696a	2025-02-25 00:00:00	16:00	𝕴𝖙𝖆𝖒𝖎 	Bruno	local	2025-02-24 16:17:17.001	Cabelo
8ca8a749-ba21-400c-8e07-d569b1353404	2025-02-25 00:00:00	17:20	𝕴𝖙𝖆𝖒𝖎 	Bruno	local	2025-02-24 16:17:34.422	Cabelo
bdcca117-d1f5-4b4b-b569-1b1c62fa2caf	2025-02-25 00:00:00	16:40	felipe silva	Bruno	558196065070@s.whatsapp.net	2025-02-24 00:00:00	Cabelo
8750f800-55e5-4763-aa76-95295f610ab9	2025-02-24 00:00:00	16:00	Francisco	Wallyson	local	2025-02-24 17:34:43.196	Cabelo
170e80eb-ba43-43d8-8421-ecff126b5779	2025-02-24 00:00:00	16:40	Zé neto 	Wallyson	local	2025-02-24 18:21:39.613	Cabelo
b0ab919a-501a-4186-9929-12c73c61aafe	2025-02-25 00:00:00	14:40	gustavo nascimento	Bruno	558181670651@s.whatsapp.net	2025-02-24 00:00:00	Cabelo
b5ee7546-a275-4ea7-bf85-3ff8770f3e8f	2025-02-25 00:00:00	15:20	gabriel batista	Bruno	558194907895@s.whatsapp.net	2025-02-24 00:00:00	Cabelo
1b105a6d-0e14-4b8f-855f-23fb872f230f	2025-03-01 00:00:00	15:20	allef ryan	Bruno	558195740243@s.whatsapp.net	2025-02-24 00:00:00	Cabelo
2e663989-7499-4084-b5e9-7777ca475c0e	2025-02-26 00:00:00	13:20	joão neto	Bruno	558197626118@s.whatsapp.net	2025-02-24 00:00:00	Cabelo
b847e927-2b90-42ba-9c92-3ea0028fdeaf	2025-02-25 00:00:00	11:20	DETRAN 	Wallyson	local	2025-02-24 20:35:21.189	Cabelo
e430bd79-b8f7-4d8f-97b3-d2309792fb46	2025-02-25 00:00:00	18:00	Levino 	Wallyson	local	2025-02-24 20:36:08.988	Cabelo+Barba
c2261521-f6e5-4caf-bdfd-e944b1065257	2025-02-28 00:00:00	17:20	Victor 	Wallyson	local	2025-02-24 20:38:19.297	Cabelo+Barba
e68385c9-7d17-4a75-afa0-ac215d0a66ac	2025-02-28 00:00:00	18:00	João Henrique 	Wallyson	local	2025-02-24 20:38:35.274	Cabelo
c628b689-3752-4b0b-9c60-0fea2ecbf134	2025-03-07 00:00:00	15:20	J. Lucas 	Bruno	local	2025-02-24 21:25:53.811	Cabelo+Sobrancelha
443d8ab9-30be-4e30-afa8-5446b7849388	2025-03-11 00:00:00	13:20	Indisponivel	Bruno	Indisponivel	2025-02-24 21:27:06.705	
984cd161-d4e4-44fe-9596-6c590004f31d	2025-03-11 00:00:00	14:00	Indisponivel	Bruno	Indisponivel	2025-02-24 21:27:06.765	
80f62166-0feb-42fb-9bea-bdc85abf5ff4	2025-03-11 00:00:00	14:40	Indisponivel	Bruno	Indisponivel	2025-02-24 21:27:06.795	
0758e306-0b80-4d4a-b3aa-ece9aaceebae	2025-03-11 00:00:00	15:20	Indisponivel	Bruno	Indisponivel	2025-02-24 21:27:06.825	
00ecf7b5-7162-4b6b-9d2c-c86ecbcf7c97	2025-03-11 00:00:00	16:00	Indisponivel	Bruno	Indisponivel	2025-02-24 21:27:06.855	
1febc8a7-24fe-4952-8ead-3df85df57289	2025-03-11 00:00:00	16:40	Indisponivel	Bruno	Indisponivel	2025-02-24 21:27:06.887	
454934a8-a68a-4031-a613-565bd901e6ff	2025-03-11 00:00:00	17:20	Indisponivel	Bruno	Indisponivel	2025-02-24 21:27:06.918	
e8d9f543-ba20-440c-8e8d-5b3383818630	2025-03-11 00:00:00	18:00	Indisponivel	Bruno	Indisponivel	2025-02-24 21:27:06.95	
9bb79c74-59a5-42a0-8a54-c5550414d37a	2025-03-11 00:00:00	18:40	Indisponivel	Bruno	Indisponivel	2025-02-24 21:27:06.984	
6640d03f-fa95-417b-836f-29ecb19342f5	2025-02-25 00:00:00	16:00	Felipe Barbosa 	Wallyson	local	2025-02-24 21:28:14.947	Cabelo+Barba
ea19d77b-6e62-4d09-b201-40d61eff91b7	2025-02-25 00:00:00	08:40	márcio	Wallyson	558199069172@s.whatsapp.net	2025-02-24 00:00:00	Cabelo
c725e50a-add7-412a-887c-4e3b5b9afbbf	2025-02-25 00:00:00	17:20	carlos hilário	Wallyson	558198314747@s.whatsapp.net	2025-02-24 00:00:00	Cabelo+Barba
2985ed75-a36e-4bf2-a43b-2029ba5d3534	2025-02-25 00:00:00	18:40	Ivonaldo 	Wallyson	local	2025-02-25 00:32:02.651	Cabelo
c32529c0-da92-47d8-87f2-202f54800375	2025-02-28 00:00:00	14:40	luan victor	Bruno	558181307345@s.whatsapp.net	2025-02-25 00:00:00	Cabelo+Sobrancelha
2d3b1978-2bb4-4eaa-a005-fd752ca5995d	2025-02-28 00:00:00	08:40	Max	Wallyson	local	2025-02-25 09:20:49.327	Cabelo
ba846847-1bae-4ae0-9817-70e49c00754c	2025-02-27 00:00:00	09:20	Márcia ( Mateus ) 	Wallyson	local	2025-02-25 10:21:01.5	Cabelo
dd160713-86e4-4cba-9b03-24a8a471ded0	2025-03-07 00:00:00	09:00	thomaz	Bruno	558182118061@s.whatsapp.net	2025-02-25 00:00:00	Cabelo
85e5a706-13aa-432a-9164-99016427a878	2025-03-07 00:00:00	09:40	davi	Bruno	558182118061@s.whatsapp.net	2025-02-25 00:00:00	Cabelo
9a2b62af-04cc-42c0-ba23-897fec915646	2025-02-25 00:00:00	11:40	Paulo 	Bruno	local	2025-02-25 10:45:22.681	Cabelo
8f1967e3-3e71-4499-968b-0f8e4f9e07b7	2025-02-25 00:00:00	13:20	Almoco	Bruno	local	2025-02-25 10:45:59.375	Cabelo
b78935d4-796a-4b76-9cce-94bdfba88b18	2025-02-25 00:00:00	15:20	Bruno ( Fernanda ) 	Wallyson	local	2025-02-25 10:51:46.877	Cabelo
e99d0bad-7e62-419c-9d63-7b4586e49876	2025-02-25 00:00:00	10:20	Dorgyl 	Bruno	local	2025-02-25 11:01:22.513	Cabelo
dfd67424-8534-46ad-93a0-9e792dd1e7c7	2025-02-25 00:00:00	11:00	0	Bruno	local	2025-02-25 11:02:03.677	Cabelo
b8e77012-2db2-47c9-89e0-254b8a93187a	2025-02-25 00:00:00	18:40	ataliba	Bruno	558182671510@s.whatsapp.net	2025-02-25 00:00:00	Barba
d79e90c3-5c4b-4110-96a5-4cf7d078dcec	2025-03-01 00:00:00	08:00	ryan valério	Bruno	558181779060@s.whatsapp.net	2025-02-25 00:00:00	Cabelo+Barba
4dbf492f-8270-49a0-b275-cf4bc7caebd2	2025-02-25 00:00:00	14:00	fernando	Bruno	558196035269@s.whatsapp.net	2025-02-25 00:00:00	Cabelo
93a1c406-3da9-46dc-8557-4808ddc383a1	2025-02-25 00:00:00	09:20	Márcio 	Wallyson	local	2025-02-25 12:05:03.954	Cabelo
90285912-40e1-47c0-be56-4f242f3e3dd4	2025-02-25 00:00:00	16:40	Liaderson 	Wallyson	local	2025-02-25 13:13:32.779	Cabelo
dcd67379-34f9-46bb-9439-3ae59b073a6f	2025-03-08 00:00:00	11:20	Davi 	Wallyson	local	2025-02-25 14:27:50.78	Cabelo
82bb05c8-b9a5-4537-8e6a-34914030e0cc	2025-02-27 00:00:00	10:00	simony	Wallyson	558195967163@s.whatsapp.net	2025-02-25 00:00:00	Cabelo
2b811cd9-e745-44ea-a461-fc13f67a72c8	2025-02-26 00:00:00	14:40	lucas	Bruno	558182451503@s.whatsapp.net	2025-02-25 00:00:00	Cabelo+Sobrancelha
66f9a559-2c90-4022-97ca-c57a488f9fdb	2025-02-25 00:00:00	14:00	jeferson santos de assunção	Wallyson	558198265483@s.whatsapp.net	2025-02-25 00:00:00	Cabelo+Barba
47e8255b-f85f-4763-b129-344f3af6ffbe	2025-02-27 00:00:00	13:20	thiago fiel	Wallyson	558197822298@s.whatsapp.net	2025-02-25 00:00:00	Cabelo
9dd5e80d-6292-41cb-bd81-bd527d9a2928	2025-02-26 00:00:00	09:00	samuel	Bruno	558171201693@s.whatsapp.net	2025-02-25 00:00:00	Cabelo
f4e7f1f4-58b2-4e6c-b95b-6b953784d0a2	2025-03-01 00:00:00	10:40	gustavo	Bruno	558198983986@s.whatsapp.net	2025-02-25 00:00:00	Cabelo
daef3dc7-e32c-484e-b720-24e71069f7d5	2025-02-26 00:00:00	17:20	weslley	Bruno	558197215641@s.whatsapp.net	2025-02-25 00:00:00	Cabelo
c875036a-bb85-405a-a4bd-62152dbc713b	2025-02-28 00:00:00	14:00	ivaldir barbosa	Wallyson	558196149252@s.whatsapp.net	2025-02-25 00:00:00	Cabelo+Sobrancelha
1b6a526e-fca8-4942-9ff4-c79b8b582f16	2025-02-27 00:00:00	15:20	joão guilherme	Bruno	558181673375@s.whatsapp.net	2025-02-25 00:00:00	Cabelo
12585b74-4ae9-4e93-98f4-7671529dd286	2025-02-26 00:00:00	15:20	cauã	Bruno	558199527666@s.whatsapp.net	2025-02-25 00:00:00	Cabelo
7b3c8e7e-d79a-46d1-8a8a-f10eb8a5638a	2025-03-01 00:00:00	14:00	vandro júnior	Wallyson	558196610362@s.whatsapp.net	2025-02-25 00:00:00	Cabelo
ce6817e9-96d2-4ac3-a8f2-18fba02e5b9e	2025-03-01 00:00:00	16:00	daniel	Wallyson	558199459046@s.whatsapp.net	2025-02-25 00:00:00	Cabelo
cc78b2d5-b4ca-48c4-a15e-12d13dd2ba16	2025-02-28 00:00:00	19:20	gustavo	Wallyson	558199587573@s.whatsapp.net	2025-02-26 00:00:00	Cabelo+Sobrancelha
a7ed5bdc-92dc-4540-acca-18fb544eb5ad	2025-02-28 00:00:00	19:20	natacha	Wallyson	558197947166@s.whatsapp.net	2025-02-26 00:00:00	Cabelo
12b38acc-7fc6-4340-ad6e-dfacafc495ff	2025-03-01 00:00:00	18:00	Alyson 	Bruno	local	2025-02-26 10:32:14.656	Cabelo+Barba
a358898c-bf4a-4735-af6f-aa99ee824f3d	2025-03-01 00:00:00	11:20	Jeferson 	Bruno	local	2025-02-26 10:32:51.243	Cabelo
c3968048-f4d6-4b7f-b1e8-486f74730e9c	2025-02-26 00:00:00	09:40	Livio	Bruno	local	2025-02-26 10:35:51.814	Cabelo+Barba
b3391dc8-9447-4e46-83bf-334ea4bef139	2025-02-27 00:00:00	15:20	rafael	Wallyson	558188763249@s.whatsapp.net	2025-02-26 00:00:00	Cabelo
a7c5f47c-b11e-432f-98c9-6a8827f90f89	2025-02-26 00:00:00	18:40	Juninho compadre 	Wallyson	local	2025-02-26 12:16:39.233	Cabelo+Barba
3160966b-7de8-4649-a6dc-10efdc9a48d0	2025-02-28 00:00:00	14:40	Ronney	Wallyson	local	2025-02-26 13:54:50.375	Cabelo
214c2685-33ef-4b95-8f3a-33614c88e193	2025-02-28 00:00:00	15:20	leandro farias oliveira	Wallyson	558195021216@s.whatsapp.net	2025-02-26 00:00:00	Cabelo
8aa92e81-ff4b-48d7-b996-6df94067b817	2025-02-28 00:00:00	10:00	mayrlon	Wallyson	558196600679@s.whatsapp.net	2025-02-26 00:00:00	Cabelo+Sobrancelha
dd88c0ae-d288-4314-a978-97439b3752ac	2025-02-28 00:00:00	10:40	antonio	Wallyson	558796427818@s.whatsapp.net	2025-02-26 00:00:00	Barba
8e8cd0c5-14d7-477e-b091-a9cd9428496c	2025-03-08 00:00:00	10:00	Luís 	Wallyson	local	2025-02-26 18:35:21.706	Cabelo+Sobrancelha
4aff50dc-8ba7-4ada-9269-b199290f7672	2025-02-28 00:00:00	09:20	nickolas gabriel	Wallyson	558189779531@s.whatsapp.net	2025-02-26 00:00:00	Cabelo
3aef0399-5f48-42a6-ae2a-a27124c896c6	2025-03-01 00:00:00	18:00	david callebe	Wallyson	558191447860@s.whatsapp.net	2025-02-26 00:00:00	Cabelo+Barba
5013fdcb-7928-4aba-aeba-c89bf3ae3fa6	2025-03-07 00:00:00	14:00	william gabriel	Bruno	558198087356@s.whatsapp.net	2025-02-26 00:00:00	Cabelo
dcb2f027-1b04-4c36-8fc4-09282ef4fdfd	2025-02-28 00:00:00	20:00	Júlio 	Wallyson	local	2025-02-26 21:48:08.308	Cabelo
bae914f2-9f62-4665-933d-4c6e165917b3	2025-02-27 00:00:00	17:20	gustavo farias	Wallyson	558196195368@s.whatsapp.net	2025-02-26 00:00:00	Cabelo
0c49d4f5-fea7-4396-b063-3ef502d34165	2025-02-27 00:00:00	08:40	Felipe Barbosa 	Wallyson	local	2025-02-26 23:27:25.121	Cabelo+Barba
8307fabd-4a82-4fc6-893e-8850f077454f	2025-03-03 00:00:00	09:00	Indisponivel	Bruno	Indisponivel	2025-02-27 01:28:44.768	
f5b690b4-52c4-4bf7-a497-1cb6b7dc59a5	2025-03-03 00:00:00	09:40	Indisponivel	Bruno	Indisponivel	2025-02-27 01:28:44.878	
15d653c3-2126-404c-9317-ff63bce3bff2	2025-03-03 00:00:00	10:20	Indisponivel	Bruno	Indisponivel	2025-02-27 01:28:44.913	
d018c8dd-996b-47f2-a7ba-5f21a8fef49c	2025-03-03 00:00:00	11:00	Indisponivel	Bruno	Indisponivel	2025-02-27 01:28:44.955	
2ad3ee7e-6188-4d68-8b5a-ab6359ae656d	2025-03-03 00:00:00	11:40	Indisponivel	Bruno	Indisponivel	2025-02-27 01:28:44.993	
975c289c-3f69-477a-8f3c-c5f47591d763	2025-03-03 00:00:00	13:20	Indisponivel	Bruno	Indisponivel	2025-02-27 01:28:45.032	
837ea910-175f-476e-a569-fe5a4282fd71	2025-03-03 00:00:00	14:00	Indisponivel	Bruno	Indisponivel	2025-02-27 01:28:45.069	
81b1d3d6-86ca-435a-87ad-a950ec3fb11b	2025-03-03 00:00:00	14:40	Indisponivel	Bruno	Indisponivel	2025-02-27 01:28:45.105	
f032fa80-90b7-4987-8e32-45ec0378c854	2025-03-03 00:00:00	15:20	Indisponivel	Bruno	Indisponivel	2025-02-27 01:28:45.142	
ea59b947-f1ea-43b4-abed-148aed200d15	2025-03-03 00:00:00	16:00	Indisponivel	Bruno	Indisponivel	2025-02-27 01:28:45.179	
5055986d-bee7-4402-99cf-ef5b8f8d14cd	2025-03-03 00:00:00	16:40	Indisponivel	Bruno	Indisponivel	2025-02-27 01:28:45.224	
201da507-c8ff-4645-8812-dd01dca1eb04	2025-03-03 00:00:00	17:20	Indisponivel	Bruno	Indisponivel	2025-02-27 01:28:45.264	
a9df6980-17ff-42ae-a49a-47049c64030f	2025-03-03 00:00:00	18:00	Indisponivel	Bruno	Indisponivel	2025-02-27 01:28:45.302	
86a31de5-2a91-4006-9d83-ba5638b8c3ab	2025-03-03 00:00:00	18:40	Indisponivel	Bruno	Indisponivel	2025-02-27 01:28:45.34	
c75f1782-2b70-40e5-8bb4-c15bd64bfe50	2025-03-04 00:00:00	09:00	Indisponivel	Bruno	Indisponivel	2025-02-27 01:29:02.914	
19f3f8fc-57a1-4db4-9806-0fee859447d6	2025-03-04 00:00:00	09:40	Indisponivel	Bruno	Indisponivel	2025-02-27 01:29:02.983	
6389967d-3535-4cbc-9ca6-d3e1bea167bd	2025-03-04 00:00:00	10:20	Indisponivel	Bruno	Indisponivel	2025-02-27 01:29:03.017	
01b28038-b119-4137-86ae-c7a7f11bcd85	2025-03-04 00:00:00	11:00	Indisponivel	Bruno	Indisponivel	2025-02-27 01:29:03.296	
ddea6f6f-888f-4963-bad9-2cf9a0e4c072	2025-03-04 00:00:00	11:40	Indisponivel	Bruno	Indisponivel	2025-02-27 01:29:03.328	
4b968a04-b40a-4b87-9c9e-b013a9d928f8	2025-03-04 00:00:00	13:20	Indisponivel	Bruno	Indisponivel	2025-02-27 01:29:03.358	
31cfeff3-9cb2-47c7-9137-49f3ed316b08	2025-03-04 00:00:00	14:00	Indisponivel	Bruno	Indisponivel	2025-02-27 01:29:03.388	
10cf181e-761f-4aa6-bcdf-8d5c601374b5	2025-03-04 00:00:00	14:40	Indisponivel	Bruno	Indisponivel	2025-02-27 01:29:03.418	
6e515649-9f25-4d6b-b844-889db0620b68	2025-03-04 00:00:00	15:20	Indisponivel	Bruno	Indisponivel	2025-02-27 01:29:03.448	
ef94baf6-2bba-4dd2-998d-e44819b0c717	2025-03-04 00:00:00	16:00	Indisponivel	Bruno	Indisponivel	2025-02-27 01:29:03.481	
7a71258d-54a4-4a65-9a37-da9f791ebdda	2025-03-04 00:00:00	16:40	Indisponivel	Bruno	Indisponivel	2025-02-27 01:29:03.517	
237210ca-ca73-4f0d-91a9-2c07de541d1d	2025-03-04 00:00:00	17:20	Indisponivel	Bruno	Indisponivel	2025-02-27 01:29:03.549	
1e54c1f8-cc50-4555-b7f3-914e57bfdc7b	2025-03-04 00:00:00	18:00	Indisponivel	Bruno	Indisponivel	2025-02-27 01:29:03.584	
92a50310-39af-4aaf-bd0b-4fa9afbbc97e	2025-03-04 00:00:00	18:40	Indisponivel	Bruno	Indisponivel	2025-02-27 01:29:03.613	
62dc4ef4-9a85-44a9-be77-4603500b9a63	2025-03-05 00:00:00	09:00	Indisponivel	Bruno	Indisponivel	2025-02-27 01:29:21.664	
1e8f61b6-10a0-4492-9b2d-bf88d198090a	2025-03-05 00:00:00	09:40	Indisponivel	Bruno	Indisponivel	2025-02-27 01:29:21.722	
bf447929-abef-4f54-abdd-910b1a36db0f	2025-03-05 00:00:00	10:20	Indisponivel	Bruno	Indisponivel	2025-02-27 01:29:21.751	
8d58d0f0-803c-4658-b4a2-d3647489198a	2025-03-05 00:00:00	11:00	Indisponivel	Bruno	Indisponivel	2025-02-27 01:29:21.781	
5ef9cdae-de24-4a5c-a9b0-f123f2834f47	2025-03-05 00:00:00	11:40	Indisponivel	Bruno	Indisponivel	2025-02-27 01:29:21.814	
c8b080f7-e00b-49aa-8a43-11e44cb51a60	2025-03-05 00:00:00	13:20	Indisponivel	Bruno	Indisponivel	2025-02-27 01:29:21.845	
8f96a6b1-6176-4d4d-b1e4-19dfbc204ad8	2025-03-05 00:00:00	14:00	Indisponivel	Bruno	Indisponivel	2025-02-27 01:29:21.875	
9d4f0aeb-0fca-42dc-b263-2c09456c21d3	2025-03-05 00:00:00	14:40	Indisponivel	Bruno	Indisponivel	2025-02-27 01:29:21.907	
9575a7d7-07e7-4214-844b-400548412b70	2025-03-05 00:00:00	15:20	Indisponivel	Bruno	Indisponivel	2025-02-27 01:29:21.938	
b06d3757-9a37-43f3-97d5-5c52837b9ce6	2025-03-05 00:00:00	16:00	Indisponivel	Bruno	Indisponivel	2025-02-27 01:29:21.968	
2e6ad476-7095-42ff-b32d-d0f7934a6dc4	2025-03-05 00:00:00	16:40	Indisponivel	Bruno	Indisponivel	2025-02-27 01:29:22.001	
0188bd4f-9823-4d50-982e-6b7ef00faeaa	2025-03-05 00:00:00	17:20	Indisponivel	Bruno	Indisponivel	2025-02-27 01:29:22.035	
db3b402c-b91c-405d-9c40-ae0fc4b10193	2025-03-05 00:00:00	18:00	Indisponivel	Bruno	Indisponivel	2025-02-27 01:29:22.067	
d545829f-719c-4b13-b3f0-86ca151a7d6c	2025-03-05 00:00:00	18:40	Indisponivel	Bruno	Indisponivel	2025-02-27 01:29:22.099	
8bf16244-41dc-4bbe-820b-7dd00a49d645	2025-03-05 00:00:00	09:00	Indisponivel	Bruno	Indisponivel	2025-02-27 01:29:45.831	
4846e312-4468-4267-b17a-25bf2758c188	2025-03-05 00:00:00	09:40	Indisponivel	Bruno	Indisponivel	2025-02-27 01:29:45.89	
715cd718-f372-429c-9c99-e511e119a6b8	2025-03-05 00:00:00	10:20	Indisponivel	Bruno	Indisponivel	2025-02-27 01:29:45.923	
d24c3c29-2cf7-44aa-aa29-54d800a3e107	2025-03-05 00:00:00	11:00	Indisponivel	Bruno	Indisponivel	2025-02-27 01:29:45.955	
42434e3d-bc8b-4bf5-bd3e-96b34452e055	2025-03-05 00:00:00	11:40	Indisponivel	Bruno	Indisponivel	2025-02-27 01:29:45.985	
e47488be-8b27-43be-8bfa-dcfc3cf5ac02	2025-03-05 00:00:00	13:20	Indisponivel	Bruno	Indisponivel	2025-02-27 01:29:46.015	
086dc1f6-7f8e-4b76-be78-ea65d4ca86a3	2025-03-05 00:00:00	14:00	Indisponivel	Bruno	Indisponivel	2025-02-27 01:29:46.045	
393ef2fe-41e3-4af9-afe1-4a63990fb9f4	2025-03-05 00:00:00	14:40	Indisponivel	Bruno	Indisponivel	2025-02-27 01:29:46.075	
f72b926a-f50d-42b3-8cc0-6798baeeb98a	2025-03-05 00:00:00	15:20	Indisponivel	Bruno	Indisponivel	2025-02-27 01:29:46.105	
1e38d4a9-06a2-47ac-8bd7-eeec9246e966	2025-03-05 00:00:00	16:00	Indisponivel	Bruno	Indisponivel	2025-02-27 01:29:46.136	
58936c1c-764e-436a-bb36-942a23d5af42	2025-03-05 00:00:00	16:40	Indisponivel	Bruno	Indisponivel	2025-02-27 01:29:46.168	
55a9bfcd-1e45-4347-af0d-70e01cd144e0	2025-03-05 00:00:00	17:20	Indisponivel	Bruno	Indisponivel	2025-02-27 01:29:46.198	
31dd7147-56ca-4c01-a75d-5aa37a1a5e53	2025-03-05 00:00:00	18:00	Indisponivel	Bruno	Indisponivel	2025-02-27 01:29:46.229	
d2b81219-9bed-4e96-8414-0753d7958d67	2025-03-05 00:00:00	18:40	Indisponivel	Bruno	Indisponivel	2025-02-27 01:29:46.265	
8c244c36-0939-47c6-ae66-d743872fb14a	2025-03-06 00:00:00	09:00	Indisponivel	Bruno	Indisponivel	2025-02-27 01:30:03.565	
4adf1596-0bce-4b71-b6f7-0660724eb622	2025-03-06 00:00:00	09:40	Indisponivel	Bruno	Indisponivel	2025-02-27 01:30:03.637	
1a721d21-c569-4ac4-915c-55589e42f447	2025-03-06 00:00:00	10:20	Indisponivel	Bruno	Indisponivel	2025-02-27 01:30:03.672	
f49efb68-529f-4a4b-b349-93cc972f4601	2025-03-06 00:00:00	11:00	Indisponivel	Bruno	Indisponivel	2025-02-27 01:30:03.709	
fa997d77-6da0-4638-beca-3426c2b8a1de	2025-03-06 00:00:00	11:40	Indisponivel	Bruno	Indisponivel	2025-02-27 01:30:03.742	
e6907e39-6b88-452e-825d-8a150afa9fa9	2025-03-06 00:00:00	13:20	Indisponivel	Bruno	Indisponivel	2025-02-27 01:30:03.775	
1df1ca75-4811-4061-a457-8ade0e2e50bf	2025-03-06 00:00:00	14:00	Indisponivel	Bruno	Indisponivel	2025-02-27 01:30:03.805	
d934ce6f-f7d3-49bf-a9fc-aace44669ade	2025-03-06 00:00:00	14:40	Indisponivel	Bruno	Indisponivel	2025-02-27 01:30:03.837	
af1dce9c-0b8b-4b91-81c5-542ad52faa3e	2025-03-06 00:00:00	15:20	Indisponivel	Bruno	Indisponivel	2025-02-27 01:30:03.872	
0d1ad3cf-b669-4fd8-8410-b04e3ccda71b	2025-03-06 00:00:00	16:00	Indisponivel	Bruno	Indisponivel	2025-02-27 01:30:03.903	
d4a48a24-b864-41e6-bea3-7c207c0a271d	2025-03-06 00:00:00	16:40	Indisponivel	Bruno	Indisponivel	2025-02-27 01:30:03.938	
1159db93-3b2b-449d-b1ab-69a5e2f523be	2025-03-06 00:00:00	17:20	Indisponivel	Bruno	Indisponivel	2025-02-27 01:30:03.97	
8307fb2c-17d7-4fcc-b71a-82a600241f87	2025-03-06 00:00:00	18:00	Indisponivel	Bruno	Indisponivel	2025-02-27 01:30:04	
8a4a15a6-fa5c-4122-9455-b289fe16a60e	2025-03-06 00:00:00	18:40	Indisponivel	Bruno	Indisponivel	2025-02-27 01:30:04.03	
0fef7713-e9c0-4be1-8e25-52b1a166f7be	2025-03-07 00:00:00	17:20	del alumínio	Bruno	558197796167@s.whatsapp.net	2025-02-26 00:00:00	Cabelo
0ad8700d-f644-409a-ba06-34cea7bdd493	2025-03-07 00:00:00	18:00	cauê	Bruno	558197796167@s.whatsapp.net	2025-02-26 00:00:00	Cabelo
f94112aa-e2d9-4ecf-b107-d12789583165	2025-02-27 00:00:00	11:20	Kiko 	Wallyson	local	2025-02-27 12:13:36.245	Cabelo
e574a47f-8149-49c6-a46a-8d1024055cf1	2025-02-28 00:00:00	11:20	lucas	Wallyson	558197326785@s.whatsapp.net	2025-02-27 00:00:00	Cabelo
3869ee58-88cd-4897-b8ec-14ae6e4adfbc	2025-02-27 00:00:00	10:40	Júnior 	Wallyson	local	2025-02-27 13:18:33.261	Cabelo
261e4067-c2f1-49e4-9d21-57dca78b615f	2025-02-28 00:00:00	11:40	zaldinho	Bruno	558198591039@s.whatsapp.net	2025-02-27 00:00:00	Cabelo
61a7b63c-5327-4b39-8a00-256dd7670dc1	2025-02-28 00:00:00	18:40	Ocupado	Bruno	local	2025-02-27 19:58:43.092	Cabelo
80b83ad7-1fd3-4aea-873f-1c26b80b37cf	2025-03-01 00:00:00	10:00	Douglas 	Wallyson	local	2025-02-27 20:30:05.123	Cabelo
4403673b-a4e6-4b52-b507-0d534041ae96	2025-03-21 00:00:00	11:40	foi mesmo	Bruno	558197300429@s.whatsapp.net	2025-03-20 00:00:00	Cabelo
41c07826-2511-45fc-97fa-3f6990d215e6	2025-03-01 00:00:00	14:40	Marcelo 	Wallyson	local	2025-02-27 22:03:40.081	Cabelo
5b008bc8-4ef6-4613-812c-3963643c8029	2025-03-01 00:00:00	16:40	Wellington supremo 	Wallyson	local	2025-02-27 22:25:35.963	Cabelo
cb42ffeb-9cb6-40fb-b108-3b66c0e3f4ab	2025-03-07 00:00:00	16:00	Matheus 	Wallyson	local	2025-02-28 00:53:46.304	Cabelo+Sobrancelha
9864c1a7-1720-4535-ac99-3758f3031bac	2025-03-01 00:00:00	17:20	letícia	Wallyson	558182158768@s.whatsapp.net	2025-02-27 00:00:00	Cabelo
68f2343f-9e66-4e18-9982-8d88d8ef6dae	2025-03-01 00:00:00	15:20	Felipe Barbosa 	Wallyson	local	2025-02-28 03:04:53.808	Cabelo+Barba
0f50ac7d-7e5e-4f33-a142-7940908793a7	2025-03-01 00:00:00	08:40	Cleiton 	Wallyson	local	2025-02-28 03:07:51.887	Cabelo
68aa0ed3-b6e5-4ef4-90b0-ad607789331b	2025-03-08 00:00:00	09:20	alan	Wallyson	558182284289@s.whatsapp.net	2025-02-28 00:00:00	Cabelo
31c0741b-149a-4389-bfab-6a430c4e0b37	2025-03-07 00:00:00	16:40	mateus	Bruno	558196083218@s.whatsapp.net	2025-02-28 00:00:00	Cabelo+Barba
1a18961a-8306-4f2a-adcd-9daf1055406f	2025-03-01 00:00:00	13:20	kayke	Wallyson	558197180683@s.whatsapp.net	2025-02-28 00:00:00	Cabelo+Barba
02738ad4-2c5d-41c4-b954-9f8a96400ec2	2025-03-01 00:00:00	08:00	hellen	Wallyson	558197947166@s.whatsapp.net	2025-02-28 00:00:00	Cabelo
4a187e06-603b-493d-b104-610400168cbe	2025-03-01 00:00:00	09:20	arthur	Wallyson	558196972098@s.whatsapp.net	2025-02-28 00:00:00	Cabelo+Sobrancelha
45c2ca57-a043-4cfb-b80f-9dc4b143e34a	2025-03-03 00:00:00	18:00	láercio	Wallyson	558196620184@s.whatsapp.net	2025-02-28 00:00:00	Cabelo+Sobrancelha
4612b6f2-e6bd-4d3c-a72c-e90ff002e088	2025-03-07 00:00:00	19:20	Ocupado	Bruno	local	2025-02-28 16:13:53.75	Cabelo
844728c0-2c61-4ede-b286-6f0a210b97a7	2025-03-07 00:00:00	20:00	Ocupado	Bruno	local	2025-02-28 16:14:12.613	Cabelo
d9fd8651-d676-475d-9738-1089e8549194	2025-03-07 00:00:00	15:20	Marcelly 	Wallyson	local	2025-02-28 16:20:00.759	Cabelo
86b91c81-4374-4d41-84e2-fc8c3a475b3b	2025-03-07 00:00:00	10:20	antonio	Bruno	558796427818@s.whatsapp.net	2025-02-28 00:00:00	Barba
923ad3b7-f46d-4b61-8bf1-d9066681f377	2025-03-01 00:00:00	12:00	Ocupado	Bruno	local	2025-02-28 18:10:34.914	Cabelo
42931ec5-fa67-4e1f-a264-4a5c32359022	2025-03-07 00:00:00	18:00	eduardo	Wallyson	558194699903@s.whatsapp.net	2025-02-28 00:00:00	Cabelo
b6f47a66-e1af-4066-9b83-728a906656d1	2025-03-08 00:00:00	08:40	wesley da silva barbosa	Wallyson	558181016662@s.whatsapp.net	2025-02-28 00:00:00	Cabelo+Sobrancelha
cb2239ed-4fcd-4e18-a75d-9765a171b3fb	2025-03-07 00:00:00	14:00	jeferson santos	Wallyson	558198265483@s.whatsapp.net	2025-02-28 00:00:00	Cabelo+Barba
e83e634e-cc20-4225-9139-fd0cfea3f12b	2025-03-01 00:00:00	11:20	samuel ferreira	Wallyson	558199862867@s.whatsapp.net	2025-02-28 00:00:00	Cabelo+Barba
7a44974f-2027-4946-a7c1-6656da417b4b	2025-03-07 00:00:00	16:00	geovane silva	Bruno	558198906893@s.whatsapp.net	2025-02-28 00:00:00	Cabelo
ea0f3d45-e333-4549-9800-b0d18480d741	2025-03-01 00:00:00	10:40	Felipe 	Wallyson	local	2025-03-01 11:41:27.843	Barba
67245db8-4717-4a3c-b02b-7002963cf4ce	2025-03-08 00:00:00	08:40	Heraldo	Bruno	local	2025-03-01 11:56:32.509	Barba
7257b1ab-321f-4d52-a206-a8f53d6360b0	2025-03-07 00:00:00	14:40	maurycio	Bruno	558197162890@s.whatsapp.net	2025-03-01 00:00:00	Cabelo+Sobrancelha
328d0e57-aa44-4002-9c57-c24f8d42aaad	2025-03-12 00:00:00	18:00	samuel	Wallyson	558196448583@s.whatsapp.net	2025-03-01 00:00:00	Cabelo
44314a44-f3f0-44fc-babe-d5d3656db534	2025-03-08 00:00:00	14:00	ryan	Bruno	558196680308@s.whatsapp.net	2025-03-01 00:00:00	Cabelo
e69077ba-b840-4d63-b4e4-4de5fcf7fa65	2025-03-21 00:00:00	13:20	Ocupado	Bruno	local	2025-03-21 14:43:37.235	Cabelo
2793bd3d-aa86-4f93-bb88-50696f4afeba	2025-03-07 00:00:00	11:00	ricardo	Bruno	5513982174481@s.whatsapp.net	2025-03-01 00:00:00	Cabelo
75852b75-e18f-4b5e-8536-ae1d5353e5dc	2025-03-08 00:00:00	13:20	Emanoel 	Bruno	local	2025-03-01 18:41:52.304	Cabelo+Barba
ac1d2ce5-c785-452b-91fd-ef1a4beebd06	2025-03-07 00:00:00	11:40	carlos henrique	Bruno	558196639360@s.whatsapp.net	2025-03-01 00:00:00	Cabelo+Barba
d42049e9-be48-4f6c-b6cb-c8ad74afe9ed	2025-03-07 00:00:00	14:40	ryan	Wallyson	5511959620317@s.whatsapp.net	2025-03-02 00:00:00	Cabelo+Sobrancelha
55a35ac4-8d63-414d-9f02-3fa1a3cf4f04	2025-03-08 00:00:00	08:00	elysson	Bruno	558199697267@s.whatsapp.net	2025-03-02 00:00:00	Cabelo+Sobrancelha
714588d5-3b23-4b3b-b9a4-db39904364f2	2025-03-07 00:00:00	13:20	gabriel	Bruno	558199433156@s.whatsapp.net	2025-03-02 00:00:00	Cabelo
2217c9c4-428c-4888-9d31-cb8de5118754	2025-03-08 00:00:00	09:20	matheus ryan	Bruno	558198446732@s.whatsapp.net	2025-03-02 00:00:00	Cabelo
486fbb80-4008-4345-939b-d3a3c6516d84	2025-03-08 00:00:00	10:00	josé everson	Bruno	558179003193@s.whatsapp.net	2025-03-02 00:00:00	Cabelo
ab81b9a7-eb88-4a05-ac51-710e6b829ac3	2025-03-08 00:00:00	10:40	luiz henrique arruda	Bruno	558189496855@s.whatsapp.net	2025-03-02 00:00:00	Cabelo
88ec9da0-f651-44b6-86af-e420612f35bf	2025-03-03 00:00:00	09:00	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:43:12.805	
de6221ff-9d5c-44ee-bc46-251c22e0865e	2025-03-03 00:00:00	09:40	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:43:12.922	
582c3f18-7904-4e2c-8829-ee6952765888	2025-03-03 00:00:00	10:20	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:43:12.957	
89e981b5-117b-4517-8b40-90efdfe55224	2025-03-03 00:00:00	11:00	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:43:12.998	
0f7ccb7a-c10a-4806-aea4-8788b9d7faec	2025-03-03 00:00:00	11:40	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:43:13.034	
0aac7319-e7b7-437a-8bcd-0e273f5057ef	2025-03-03 00:00:00	13:20	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:43:13.073	
500aa6ab-c71e-4a2a-b2d4-65eaf143fc36	2025-03-03 00:00:00	14:00	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:43:13.117	
7da6ff56-957b-4e4b-b495-e5526a0375a6	2025-03-03 00:00:00	14:40	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:43:13.171	
c1e630ed-153b-466e-a78b-f1bb7e7c926c	2025-03-03 00:00:00	15:20	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:43:13.212	
b8e6ca81-c0e4-4976-beff-211a4143a9fc	2025-03-03 00:00:00	16:00	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:43:13.251	
e9a9f214-9621-45df-a70a-6f57753b1358	2025-03-03 00:00:00	16:40	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:43:13.292	
8b8b0a4a-6aba-4abe-ba27-97d5a22768b4	2025-03-03 00:00:00	17:20	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:43:13.33	
99c24439-822c-4499-bb4a-ae56cc5a6646	2025-03-03 00:00:00	18:00	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:43:13.653	
afe542c2-484b-4b47-b97b-41e4553dc5ef	2025-03-03 00:00:00	18:40	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:43:13.689	
011fa7b0-856a-4619-a0a7-01592c6fbb6d	2025-03-04 00:00:00	08:00	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:43:29.941	
05ab3403-1256-4214-921e-2d99d4e725d0	2025-03-04 00:00:00	08:40	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:43:30.005	
1f1445ab-1669-40e7-946e-ea0615a7f068	2025-03-04 00:00:00	09:20	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:43:30.04	
a9fccbff-6d88-47ce-9d63-1dd815fdb140	2025-03-04 00:00:00	10:00	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:43:30.076	
b5dab202-c2ec-4540-a90a-31691497a91c	2025-03-04 00:00:00	10:40	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:43:30.11	
cd932fa2-744b-42a8-96c8-7c508d42e20b	2025-03-04 00:00:00	11:20	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:43:30.143	
1a665fff-0113-4dd5-a767-7358dd73f82e	2025-03-04 00:00:00	13:20	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:43:30.176	
112dacbb-9c8b-4376-a6d8-7d5cad78ad2a	2025-03-04 00:00:00	14:00	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:43:30.21	
2ca51cee-1586-467f-8889-9beddcbe65e7	2025-03-04 00:00:00	14:40	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:43:30.243	
c346e810-8a1a-44fe-b043-cd088f5d4835	2025-03-04 00:00:00	15:20	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:43:30.278	
e88b6631-b6ab-4fdf-90a5-0193da821a0e	2025-03-04 00:00:00	16:00	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:43:30.312	
bdaf1443-959b-49c6-b30a-e1e6c42ebae4	2025-03-04 00:00:00	16:40	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:43:30.407	
9cf5ed9d-a6ef-4bd3-8750-93d9350899d0	2025-03-04 00:00:00	17:20	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:43:30.445	
43dadc1f-50fb-4fa0-901f-8e9d47bb1098	2025-03-04 00:00:00	18:00	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:43:30.481	
977903ab-b112-4b6f-841d-beb894ee1f14	2025-03-04 00:00:00	18:40	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:43:30.516	
22854111-d9e0-439a-8b77-07ce98274c91	2025-03-05 00:00:00	08:00	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:43:53.181	
7ce47519-106a-4e47-9e3d-2f781d811780	2025-03-05 00:00:00	08:40	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:43:53.256	
1ddf5da7-ea8b-48e0-af65-268185b74305	2025-03-05 00:00:00	09:20	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:43:53.296	
970828ba-e781-440a-8823-dc417337f660	2025-03-05 00:00:00	10:00	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:43:53.337	
03deb90b-f0b2-4164-a66c-65172755de94	2025-03-05 00:00:00	10:40	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:43:53.372	
a8e992e8-e15e-4e2d-8da9-6618968cb760	2025-03-05 00:00:00	11:20	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:43:53.408	
c6b1b092-7c54-40e2-9577-253416026538	2025-03-05 00:00:00	13:20	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:43:53.444	
75c59ace-7286-4940-9f69-bbce7cdc8de7	2025-03-05 00:00:00	14:00	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:43:53.505	
f451db4c-c0b0-4a44-b398-f62842c69167	2025-03-05 00:00:00	14:40	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:43:53.54	
bd8aed17-9eaf-44ee-91a7-83be03cf0dec	2025-03-05 00:00:00	15:20	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:43:53.578	
52e91a01-57bc-41b3-aa01-a2ea3ca67249	2025-03-05 00:00:00	16:00	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:43:53.647	
bb010b25-0973-4ebf-bf4e-2e9f085ff988	2025-03-05 00:00:00	16:40	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:43:53.683	
8e37d728-4e74-4576-813f-583def0694d4	2025-03-05 00:00:00	17:20	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:43:53.723	
16d0ea51-d4c4-4271-b294-2c4711293eb0	2025-03-05 00:00:00	18:00	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:43:53.758	
f97f08ea-236e-47a0-a22c-0b2cf0d2e195	2025-03-05 00:00:00	18:40	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:43:53.797	
19fd7013-03ee-4ab8-8dd1-be102709f32f	2025-03-06 00:00:00	08:00	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:44:10.287	
62dd3d51-2762-4838-9b51-1de24e69a704	2025-03-06 00:00:00	08:40	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:44:10.352	
a43b7ba8-8346-4f47-9f06-9f17455c0c27	2025-03-06 00:00:00	09:20	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:44:10.385	
87c60871-0cf0-4b22-988a-b033efcfacfb	2025-03-06 00:00:00	10:00	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:44:10.418	
79485e59-1dfa-4ac1-997b-08a889a145af	2025-03-06 00:00:00	10:40	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:44:10.451	
e382b3fa-0047-44eb-9419-4fa32bef677a	2025-03-06 00:00:00	11:20	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:44:10.484	
84d5010b-d327-4bd9-afab-0c76ec5ed737	2025-03-06 00:00:00	13:20	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:44:10.519	
4a1f5fb1-560c-422c-b495-9f6b380f829b	2025-03-06 00:00:00	14:00	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:44:10.552	
99d5655a-6f21-4e78-a715-aec8352e3178	2025-03-06 00:00:00	14:40	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:44:10.586	
2d0f3e42-4381-40be-bc13-04c8d5387761	2025-03-06 00:00:00	15:20	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:44:10.619	
189a7ec0-6b94-4572-ba10-8314b768ca44	2025-03-06 00:00:00	16:00	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:44:10.653	
fb73d825-6d68-4048-9ada-a1c6703b3979	2025-03-06 00:00:00	16:40	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:44:10.69	
71c0b725-661a-41db-955e-fc223bdd72db	2025-03-06 00:00:00	17:20	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:44:10.723	
4bd65ebc-541e-4224-8051-2b7f60878785	2025-03-06 00:00:00	18:00	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:44:10.756	
87349913-2e1e-4a29-bfa2-e83b1fcd4ed0	2025-03-06 00:00:00	18:40	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:44:10.788	
b766c382-19dc-448d-8d63-3833deeb2268	2025-03-07 00:00:00	08:40	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:44:35.937	
7bc44d71-4d5c-4f94-a1b7-43281c3c274c	2025-03-07 00:00:00	8:00	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:44:36.004	
3a03a630-2e1a-4c10-b7c2-980fd3024903	2025-03-07 00:00:00	09:20	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:44:36.038	
585ddee6-c341-4c6f-8697-6aa6974a72a6	2025-03-07 00:00:00	10:00	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:44:36.072	
b21c6f6a-f01c-465e-888e-bf08b8d828ab	2025-03-07 00:00:00	10:40	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:44:36.124	
3ce94db3-33cb-4b41-9266-b348323efad0	2025-03-07 00:00:00	11:20	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:44:36.16	
4c3ad5ca-553d-4db7-9f83-a1372918e593	2025-03-07 00:00:00	13:20	Indisponivel	Wallyson	Indisponivel	2025-03-03 11:44:36.194	
ed2dfd23-2dce-447e-94d1-8e31bbac5bca	2025-03-08 00:00:00	16:00	arthur	Bruno	558194115511@s.whatsapp.net	2025-03-03 00:00:00	Barba
b3572828-03c1-4ee4-8b53-d6e5e1f6c421	2025-03-21 00:00:00	14:00	lucas gabriel	Bruno	558199333703@s.whatsapp.net	2025-03-20 00:00:00	Cabelo
4cce7993-28b0-4238-af12-2030958343d2	2025-03-08 00:00:00	10:40	mathias	Wallyson	558187494403@s.whatsapp.net	2025-03-03 00:00:00	Cabelo+Barba
283d8824-6e69-498f-b9c3-3e0c152a5198	2025-03-08 00:00:00	14:40	mateus barbosa	Bruno	558197626344@s.whatsapp.net	2025-03-04 00:00:00	Cabelo
37842721-8af2-4aa2-839b-cccc5a2f41a0	2025-03-07 00:00:00	16:40	wilson	Wallyson	558197148928@s.whatsapp.net	2025-03-04 00:00:00	Cabelo+Sobrancelha
30532ed6-ab94-4000-b1cc-070b29c9074f	2025-03-07 00:00:00	18:40	lucas gomes	Wallyson	558198471608@s.whatsapp.net	2025-03-04 00:00:00	Cabelo
c9c8bce3-99f7-4bc5-b879-6491e163cc02	2025-03-08 00:00:00	12:00	matheus	Bruno	558197941830@s.whatsapp.net	2025-03-04 00:00:00	Cabelo
7a2f8fed-976e-4424-9d35-8e88e6b2ee4d	2025-03-21 00:00:00	18:00	Teteu	Bruno	local	2025-03-21 09:22:54.395	Cabelo
1b87dcf3-87cf-4de1-8d28-f66e9e6949e6	2025-03-10 00:00:00	15:20	marcus	Wallyson	558199349818@s.whatsapp.net	2025-03-05 00:00:00	Cabelo
8f763af4-3458-4533-8d48-a9e9e26e31ea	2025-03-15 00:00:00	08:00	pedro lucas	Wallyson	558197832195@s.whatsapp.net	2025-03-05 00:00:00	Cabelo
8050e5c0-d9e0-417d-891c-6ffe860a4123	2025-03-07 00:00:00	20:00	Pedro 	Wallyson	local	2025-03-05 12:09:18.3	Cabelo+Sobrancelha
b25522e5-10a6-443d-a9f3-06173b701188	2025-03-10 00:00:00	17:20	bruno	Bruno	558197349442@s.whatsapp.net	2025-03-05 00:00:00	Cabelo
d35be391-f86d-48f4-b3d3-732966dcd381	2025-03-21 00:00:00	18:40	Teteu botox	Bruno	local	2025-03-21 09:23:23.805	Cabelo
f1face72-d2cd-4856-aa22-6e06b08a7f32	2025-03-10 00:00:00	17:20	joão breno	Wallyson	558197349442@s.whatsapp.net	2025-03-05 00:00:00	Cabelo
2557204b-cca6-40b7-bb44-c82bf0ef07c4	3025-03-07 00:00:00	17:20	miguel	Bruno	558199728099@s.whatsapp.net	2025-03-05 00:00:00	Cabelo
9ad95a91-638a-4c79-8411-6e170d618fb5	2025-03-12 00:00:00	16:00	Allysson 	Wallyson	local	2025-03-05 13:30:47.328	Cabelo
3bcf2a54-8fe6-4d73-b39d-6ee7d4ea41af	2025-03-08 00:00:00	12:00	Adaias 	Wallyson	local	2025-03-05 13:43:35.751	Cabelo
da83bd60-f6ba-4cc2-9914-372ed4ccf5e0	2025-03-10 00:00:00	11:00	matheus lima tadalafila	Bruno	558199670970@s.whatsapp.net	2025-03-05 00:00:00	Cabelo+Sobrancelha
51f21e17-050c-4e09-9f4a-dd4cbddffb6c	2025-03-08 00:00:00	14:00	júlio	Wallyson	558196192233@s.whatsapp.net	2025-03-05 00:00:00	Cabelo
a84e1a67-e2af-47f9-bacd-753360cffd55	2025-03-07 00:00:00	19:20	Valdemir	Wallyson	local	2025-03-05 18:47:10.619	Cabelo
db925dfb-7e58-4fd8-bdad-b17adfdb0eb4	2025-03-08 00:00:00	18:00	denilson	Bruno	558197084296@s.whatsapp.net	2025-03-05 00:00:00	Barba
d94c38f2-1d8c-4ecc-aeea-6b193f7a04b2	2025-03-08 00:00:00	16:40	tássio moraes	Bruno	558197909383@s.whatsapp.net	2025-03-05 00:00:00	Cabelo+Barba
ef60d6d8-f467-47d6-807c-f9d1486bd84e	2025-03-08 00:00:00	14:40	ricardo	Wallyson	558182727353@s.whatsapp.net	2025-03-05 00:00:00	Cabelo
daddcbd0-5ba0-4e94-831b-26d428956a80	2025-03-08 00:00:00	17:20	sid	Bruno	558191536718@s.whatsapp.net	2025-03-05 00:00:00	Cabelo+Sobrancelha
e5d87e1e-265c-4bd2-a831-60466afede42	2025-03-11 00:00:00	10:20	pedro henrique	Bruno	558198446899@s.whatsapp.net	2025-03-05 00:00:00	Cabelo
ab45af13-82ff-4558-bc55-098a4e95ab69	2025-03-08 00:00:00	17:20	joão	Wallyson	558196050355@s.whatsapp.net	2025-03-05 00:00:00	Cabelo+Sobrancelha
f38ecd25-554d-4693-8d65-eb5a0b6177fa	2025-03-22 00:00:00	12:00	Ruan 	Wallyson	local	2025-03-21 16:37:45.893	Cabelo
0b31e213-9ba3-4267-94a0-056e824cf75d	2025-03-12 00:00:00	17:20	vinicius jorge da silva	Bruno	558195743981@s.whatsapp.net	2025-03-06 00:00:00	Cabelo
79276b58-f856-4a88-92bc-1ecf595b100b	2025-03-10 00:00:00	09:00	Indisponivel	Bruno	Indisponivel	2025-03-06 12:36:45.481	
7e80040a-144b-4ace-9aab-b0dbd017348e	2025-03-10 00:00:00	14:00	Pedro Augusto 	Bruno	local	2025-03-06 13:00:28.556	Cabelo
8a34f034-adc8-4529-b809-d5a0f00311fe	2025-03-08 00:00:00	16:00	laércio	Wallyson	558196620184@s.whatsapp.net	2025-03-06 00:00:00	Cabelo+Sobrancelha
808b7a32-2890-4dbb-ab8e-5ef54a4fa41a	2025-03-24 00:00:00	18:00	Marcado 	Wallyson	local	2025-03-21 22:10:05.71	Cabelo
96b4b34c-ff31-494b-90c2-0f40e986ea50	2025-03-24 00:00:00	17:20	Valney 	Bruno	local	2025-03-22 09:35:45.999	Cabelo
bf9cd787-fdf5-4260-8e23-5ee58b4b7204	2025-03-29 00:00:00	13:20	Emanoel	Bruno	local	2025-03-22 16:26:34.837	Cabelo+Barba
0029907b-7826-4781-a8bc-fda762bbd98b	2025-03-24 00:00:00	14:00	deyvid jhonatan	Bruno	558199201610@s.whatsapp.net	2025-03-22 00:00:00	Cabelo
3e239e51-c19b-4da3-bb04-2e9ec2142805	2025-04-02 00:00:00	16:40	leonardo	Bruno	558174001016@s.whatsapp.net	2025-03-23 00:00:00	Cabelo
965a6ba0-477e-4814-917d-0aacf1ad2777	2025-03-24 00:00:00	14:40	matheus lima	Bruno	558199670970@s.whatsapp.net	2025-03-24 00:00:00	Cabelo+Sobrancelha
80baf47a-9d12-4fd9-bcd2-bc531fd2a859	2025-03-26 00:00:00	18:00	windney darlan	Bruno	558187774760@s.whatsapp.net	2025-03-24 00:00:00	Cabelo
24d682c6-bdbd-4854-ab1e-3f852e5bae3d	2025-03-24 00:00:00	11:40	Ocupado	Bruno	local	2025-03-24 12:52:59.853	Cabelo
e2abff52-0e93-4cd6-a9b2-5fdc5a8a2506	2025-03-28 00:00:00	13:20	Gustavo 	Bruno	local	2025-03-24 14:31:12.77	Cabelo
6767b53e-7a02-420f-9ee8-0dc45fb04744	2025-03-28 00:00:00	14:40	Gustavo botox 	Bruno	local	2025-03-24 14:31:33.602	Cabelo
1efc8920-b502-4cdc-8ac5-0073e86731a1	2025-03-25 00:00:00	09:20	Gabriel 	Wallyson	local	2025-03-24 17:09:53.567	Cabelo
b6d8f770-535c-45ec-89e9-f07e5f3622d9	2025-03-24 00:00:00	16:00	matheus	Bruno	558197941830@s.whatsapp.net	2025-03-24 00:00:00	Cabelo
75fd6196-7a9d-4ec6-87b1-516545ffeebe	2025-03-25 00:00:00	18:40	denilson	Bruno	558197084296@s.whatsapp.net	2025-03-24 00:00:00	Barba
797896bb-6c41-453d-8fd3-8012751c194a	2025-03-26 00:00:00	18:40	mateus b	Bruno	558197626344@s.whatsapp.net	2025-03-24 00:00:00	Cabelo
7b23046f-1bf1-401a-b061-3159c18a65f5	2025-03-27 00:00:00	09:00	josivaldo gomes	Bruno	558196887942@s.whatsapp.net	2025-03-25 00:00:00	Cabelo
1ab6475d-2f14-4ab1-9153-4a213681debb	2025-03-25 00:00:00	11:00	Ana beatriz	Bruno	local	2025-03-25 13:15:22.633	Cabelo
dc2b671b-415d-4fad-ac2c-6c532e9206ce	2025-03-29 00:00:00	14:00	Júnior umari 	Bruno	local	2025-03-25 13:42:58.055	Cabelo
be79bcb3-ccea-40e1-9786-54ddb7aa2233	2025-03-25 00:00:00	14:00	Marcílio 	Wallyson	local	2025-03-25 14:22:55.752	Cabelo
aebc8bb9-bb0d-4e5b-899a-f2942491e18a	2025-03-28 00:00:00	11:20	guilherme	Wallyson	558195021216@s.whatsapp.net	2025-03-25 00:00:00	Cabelo
7b18ceef-dbd8-489d-9afa-c372c81b2ad1	2025-03-27 00:00:00	18:00	João Henrique 	Wallyson	local	2025-03-25 17:43:05.502	Cabelo
ad9c85ae-51c2-4882-877d-2283d5a5e2a6	2025-03-27 00:00:00	18:40	Victor 	Wallyson	local	2025-03-25 17:43:22.685	Cabelo
998b60fd-352a-4402-9129-25f01b66caa1	2025-03-29 00:00:00	13:20	Allysson 	Wallyson	local	2025-03-25 17:46:12.76	Cabelo
9e68fd38-5591-48a1-827f-07d4b1854338	2025-03-29 00:00:00	10:40	ewerton adryan	Bruno	558198289810@s.whatsapp.net	2025-03-25 00:00:00	Cabelo
58aaa15e-0516-484b-9d34-3ca37f824a75	2025-03-28 00:00:00	14:40	Kauan Yuri 	Wallyson	local	2025-03-25 20:56:02.397	Cabelo
7bda78d9-48d3-45f9-a31d-4c2f5c2c8f0a	2025-03-29 00:00:00	10:00	alexsander	Wallyson	558199337045@s.whatsapp.net	2025-03-25 00:00:00	Cabelo
14e81404-664f-40ae-a5d0-b8293c09cda3	2025-03-26 00:00:00	16:40	joão	Bruno	558197967548@s.whatsapp.net	2025-03-25 00:00:00	Cabelo
7626eaf4-5305-4a09-bd38-ca6e17cbe880	2025-03-08 00:00:00	15:20	antonio neto	Wallyson	558196049253@s.whatsapp.net	2025-03-06 00:00:00	Cabelo
30fbe6f5-18b2-4b9b-a0f0-347c3deab502	2025-03-10 00:00:00	09:40	ian menezes	Bruno	558196739228@s.whatsapp.net	2025-03-06 00:00:00	Cabelo
1846e9b9-98c3-4d74-a7a2-127502b6ab1b	2025-03-22 00:00:00	08:40	Heraldo	Bruno	local	2025-03-06 23:23:37.376	Barba
fc311bd9-d22d-4d73-a992-72e267ab0025	2025-03-29 00:00:00	08:40	Heraldo	Bruno	local	2025-03-06 23:23:55.168	Barba
a4077390-d4c4-4299-ab22-84dd658a4622	2025-03-22 00:00:00	10:40	Júnior Ronaldo 	Wallyson	local	2025-03-21 10:31:43.208	Cabelo
48965fb0-3a53-492b-925e-7c19c1e474af	2025-03-10 00:00:00	11:40	marcel ribeiro	Bruno	558198490038@s.whatsapp.net	2025-03-07 00:00:00	Cabelo
29b70b28-74bc-4386-a1ce-dc47bd74be5e	2025-03-10 00:00:00	10:20	pedro henrique	Bruno	558199656200@s.whatsapp.net	2025-03-07 00:00:00	Cabelo+Sobrancelha
c37d45d7-2641-43d0-8486-d5d05723e39f	2025-03-10 00:00:00	16:40	Luiz Gabriel ( veio marcar 	Bruno	local	2025-03-07 16:28:24.716	Cabelo
ee36a462-ac03-4ef7-9f32-f43cddae92f4	2025-03-10 00:00:00	15:20	antônio medeiros frança lins	Bruno	558171024799@s.whatsapp.net	2025-03-07 00:00:00	Cabelo+Sobrancelha
8564bbeb-28de-47c8-9662-32a22c40f8cb	2025-03-10 00:00:00	16:40	emanuel	Wallyson	558196314532@s.whatsapp.net	2025-03-07 00:00:00	Cabelo
0cbba2c5-fa1b-4340-aa33-bc7390715636	2025-03-08 00:00:00	08:00	vandinho	Wallyson	558197042471@s.whatsapp.net	2025-03-08 00:00:00	Cabelo
ac334728-1454-43e8-9fcf-6a2c7be30008	2025-03-08 00:00:00	13:20	moisés	Wallyson	558171076971@s.whatsapp.net	2025-03-08 00:00:00	Cabelo+Barba
89d3063c-f3ac-45c8-9a86-f84ebcc9e9a6	2025-03-08 00:00:00	18:00	18:00	Wallyson	558199980878@s.whatsapp.net	2025-03-08 00:00:00	Cabelo
7e909761-c669-44b8-bbbc-25ca7890d836	2025-03-11 00:00:00	11:40	joao do bolo	Bruno	558196647899@s.whatsapp.net	2025-03-08 00:00:00	Cabelo+Sobrancelha
478305cc-154f-4041-9e4e-b2c696c54b76	2025-03-10 00:00:00	10:20	miguel	Wallyson	558199297533@s.whatsapp.net	2025-03-08 00:00:00	Cabelo
dcea9e9b-ebec-4e2c-b708-3e1f3c4c3d07	2025-03-10 00:00:00	18:00	gabriel	Wallyson	558196236188@s.whatsapp.net	2025-03-09 00:00:00	Cabelo
d46d0696-8665-4cd1-ba00-bfdafd96f438	2025-03-12 00:00:00	13:20	Davi	Bruno	local	2025-03-09 15:04:37.428	Cabelo
0014d412-6f7f-4f98-bf89-c81f03b4033f	2025-03-12 00:00:00	15:20	Eliel 	Bruno	local	2025-03-09 15:05:35.437	Cabelo
4f87a767-3ddf-4e56-acba-fc40a9991ba1	2025-03-10 00:00:00	14:40	Allison Daniel 	Wallyson	local	2025-03-09 15:06:45.037	Cabelo
b54e37ee-76b1-44d8-8b86-e347bd4d3b0f	2025-03-15 00:00:00	11:20	josé carlos	Bruno	558199700555@s.whatsapp.net	2025-03-09 00:00:00	Cabelo
828205cd-9117-4ac4-8a8b-089447a1bd4d	2025-03-11 00:00:00	14:00	Elias 	Wallyson	local	2025-03-10 00:48:08.868	Cabelo
16b68ef1-3f35-48c7-9f06-0fdeee1a44ab	2025-03-10 00:00:00	11:40	renan	Wallyson	558182497215@s.whatsapp.net	2025-03-10 00:00:00	Cabelo+Sobrancelha
f28f20f8-0806-49b1-bb8f-899dd6710800	2025-03-22 00:00:00	11:20	Júnior Ronaldo 	Wallyson	local	2025-03-21 10:32:00.708	Cabelo
0d915adb-356e-4195-9487-7e008fe1a53f	2025-03-22 00:00:00	18:00	davi	Wallyson	558197480186@s.whatsapp.net	2025-03-21 00:00:00	Cabelo+Sobrancelha
ea997b4e-c05f-4e36-a18f-685218711dfa	2025-03-11 00:00:00	09:40	carlos	Bruno	558197823796@s.whatsapp.net	2025-03-10 00:00:00	Cabelo+Sobrancelha
adb55b34-b30a-4f5a-b282-15f357dd7457	2025-03-15 00:00:00	09:20	lucas josé	Bruno	558199311183@s.whatsapp.net	2025-03-10 00:00:00	Cabelo+Sobrancelha
fdddd1ac-f920-4654-ba49-151959c86561	2025-03-11 00:00:00	17:20	pedro robson	Wallyson	558198929820@s.whatsapp.net	2025-03-10 00:00:00	Cabelo
4e61198c-fb9e-444a-8726-59facf9e20a5	2025-03-12 00:00:00	14:00	Pedro 	Wallyson	local	2025-03-10 18:54:00.379	Cabelo+Sobrancelha
833fd230-e448-4ccc-ba49-47ce63236486	2025-03-11 00:00:00	10:00	Lucas 	Wallyson	local	2025-03-10 19:58:07.822	Cabelo
2ef2b36b-51d8-4656-a5db-2847555abb19	2025-03-11 00:00:00	08:00	Pelada 	Wallyson	local	2025-03-10 19:58:19.653	Cabelo
8ed25e95-8d65-4873-a044-a71bfc839be6	2025-03-11 00:00:00	08:40	gabriel	Wallyson	558181774084@s.whatsapp.net	2025-03-10 00:00:00	Cabelo
4287eb3e-4a4f-4504-9124-fa2e8c60ea02	2025-04-01 00:00:00	09:00	adriel de lima gomes	Bruno	558196649167@s.whatsapp.net	2025-03-21 00:00:00	Cabelo+Barba
4c597e08-5994-4f70-8b14-48019ece61cd	2025-03-15 00:00:00	08:40	pedro, irmão de tiago.	Wallyson	558181319163@s.whatsapp.net	2025-03-10 00:00:00	Cabelo
d9f4e235-5e0a-491a-9d56-8940f028c0c1	2025-03-24 00:00:00	14:40	Macio 	Wallyson	local	2025-03-22 09:45:33.617	Cabelo
b71f71d7-5b16-49c1-a38f-0e6af3e1071b	2025-03-12 00:00:00	17:20	noah	Wallyson	558196533335@s.whatsapp.net	2025-03-11 00:00:00	Cabelo
b2fa0a5f-b02c-4610-81e7-6e4339f42794	2025-03-12 00:00:00	18:40	Vaninho 	Wallyson	local	2025-03-11 10:45:32.903	Cabelo+Barba
cce3731c-456e-4f60-9da4-ca174f4addd9	2025-03-14 00:00:00	09:40	kayque da silva nascimento	Bruno	558197975570@s.whatsapp.net	2025-03-11 00:00:00	Cabelo+Sobrancelha
20afe2c1-6ada-43d2-98b7-3d50d58750da	2025-03-12 00:00:00	16:40	heitor batista	Bruno	558197535746@s.whatsapp.net	2025-03-11 00:00:00	Cabelo
2dbc4dbb-9d3d-43e6-b163-959d4c57b7ac	2025-03-17 00:00:00	17:20	vitor araujo	Bruno	558192727399@s.whatsapp.net	2025-03-11 00:00:00	Cabelo+Sobrancelha
dfa98665-3503-44a7-90f6-c51ae858cd01	2025-03-12 00:00:00	16:40	fernando	Wallyson	558198514718@s.whatsapp.net	2025-03-11 00:00:00	Cabelo
cee9038d-01b0-4282-aa89-fb6d9b6a3296	2025-03-24 00:00:00	17:20	Leandro 	Wallyson	local	2025-03-22 16:58:14.313	Cabelo
b45944cd-306f-4e40-b07b-dfb7882c8404	2025-03-26 00:00:00	17:20	Breno Gomes 	Bruno	local	2025-03-23 13:43:32.079	Cabelo+Sobrancelha
2f0ae963-0c52-48f6-bcac-3cdb4199ead8	2025-03-13 00:00:00	17:20	Paulo amarilys 	Bruno	local	2025-03-11 19:16:59.951	Cabelo
8d922cc4-bc3d-4cea-b75e-b4ea889b407c	2025-03-14 00:00:00	13:20	Matheus 	Bruno	local	2025-03-11 19:18:22.547	Cabelo
ae602202-d823-4d9f-ae0d-8582f105060e	2025-03-15 00:00:00	18:00	eduardo	Bruno	558194297236@s.whatsapp.net	2025-03-11 00:00:00	Cabelo+Barba
3961bb06-8ac7-402c-adef-535c8ba4e615	2025-03-27 00:00:00	18:40	yallison	Bruno	558198734964@s.whatsapp.net	2025-03-23 00:00:00	Cabelo+Barba
27d9cb90-a00a-4ae7-907f-4b5ec705a403	2025-03-28 00:00:00	18:00	heytor	Bruno	558197714625@s.whatsapp.net	2025-03-24 00:00:00	Cabelo+Barba
8bc5ab14-4e6e-4fe6-a7a5-37a7dcce866a	2025-03-13 00:00:00	18:40	luan	Bruno	558196003977@s.whatsapp.net	2025-03-11 00:00:00	Cabelo+Sobrancelha
36b3cf7a-76fc-4e5d-acb8-2e270f0020c3	2025-03-12 00:00:00	09:40	Cauã 	Bruno	local	2025-03-12 01:16:25.965	Cabelo
580da081-0157-4bfd-925f-d05a71ee29f2	2025-03-15 00:00:00	14:40	kayke	Wallyson	558197180683@s.whatsapp.net	2025-03-11 00:00:00	Cabelo+Barba
b31534c8-ecd8-47e5-89ae-5ba21460d344	2025-03-15 00:00:00	12:00	allef ryan	Bruno	558195740243@s.whatsapp.net	2025-03-12 00:00:00	Cabelo
467f0ca6-fcac-4a70-8ed9-6efbed21a6f8	2025-03-14 00:00:00	18:40	lucas daniel	Bruno	558182451503@s.whatsapp.net	2025-03-12 00:00:00	Cabelo+Sobrancelha
4a6cba1c-b3ab-4d24-b91d-7b53007cb9d6	2025-03-15 00:00:00	10:00	eita poxa esqueci! preciso começar do zero de novo né	Bruno	558199706416@s.whatsapp.net	2025-03-12 00:00:00	Cabelo+Barba
85bcf7ce-bea6-45de-8b1a-5ed367530d10	2025-03-13 00:00:00	16:40	fernando	Bruno	558196035269@s.whatsapp.net	2025-03-12 00:00:00	Cabelo
5a5e10af-2fb6-4e76-81dd-f601c8198d34	2025-03-15 00:00:00	16:40	antônio henrique	Bruno	558197117473@s.whatsapp.net	2025-03-12 00:00:00	Cabelo+Sobrancelha
6e3a51f5-49bd-4027-a170-03af90e3f57c	2025-03-10 00:00:00	18:00	Rafael Monica 	Bruno	local	2025-03-06 20:02:06.471	Cabelo
5461b0e0-c77d-4176-bb39-5b8ddd2731e8	2025-03-10 00:00:00	18:40	Primo Rafael Monica 	Bruno	local	2025-03-06 20:02:27.191	Cabelo
dc69bb3c-d479-4eea-b8f8-f0a5490d546c	2025-03-10 00:00:00	09:40	Érika 	Wallyson	local	2025-03-06 20:38:54.885	Cabelo
d1e3d86c-cc0c-4319-981d-0cbd5a63871c	2025-03-21 00:00:00	13:20	Heitor 	Wallyson	local	2025-03-21 11:40:48.677	Cabelo
fc03e232-7dfa-4bbd-8f6b-6b05e013a2f9	2025-03-08 00:00:00	11:20	Ocupado	Bruno	local	2025-03-07 09:20:40.614	Cabelo
2b976d38-d250-47be-bd87-2eb6e39fdc2b	2025-03-08 00:00:00	16:40	IAguiar 	Wallyson	local	2025-03-07 09:23:27.561	Cabelo
7a7afc8e-c6c9-4ce5-b83d-460ded96fd6e	2025-03-10 00:00:00	13:20	joao vitor	Bruno	558198490038@s.whatsapp.net	2025-03-07 00:00:00	Cabelo
f69640dc-8723-4dc9-9c57-5f73786dbfe8	2025-03-10 00:00:00	13:20	joão marcello	Wallyson	558196393507@s.whatsapp.net	2025-03-07 00:00:00	Cabelo
3ab980a1-78e6-4395-9175-b95f0369d0fe	2025-03-10 00:00:00	14:40	lorenzo	Bruno	558197293620@s.whatsapp.net	2025-03-07 00:00:00	Cabelo
f9dd6b59-2211-4740-896f-dee61a71fc0c	2025-03-10 00:00:00	16:00	renan	Bruno	558198296625@s.whatsapp.net	2025-03-07 00:00:00	Cabelo
3e04e3dc-83f5-4c21-ba97-a04539c07ed3	2025-03-08 00:00:00	15:20	Daniel 	Bruno	local	2025-03-08 01:12:43.975	Cabelo
1a1fce14-37ba-4572-ba62-97923e920c26	2025-03-15 00:00:00	10:00	mariza	Wallyson	558196348765@s.whatsapp.net	2025-03-08 00:00:00	Cabelo
56cbdb59-f510-422e-af5f-2be631215d2e	2025-03-15 00:00:00	13:20	Emanoel 	Bruno	local	2025-03-08 17:01:31.639	Cabelo+Barba
d1a37bd4-da5d-44a1-af8d-af8ab0414ef9	2025-03-11 00:00:00	18:00	Paulo	Wallyson	local	2025-03-08 20:52:07.629	Cabelo
b4773796-5789-431a-94f8-64c280926d36	2025-03-10 00:00:00	16:00	john	Wallyson	558197904314@s.whatsapp.net	2025-03-08 00:00:00	Cabelo+Barba
698fafc2-6ec0-4cc7-ab81-ea4ff6171028	2025-03-10 00:00:00	14:00	Marcílio 	Wallyson	local	2025-03-09 13:09:12.064	Cabelo
9bbd2a34-7e77-448a-a1bf-edab95af5434	2025-03-10 00:00:00	09:00	joão lucas	Wallyson	558198783426@s.whatsapp.net	2025-03-09 00:00:00	Cabelo
676314da-f9b7-4a26-95b6-7f15a36d6884	2025-03-12 00:00:00	18:40	marcos	Bruno	558197149668@s.whatsapp.net	2025-03-09 00:00:00	Cabelo+Sobrancelha
7dfcd75d-d96b-41fa-89f3-83dadea056ee	2025-03-15 00:00:00	17:20	josé carlos	Bruno	558199700555@s.whatsapp.net	2025-03-09 00:00:00	Cabelo
d8b4f79f-9b33-43b4-b45f-0db237c044b3	2025-03-10 00:00:00	18:40	elma cristina (nando)	Wallyson	558181323380@s.whatsapp.net	2025-03-09 00:00:00	Cabelo
f7e270d1-286d-4934-9c22-501ecd1fc9fb	2025-03-15 00:00:00	11:20	josé carlos	Wallyson	558199700555@s.whatsapp.net	2025-03-10 00:00:00	Cabelo
aafc8fd3-b881-44eb-927a-1c8e537f6b25	2025-03-14 00:00:00	16:40	pedro henrique	Bruno	558196200528@s.whatsapp.net	2025-03-10 00:00:00	Cabelo+Sobrancelha
54e4b9e1-9246-4cfb-8b80-6b05383296c6	2025-03-11 00:00:00	18:40	Gustavo 	Wallyson	local	2025-03-10 13:52:34.327	Cabelo
361a6505-0912-46d8-9b28-f4aba5d9f4f9	2025-03-11 00:00:00	11:00	joão pedro campos	Bruno	558196073970@s.whatsapp.net	2025-03-10 00:00:00	Cabelo
247c2e05-6685-4f80-b1ea-f9422998d51e	2025-03-11 00:00:00	15:20	Matheus 	Wallyson	local	2025-03-10 14:22:12.895	Cabelo+Barba
d326ae96-8fc9-48df-9b6f-0fd6e7c67933	2025-03-12 00:00:00	10:00	Henrique 	Wallyson	local	2025-03-10 16:11:24.248	Cabelo
c05f3d62-ba20-43df-987c-b06ca786a61b	2025-03-12 00:00:00	16:00	Matheus da costureira	Bruno	local	2025-03-10 18:49:23.965	Cabelo
9dbc3fa8-403b-426b-942d-addc0679e778	2025-03-11 00:00:00	09:00	Hugo	Bruno	local	2025-03-10 19:52:54.931	Cabelo+Barba
eab72679-616b-46af-960d-253a328b714a	2025-03-12 00:00:00	14:40	Gelson	Wallyson	local	2025-03-10 21:10:11.025	Cabelo
8f0e5244-cd32-428d-ada8-ff642d33314f	2025-03-12 00:00:00	18:00	ivisson melo shoes	Bruno	558197279446@s.whatsapp.net	2025-03-10 00:00:00	Cabelo+Sobrancelha
c8453f8b-5e6a-4738-a572-f2c63f306312	2025-03-22 00:00:00	16:40	lázaro de assis	Bruno	558195988560@s.whatsapp.net	2025-03-10 00:00:00	Cabelo
f3077650-9106-4b8c-b788-6830ceb2fdc8	2025-03-11 00:00:00	14:40	Caliandra	Wallyson	local	2025-03-11 01:12:12.274	Cabelo
4baaf00f-e430-4753-b487-a35b8ed0e31f	2025-03-14 00:00:00	18:00	andre	Bruno	558198995821@s.whatsapp.net	2025-03-10 00:00:00	Cabelo+Sobrancelha
4d8e17d1-f015-4e67-ab59-5d4df55b6848	2025-03-12 00:00:00	11:00	fernando	Bruno	558196035269@s.whatsapp.net	2025-03-11 00:00:00	Cabelo
aa77026f-1d41-4da0-938e-3e48c61fb8be	2025-03-12 00:00:00	11:40	joão gabriel	Bruno	558195216795@s.whatsapp.net	2025-03-11 00:00:00	Cabelo
29c1fe0e-a139-45a9-8dfb-6299d9c560d5	2025-03-15 00:00:00	14:00	gabriel	Bruno	558192417684@s.whatsapp.net	2025-03-11 00:00:00	Cabelo+Sobrancelha
7acc18b3-dc2d-4ad6-8d69-e716f813ea1d	2025-03-22 00:00:00	13:20	Marcado 	Wallyson	local	2025-03-21 20:18:16.79	Cabelo
8269606d-3a64-4be8-bb4c-a229b5c5f6d7	2025-03-15 00:00:00	15:20	erick vinícius	Bruno	558195786256@s.whatsapp.net	2025-03-11 00:00:00	Cabelo+Sobrancelha
73e83ec2-82a6-4c45-9907-d673ae4d3b1b	2025-03-14 00:00:00	19:20	welliton fonseca	Bruno	558198022472@s.whatsapp.net	2025-03-11 00:00:00	Cabelo
4bba1ea8-08ae-4ab8-acb7-41ae7d696692	2025-03-24 00:00:00	18:40	jônata davi	Bruno	558199773748@s.whatsapp.net	2025-03-21 00:00:00	Cabelo
99a83d2c-e034-4099-8952-a6ac421cefb3	2025-03-14 00:00:00	17:20	pedro henrique	Bruno	558199160082@s.whatsapp.net	2025-03-11 00:00:00	Cabelo
1b1ad5e2-55e5-48f2-a29a-1ba8eedada14	2025-03-15 00:00:00	16:00	carlos daniel	Bruno	558198034222@s.whatsapp.net	2025-03-11 00:00:00	Cabelo
7e60fb18-051e-48b1-9766-8e926e10932f	2025-03-13 00:00:00	09:40	Dirceu progressiva	Bruno	local	2025-03-11 22:23:24.117	Cabelo
8f24a4c1-4946-4720-85f4-6230fd0cd09a	2025-04-08 00:00:00	13:20	Indisponivel	Bruno	Indisponivel	2025-03-11 22:27:22.886	
ece1817a-ad15-4e05-afd6-3ee112b5aa3d	2025-04-08 00:00:00	14:00	Indisponivel	Bruno	Indisponivel	2025-03-11 22:27:22.958	
a8b76038-1009-4798-aca0-f5476a40234c	2025-04-08 00:00:00	14:40	Indisponivel	Bruno	Indisponivel	2025-03-11 22:27:23.029	
05f8fa33-7cb4-464c-a102-47b7030fe1fb	2025-04-08 00:00:00	15:20	Indisponivel	Bruno	Indisponivel	2025-03-11 22:27:23.062	
ec8ae5c9-3cf4-4fe4-90cc-c418395ad0dc	2025-04-08 00:00:00	16:00	Indisponivel	Bruno	Indisponivel	2025-03-11 22:27:23.095	
66ff0a91-8cc2-46d3-939a-67a0682f4e2e	2025-04-08 00:00:00	16:40	Indisponivel	Bruno	Indisponivel	2025-03-11 22:27:23.128	
96061629-475f-4e69-ad99-8acdaf516ba4	2025-04-08 00:00:00	17:20	Indisponivel	Bruno	Indisponivel	2025-03-11 22:27:23.161	
6dee7895-5c96-4322-9218-20588187f256	2025-04-08 00:00:00	18:00	Indisponivel	Bruno	Indisponivel	2025-03-11 22:27:23.195	
0cddb333-be39-48b1-9056-bfc3fb16c5e2	2025-04-08 00:00:00	18:40	Indisponivel	Bruno	Indisponivel	2025-03-11 22:27:23.23	
886b613b-74a0-4b0b-b320-4efa97c2cb49	2025-03-12 00:00:00	14:00	joão paulo	Bruno	558179098531@s.whatsapp.net	2025-03-11 00:00:00	Cabelo+Barba
9b242c52-2ce0-44ca-99da-b946974c69b5	2025-03-15 00:00:00	15:20	felipe	Wallyson	558181451150@s.whatsapp.net	2025-03-12 00:00:00	Cabelo
773b08d0-10d3-48c8-922c-2663a8557ec8	2025-03-12 00:00:00	13:20	michell	Wallyson	5511972756277@s.whatsapp.net	2025-03-12 00:00:00	Cabelo
e1bf6a0d-14e0-44df-ac9d-cc095eddd761	2025-03-15 00:00:00	16:00	Hyuri	Wallyson	local	2025-03-12 12:25:55.398	Cabelo
99f32777-de43-44ee-9335-1d96fcdef3d7	2025-03-12 00:00:00	14:40	emanuel	Bruno	558197496524@s.whatsapp.net	2025-03-12 00:00:00	Cabelo+Sobrancelha
1ae361f7-9891-46d3-b50a-2c1826325f86	2025-03-15 00:00:00	08:00	matheus	Bruno	558171029947@s.whatsapp.net	2025-03-12 00:00:00	Cabelo
e9324cc0-87ee-4a29-9c8c-53f74b9b2263	2025-03-21 00:00:00	20:00	rennan	Bruno	558196502964@s.whatsapp.net	2025-03-21 00:00:00	Cabelo
59d3a260-7771-482b-8054-91040451a0d4	2025-03-14 00:00:00	20:00	14/03/2025\n20:00\nmathias	Bruno	558181310245@s.whatsapp.net	2025-03-12 00:00:00	Cabelo+Sobrancelha
298ace75-c515-4420-bc0e-17616857d0ac	2025-03-13 00:00:00	10:20	denilson	Bruno	558197084296@s.whatsapp.net	2025-03-12 00:00:00	Barba
cebcbcd0-4939-4e17-9f6c-024e0dc18513	2025-03-24 00:00:00	16:40	valney e davi	Bruno	558197232916@s.whatsapp.net	2025-03-21 00:00:00	Cabelo
caab56d2-0dd3-4a34-ba67-fa6002a71234	2025-03-15 00:00:00	14:40	flávio	Bruno	5511992553806@s.whatsapp.net	2025-03-12 00:00:00	Cabelo
3b1f437c-cf01-4c47-93a1-0e50cda4c5ff	2025-03-13 00:00:00	16:00	antonio	Bruno	558796427818@s.whatsapp.net	2025-03-12 00:00:00	Barba
997657e7-778c-45a2-a390-9f707c92dcd2	2025-03-15 00:00:00	16:40	joao pedro fariss	Wallyson	558196610538@s.whatsapp.net	2025-03-12 00:00:00	Cabelo
97219ee4-5c6d-49d5-9f90-bf97b28fdfe5	2025-03-15 00:00:00	10:40	ismael pedro	Bruno	558199824318@s.whatsapp.net	2025-03-12 00:00:00	Cabelo
dd402ef0-2a05-4057-b8b9-5b1d44447374	2025-03-13 00:00:00	18:00	arthur sales	Bruno	558199775133@s.whatsapp.net	2025-03-12 00:00:00	Cabelo+Sobrancelha
6f443481-a447-4b35-8b02-c9176a10c633	2025-03-17 00:00:00	18:00	Vinicin	Bruno	local	2025-03-12 22:01:50.096	Cabelo
205f7014-27c3-41c4-9720-a25ed6302588	2025-03-17 00:00:00	10:20	heraldo	Bruno	558182599443@s.whatsapp.net	2025-03-12 00:00:00	Cabelo
eb5e3d94-cebd-4cb9-89d8-4eb07d23c70b	2025-03-17 00:00:00	18:40	sérgio josé gomes filho	Bruno	558195354617@s.whatsapp.net	2025-03-12 00:00:00	Cabelo
d795f4b1-8ca1-4f31-81bb-17f0b08bb289	2025-03-14 00:00:00	16:00	gabriel	Bruno	558187145252@s.whatsapp.net	2025-03-12 00:00:00	Cabelo
2cdeeccb-72e0-43be-9d3a-4812b5d82b32	2025-03-13 00:00:00	11:00	Dorgyl 	Bruno	local	2025-03-13 10:13:14.507	Cabelo
d603751d-7bfd-4fd9-9099-55ee51ee46b9	2025-03-13 00:00:00	15:20	breno	Bruno	558198437880@s.whatsapp.net	2025-03-13 00:00:00	Cabelo+Sobrancelha
8a404cbb-636a-4782-a9a9-79f0132db4de	2025-03-13 00:00:00	11:40	zaldinho	Bruno	558198591039@s.whatsapp.net	2025-03-13 00:00:00	Cabelo
5d5cc4c4-b3ff-4ef1-8b24-cd1e6857522c	2025-03-13 00:00:00	13:20	Ocupado	Bruno	local	2025-03-13 13:39:55.283	Cabelo
f69f044c-f6ec-4121-9327-f91705dd26e3	2025-03-13 00:00:00	14:00	Zaldinho	Bruno	local	2025-03-13 13:49:08.446	Cabelo
9931a1c5-1c83-4675-9be6-992e0dfc90fc	2025-03-18 00:00:00	18:00	Denilson 	Bruno	local	2025-03-13 14:02:24.842	Cabelo+Barba
47690936-19a3-425c-b3a7-0ce867063806	2025-03-19 00:00:00	18:40	rafael melo	Bruno	558199365900@s.whatsapp.net	2025-03-13 00:00:00	Cabelo
cc6814c9-65ff-4113-a79c-8e9902288a45	2025-03-14 00:00:00	15:20	romerio	Bruno	558198627331@s.whatsapp.net	2025-03-13 00:00:00	Cabelo+Barba
d3e599b3-60d7-4c76-ae61-5da2797fd584	2025-03-13 00:00:00	14:40	andré	Bruno	559881068770@s.whatsapp.net	2025-03-13 00:00:00	Cabelo
f2b2ac2e-d0e6-4af2-b995-249ac6980f6d	2025-03-14 00:00:00	14:40	yan matheus	Bruno	558199168954@s.whatsapp.net	2025-03-13 00:00:00	Cabelo
b5a26b10-2d55-4d8b-81bd-336765a90d81	2025-03-14 00:00:00	14:00	neto	Bruno	558382153976@s.whatsapp.net	2025-03-13 00:00:00	Cabelo+Sobrancelha
350f6ac6-669f-45b0-b0d6-42139f34d931	2025-03-14 00:00:00	11:00	marcos	Bruno	558197806162@s.whatsapp.net	2025-03-13 00:00:00	Cabelo+Sobrancelha
ad60095a-9ab6-414e-9560-61004a48f639	2025-03-15 00:00:00	14:00	george luiz	Wallyson	558198592917@s.whatsapp.net	2025-03-13 00:00:00	Cabelo
891cfd45-8938-4ec3-ba9d-1c7740e1cb35	2025-03-15 00:00:00	12:00	eduardo	Wallyson	558198079679@s.whatsapp.net	2025-03-13 00:00:00	Cabelo
e814e2eb-737f-4362-8966-58bfd26dc51b	2025-03-17 00:00:00	17:20	Noa	Wallyson	local	2025-03-13 22:40:30.822	Cabelo
8212708c-22cf-482e-ad35-5fe6d11388c7	2025-03-17 00:00:00	16:00	andrew	Bruno	558198694494@s.whatsapp.net	2025-03-13 00:00:00	Cabelo
bbe40322-f49f-4832-bb0e-5461f6377935	2025-03-15 00:00:00	10:40	cláudio henrique	Wallyson	558188482085@s.whatsapp.net	2025-03-13 00:00:00	Cabelo
1def1fca-9888-4ba3-82be-db2357f99a47	2025-03-14 00:00:00	10:20	paulo victor	Bruno	558171068205@s.whatsapp.net	2025-03-13 00:00:00	Cabelo+Sobrancelha
f23521f4-d146-444d-9bea-9ebbb11c9290	2025-03-15 00:00:00	17:20	Robson	Wallyson	local	2025-03-14 01:49:34.774	Cabelo+Barba
753b2309-7836-4beb-ab98-45a656355f73	2025-03-15 00:00:00	18:00	Nicolas 	Wallyson	local	2025-03-14 01:50:08.759	Cabelo
0c557aaf-6746-418d-8726-2063cf10eb69	2025-03-15 00:00:00	13:20	Marcado 	Wallyson	local	2025-03-14 01:52:02.493	Cabelo
a71a4791-5380-4a96-b58b-90a061d8f35e	2025-03-14 00:00:00	11:40	larissa/miguel	Bruno	558195712225@s.whatsapp.net	2025-03-14 00:00:00	Cabelo
66701105-d4f8-467a-999b-acf712cbd023	2025-03-15 00:00:00	09:20	Flavio 	Wallyson	local	2025-03-14 13:50:13.918	Cabelo
3ada3898-4816-45fd-a7dd-82ebb1956dfb	2025-03-18 00:00:00	14:00	deyvson	Bruno	558195479577@s.whatsapp.net	2025-03-14 00:00:00	Cabelo
e44eb171-f1d3-4c1d-8fdc-39c772208f16	2025-03-17 00:00:00	15:20	antonio	Bruno	558796427818@s.whatsapp.net	2025-03-14 00:00:00	Cabelo+Barba
254439ae-1f9b-478c-8f5c-e5162798d4e7	2025-03-17 00:00:00	14:00	miguel cabral	Bruno	558196537955@s.whatsapp.net	2025-03-14 00:00:00	Cabelo
f21ecde3-0208-4384-9979-22acbd26a9fc	2025-03-17 00:00:00	14:40	gabriel	Bruno	558197699397@s.whatsapp.net	2025-03-14 00:00:00	Cabelo
5a96bb9c-c335-4856-a13a-c128566bbd97	2025-03-17 00:00:00	09:40	marcio	Bruno	558198973109@s.whatsapp.net	2025-03-14 00:00:00	Cabelo
cb209fa4-7d5f-45f6-8a1b-d276b722aacd	2025-03-17 00:00:00	11:00	ryan valério	Bruno	558181779060@s.whatsapp.net	2025-03-14 00:00:00	Cabelo+Barba
6b1086b8-cd06-4cdf-bc2a-9658aad0b53d	2025-03-17 00:00:00	18:00	erick	Wallyson	558199045127@s.whatsapp.net	2025-03-14 00:00:00	Cabelo
9d21f1c0-52fb-40a7-8b4b-f4614d3e9063	2025-03-17 00:00:00	15:20	paulo henrique	Bruno	558174004953@s.whatsapp.net	2025-03-14 00:00:00	Cabelo+Sobrancelha
832c51cc-b721-4bdb-b450-33c971b22365	2025-03-17 00:00:00	16:40	Flavio 	Wallyson	local	2025-03-15 02:10:10.045	Cabelo
6be7f349-c8be-46ac-befe-0b402f45722b	2025-03-17 00:00:00	16:40	felipe silva	Bruno	558196065070@s.whatsapp.net	2025-03-14 00:00:00	Cabelo
32007fcc-bc97-4346-b8cc-968c9daa3ca3	2025-03-17 00:00:00	13:20	gonzaga neto	Bruno	558198514795@s.whatsapp.net	2025-03-15 00:00:00	Cabelo
dc023593-623e-47d6-bdfc-b1e549cf389c	2025-03-17 00:00:00	09:00	josé arthur sales	Wallyson	558194257577@s.whatsapp.net	2025-03-15 00:00:00	Cabelo
f8e35520-d7c9-43f6-abad-3277191e0a09	2025-03-29 00:00:00	16:00	yan	Bruno	558199168954@s.whatsapp.net	2025-03-15 00:00:00	Cabelo
a420c357-e229-4e21-b20d-8d302e202d95	2025-03-17 00:00:00	14:00	Isaac 	Wallyson	local	2025-03-15 13:50:30.03	Cabelo
275a54c2-41b2-4fc7-9a57-08b9b83aa7eb	2025-03-17 00:00:00	18:40	Osmar 	Wallyson	local	2025-03-15 14:22:52.603	Cabelo
d712b435-8d09-42b9-9e64-1c57f9b0ee07	2025-03-22 00:00:00	13:20	Emanoel 	Bruno	local	2025-03-15 17:04:12.874	Cabelo+Barba
ad9eeb1d-08c8-4a18-ace7-3df2d48a3998	2025-03-18 00:00:00	14:40	ítalo manoel	Bruno	558195671075@s.whatsapp.net	2025-03-15 00:00:00	Cabelo
fe1b3438-aec6-496c-aad1-d722aeb1b7f6	2025-03-22 00:00:00	15:20	marcos rodrigues	Bruno	558196681292@s.whatsapp.net	2025-03-15 00:00:00	Cabelo
8e30c9a0-f627-4161-86c8-005ebd53e358	2025-03-18 00:00:00	10:20	fernando	Bruno	558199817133@s.whatsapp.net	2025-03-15 00:00:00	Cabelo
4c021d98-0b1d-448c-aec2-25c88dda59ae	2025-03-19 00:00:00	18:00	fillipe	Bruno	558192151856@s.whatsapp.net	2025-03-15 00:00:00	Cabelo+Sobrancelha
2bdae18e-029d-445b-afa3-f55ceb5eb4df	2025-03-18 00:00:00	17:20	júlio césar	Bruno	558196440108@s.whatsapp.net	2025-03-16 00:00:00	Cabelo
840c59ad-d4bb-48be-adfd-a62f6dfa8da8	2025-03-22 00:00:00	08:00	tiago	Bruno	558181319163@s.whatsapp.net	2025-03-16 00:00:00	Cabelo
f0d158eb-e8a1-46d5-a96a-1ecef4cbd35e	2025-03-24 00:00:00	16:00	cassia	Wallyson	558199658643@s.whatsapp.net	2025-03-21 00:00:00	Cabelo
603d1d53-4c9b-457c-abb7-be15277edb21	2025-03-18 00:00:00	13:20	joão rommel	Bruno	558182224217@s.whatsapp.net	2025-03-16 00:00:00	Cabelo
a1e78478-d179-4e5f-b10b-716272dc33ad	2025-03-19 00:00:00	16:00	hugo	Bruno	558199154395@s.whatsapp.net	2025-03-16 00:00:00	Cabelo+Sobrancelha
7192030b-1d5c-4b4a-9d5b-af162dd6d01d	2025-03-17 00:00:00	15:20	kaio	Wallyson	558179098531@s.whatsapp.net	2025-03-16 00:00:00	Cabelo
a0684f02-95ce-4b66-9bf9-e0ea486b13ef	2025-03-19 00:00:00	09:00	joaquim	Bruno	558199504021@s.whatsapp.net	2025-03-16 00:00:00	Cabelo+Sobrancelha
ff694bfc-102a-4774-a921-a01dd8c98932	2025-03-19 00:00:00	13:20	Indisponivel	Bruno	Indisponivel	2025-03-16 19:31:47.848	
ee555bfc-4538-4a73-89e0-164ccd29a67c	2025-03-19 00:00:00	14:00	Indisponivel	Bruno	Indisponivel	2025-03-16 19:31:47.959	
a071a11e-fec9-4167-b0be-b0a6929b888c	2025-03-19 00:00:00	14:40	Indisponivel	Bruno	Indisponivel	2025-03-16 19:31:47.994	
08378085-17e5-4d4a-9a7d-640a17ae7012	2025-03-19 00:00:00	15:20	Indisponivel	Bruno	Indisponivel	2025-03-16 19:31:48.028	
02a4240e-6f62-4aaa-9610-f5c1617242a3	2025-03-19 00:00:00	16:00	Indisponivel	Bruno	Indisponivel	2025-03-16 19:31:48.062	
84acc0c8-3870-4a5b-845c-32e4c3a9666e	2025-03-19 00:00:00	16:40	Indisponivel	Bruno	Indisponivel	2025-03-16 19:31:48.096	
c674e027-e056-4f91-a635-00c1c272ef08	2025-03-19 00:00:00	17:20	Indisponivel	Bruno	Indisponivel	2025-03-16 19:31:48.132	
f9cb5c2f-5f86-446a-b544-856c46c00cc8	2025-03-19 00:00:00	09:40	Hugo Marista 	Bruno	local	2025-03-16 19:40:53.71	Cabelo
f48e66c6-15e7-4ab2-a55e-f8688d90c369	2025-03-21 00:00:00	19:20	lucas leal	Bruno	558182605271@s.whatsapp.net	2025-03-16 00:00:00	Cabelo+Sobrancelha
19a485e1-4057-4cbe-a98b-d5d072a4ac69	2025-03-18 00:00:00	18:00	Ze vei 	Wallyson	local	2025-03-16 22:23:21.354	Cabelo
64b13e01-63e5-4367-b590-787db4014b7e	2025-03-17 00:00:00	11:40	tarcísio	Bruno	558185887456@s.whatsapp.net	2025-03-16 00:00:00	Cabelo
085f4ef9-6e28-416a-88a5-44c317cedb6c	2025-03-17 00:00:00	10:20	Marcelo 	Wallyson	local	2025-03-17 10:07:03.951	Cabelo
26e3bae8-3028-42b1-91a3-ee6b167565ab	2025-03-17 00:00:00	09:40	Natan 	Wallyson	local	2025-03-17 10:07:33.788	Cabelo
1665d791-5262-4195-b8e3-b7d5f2220ece	2025-03-18 00:00:00	16:00	Andrezza ( Mateus ) 	Bruno	local	2025-03-17 10:18:20.998	Cabelo
ba272228-571e-4437-bc29-456854b4ed6a	2025-03-18 00:00:00	18:40	rennan	Bruno	558196502964@s.whatsapp.net	2025-03-17 00:00:00	Cabelo
cee337d8-cc41-4f69-a59a-24548bb04a31	2025-03-18 00:00:00	15:20	Elias 	Wallyson	local	2025-03-17 11:50:39.49	Cabelo
d03bd927-eb68-46cc-99c3-b70c6093d39b	2025-03-17 00:00:00	14:40	João Carmen 	Wallyson	local	2025-03-17 12:38:51.872	Cabelo
720c4522-e420-46f0-b7ff-2fadd5c831bd	2025-03-22 00:00:00	09:20	calebe	Bruno	558196987419@s.whatsapp.net	2025-03-17 00:00:00	Cabelo
4b3941cb-9b0b-43d5-bb50-ef8e8ddf4137	2025-03-18 00:00:00	11:00	joão do bolo	Bruno	558196647899@s.whatsapp.net	2025-03-17 00:00:00	Cabelo
03bcfe96-b53c-4768-ac97-21fd8b743d1f	2026-03-18 00:00:00	11:00	ataliba albuquerque	Bruno	558182671510@s.whatsapp.net	2025-03-17 00:00:00	Barba
c7c2bfd5-6efc-465c-b8b5-e80d46ad49c6	2025-03-18 00:00:00	09:00	Jeferson Magalhães 	Bruno	local	2025-03-17 13:22:08.357	Cabelo
762fea81-f869-48e9-b86a-3abc078f85e1	2025-03-18 00:00:00	11:40	joao do bolo	Bruno	558196647899@s.whatsapp.net	2025-03-17 00:00:00	Cabelo
32b6d9b0-1105-4c00-9d42-414e93e89db0	2025-03-18 00:00:00	15:20	leonardo cabral	Bruno	558197413226@s.whatsapp.net	2025-03-17 00:00:00	Cabelo
60f27013-4f36-4b86-ac63-61b9819313cd	2025-03-19 00:00:00	10:20	Rosa ( Lucas Bruna ) 	Bruno	local	2025-03-17 13:57:53.897	Cabelo
0cab439a-087c-4e88-906d-3f7c34aedce2	2025-03-17 00:00:00	13:20	kellinghton	Wallyson	558195330370@s.whatsapp.net	2025-03-17 00:00:00	Cabelo
36b47f84-b57d-46f9-9b43-4b556f96b1ee	2025-03-17 00:00:00	16:00	Bruno 	Wallyson	local	2025-03-17 15:02:04.982	Barba
bb956ce9-c90e-47a2-a725-ed40b11f0fdc	2025-03-20 00:00:00	18:00	Vinicius 	Wallyson	local	2025-03-17 15:02:31.459	Cabelo
fecc8a57-3da4-4302-91e0-2676701a5c7f	2025-03-22 00:00:00	16:00	Kayke 	Wallyson	local	2025-03-17 15:25:48.288	Cabelo
9a4cfdb0-b2fb-4598-9bce-3079a1684614	2025-03-18 00:00:00	18:40	juininho	Wallyson	558194082765@s.whatsapp.net	2025-03-17 00:00:00	Cabelo
c7a9ec4d-4e0c-4f0b-bcfa-0653a3fe0acb	2025-03-29 00:00:00	15:20	Jeferson 	Wallyson	local	2025-03-17 15:45:12.269	Cabelo+Barba
b90eb5f9-7a7f-4501-9e23-64305dc1db9e	2025-03-29 00:00:00	16:00	Marcado 	Wallyson	local	2025-03-17 15:45:30.974	Cabelo
59dbbab3-7744-48d7-85a6-034fd4eb391e	2025-03-19 00:00:00	11:40	gabriel henrique	Bruno	558185537298@s.whatsapp.net	2025-03-17 00:00:00	Cabelo
c84e5cb9-d453-4ebc-8ddb-8a81c9dafd12	2025-03-22 00:00:00	15:20	heitor pio	Wallyson	558199016057@s.whatsapp.net	2025-03-21 00:00:00	Cabelo+Sobrancelha
870fd648-0020-4fc3-9b63-6cd175db335e	2025-03-22 00:00:00	14:40	arthur	Bruno	558197087531@s.whatsapp.net	2025-03-17 00:00:00	Cabelo
2a2bbf8e-8481-4d7c-95bd-e49fb4661f79	2025-03-18 00:00:00	11:20	Wellington 	Wallyson	local	2025-03-17 17:34:51.909	Cabelo
f9157553-edec-47c7-ba4e-4c46378d8677	2025-03-18 00:00:00	09:40	mayrlon	Bruno	558196600679@s.whatsapp.net	2025-03-17 00:00:00	Cabelo+Sobrancelha
fb989237-573d-4525-9e8a-ab4fabd99539	2025-03-18 00:00:00	14:40	Issac 	Wallyson	local	2025-03-17 18:34:58.191	Cabelo
3ed2934d-7263-4d9b-a9f9-d93462d64071	2025-03-18 00:00:00	16:40	jackson augusto	Bruno	558196412354@s.whatsapp.net	2025-03-17 00:00:00	Cabelo+Sobrancelha
f936b4f6-bce4-4753-ab51-ce2172f8e779	2025-03-18 00:00:00	16:00	ronnye	Wallyson	558198353903@s.whatsapp.net	2025-03-17 00:00:00	Cabelo
6f8b2709-7a58-48fd-8b62-cf5e30d3d2b9	2025-03-22 00:00:00	10:00	tais morais	Bruno	558199739378@s.whatsapp.net	2025-03-17 00:00:00	Cabelo
7712ec3c-3554-4fe4-8013-604969ee0b05	2025-03-22 00:00:00	14:00	daniel queiroz	Bruno	558181473848@s.whatsapp.net	2025-03-17 00:00:00	Cabelo
0bbdb0c8-52ae-4741-b2d1-fef57f3d1373	2025-03-18 00:00:00	08:00	Pelada 	Wallyson	local	2025-03-17 22:23:24.512	Cabelo
57d33a44-9527-4256-ad50-aeed38784b5c	2025-03-22 00:00:00	11:20	guilherme	Bruno	558197258940@s.whatsapp.net	2025-03-17 00:00:00	Cabelo
010052bd-e6a1-4c30-b4ae-494e4fecfea3	2025-03-24 00:00:00	18:40	márcio	Wallyson	558199069172@s.whatsapp.net	2025-03-17 00:00:00	Cabelo
fe7b0519-2382-4587-b71b-75664526527e	2025-03-19 00:00:00	11:00	maurício	Bruno	558182705181@s.whatsapp.net	2025-03-18 00:00:00	Cabelo+Sobrancelha
f1a07dcc-d966-4128-ab6d-cb600852e228	2025-03-21 00:00:00	15:20	joão lucas	Bruno	558189785404@s.whatsapp.net	2025-03-18 00:00:00	Cabelo+Sobrancelha
e8a315b6-8275-4f11-b0b0-d3340f3a2f50	2025-03-20 00:00:00	16:40	guilherme	Bruno	558195949285@s.whatsapp.net	2025-03-18 00:00:00	Cabelo
0e873514-41b9-4ad1-9b26-77ad61c4c273	2025-03-20 00:00:00	14:00	paulo henrique	Bruno	558174004953@s.whatsapp.net	2025-03-18 00:00:00	Cabelo+Sobrancelha
8b644085-a397-4eae-b780-488389e70a28	2025-03-18 00:00:00	10:40	Edinho 	Wallyson	local	2025-03-18 12:55:01.828	Cabelo
8d432033-95ae-45bd-b1a9-5eb7edf77b46	2025-03-18 00:00:00	17:20	matheus	Wallyson	558196073942@s.whatsapp.net	2025-03-18 00:00:00	Cabelo+Barba
906d7797-5b02-442d-bdd7-061faca8def6	2025-03-21 00:00:00	14:00	Handerson	Wallyson	local	2025-03-18 13:22:17.044	Cabelo
3eb86af3-61c1-4f72-97e4-8a109a6e354c	2025-03-21 00:00:00	14:40	Handerson irmão 	Wallyson	local	2025-03-18 13:22:36.266	Cabelo
8bbf1712-3dc3-4155-bf20-d2d66c9eb296	2025-03-25 00:00:00	14:40	micherlaine	Bruno	558196463146@s.whatsapp.net	2025-03-18 00:00:00	Cabelo
987d586b-77db-430f-86a9-e42703e2516e	2025-03-19 00:00:00	14:00	Indisponivel	Wallyson	Indisponivel	2025-03-18 15:33:49.269	
35b46930-c1e3-459f-834b-c0dd3687ec00	2025-03-19 00:00:00	14:40	Indisponivel	Wallyson	Indisponivel	2025-03-18 15:33:49.513	
0df64ac5-ebd9-44fc-8f2a-c836b5198bfd	2025-03-19 00:00:00	15:20	Indisponivel	Wallyson	Indisponivel	2025-03-18 15:33:49.545	
5a4a448e-139b-4d9a-ae83-5e726afcab2b	2025-03-19 00:00:00	16:00	Indisponivel	Wallyson	Indisponivel	2025-03-18 15:33:49.582	
302ed823-e5b3-4fde-80a8-eaeb0ab14935	2025-03-19 00:00:00	16:40	Indisponivel	Wallyson	Indisponivel	2025-03-18 15:33:49.619	
d253ba57-3cb1-4a5e-9494-b1fa499e78bf	2025-03-19 00:00:00	17:20	Indisponivel	Wallyson	Indisponivel	2025-03-18 15:33:49.652	
859ffd16-82b0-4cf5-a5f1-ca377fc645c4	2025-03-19 00:00:00	18:00	Indisponivel	Wallyson	Indisponivel	2025-03-18 15:33:49.685	
0cddf5bf-01f9-4cb0-87a7-5f13794dc0bf	2025-03-19 00:00:00	18:40	Indisponivel	Wallyson	Indisponivel	2025-03-18 15:33:49.718	
ae53859f-4abe-41b7-b24b-9798b1aafa08	2025-03-19 00:00:00	10:00	john	Wallyson	558197904314@s.whatsapp.net	2025-03-18 00:00:00	Cabelo+Barba
79f9152b-591b-4aaa-9676-dd292810995e	2025-03-19 00:00:00	13:20	Vandro 	Wallyson	local	2025-03-18 15:35:25.212	Cabelo
0f6b1545-9a92-4c18-be47-751cf20a77bd	2025-03-20 00:00:00	17:20	jorge miguel	Wallyson	558197887918@s.whatsapp.net	2025-03-18 00:00:00	Cabelo
d40f0c8e-c41b-451e-ac0a-431958caf287	2025-03-18 00:00:00	16:40	pedro	Wallyson	558195071416@s.whatsapp.net	2025-03-18 00:00:00	Cabelo+Sobrancelha
92533e6c-0eed-4547-bb9c-0d56ca0ba126	2025-03-21 00:00:00	16:00	joão vitor	Bruno	558192250093@s.whatsapp.net	2025-03-18 00:00:00	Cabelo
76d416e2-e18e-4fb0-8f9f-38eb60144afe	2025-03-24 00:00:00	13:20	joão marcello	Bruno	558196393507@s.whatsapp.net	2025-03-18 00:00:00	Cabelo
a6e371c8-12fe-4bc7-ba7b-b9115d1d54ad	2025-03-21 00:00:00	16:40	anderson carlos	Bruno	558196579148@s.whatsapp.net	2025-03-18 00:00:00	Cabelo
ab5728e1-fd54-4401-b403-578018e01cb5	2025-03-20 00:00:00	18:40	joão paulo	Wallyson	558182158768@s.whatsapp.net	2025-03-18 00:00:00	Cabelo
ba098862-fdeb-471c-8820-3878a920b966	2025-03-24 00:00:00	10:20	jorge luiz	Wallyson	558199658478@s.whatsapp.net	2025-03-18 00:00:00	Cabelo+Sobrancelha
fac7aab2-8a50-4b31-895e-62e283495cb5	2025-03-19 00:00:00	10:40	vandro júnior	Wallyson	558196610362@s.whatsapp.net	2025-03-18 00:00:00	Cabelo
8fa8c1ff-449f-4bad-9a01-da05cb623384	2025-03-22 00:00:00	17:20	iann lucas	Bruno	558196612255@s.whatsapp.net	2025-03-18 00:00:00	Cabelo+Sobrancelha
d70999ce-2eba-4683-808a-538a09ad6d46	2025-03-20 00:00:00	09:40	luan	Bruno	558184474628@s.whatsapp.net	2025-03-18 00:00:00	Cabelo+Sobrancelha
bce23ebd-b89f-4c52-b2ed-96acc4ed9436	2025-03-21 00:00:00	09:00	josé guilherme	Bruno	558196081518@s.whatsapp.net	2025-03-19 00:00:00	Cabelo
543739bf-83c9-4c4d-ba59-85a7eece7a41	2025-03-22 00:00:00	10:40	rhyan	Bruno	558198833628@s.whatsapp.net	2025-03-19 00:00:00	Cabelo
9d99d39f-9008-4498-a937-066665542314	2025-03-22 00:00:00	12:00	italo	Bruno	558198405729@s.whatsapp.net	2025-03-19 00:00:00	Cabelo
de4a0db5-deac-452e-952a-07b1d98c6ee8	2025-03-20 00:00:00	10:00	Douglas 	Wallyson	local	2025-03-19 19:22:26.678	Cabelo
db80c671-5434-4e31-aa2b-2fcbbac1a1e8	2025-03-22 00:00:00	10:00	Carlos Daniel 	Wallyson	local	2025-03-19 19:23:13.084	Cabelo
fac7c395-8d7f-4438-a524-f52f61dfcf6e	2025-03-22 00:00:00	09:20	mathias	Wallyson	558187494403@s.whatsapp.net	2025-03-19 00:00:00	Cabelo+Barba
cf8ce583-6c69-4d4f-b174-946999222345	2025-03-20 00:00:00	11:40	breno	Bruno	558198437880@s.whatsapp.net	2025-03-19 00:00:00	Cabelo+Sobrancelha
15c83690-7851-4ac1-bc26-2310efd0576a	2025-03-21 00:00:00	14:40	weslley	Bruno	558197215641@s.whatsapp.net	2025-03-19 00:00:00	Cabelo
6e1aed08-e5f5-4b8e-bb4d-396fbe7da2a7	2025-03-21 00:00:00	18:40	daniel	Wallyson	558199459046@s.whatsapp.net	2025-03-19 00:00:00	Cabelo
6fe581ac-2cbc-456e-9b98-7cea325e7e93	2025-03-29 00:00:00	15:20	yago	Bruno	558195055274@s.whatsapp.net	2025-03-20 00:00:00	Cabelo+Sobrancelha
bfb16fb4-a0e7-475f-9563-a61067eb2baf	2025-03-21 00:00:00	16:00	anthony ricardo	Wallyson	558199684430@s.whatsapp.net	2025-03-20 00:00:00	Cabelo+Sobrancelha
a83ad024-7ae8-477f-95a9-d2a350187917	2025-03-20 00:00:00	11:00	lucas cauã	Bruno	558183567967@s.whatsapp.net	2025-03-20 00:00:00	Cabelo
74a1b9c5-b199-45cf-9ff2-7a6e05c9f19f	2025-03-20 00:00:00	11:20	Lucas 	Wallyson	local	2025-03-20 10:42:08.794	Cabelo
64be49c9-6dc8-459d-8c1e-1df174ddfc1e	2025-03-21 00:00:00	17:20	Miguel 	Wallyson	local	2025-03-20 11:11:59.493	Cabelo
15bb776a-d24f-443c-b17c-8f2eda77ea0d	2025-03-21 00:00:00	18:00	Paulo 	Wallyson	local	2025-03-20 11:12:12.526	Cabelo
e6eb6273-abf7-4d29-8210-ab7c6fc8a97d	2025-03-21 00:00:00	15:20	Gustavo 	Wallyson	local	2025-03-20 11:50:50.329	Cabelo
8803a4bd-26f6-4035-bd2a-2c00238cda92	2025-03-20 00:00:00	13:20	Ocupado	Bruno	local	2025-03-20 12:15:43.689	Cabelo
49af81ee-5ba4-444d-82c7-9f55d746741f	2025-03-21 00:00:00	19:20	jmarcos	Wallyson	5581920015081@s.whatsapp.net	2025-03-20 00:00:00	Cabelo+Barba
689c51ab-14c4-408f-9cfe-297b2750c766	2025-03-21 00:00:00	09:40	Teteu 	Bruno	local	2025-03-20 14:06:16.283	Cabelo
44eaab8a-6327-4ae7-8274-140fa3233d29	2025-03-21 00:00:00	11:00	Teteu botox	Bruno	local	2025-03-20 14:06:33.584	Cabelo
22be7025-b1cb-44a0-ad1e-fda8dc1f3442	2025-03-20 00:00:00	18:00	Breno 	Bruno	local	2025-03-20 14:21:45.316	Cabelo
5db9feb3-ce8b-4bd4-b894-3900cc4713fa	2025-03-21 00:00:00	10:40	gerdo	Wallyson	558196275453@s.whatsapp.net	2025-03-20 00:00:00	Cabelo
1fea5d9f-822c-4d9d-856a-ef0eabf3e820	2025-03-22 00:00:00	16:40	Carlos 	Wallyson	local	2025-03-20 14:44:02.623	Cabelo
f0c0ff6b-b03f-4eb0-a32a-f2a2652733f7	2025-03-22 00:00:00	14:00	Jesus Miguel 	Wallyson	local	2025-03-20 15:16:01.509	Cabelo
2d2e19c9-c7a7-4f1f-b593-79c9bf9847fc	2025-03-21 00:00:00	17:20	thomas	Bruno	558181391720@s.whatsapp.net	2025-03-20 00:00:00	Cabelo+Sobrancelha
03b2a858-01c3-4237-8941-09fbc14b2cc7	2025-03-21 00:00:00	8:00	Paulinho 	Wallyson	local	2025-03-20 16:10:40.796	Acabamento (Pezinho)
b3ce2fd9-0747-4b41-a414-4f4f831b0017	2025-03-20 00:00:00	13:20	kellinghton	Wallyson	558195330370@s.whatsapp.net	2025-03-20 00:00:00	Cabelo
f71da68f-17bc-4570-a275-470cc4fac73c	2025-03-20 00:00:00	17:20	anthony	Bruno	558197620059@s.whatsapp.net	2025-03-20 00:00:00	Cabelo
c5f0edbd-9708-4b38-99ce-038c5043dde3	2025-03-21 00:00:00	16:40	joão nycolas	Wallyson	558195129087@s.whatsapp.net	2025-03-20 00:00:00	Cabelo
3f9f0d3f-461c-4c95-b168-edf5a51b8105	2025-03-20 00:00:00	16:00	mario areias	Wallyson	558381367304@s.whatsapp.net	2025-03-20 00:00:00	Cabelo
a4d13c51-92d7-4f01-b930-1594d1b281dc	2025-03-20 00:00:00	18:40	theo aguiar	Bruno	558198739294@s.whatsapp.net	2025-03-20 00:00:00	Cabelo
76de08c0-d2b4-46f5-8243-67652629a5fe	2025-03-21 00:00:00	10:00	Isaac criança 	Wallyson	local	2025-03-20 19:35:33.414	Cabelo
6d04c989-7f05-46ee-863b-ad868fba4e8d	2025-03-22 00:00:00	18:00	Robert	Bruno	local	2025-03-20 21:26:12.097	Cabelo
53646fe6-4fd1-4731-9ab2-3ae60ea60f7d	2025-03-22 00:00:00	17:20	Dafins 	Wallyson	local	2025-03-20 22:04:05.208	Cabelo
dd6189a0-545f-4ba3-b1fc-a8fcafe7e266	2025-03-22 00:00:00	08:40	joão guilherme	Wallyson	558192101006@s.whatsapp.net	2025-03-20 00:00:00	Cabelo
434d8a36-aa2a-476f-83fd-3518c4913538	2025-03-21 00:00:00	10:20	Carlos 	Bruno	local	2025-03-20 22:37:03.462	Cabelo
461686e4-6dee-4ab3-992d-936924ba29d3	2025-03-22 00:00:00	08:00	miguel arruda	Wallyson	558181060584@s.whatsapp.net	2025-03-21 00:00:00	Cabelo
f28a9627-b0bc-4333-8097-5a6eb2a6f72e	2025-03-24 00:00:00	18:00	Teteu botox 	Bruno	local	2025-03-21 21:15:10.269	Cabelo
e3fcc7c0-1177-4018-97f6-55ee3a9f488c	2025-03-22 00:00:00	14:40	Zé neto 	Wallyson	local	2025-03-21 21:15:17.257	Cabelo
8dde7828-b36c-40d9-8083-141207566cc9	2025-03-24 00:00:00	09:40	samuel	Bruno	558171201693@s.whatsapp.net	2025-03-21 00:00:00	Cabelo
7a476934-7301-48df-bac7-c1d800d077fc	2025-03-27 00:00:00	18:00	matheus vinicius	Bruno	558197894492@s.whatsapp.net	2025-03-22 00:00:00	Cabelo
2e55be6f-8d7c-466d-9b7b-c1d67c259571	2025-03-25 00:00:00	18:40	Juninho compadre 	Wallyson	local	2025-03-23 23:36:38.211	Cabelo+Barba
6f5f825e-bf8c-49c6-a4d4-8b4e57b3a7a7	2025-03-24 00:00:00	14:00	Gabriel 	Wallyson	local	2025-03-24 10:10:36.361	Cabelo
f5a136b0-541f-4b39-aed1-46b12aa3aead	2025-03-25 00:00:00	18:00	fabiano	Bruno	558194610556@s.whatsapp.net	2025-03-24 00:00:00	Cabelo
ae10b325-f804-4ff6-81ac-307615b0103a	2025-03-29 00:00:00	09:20	lucas josé	Bruno	558199311183@s.whatsapp.net	2025-03-24 00:00:00	Cabelo+Barba
bf2f1a60-b4cf-493a-99de-95081aefd652	2025-03-24 00:00:00	15:20	matheus	Bruno	558196073942@s.whatsapp.net	2025-03-24 00:00:00	Cabelo+Barba
c6af6440-b2fd-4480-ae99-996e76d71477	2025-03-25 00:00:00	10:00	victor	Wallyson	558196193892@s.whatsapp.net	2025-03-24 00:00:00	Cabelo
e0dce2cb-f1fe-4751-a65c-402d3ebdbb1f	2025-03-25 00:00:00	14:00	du bolo	Bruno	558196647899@s.whatsapp.net	2025-03-24 00:00:00	Cabelo
902cde08-02ed-4888-a8c3-972f4e5d4ec9	2025-03-27 00:00:00	10:20	deyvid jhonatan	Bruno	558199201610@s.whatsapp.net	2025-03-24 00:00:00	Cabelo+Sobrancelha
1f7644de-3c52-400b-b1fc-a2ae08f67ef0	2025-03-25 00:00:00	17:20	lucas	Wallyson	558197326785@s.whatsapp.net	2025-03-24 00:00:00	Cabelo
d510176f-812e-4d90-8ffb-2c29254d5dd1	2025-03-25 00:00:00	10:40	Luiz 	Wallyson	local	2025-03-25 00:51:47.424	Cabelo+Sobrancelha
60a79fd9-53ac-4ece-a589-16f39f3da7d3	2025-03-29 00:00:00	09:20	Cleiton 	Wallyson	local	2025-03-25 00:52:10.439	Cabelo
f06c5547-585e-4b83-8c70-4cc368ebbc45	2025-03-25 00:00:00	11:40	Bruno	Bruno	local	2025-03-25 09:17:24.88	Cabelo
53556a70-21db-4725-9b31-62efae30fe90	2025-03-29 00:00:00	10:00	Alex prog	Bruno	local	2025-03-25 10:48:03.193	Cabelo
cf435c87-78b7-4d98-86bf-4fa04a8550c5	2025-03-25 00:00:00	09:00	Luan 	Bruno	local	2025-03-25 10:48:36.783	Cabelo
cde44ca1-e071-4a63-9a99-29377be46bbb	2025-03-25 00:00:00	13:20	Hugo	Bruno	local	2025-03-25 13:30:56.84	Cabelo+Barba
2739eb27-49f9-402e-90b3-f3b2c4900f98	2025-03-25 00:00:00	15:20	Calebe 	Bruno	local	2025-03-25 13:31:28.953	Cabelo
749b95fd-4be7-4a95-9ad2-51b3156b70d2	2025-03-25 00:00:00	16:40	Calebe botox	Bruno	local	2025-03-25 13:31:44.067	Cabelo
0df1f409-f301-4c47-aac6-39d0d0fa9aee	2025-03-29 00:00:00	11:20	Alex prog 	Bruno	local	2025-03-25 13:35:08.063	Cabelo+Barba
3d39740a-5d59-4c35-a8f7-eda1dc348d27	2025-03-29 00:00:00	12:00	Alex prog	Bruno	local	2025-03-25 13:35:25.079	Cabelo
c34bb020-7b05-4737-8685-a6fe63449d33	2025-03-25 00:00:00	16:00	Nicolas Nóbrega 	Bruno	local	2025-03-25 13:48:29.34	Cabelo
806b449a-8ad3-44ee-9879-9ee211ab8d62	2025-03-26 00:00:00	15:20	João neto Santa Rita 	Bruno	local	2025-03-25 14:57:40.543	Cabelo
10e7ae77-36ab-4b3d-b709-615f4cbfcf8c	2025-03-28 00:00:00	11:40	zaldinho	Bruno	558198591039@s.whatsapp.net	2025-03-25 00:00:00	Cabelo
29e5c5cd-132e-412b-ad0d-515550acfada	2025-03-28 00:00:00	17:20	arthur	Bruno	558194115511@s.whatsapp.net	2025-03-25 00:00:00	Cabelo+Barba
7cfb9ccd-adf2-44e9-af90-1f1702063389	2025-03-26 00:00:00	14:00	vicente net9	Bruno	558197192758@s.whatsapp.net	2025-03-25 00:00:00	Cabelo+Sobrancelha
e1c76889-d17e-4e2f-885e-2266ff4629e1	2025-03-26 00:00:00	11:40	fernando	Bruno	558196035269@s.whatsapp.net	2025-03-25 00:00:00	Cabelo
9cbfb8a0-89f4-42c0-8188-6674fe0f899a	2025-03-28 00:00:00	14:00	emídio arruda	Bruno	558181606802@s.whatsapp.net	2025-03-25 00:00:00	Cabelo
de36b9a9-78ad-4cfb-9510-102d68088d81	2025-03-28 00:00:00	16:40	renan	Bruno	558199282002@s.whatsapp.net	2025-03-25 00:00:00	Cabelo
229d489b-48c3-4761-9824-9dfcd769dbc9	2025-03-28 00:00:00	15:20	heitor	Bruno	558182601936@s.whatsapp.net	2025-03-26 00:00:00	Cabelo
cec5c041-1d34-4735-a4f6-59b1fb1fb777	2025-03-28 00:00:00	16:00	joão lucas	Bruno	558182601936@s.whatsapp.net	2025-03-26 00:00:00	Cabelo
3829a1d4-8440-49f7-b354-35727388b8f9	2025-03-28 00:00:00	10:20	henrique	Bruno	558182601936@s.whatsapp.net	2025-03-26 00:00:00	Cabelo
d08de734-e252-4ceb-b753-b6edac4336ca	2025-03-28 00:00:00	11:00	bruno	Bruno	558189873832@s.whatsapp.net	2025-03-26 00:00:00	Cabelo+Barba
46020b91-0366-446b-a19d-f5080cac6cde	2025-03-27 00:00:00	09:20	Carlos 	Wallyson	local	2025-03-26 11:56:42.812	Cabelo
fc4cb1ea-8920-424f-baa5-79697dcd3580	2025-03-29 00:00:00	17:20	samuel barbosa	Wallyson	558198087356@s.whatsapp.net	2025-03-26 00:00:00	Cabelo+Sobrancelha
4259c2e0-d57d-41af-a194-65399cd5237e	2025-03-29 00:00:00	14:00	kayke	Wallyson	558197180683@s.whatsapp.net	2025-03-26 00:00:00	Cabelo+Barba
19d8633b-f4d7-446d-a7b6-0249f1bbb3d8	2025-03-29 00:00:00	18:00	ryan	Wallyson	5511959620317@s.whatsapp.net	2025-03-26 00:00:00	Cabelo+Sobrancelha
f84d061e-6ffd-4c85-a6b0-700689de0c7e	2025-03-26 00:00:00	16:00	sérgio	Bruno	558198288830@s.whatsapp.net	2025-03-26 00:00:00	Cabelo
f556c1fa-23b8-4eec-b6e9-2b54fe5a8ac0	2025-03-28 00:00:00	19:20	guilherme	Bruno	558182869031@s.whatsapp.net	2025-03-26 00:00:00	Cabelo
e079a0db-ce6f-405e-988a-e81d10cf2715	2025-03-28 00:00:00	20:00	eduardo	Bruno	558194297236@s.whatsapp.net	2025-03-26 00:00:00	Cabelo+Barba
c3955930-43c3-4d32-bef4-52e20024dec6	2025-03-29 00:00:00	08:00	ismael pedro	Bruno	558199824318@s.whatsapp.net	2025-03-26 00:00:00	Cabelo
ff3b5cbc-f0f4-4ae1-94f3-1f4318d9df90	2025-03-29 00:00:00	14:40	william gabriel	Bruno	558198087356@s.whatsapp.net	2025-03-26 00:00:00	Cabelo
e8ffbbce-8722-46d0-913c-9acfc1dc8e60	2025-04-05 00:00:00	10:00	joão neto	Bruno	558182772972@s.whatsapp.net	2025-03-26 00:00:00	Cabelo+Sobrancelha
95a9bc9a-19a2-4b4e-aaa2-f4665415c36c	2025-03-28 00:00:00	18:40	lucas daniel	Bruno	558182451503@s.whatsapp.net	2025-03-26 00:00:00	Cabelo+Sobrancelha
73059031-db5b-4f6a-825e-b4b226daf5c5	2025-03-29 00:00:00	12:00	Marcado 	Wallyson	local	2025-03-26 17:35:20.136	Cabelo
cecea913-7cc1-4e4f-8d2e-b27d2d965ae9	2025-03-29 00:00:00	14:40	Rivaldo 	Wallyson	local	2025-03-26 17:35:33.642	Cabelo
ff7cd23f-032f-4298-ae36-2f4004f565bf	2025-03-27 00:00:00	13:20	Rafael botox 	Bruno	local	2025-03-26 18:06:18.088	Cabelo
17cb80fe-aabe-4240-b06f-73cfd517507f	2025-03-27 00:00:00	14:40	Rafael botox 	Bruno	local	2025-03-26 18:06:33.358	Cabelo
8d7f0179-6a0e-4c97-895c-3ef71bdbfe00	2025-03-29 00:00:00	16:40	joão vitor	Bruno	558188511046@s.whatsapp.net	2025-03-26 00:00:00	Cabelo
4b16c9a8-298a-42a1-bf98-c1271957897a	2025-03-27 00:00:00	14:00	neto	Bruno	558382153976@s.whatsapp.net	2025-03-26 00:00:00	Cabelo+Sobrancelha
1a33be2d-ecc5-4e74-8058-70f54b9d9229	2025-03-29 00:00:00	17:20	sid	Bruno	558191536718@s.whatsapp.net	2025-03-26 00:00:00	Cabelo+Sobrancelha
da711f1a-c763-4ccd-bc2f-919b28827765	2025-03-27 00:00:00	15:20	lucas	Bruno	558197326785@s.whatsapp.net	2025-03-26 00:00:00	Cabelo
2d519132-eae1-492b-9b4c-1fd5eb09e641	2025-03-27 00:00:00	11:40	joão pedro campos	Bruno	558196073970@s.whatsapp.net	2025-03-26 00:00:00	Cabelo+Barba
74aaf8bc-e4a7-4b62-b9a4-26f848713e4e	2025-04-28 00:00:00	17:20	pedro henrique	Bruno	558199160082@s.whatsapp.net	2025-03-26 00:00:00	Cabelo
45391918-321f-4cd0-a8c8-debfff4e2953	2025-03-29 00:00:00	18:00	allef ryan	Bruno	558195740243@s.whatsapp.net	2025-03-26 00:00:00	Cabelo
b1ab2161-1bd4-4fc3-98ea-138378d00666	2025-04-03 00:00:00	16:40	del alumínio	Bruno	558197796167@s.whatsapp.net	2025-03-26 00:00:00	Cabelo+Barba
02ebffee-f68a-4a05-8aa3-e048c7187000	2025-04-03 00:00:00	17:20	cauê	Bruno	558197796167@s.whatsapp.net	2025-03-26 00:00:00	Cabelo
f9a3cac9-80a0-4d24-b76d-3cfa44a73b0f	2025-03-27 00:00:00	17:20	miguel	Bruno	558199728099@s.whatsapp.net	2025-03-26 00:00:00	Cabelo+Barba
5d197aca-808c-4da4-8370-1c9fcedb4af8	2025-03-28 00:00:00	16:40	john	Wallyson	558197904314@s.whatsapp.net	2025-03-26 00:00:00	Cabelo+Barba
6a2f2f98-b598-48e2-be07-d09a1ee8fae6	2025-03-31 00:00:00	18:00	renan silva	Bruno	558199185971@s.whatsapp.net	2025-03-26 00:00:00	Cabelo
c8f7ae90-a284-4b53-8ea3-312a606a54b2	2025-03-29 00:00:00	10:40	Adaias 	Wallyson	local	2025-03-27 10:04:34.955	Cabelo
b7ae8647-f2ad-436e-a57c-9fe62c71e2a6	2025-03-27 00:00:00	08:00	Indisponivel	Wallyson	Indisponivel	2025-03-27 10:51:38.408	
9af5ae12-72bd-4e34-b179-32fd460829b4	2025-03-27 00:00:00	08:40	Indisponivel	Wallyson	Indisponivel	2025-03-27 10:51:38.512	
0fb986bb-94f0-4380-bfa9-ed33ff69b8de	2025-03-27 00:00:00	16:00	josé fernando	Wallyson	558197543337@s.whatsapp.net	2025-03-27 00:00:00	Cabelo
ef20e908-4b7d-40b6-a2fb-855b750498dc	2025-03-27 00:00:00	16:40	hugo saraiva	Wallyson	558197543337@s.whatsapp.net	2025-03-27 00:00:00	Cabelo
ef34cc7f-5ffa-48b9-8205-faf26ba5e11c	2025-04-05 00:00:00	11:20	joão victor ferreira	Bruno	558196049253@s.whatsapp.net	2025-03-27 00:00:00	Cabelo+Sobrancelha
e30e0db3-6453-4401-9236-32465ac00091	2025-03-28 00:00:00	09:40	maurycio	Bruno	558197162890@s.whatsapp.net	2025-03-27 00:00:00	Cabelo+Sobrancelha
b3425218-da54-49f4-b500-450baeaa2888	2025-03-29 00:00:00	11:20	matheus	Wallyson	558193890380@s.whatsapp.net	2025-03-27 00:00:00	Cabelo
7b51674e-816a-4cd2-b71f-191e78003e61	2025-03-27 00:00:00	17:20	Vitor	Wallyson	local	2025-03-27 16:02:27.263	Cabelo
92a55eac-3a1c-4f53-939e-9e9a760a0b1e	2025-03-27 00:00:00	16:00	Kleyton 	Bruno	local	2025-03-27 16:30:32.846	Cabelo
51a8b88f-5285-4ab8-a70a-e668039f19dc	2025-03-28 00:00:00	17:20	Lyaderson	Wallyson	local	2025-03-27 17:51:50.026	Cabelo
bc69016d-2631-4322-ac8a-95d09739b22c	2025-03-28 00:00:00	10:00	Rubens 	Wallyson	local	2025-03-27 19:41:15.174	Cabelo
c0470c61-3789-4e18-9e6b-b99ae94f546d	2025-03-28 00:00:00	18:40	Victor 	Wallyson	local	2025-03-27 21:29:56.56	Cabelo+Barba
e7280804-8a81-4d70-9792-484af8a549ef	2025-03-31 00:00:00	18:00	adelson silva	Wallyson	558181524707@s.whatsapp.net	2025-03-27 00:00:00	Cabelo+Barba
7e564208-554d-41bb-ac8f-cee082a0f451	2025-03-31 00:00:00	18:40	andrew miguel	Bruno	558181524707@s.whatsapp.net	2025-03-27 00:00:00	Cabelo
ad775aff-7174-4b81-90db-2cbe2f727654	2025-03-28 00:00:00	09:00	luiz	Bruno	558181486379@s.whatsapp.net	2025-03-27 00:00:00	Cabelo
fae1cd8a-3a85-428f-bb0a-590fef71d5fd	2025-03-28 00:00:00	18:00	Thiago 	Wallyson	local	2025-03-27 23:21:49.658	Cabelo+Barba
011a7705-71e0-4958-aadb-4e06c02a5d5a	2025-03-28 00:00:00	8:00	Paulinho 	Wallyson	local	2025-03-27 23:22:08.186	Acabamento (Pezinho)
354d0a13-4088-4624-8e48-68b22016e8a7	2025-04-02 00:00:00	18:40	maicon	Bruno	558194686969@s.whatsapp.net	2025-03-27 00:00:00	Cabelo
f01205f8-dea3-4531-aca0-8fefacc4e1d5	2025-03-28 00:00:00	08:40	Marcado 	Wallyson	local	2025-03-28 10:21:16.273	Cabelo
30a172ff-5b50-41ae-a62b-119ad30abe66	2025-03-28 00:00:00	19:20	Isaías 	Wallyson	local	2025-03-28 11:23:16.78	Cabelo
16f03c9d-e666-4fb1-a8f3-6f43bcfdc539	2025-03-28 00:00:00	14:00	Francisco	Wallyson	local	2025-03-28 11:42:26.669	Cabelo
daad316e-f167-4fe9-a147-72ecc73ec3c9	2025-03-28 00:00:00	13:20	João Carmen 	Wallyson	local	2025-03-28 11:47:40.193	Cabelo
9c4f2d81-4285-4601-a525-f80247fa2be3	2025-03-28 00:00:00	16:00	nilson fonseca	Wallyson	558189252475@s.whatsapp.net	2025-03-28 00:00:00	Cabelo
6f96de18-d73f-40bb-bde6-32aacc23fb3a	2025-03-28 00:00:00	15:20	Édson criança 	Wallyson	local	2025-03-28 13:10:46.563	Cabelo
dbd73bb6-70c1-4c2c-a513-81d21d4119e1	2025-04-02 00:00:00	16:00	pedro augusto	Bruno	558171185174@s.whatsapp.net	2025-03-28 00:00:00	Cabelo
b9389905-e272-41c8-adcd-fbf16ec766f7	2025-03-31 00:00:00	13:20	carlos	Bruno	558199353492@s.whatsapp.net	2025-03-28 00:00:00	Cabelo+Sobrancelha
695303bb-20af-49e2-916a-298860793ab5	2025-03-28 00:00:00	20:00	Felipe Barbosa 	Wallyson	local	2025-03-28 13:40:57.917	Cabelo
18fbdc7d-a466-4113-a3fd-eb8596ae5f07	2025-03-31 00:00:00	09:40	paulo edgar	Bruno	558181346216@s.whatsapp.net	2025-03-28 00:00:00	Cabelo
64f791db-bc47-4c64-b6d4-05daa02f71e2	2025-03-31 00:00:00	11:00	marcio	Bruno	558198973109@s.whatsapp.net	2025-03-28 00:00:00	Cabelo
ddb17a32-6c70-4e97-804f-dfd82f028789	2025-03-31 00:00:00	14:00	gonzaga neto	Bruno	558198514795@s.whatsapp.net	2025-03-28 00:00:00	Cabelo
908a902b-4e86-485f-b2e8-dc1fdcac83b0	2025-03-31 00:00:00	11:40	anthony rodrigues	Bruno	558199046289@s.whatsapp.net	2025-03-29 00:00:00	Cabelo+Sobrancelha
775e8261-a0d9-4987-bc81-abc05fb4461b	2025-04-02 00:00:00	10:00	Arthur pai veio marcar balaio 	Wallyson	local	2025-03-29 12:45:55.023	Cabelo
9d306878-826b-47ac-a069-d6c189a04a2c	2025-03-31 00:00:00	14:00	ruan sousa da silva	Wallyson	558199445445@s.whatsapp.net	2025-03-29 00:00:00	Cabelo
0781bfba-7095-457e-b1b8-82bb85db8df3	2025-03-31 00:00:00	14:40	murilo silva	Wallyson	558199445445@s.whatsapp.net	2025-03-29 00:00:00	Cabelo
daf7868f-281f-421d-9e83-22d727eaffb4	2025-03-31 00:00:00	15:20	jeferson	Wallyson	558198265483@s.whatsapp.net	2025-03-29 00:00:00	Cabelo+Barba
f15634aa-1fee-4d24-84b1-1c5378e82314	2025-03-31 00:00:00	17:20	ivaldir barbosa	Bruno	558196149252@s.whatsapp.net	2025-03-29 00:00:00	Cabelo+Sobrancelha
1da035e9-5f24-40bb-b9a1-81a27ba6a69f	2025-03-31 00:00:00	16:00	Wellington adv	Bruno	local	2025-03-29 16:17:11.357	Cabelo
d8d6c604-18c8-4ee3-bd38-b549ce681808	2025-04-05 00:00:00	13:20	Emanoel 	Bruno	local	2025-03-29 16:55:42.273	Cabelo+Barba
009501c3-0931-460e-ac8a-3a8db244d3f3	2025-04-05 00:00:00	14:40	Emanoel botox 	Bruno	local	2025-03-29 16:55:58.243	Cabelo
49afb748-ca6d-4a65-bee5-cb2e5fc025ed	2025-04-05 00:00:00	08:40	Heraldo 	Bruno	local	2025-03-29 16:56:15.922	Cabelo+Barba
14946676-343b-4e42-9bd0-3361b7c50cbb	2025-03-31 00:00:00	13:20	luan victor	Wallyson	558181307345@s.whatsapp.net	2025-03-29 00:00:00	Cabelo+Sobrancelha
355be787-c628-43c6-81b3-618188c97414	2025-04-01 00:00:00	16:40	antônio henrique	Bruno	558197117473@s.whatsapp.net	2025-03-29 00:00:00	Cabelo+Sobrancelha
60c48eff-ba18-489d-9994-1dd1e2cf4b31	2025-03-31 00:00:00	16:40	sérgio josé gomes filho	Bruno	558195354617@s.whatsapp.net	2025-03-29 00:00:00	Cabelo
eb4dcbca-0a70-4db4-a631-83d206e3c9fa	2025-04-03 00:00:00	11:00	pedro henrique	Bruno	558198446899@s.whatsapp.net	2025-03-29 00:00:00	Cabelo
b5b075e5-00a0-47bf-a0c9-5b2e84b0b72e	2025-04-02 00:00:00	10:20	wellington	Bruno	558193204777@s.whatsapp.net	2025-03-30 00:00:00	Cabelo
b7aebc89-1046-4620-bd41-da892386b434	2025-04-02 00:00:00	10:40	Wellington 	Wallyson	local	2025-03-30 14:16:14.003	Cabelo
2182e771-b2ca-4fbe-a889-8e3936e8cb7d	2025-03-31 00:00:00	15:20	joão paulo	Bruno	558179098531@s.whatsapp.net	2025-03-30 00:00:00	Cabelo+Barba
c79f2ec5-1474-4aba-ac37-5b833e57fc69	2025-04-01 00:00:00	18:00	arthur sales	Bruno	558199775133@s.whatsapp.net	2025-03-30 00:00:00	Cabelo+Sobrancelha
5f5a008f-9019-4fa8-99f2-1ddf69b68218	2025-04-01 00:00:00	18:00	samuel	Wallyson	558196448583@s.whatsapp.net	2025-03-30 00:00:00	Cabelo+Sobrancelha
f2dd7593-fa45-48ae-8580-61c5a6176525	2025-04-04 00:00:00	16:00	Henrique segundo 	Bruno	local	2025-03-30 22:42:49.077	Cabelo
a8e80f3f-51a7-4713-b50e-dc0045a2d799	2025-04-04 00:00:00	08:00	wilson	Wallyson	558197148928@s.whatsapp.net	2025-03-30 00:00:00	Cabelo+Sobrancelha
d3d9d0a5-7ecd-485e-8d7c-59da8d0e163c	2025-04-03 00:00:00	10:20	joão neto	Bruno	558197626118@s.whatsapp.net	2025-03-30 00:00:00	Cabelo+Barba
035347aa-f6f1-464b-b938-38ce472dae4f	2025-04-01 00:00:00	18:40	andré leal	Bruno	558197273032@s.whatsapp.net	2025-03-31 00:00:00	Cabelo
3e0f3afe-f21b-472c-8cf2-baee8ad20bde	2025-04-01 00:00:00	13:20	neto	Bruno	558194759358@s.whatsapp.net	2025-03-31 00:00:00	Cabelo+Sobrancelha
bf203632-08cd-46a0-b7d2-602c2502d4d4	2025-04-04 00:00:00	11:00	kayque da silva	Bruno	558197975570@s.whatsapp.net	2025-03-31 00:00:00	Cabelo+Sobrancelha
38e252cd-82fe-4fbe-832c-d5bc6421547c	2025-03-31 00:00:00	09:40	Michael 	Wallyson	local	2025-03-31 11:05:50.513	Cabelo
af4014ae-0db5-435d-926e-243d4bb05bdc	2025-04-01 00:00:00	15:20	Gelson 	Wallyson	local	2025-03-31 11:09:54.491	Cabelo
68b800aa-64a2-48de-a14c-4f99e99ef8b9	2025-04-02 00:00:00	09:00	heitor	Bruno	558196988755@s.whatsapp.net	2025-03-31 00:00:00	Cabelo
ca5f08ed-9645-43da-bd3f-e09382354cd6	2025-04-02 00:00:00	17:20	geovane silva	Bruno	558198906893@s.whatsapp.net	2025-03-31 00:00:00	Cabelo
7a07cea1-f808-4c84-a055-b13369d76d77	2025-03-31 00:00:00	10:20	rennan menezes	Bruno	558179005726@s.whatsapp.net	2025-03-31 00:00:00	Cabelo
bc6c4361-bbda-43fe-87b3-6507611e754c	2025-03-31 00:00:00	16:00	elma (joão pedro)	Wallyson	558181323380@s.whatsapp.net	2025-03-31 00:00:00	Cabelo
61b17d1b-2e75-49c0-8578-372336edf6ec	2025-03-31 00:00:00	16:40	elma (nando)	Wallyson	558181323380@s.whatsapp.net	2025-03-31 00:00:00	Cabelo
be73a230-ab84-4334-bab6-d438213edf94	2025-04-01 00:00:00	17:20	luan	Wallyson	558197092692@s.whatsapp.net	2025-03-31 00:00:00	Cabelo
9f751dc8-d247-47c6-8579-e0364633539b	2025-04-02 00:00:00	15:20	jefferson	Bruno	558196311311@s.whatsapp.net	2025-03-31 00:00:00	Cabelo
1d2250b5-5a66-4080-8713-43831eb81a87	2025-03-31 00:00:00	18:40	Júlio 	Wallyson	local	2025-03-31 14:07:48.632	Cabelo
a5922b6e-424c-4e4f-9f38-00c704c9e01c	2025-04-01 00:00:00	10:00	isaque	Wallyson	558182470021@s.whatsapp.net	2025-03-31 00:00:00	Cabelo
c0266003-3205-4adf-a1d8-86ab3696c026	2025-04-01 00:00:00	09:20	samuel	Wallyson	558182470021@s.whatsapp.net	2025-03-31 00:00:00	Cabelo
1b40c0b0-ab26-4ab2-9e61-d31867ae0102	2025-04-04 00:00:00	18:00	João Pedro Mendes 	Wallyson	local	2025-03-31 15:33:32.635	Cabelo+Barba
54ea6f2a-c477-4a80-b203-2dd7ad5a1f85	2025-03-31 00:00:00	17:20	gabriel	Wallyson	558185827719@s.whatsapp.net	2025-03-31 00:00:00	Cabelo
5ec9a1a5-562c-44ff-896c-e272ecbfffa3	2025-04-01 00:00:00	18:40	Thiago Cipriano 	Wallyson	local	2025-03-31 15:48:04.756	Cabelo
f1219585-75e5-4f89-81d9-9bc4bdbf8bd7	2025-04-01 00:00:00	16:00	Paulo João Pedro 	Wallyson	local	2025-03-31 16:09:06.199	Cabelo
b55afa28-a5f5-4707-9c05-2da5cb9deeab	2025-04-01 00:00:00	17:20	andre	Bruno	558198995821@s.whatsapp.net	2025-03-31 00:00:00	Cabelo+Sobrancelha
7ed0e103-2fb9-4aa2-9f2a-9857c0357263	2025-04-02 00:00:00	14:00	arthur	Wallyson	558196972098@s.whatsapp.net	2025-03-31 00:00:00	Cabelo
8b062764-6f7d-4fe4-aef9-e0960bd1808a	2025-04-02 00:00:00	14:00	gabriel	Bruno	558192417684@s.whatsapp.net	2025-03-31 00:00:00	Cabelo+Sobrancelha
915851a8-1981-422c-bd6f-20a055f25584	2025-04-01 00:00:00	14:00	francisco	Wallyson	558182062970@s.whatsapp.net	2025-03-31 00:00:00	Cabelo
169a8b57-8849-42c5-a537-df07eb351e46	2025-03-31 00:00:00	14:40	Emanuel	Bruno	local	2025-03-31 17:34:20.154	Cabelo
15b76786-2f19-419d-98f1-df1ad6c87b1d	2025-04-01 00:00:00	16:00	Wellington adv	Bruno	local	2025-03-31 20:28:15.675	Cabelo+Barba
21174744-da4f-4216-9ea0-b546eacd903b	2025-04-01 00:00:00	16:40	josé anthony	Wallyson	558189252475@s.whatsapp.net	2025-03-31 00:00:00	Cabelo
5bf3f6f2-c5a4-4015-8a53-4f345fce9f0b	2025-04-01 00:00:00	08:00	Pelada 	Wallyson	local	2025-03-31 21:45:54.493	Cabelo
58d9e05f-3cb2-45f9-8b6d-eb7dbb6f83c3	2025-04-01 00:00:00	08:40	Marcado 	Wallyson	local	2025-03-31 21:46:25.876	Cabelo
c81c4be5-4013-48da-af57-5267a9f33439	2025-04-02 00:00:00	18:00	denilson	Bruno	558197084296@s.whatsapp.net	2025-03-31 00:00:00	Barba
61ccce64-fa92-431a-94f2-97ff862e83d9	2025-04-05 00:00:00	10:40	rhuan	Bruno	558195251500@s.whatsapp.net	2025-03-31 00:00:00	Cabelo+Sobrancelha
02b17dcf-62ef-4f5f-824c-c3807549fc97	2025-04-01 00:00:00	10:20	ian holanda leite menezes	Bruno	558196739228@s.whatsapp.net	2025-03-31 00:00:00	Cabelo
6b1e614d-ed56-421c-b4db-2346346bb6e2	2025-04-01 00:00:00	11:20	levi gabriel	Wallyson	558199292453@s.whatsapp.net	2025-04-01 00:00:00	Cabelo
b826ee91-182c-44b0-9978-43ad3161d60f	2025-04-03 00:00:00	09:40	anderson	Bruno	558198694494@s.whatsapp.net	2025-04-01 00:00:00	Cabelo
5514db7f-f067-4cd6-b081-411c6f5c66b1	2025-04-01 00:00:00	11:40	Ocupado 	Bruno	local	2025-04-01 10:09:00.417	Cabelo
9f6d636a-56ab-4a23-b645-c50f49be2d1d	2025-04-01 00:00:00	11:00	breno	Bruno	558198437880@s.whatsapp.net	2025-04-01 00:00:00	Cabelo+Sobrancelha
3529db35-c40e-4277-ae1d-a3f094eb7e8b	2025-04-05 00:00:00	08:00	keven	Bruno	558189774392@s.whatsapp.net	2025-04-01 00:00:00	Cabelo
846de1ef-53be-4d71-95bf-bb76398279e2	2025-04-12 00:00:00	08:40	Heraldo	Bruno	local	2025-04-01 10:41:38.529	Barba
a799bd43-2f44-4529-904b-e427fafac7b0	2025-04-19 00:00:00	08:40	Heraldo	Bruno	local	2025-04-01 10:41:54.96	Barba
275d683e-773d-4efe-9300-176fba41eceb	2025-04-26 00:00:00	08:40	Heraldo	Bruno	local	2025-04-01 10:42:15.07	Barba
a874643b-4cfa-4fe5-8cf4-d845c1c7bb50	2025-04-01 00:00:00	14:40	Pedro 	Wallyson	local	2025-04-01 10:46:23.708	Cabelo
45242310-098f-49cf-8186-5b53bf3bdcc1	2025-04-01 00:00:00	13:20	pedro henrique	Wallyson	558195071416@s.whatsapp.net	2025-04-01 00:00:00	Cabelo+Sobrancelha
f17b539e-b28d-4a00-a803-76263abdb836	2025-04-02 00:00:00	09:20	Pedro 	Wallyson	local	2025-04-01 13:28:19.568	Cabelo+Sobrancelha
91aeb3a4-a2e2-4fcf-917d-2dbd258369cf	2025-04-02 00:00:00	13:20	antonio neto	Bruno	558196049253@s.whatsapp.net	2025-04-01 00:00:00	Cabelo
4a62d605-11fc-4b99-9ec6-8b2edf1b765d	2025-04-01 00:00:00	14:00	eduardo	Bruno	558198437880@s.whatsapp.net	2025-04-01 00:00:00	Cabelo+Sobrancelha
59e693b9-01f0-43e8-b285-c8e5645264e2	2025-04-02 00:00:00	09:40	Alyson free shopping 	Bruno	local	2025-04-01 14:59:43.463	Cabelo+Barba
6ef81991-91ea-41b0-9ab5-3ab3c0ce0a63	2025-04-02 00:00:00	17:20	gustavo farias	Wallyson	558196195368@s.whatsapp.net	2025-04-01 00:00:00	Cabelo
00e5a3aa-8e7c-4d03-a054-507c002b3d23	2025-04-02 00:00:00	18:40	Anilda 	Wallyson	local	2025-04-01 16:06:41.545	Cabelo
6d9cf4c7-df10-4cf1-818a-8c5270129583	2025-04-02 00:00:00	08:40	Efraim 	Wallyson	local	2025-04-01 17:51:51.807	Cabelo
7d06b23f-65a4-418c-b672-7cb774548658	2025-04-01 00:00:00	15:20	Antonio 	Bruno	local	2025-04-01 18:16:33.801	Cabelo
daa04711-a608-4c0f-a1ae-3e9e93b62b11	2025-04-02 00:00:00	14:40	Eliel 	Bruno	local	2025-04-01 21:12:36.805	Cabelo
d6c40c29-9d02-42c9-b663-f29085c55c7f	2025-04-04 00:00:00	17:20	eduardo	Bruno	558194297236@s.whatsapp.net	2025-04-01 00:00:00	Cabelo+Barba
f6bbf6c1-2081-40f7-aec7-19dec249e3d3	2025-04-04 00:00:00	15:20	joão lucas	Bruno	558189785404@s.whatsapp.net	2025-04-01 00:00:00	Cabelo+Sobrancelha
014c98e7-d707-4798-8ae2-16ef884a0780	2025-04-03 00:00:00	13:20	arthur	Bruno	558194115511@s.whatsapp.net	2025-04-01 00:00:00	Cabelo+Barba
e46ee293-eb4f-4f76-aef8-8c72b385ac22	2025-04-04 00:00:00	18:40	gustavo	Wallyson	558199587573@s.whatsapp.net	2025-04-01 00:00:00	Cabelo+Sobrancelha
5e6ecb02-acaf-4fc2-93c7-ec6fdf2688c1	2025-04-02 00:00:00	11:00	Jhonny	Bruno	local	2025-04-01 22:09:41.85	Cabelo
489b0080-6eb2-4381-81b4-a84c1cfa2b35	2025-04-04 00:00:00	11:40	luiz henrique	Bruno	558189496855@s.whatsapp.net	2025-04-01 00:00:00	Cabelo
871d2ca6-7e69-4f5a-88a6-ce37a8d3b40a	2025-04-03 00:00:00	09:00	tarcísio	Bruno	558185887456@s.whatsapp.net	2025-04-01 00:00:00	Cabelo
12d42611-4a94-4a56-b082-c282c9c62973	2025-04-05 00:00:00	12:00	bruno gomes	Bruno	558196522258@s.whatsapp.net	2025-04-01 00:00:00	Cabelo
3b46523d-690c-4a7c-a36a-4eaedc6527b1	2025-04-04 00:00:00	14:00	mateus	Bruno	558197626344@s.whatsapp.net	2025-04-02 00:00:00	Cabelo
d68df465-ca57-4101-b6e0-e6475413eef0	2025-04-03 00:00:00	18:40	Letícia 	Wallyson	local	2025-04-02 10:46:13.886	Cabelo
fab47ee5-2a53-4a5d-9c7e-40dc9d333abb	2025-04-02 00:00:00	11:20	Fernando Luiz Barbosa Farias	Wallyson	local	2025-04-02 11:19:31.249	Cabelo
c956591d-8af1-40d3-9aca-7284c531f513	2025-04-02 00:00:00	14:40	antônio medeiros frança lins	Wallyson	558171024799@s.whatsapp.net	2025-04-02 00:00:00	Cabelo+Sobrancelha
694fb471-b0ec-4ef4-bd14-293e660143c6	2025-04-02 00:00:00	13:20	Efraim 	Wallyson	local	2025-04-02 12:08:07.37	Cabelo+Barba
367326c5-c243-46f9-bdb8-e89d1b51bdb9	2025-04-02 00:00:00	16:40	Flavio 	Wallyson	local	2025-04-02 13:35:11.173	Cabelo
3f822771-72c8-47f9-ab78-9abf558d2eb0	2025-04-04 00:00:00	19:20	fernando nutri smart	Bruno	558199948217@s.whatsapp.net	2025-04-02 00:00:00	Cabelo
8abe3803-8cad-469c-9dd7-c8e37e983892	2025-04-02 00:00:00	15:20	fernando correia da silva	Wallyson	558199732471@s.whatsapp.net	2025-04-02 00:00:00	Cabelo
38647dbd-f89d-4b08-a3ac-e34da31a79ec	2025-04-05 00:00:00	14:00	neto	Bruno	558181091175@s.whatsapp.net	2025-04-02 00:00:00	Cabelo+Sobrancelha
051bc57f-47b5-4e1b-b303-d2245eb1cd7a	2025-04-03 00:00:00	11:40	Dorgyl 	Bruno	local	2025-04-02 14:25:56.248	Cabelo+Barba
861006e0-76fd-468d-8068-dacc35500b88	2025-04-04 00:00:00	16:40	aline	Wallyson	558182535973@s.whatsapp.net	2025-04-02 00:00:00	Cabelo
bb6845bd-9d06-43c1-9b18-5588132c628b	2025-04-04 00:00:00	14:40	genildo	Bruno	558199736143@s.whatsapp.net	2025-04-02 00:00:00	Cabelo
18ee0bf8-383a-46e6-b82b-32ec36ec6ebb	2025-04-03 00:00:00	14:40	adson	Bruno	558195002521@s.whatsapp.net	2025-04-02 00:00:00	Cabelo
90e7e0dd-a6d2-4313-8a6a-a31c102e01d1	2025-04-03 00:00:00	14:00	andré	Bruno	559881068770@s.whatsapp.net	2025-04-02 00:00:00	Cabelo
a41698ff-a251-4ffb-a13c-c2e44459e0de	2025-04-04 00:00:00	14:00	Eraldo 	Wallyson	local	2025-04-02 19:16:49.461	Cabelo+Barba
c34b30d4-be45-4333-b1e2-4ea6e6ca6282	2025-04-03 00:00:00	18:00	Armando 	Wallyson	local	2025-04-02 19:17:38.683	Cabelo
443e1034-3dbb-4d56-b7cb-f516475b1127	2025-04-04 00:00:00	15:20	Jonai	Wallyson	local	2025-04-02 19:22:22.488	Cabelo
1d29c4cd-9783-4820-8467-6272c62c8a4c	2025-04-04 00:00:00	09:40	mayrlon	Bruno	558196600679@s.whatsapp.net	2025-04-02 00:00:00	Cabelo+Sobrancelha
53f9e054-246d-49c6-a367-b38a407ff39f	2025-04-04 00:00:00	16:00	Jonai 	Wallyson	local	2025-04-02 19:23:21.449	Cabelo
3ac37583-c7bd-4ad8-8d4b-d23e205e750c	2025-04-02 00:00:00	18:00	luan	Wallyson	558196003977@s.whatsapp.net	2025-04-02 00:00:00	Cabelo+Sobrancelha
21efbcd8-6ead-40ab-bca4-642f5f724c08	2025-04-04 00:00:00	19:20	Levino 	Wallyson	local	2025-04-02 19:31:15.483	Cabelo+Barba
559403cc-dc06-451c-a8aa-ebc2d23fa203	2025-04-04 00:00:00	18:00	Leonardo Brasil botox	Bruno	local	2025-04-02 20:32:31.813	Cabelo
f0152a2e-10c3-4ed2-b5eb-0551da394437	2025-04-05 00:00:00	09:20	marlon	Bruno	558194187583@s.whatsapp.net	2025-04-02 00:00:00	Cabelo
21743a39-bd18-4876-b9ac-f33b8badffb5	2025-04-04 00:00:00	09:00	luan	Bruno	558199264986@s.whatsapp.net	2025-04-02 00:00:00	Cabelo
e756e08b-1141-453e-b7e7-753f02cc7647	2025-04-04 00:00:00	18:40	marcos	Bruno	558197149668@s.whatsapp.net	2025-04-02 00:00:00	Cabelo
2b1a2852-1541-4e96-89c3-7036304057ee	2025-04-03 00:00:00	18:00	pedro henrique	Bruno	558199160082@s.whatsapp.net	2025-04-02 00:00:00	Cabelo
245a361d-2572-4930-9b2a-52dd0b400dae	2025-04-03 00:00:00	16:40	ronnye	Wallyson	558198353903@s.whatsapp.net	2025-04-02 00:00:00	Cabelo
5f314a32-7082-44a7-a7a7-b5064e874868	2025-04-04 00:00:00	10:20	luan	Bruno	558197301690@s.whatsapp.net	2025-04-02 00:00:00	Cabelo+Sobrancelha
376951a9-dd11-4482-89de-40d8be9e246e	2025-04-05 00:00:00	15:20	Heraldo 	Bruno	local	2025-04-03 00:40:04.664	Cabelo
c6b0522a-3f95-48c3-ac8d-82682d1d431b	2025-04-03 00:00:00	15:20	vandinho	Wallyson	558197042471@s.whatsapp.net	2025-04-02 00:00:00	Cabelo
b79f96b6-1b42-48d9-aef3-ff0c22668cc2	2025-04-04 00:00:00	13:20	vandro júnior	Wallyson	558196610362@s.whatsapp.net	2025-04-02 00:00:00	Cabelo
652740c0-ff24-4484-a7ad-d85e9cdc8a72	2025-04-04 00:00:00	17:20	Kaue	Wallyson	local	2025-04-03 01:30:04.305	Cabelo
9bbbffea-e11c-4498-9d73-a9543228c0b1	2025-04-03 00:00:00	15:20	Livio	Bruno	local	2025-04-03 01:32:23.764	Cabelo+Barba
33ff6eb9-9a62-4048-a7f4-bd1134fb1fca	2025-04-11 00:00:00	13:20	bruno	Bruno	558181317634@s.whatsapp.net	2025-04-03 00:00:00	Cabelo+Sobrancelha
b188085f-74f8-4b69-a895-ff48f9d20236	2025-04-10 00:00:00	18:00	wellington	Wallyson	558196852620@s.whatsapp.net	2025-04-03 00:00:00	Cabelo+Barba
eec7d02d-d967-41cd-b709-22e328e85742	2025-04-03 00:00:00	18:40	Ocupado	Bruno	local	2025-04-03 10:05:50.952	Cabelo
ebc7cced-d81a-44a4-947b-461f0748f942	2025-04-07 00:00:00	16:40	gláucio	Wallyson	558187255411@s.whatsapp.net	2025-04-03 00:00:00	Cabelo
f3061740-c7ef-4440-9f03-e93e915a5a00	2025-04-07 00:00:00	18:00	ualesson	Bruno	558199786467@s.whatsapp.net	2025-04-03 00:00:00	Cabelo
9855c2cc-9545-4500-b03e-a0083e75566a	2025-04-04 00:00:00	20:00	welliton fonseca	Bruno	558198022472@s.whatsapp.net	2025-04-03 00:00:00	Cabelo
cd57013f-b678-49db-96d2-9957de8e0dd2	2025-04-03 00:00:00	14:40	Pedro 	Wallyson	local	2025-04-03 12:45:38.28	Cabelo
091209c9-f2f3-436c-aa93-fadea32b9444	2025-04-04 00:00:00	14:40	Gustavo 	Wallyson	local	2025-04-03 13:26:02.448	Cabelo
91c38f10-290a-4bad-a00d-5d31ae98b041	2025-04-10 00:00:00	11:00	josé daniel ferreira da silva	Bruno	558199398282@s.whatsapp.net	2025-04-03 00:00:00	Cabelo
21ca3d2f-0c3f-41cd-a230-42a7f17e0c87	2025-04-04 00:00:00	13:20	Flavio 	Bruno	local	2025-04-03 15:31:01.978	Cabelo
b961c8e9-5349-4a80-88ce-71585dea4b7c	2025-04-04 00:00:00	16:40	matheus	Bruno	558196073942@s.whatsapp.net	2025-04-03 00:00:00	Cabelo+Barba
fa484821-963a-4d05-9b62-cb0cb7e5d897	2025-04-07 00:00:00	14:40	joão guilherme	Bruno	558181673375@s.whatsapp.net	2025-04-03 00:00:00	Cabelo
0f650cc0-54eb-417a-8fa2-7b76fa4f91ba	2025-04-03 00:00:00	16:00	renan	Bruno	558198296625@s.whatsapp.net	2025-04-03 00:00:00	Cabelo
538b7964-5889-45fc-ab17-7f64dc7e61b2	2025-04-04 00:00:00	10:40	césar	Wallyson	558197520499@s.whatsapp.net	2025-04-03 00:00:00	Cabelo+Sobrancelha
aed36215-5814-45c5-9a22-8fc1473af935	2025-04-03 00:00:00	16:00	0	Wallyson	558199387144@s.whatsapp.net	2025-04-03 00:00:00	Cabelo
78ced508-5a2c-4645-ab77-49638b251ffa	2025-04-04 00:00:00	10:00	cláudio henrique	Wallyson	558188482085@s.whatsapp.net	2025-04-03 00:00:00	Cabelo
c3671a93-fbd6-4724-83f9-9c1db167d04b	2025-04-04 00:00:00	20:00	Pedro Miguel 	Wallyson	local	2025-04-03 19:34:51.225	Cabelo
ea0b2b4b-6193-4632-ba4a-02d9a169d6c8	2025-04-05 00:00:00	16:00	paulo campos	Bruno	558173402335@s.whatsapp.net	2025-04-03 00:00:00	Cabelo+Barba
578692c2-e29f-4a3c-bedd-b364c11424ae	2025-04-05 00:00:00	16:40	gabriel silva	Bruno	558171039700@s.whatsapp.net	2025-04-03 00:00:00	Cabelo+Sobrancelha
2917868b-9c44-4a24-aa6f-bf08171bc418	2025-04-07 00:00:00	13:20	joão marcello	Bruno	558196393507@s.whatsapp.net	2025-04-03 00:00:00	Cabelo
534dea13-0a18-427a-ba1e-5307f3599bcd	2025-04-04 00:00:00	08:40	Fabrício 	Wallyson	local	2025-04-03 22:30:07.709	Cabelo
2c4d1cf6-c9cd-4397-9af2-62d84988e2f4	2025-04-10 00:00:00	16:40	rodrigo / angeline	Bruno	558197485634@s.whatsapp.net	2025-04-03 00:00:00	Cabelo
3a55a3ef-8d0f-468a-9c19-bab3e4ce588d	2025-04-05 00:00:00	17:20	andrey	Bruno	558195342893@s.whatsapp.net	2025-04-03 00:00:00	Cabelo
1279331b-24e3-4af1-b679-ed7999abee08	2025-04-05 00:00:00	18:00	Robert	Bruno	local	2025-04-04 11:27:55.886	Cabelo
84200b45-7d00-45be-810c-e41101d448e8	2025-04-04 00:00:00	09:20	Fabrício 	Wallyson	local	2025-04-04 12:07:45.597	Cabelo
6947a7c1-34ec-4f59-b896-eca5e7356b77	2025-04-07 00:00:00	09:40	matheus lima	Bruno	558199670970@s.whatsapp.net	2025-04-04 00:00:00	Cabelo+Sobrancelha
efdc4ff7-de34-4fec-a325-bed200b2879d	2025-04-07 00:00:00	10:20	miguel josé	Bruno	558196843988@s.whatsapp.net	2025-04-04 00:00:00	Cabelo
2ebe948f-3dbf-4a09-9ef8-38ade74371cb	2025-04-07 00:00:00	11:00	pedro santos	Bruno	558199656200@s.whatsapp.net	2025-04-04 00:00:00	Cabelo+Barba
c3c6dbf1-0f18-4888-9790-11a04d91853d	2025-04-08 00:00:00	18:40	Robson 	Wallyson	local	2025-04-04 21:46:28.539	Cabelo
253bd7e1-2a85-4ee9-93ad-ef9d5c89554e	2025-04-19 00:00:00	10:40	carlos henrique	Bruno	558196639360@s.whatsapp.net	2025-04-04 00:00:00	Cabelo+Barba
137fb2fd-61b2-4a70-a85b-0d167a0055fc	2025-04-07 00:00:00	16:00	felipe silva	Bruno	558196065070@s.whatsapp.net	2025-04-04 00:00:00	Cabelo
49bd6424-98f3-449b-9c03-f8ee8dd9694e	2025-04-07 00:00:00	09:40	Allison 	Wallyson	local	2025-04-05 09:28:04.286	Cabelo
befb3ecd-b6a5-4925-93d0-f94c2f494f41	2025-04-08 00:00:00	09:00	Ocupado	Bruno	local	2025-04-05 09:29:51.612	Cabelo
832e0adb-b612-4246-9fc7-82bfb0a3e256	2025-04-08 00:00:00	09:40	Ocupado	Bruno	local	2025-04-05 09:30:03.612	Cabelo
ba650ceb-c1ea-4c8d-aa31-08c33d9a29a2	2025-04-08 00:00:00	10:20	Ocupado	Bruno	local	2025-04-05 09:30:15.81	Cabelo
6c60c6c7-1238-436e-b30e-41af0ddfa081	2025-04-08 00:00:00	11:00	Ocupado	Bruno	local	2025-04-05 09:30:27.083	Cabelo
3af19d32-a431-4f73-b9ba-8dc3105a599e	2025-04-08 00:00:00	11:40	Ocupado	Bruno	local	2025-04-05 09:30:39.779	Cabelo
651dee5d-e215-468d-a80b-d00b36dbb912	2025-04-12 00:00:00	08:40	wesley	Wallyson	558181016662@s.whatsapp.net	2025-04-05 00:00:00	Cabelo+Sobrancelha
ddaa82f9-81ad-4f25-ab74-5bc384d6e392	2025-04-11 00:00:00	17:20	enzo alexandre	Wallyson	558184998670@s.whatsapp.net	2025-04-05 00:00:00	Cabelo+Sobrancelha
a662759a-dcf3-4efd-b976-3305abbf1127	2025-04-07 00:00:00	18:40	carlos	Bruno	558197823796@s.whatsapp.net	2025-04-05 00:00:00	Cabelo+Sobrancelha
9e66ec8c-a868-475b-b612-55ed4e6e4e5b	2025-04-09 00:00:00	15:20	cauã gabriel	Bruno	558199527666@s.whatsapp.net	2025-04-05 00:00:00	Cabelo
c296859a-d5d4-4b5a-adb5-7a87c41a299a	2025-04-10 00:00:00	17:20	arthur miguel	Bruno	558197819478@s.whatsapp.net	2025-04-05 00:00:00	Cabelo
133eedcc-3b7e-43ff-83bb-8d694da567f0	2025-04-07 00:00:00	18:00	john	Wallyson	558197904314@s.whatsapp.net	2025-04-05 00:00:00	Cabelo+Barba
cea52e36-02d0-4053-88da-1d781c309e03	2025-04-07 00:00:00	14:00	joão lucas	Bruno	558182601936@s.whatsapp.net	2025-04-06 00:00:00	Cabelo
e181bbee-2bf5-4b72-86d9-95e504e262e0	2025-04-07 00:00:00	11:40	joão neto	Bruno	558182601936@s.whatsapp.net	2025-04-06 00:00:00	Cabelo
ac4e65e7-ddd4-4f34-9a01-2bf1a8d9d42d	2025-04-07 00:00:00	15:20	heitor	Bruno	558182601936@s.whatsapp.net	2025-04-06 00:00:00	Cabelo
48d82622-025b-457e-a11b-93ec535a0f57	2025-04-09 00:00:00	13:20	paulo cavalcanti	Bruno	558192692547@s.whatsapp.net	2025-04-06 00:00:00	Cabelo
68334242-fe87-48f0-90b9-5b61e1f43e42	2025-04-07 00:00:00	15:20	matheus	Wallyson	558197941830@s.whatsapp.net	2025-04-06 00:00:00	Cabelo
51f28f99-1c96-47da-a09d-011459553962	2025-04-11 00:00:00	20:00	roberto valério	Bruno	558181779060@s.whatsapp.net	2025-04-06 00:00:00	Cabelo+Barba
7626647a-5340-4d58-a7a4-f424103ddae2	2025-04-12 00:00:00	11:20	ryan valério	Bruno	558181779060@s.whatsapp.net	2025-04-06 00:00:00	Cabelo+Barba
66d55cde-a929-4d74-8b9f-d3015c632f22	2025-04-16 00:00:00	18:00	lucas leal	Bruno	558182605271@s.whatsapp.net	2025-04-06 00:00:00	Cabelo+Sobrancelha
6d0df884-f42a-4aba-95e3-6b12b6d57fc1	2025-04-09 00:00:00	18:00	fernando	Bruno	558196035269@s.whatsapp.net	2025-04-07 00:00:00	Cabelo
8ca5a4fa-7db3-425c-8c89-381084bfbbb8	2025-04-07 00:00:00	14:40	Heitor 	Wallyson	local	2025-04-07 10:24:32.112	Cabelo
5880fed3-9be9-482e-bd1e-79497ef06d20	2025-04-07 00:00:00	16:40	Paulo 	Bruno	local	2025-04-07 11:13:17.178	Cabelo
161ab5da-47b7-4c7e-984e-ddd51ab34d10	2025-04-08 00:00:00	13:20	du bolo	Wallyson	558196647899@s.whatsapp.net	2025-04-07 00:00:00	Cabelo+Sobrancelha
6ad1b291-57b4-4176-b792-1b610b8e54c4	2025-04-07 00:00:00	17:20	ataliba albuquerque	Bruno	558182671510@s.whatsapp.net	2025-04-07 00:00:00	Cabelo
c14a7022-8c2d-4ccf-a501-e4d1df99231e	2025-04-09 00:00:00	14:00	henrique	Bruno	558182601936@s.whatsapp.net	2025-04-07 00:00:00	Cabelo
7636febd-9a47-4efe-aa50-76dccaac81f0	2025-04-07 00:00:00	14:00	Marcely	Wallyson	local	2025-04-07 15:25:54.27	Cabelo
36af2bca-6f8e-428f-80b1-b63b74654d60	2025-04-11 00:00:00	16:40	josé guilherme	Bruno	558196081518@s.whatsapp.net	2025-04-07 00:00:00	Cabelo
c6ca400f-d024-42f8-9691-b0bee8a0f48d	2025-04-08 00:00:00	09:20	breno	Wallyson	558198437880@s.whatsapp.net	2025-04-07 00:00:00	Cabelo+Sobrancelha
4d74ed21-6dfd-4639-a025-6db8430bdf07	2025-04-07 00:00:00	11:00	edson	Wallyson	558198615843@s.whatsapp.net	2025-04-07 00:00:00	Cabelo
50f03647-421a-4b29-8540-2b5f83be25ef	2025-04-09 00:00:00	18:40	Júnior de Ronaldo 	Wallyson	local	2025-04-07 16:02:14.546	Cabelo
c62232dc-20b4-4e48-8b77-1380dcd4816a	2025-04-09 00:00:00	09:00	emanoel	Bruno	558181079674@s.whatsapp.net	2025-04-07 00:00:00	Cabelo
e070a95c-4299-491e-ba96-3e0a983eb699	2025-04-09 00:00:00	09:40	leonardo cabral	Bruno	558197413226@s.whatsapp.net	2025-04-07 00:00:00	Cabelo
6abc3dd6-470b-428f-9c1b-a2c5ccf7c8ab	2025-04-09 00:00:00	10:20	lívio	Bruno	558195436268@s.whatsapp.net	2025-04-07 00:00:00	Cabelo
8d5439da-08ba-4391-98dc-4e252176191d	2025-04-09 00:00:00	14:40	josé	Bruno	558198437880@s.whatsapp.net	2025-04-07 00:00:00	Cabelo
0d1a9ebf-84cd-4fa3-b96a-f916d6e37178	2025-04-09 00:00:00	18:40	denilson	Bruno	558197084296@s.whatsapp.net	2025-04-07 00:00:00	Barba
55cc698d-d9f8-4109-8210-d242b3549cae	2025-04-07 00:00:00	18:40	Miguel 	Wallyson	local	2025-04-07 16:57:48.505	Cabelo
261e1315-b925-4190-84b7-1da796f094ff	2025-04-08 00:00:00	18:00	Matheus 	Wallyson	local	2025-04-07 17:42:41.596	Cabelo
a1f9eb7d-8871-4e07-b4c2-fdda58f1fb44	2025-04-07 00:00:00	17:20	Francisco 	Wallyson	local	2025-04-07 19:17:50.354	Cabelo
a9a76f8a-6d87-4814-b329-decdf87e3229	2025-04-08 00:00:00	11:20	Rhian criança 	Wallyson	local	2025-04-07 19:52:58.781	Cabelo
665e78fd-3a76-4078-b1d6-b49331e03e65	2025-04-08 00:00:00	08:00	Indisponivel	Wallyson	Indisponivel	2025-04-07 19:54:09.478	
5942089b-6e62-4871-855b-933b3ed05aa8	2025-04-09 00:00:00	16:40	Italo 	Bruno	local	2025-04-07 20:18:22.984	Cabelo
9aeb0d49-e7fe-489d-a6c7-d515ce0080ad	2025-04-09 00:00:00	16:00	romerio	Bruno	558198627331@s.whatsapp.net	2025-04-07 00:00:00	Cabelo+Barba
ed5ef8ae-21fb-4b15-8b74-d8b89c11982f	2025-04-08 00:00:00	16:40	Noa	Wallyson	local	2025-04-07 22:22:34.403	Cabelo
b3c5481f-a126-4f71-b359-2e8dc1e4d024	2025-04-10 00:00:00	17:20	fernando	Wallyson	558199410150@s.whatsapp.net	2025-04-07 00:00:00	Cabelo+Sobrancelha
d06b6da5-4257-4d64-a68b-add5fc42d13c	2025-04-10 00:00:00	16:00	Ruan 	Wallyson	local	2025-04-07 22:40:08.089	Cabelo
34f83b25-4774-4fda-8756-b7cc4ab744f4	2025-04-10 00:00:00	16:40	Breno 	Wallyson	local	2025-04-07 22:40:20.503	Cabelo
942a90ae-0808-47e9-9d10-ddcb737bb321	2025-04-10 00:00:00	18:40	Matheus 	Wallyson	local	2025-04-07 22:41:22.154	Cabelo
50511bf7-a38b-4c53-b580-ed72cdaf0190	2025-04-09 00:00:00	10:00	Esterferson 	Wallyson	local	2025-04-07 22:41:59.588	Cabelo
41a9e62f-2b38-4366-a292-a98c3bd0c267	2025-04-09 00:00:00	08:00	Matheus 	Wallyson	local	2025-04-07 22:42:30.087	Cabelo
4e0d1fca-af27-47ea-99d1-addf9a2570ba	2025-04-09 00:00:00	08:40	Francelino 	Wallyson	local	2025-04-07 22:42:53.509	Cabelo
c00fa2f8-9ccf-439f-a0df-241533a847fb	2025-04-11 00:00:00	19:20	renan valério	Bruno	558181779060@s.whatsapp.net	2025-04-07 00:00:00	Cabelo+Barba
e3753520-082d-4a57-bb01-46136b472f16	2025-04-10 00:00:00	10:00	kallebe	Wallyson	558195967163@s.whatsapp.net	2025-04-07 00:00:00	Cabelo
1b3d8227-c9f2-4422-a8c2-37918823eee6	2025-04-08 00:00:00	16:00	gabriel	Wallyson	558196236188@s.whatsapp.net	2025-04-08 00:00:00	Cabelo
af95df6a-dd7a-4ea3-8cc2-a8641e903b04	2025-04-09 00:00:00	09:20	elysson	Wallyson	558199697267@s.whatsapp.net	2025-04-08 00:00:00	Cabelo+Sobrancelha
e41124b1-8b4f-4845-b10a-80be501dc18b	2025-04-10 00:00:00	18:00	rennan	Bruno	558196502964@s.whatsapp.net	2025-04-08 00:00:00	Cabelo+Barba
61e5b811-2142-4ade-9916-1e6fbda5e0c5	2025-04-10 00:00:00	15:20	Matheus 	Wallyson	local	2025-04-08 12:46:00.173	Barba
a227c8e6-b28c-40f3-97af-7708bd42b7d7	2025-04-10 00:00:00	08:00	joaquim	Wallyson	558181603996@s.whatsapp.net	2025-04-08 00:00:00	Cabelo
598088b1-19fc-4cd9-8028-ab2a40eeb2a1	2025-04-08 00:00:00	17:20	carlos	Wallyson	558198314747@s.whatsapp.net	2025-04-08 00:00:00	Cabelo
d2e3deaa-fa37-4247-946b-5ecb5402a080	2025-04-09 00:00:00	11:40	mauricio	Bruno	558182705181@s.whatsapp.net	2025-04-08 00:00:00	Cabelo
0bac4aa5-bff3-45b4-9110-281a8810a273	2025-04-08 00:00:00	14:00	Edinho	Wallyson	local	2025-04-08 15:04:49.886	Cabelo
f2834b5e-6c35-4423-9be3-79cfd42eeac1	2025-04-09 00:00:00	18:00	Raulzinho	Wallyson	local	2025-04-08 15:07:41.333	Cabelo
ce71a9e1-3ff1-4540-9a03-caa73ef3e7aa	2025-04-15 00:00:00	14:40	lucas josé	Bruno	558199311183@s.whatsapp.net	2025-04-08 00:00:00	Cabelo+Barba
9bae3010-c232-4241-9c14-8d34d6ca8857	2025-04-08 00:00:00	15:20	Rivaldo 	Wallyson	local	2025-04-08 17:56:04.228	Cabelo
9890dbd9-db2c-4bad-8c76-2ee8460bf4f3	2025-04-12 00:00:00	14:00	Renan 	Bruno	local	2025-04-08 17:58:46.998	Cabelo
decc3aa2-5509-4f93-80e1-23b802751c24	2025-04-12 00:00:00	16:00	Rivaldo 	Wallyson	local	2025-04-08 18:03:07.727	Cabelo
82979567-3c9e-478e-bf1d-943a78946f6b	2025-04-10 00:00:00	14:00	Daniel 	Wallyson	local	2025-04-08 18:33:15.951	Cabelo
cad2a849-b999-40f2-804a-54b91201dd93	2025-04-10 00:00:00	09:40	fernando	Bruno	558199817133@s.whatsapp.net	2025-04-08 00:00:00	Cabelo
c85a6ba7-2ace-42b1-afd0-93221f7b0ab0	2025-04-12 00:00:00	09:20	Max 	Wallyson	local	2025-04-08 19:40:38.841	Cabelo
8a0ebc85-6613-41eb-b513-69c84632733e	2025-04-11 00:00:00	16:40	Lucian 	Wallyson	local	2025-04-08 19:58:12.34	Cabelo+Barba
5a1ec5a8-a5e7-44c7-8caf-06c5da20e5d6	2025-04-09 00:00:00	16:40	emanuel	Wallyson	558196314532@s.whatsapp.net	2025-04-08 00:00:00	Cabelo
5b1a9bb2-ec31-4b99-ac5a-9b1a05344b7e	2025-04-12 00:00:00	10:40	júlio césar	Bruno	558196440108@s.whatsapp.net	2025-04-08 00:00:00	Cabelo+Sobrancelha
3c5dcdd1-674a-4fa5-ad73-6ac1bcb9eadf	2025-04-09 00:00:00	16:00	hugo	Wallyson	558198490396@s.whatsapp.net	2025-04-08 00:00:00	Cabelo
bad66233-25d2-4919-ae8b-d0be5cc9809d	2025-04-11 00:00:00	17:20	arthur	Bruno	558194115511@s.whatsapp.net	2025-04-08 00:00:00	Cabelo+Barba
ce0354f4-7552-41e2-ab6a-a787a1747f46	2025-04-11 00:00:00	11:40	matheus ryan	Bruno	558198446732@s.whatsapp.net	2025-04-08 00:00:00	Cabelo
372cef41-f8f4-41e1-b3d1-a21e1ca042e5	2025-04-12 00:00:00	16:40	zaldinho	Bruno	558198591039@s.whatsapp.net	2025-04-09 00:00:00	Cabelo
2ed9687e-3a63-4883-8103-e30c9e51b411	2025-04-09 00:00:00	13:20	Antonio Rafael 	Wallyson	local	2025-04-09 10:24:19.13	Cabelo
91cb2510-abd3-4c39-bb8f-3d2ea9f860b7	2025-04-12 00:00:00	18:00	eduardo	Bruno	558194297236@s.whatsapp.net	2025-04-09 00:00:00	Cabelo+Barba
f0c5df4e-7ed3-4af7-a57c-0f31d75ff5a0	2025-04-09 00:00:00	17:20	Juninho	Bruno	local	2025-04-09 14:06:11.743	Cabelo+Sobrancelha
8b0d3985-014f-4a71-b462-ee6c3ee21b7e	2025-04-09 00:00:00	11:00	.	Bruno	local	2025-04-09 14:06:31.516	Cabelo
b038667c-3962-4944-856f-82a646c04e05	2025-04-12 00:00:00	17:20	lucas rafael	Bruno	558197593200@s.whatsapp.net	2025-04-09 00:00:00	Cabelo
fbabea7a-4395-4f11-bc00-8599e05ac858	2025-04-12 00:00:00	15:20	mateus	Bruno	558196083218@s.whatsapp.net	2025-04-09 00:00:00	Cabelo+Barba
b401a23e-733c-4c3d-b6a3-9e23ba2230ab	2025-04-12 00:00:00	16:00	vitor lima	Bruno	558197523494@s.whatsapp.net	2025-04-09 00:00:00	Cabelo
3badc0fd-f7a6-4282-bba3-2adbec21e573	2025-04-12 00:00:00	14:40	david callebe	Bruno	558191447860@s.whatsapp.net	2025-04-09 00:00:00	Cabelo
af12bb1c-4f2d-4bb6-b7e5-5246da56f21f	2025-04-10 00:00:00	18:40	fabiano	Bruno	558194610556@s.whatsapp.net	2025-04-09 00:00:00	Cabelo
b542efaf-5d6f-4515-b2db-45dd3a7f9925	2025-04-11 00:00:00	09:20	Jhonatan 	Wallyson	local	2025-04-09 18:38:37.762	Cabelo
c30820c6-d7a5-4e08-a2a9-31d3a6650ccf	2025-04-12 00:00:00	10:00	joão lucas	Wallyson	558198783426@s.whatsapp.net	2025-04-09 00:00:00	Cabelo
3aa29223-b185-4aee-a0a3-f21cc12d1952	2025-04-11 00:00:00	14:00	Manoel neto 	Bruno	local	2025-04-09 20:06:43.706	Cabelo+Barba
2fe81b22-0096-48d1-b829-83dc2730da0e	2025-04-11 00:00:00	16:00	Allysson 	Wallyson	local	2025-04-09 20:55:52.219	Cabelo
12c82b14-b7d5-45bc-b988-7bd5a5521941	2025-04-10 00:00:00	08:40	gabriel	Wallyson	558181774084@s.whatsapp.net	2025-04-09 00:00:00	Cabelo
8b3bae35-868b-41df-9c7f-8f3d7db291ee	2025-04-12 00:00:00	09:20	ismael pedro	Bruno	558199824318@s.whatsapp.net	2025-04-09 00:00:00	Cabelo
290b3923-7fbc-4e98-b49a-59e513ddf034	2025-04-12 00:00:00	10:40	Matheus primo João paulo 	Wallyson	local	2025-04-09 23:57:30.861	Cabelo
bb8a8017-6d24-46be-9988-ae8f060b8f19	2025-04-10 00:00:00	10:20	Eduardo vieira	Bruno	local	2025-04-10 00:00:18.006	Cabelo+Barba
dd6784e3-36fe-47e0-a865-32918e648e17	2025-04-12 00:00:00	10:00	matheus	Bruno	558196191710@s.whatsapp.net	2025-04-09 00:00:00	Cabelo+Barba
0d8f8d0c-795a-4b33-9555-d1101a43cbd8	2025-04-10 00:00:00	09:00	samuel	Bruno	558171201693@s.whatsapp.net	2025-04-09 00:00:00	Cabelo
2a832db9-43db-4336-a081-75bad508b9be	2025-04-10 00:00:00	14:40	fernando	Wallyson	558197789968@s.whatsapp.net	2025-04-10 00:00:00	Cabelo
abbfd3cb-123b-47fb-8814-72764982c157	2025-04-12 00:00:00	13:20	Emanoel 	Bruno	local	2025-04-10 09:20:23.522	Cabelo+Barba
c16d36cd-bbcf-4f71-b28c-ad90b3a97bd1	2025-04-11 00:00:00	14:40	Emanoel botox 	Bruno	local	2025-04-10 09:27:43.129	Cabelo
4451dc64-8994-4e79-8a55-84f19ae80559	2025-04-10 00:00:00	13:20	renan	Wallyson	558195330370@s.whatsapp.net	2025-04-10 00:00:00	Cabelo
12e6bf71-7126-4aaf-8f7c-e3f060c74789	2025-04-12 00:00:00	14:00	kayke	Wallyson	558197180683@s.whatsapp.net	2025-04-10 00:00:00	Cabelo+Barba
e2e0c129-8fe0-4880-bfb4-cfbd4e09782e	2025-04-10 00:00:00	09:20	Marcado 	Wallyson	local	2025-04-10 11:05:33.335	Cabelo
fa9a25ca-0446-4dc2-ab45-9756288c4750	2025-04-10 00:00:00	10:40	Douglas 	Wallyson	local	2025-04-10 11:18:06.104	Cabelo
748fc133-1f21-490e-a248-49dcff011c74	2025-04-10 00:00:00	11:40	ataliba albuquerque	Bruno	558182671510@s.whatsapp.net	2025-04-10 00:00:00	Barba
0a0d6039-8d76-4d88-b2aa-c769deb72c2a	2025-04-12 00:00:00	12:00	luis	Bruno	558199061615@s.whatsapp.net	2025-04-10 00:00:00	Cabelo+Sobrancelha
b3076eb5-0bf7-4da0-bf75-59c9fc3d5dd8	2025-04-12 00:00:00	08:00	luiz felipe	Bruno	558197800927@s.whatsapp.net	2025-04-10 00:00:00	Cabelo
592b4c8d-6aee-40e7-8590-e05fc0794113	2025-04-11 00:00:00	08:00	Paulinho 	Wallyson	local	2025-04-10 12:31:36.675	Acabamento (Pezinho)
e4095ce3-367c-4658-a001-b965cc0aae84	2025-04-11 00:00:00	20:00	daniel	Wallyson	558199459046@s.whatsapp.net	2025-04-10 00:00:00	Cabelo
6673cb4d-03e2-4bd8-bde0-b24e076ff5ad	2025-04-12 00:00:00	15:20	Gustavo 	Wallyson	local	2025-04-10 13:58:51.968	Cabelo
9c8a09b6-dad8-480f-9e11-a4d5da5255f5	2025-04-11 00:00:00	18:00	vinicius	Bruno	558196496652@s.whatsapp.net	2025-04-10 00:00:00	Cabelo
c06524dc-b932-4116-84e6-f5b018e99ad9	2025-04-11 00:00:00	10:20	Anthony 	Bruno	local	2025-04-10 15:47:43.576	Cabelo
5585a88c-225b-4efa-9cf9-5ab00f05ffec	2025-04-11 00:00:00	18:40	Carlos 	Bruno	local	2025-04-10 16:24:50.725	Cabelo
b26839bb-3070-47d4-b813-39800e680559	2025-04-10 00:00:00	15:20	jackson	Bruno	558197174200@s.whatsapp.net	2025-04-10 00:00:00	Cabelo
d9c5b68b-5174-425f-adf6-ce1d7fd9bfe1	2025-04-17 00:00:00	11:00	joão miguel	Bruno	558198328109@s.whatsapp.net	2025-04-10 00:00:00	Cabelo
8758b70c-f417-4c9f-97cd-5cd97e0ab9a5	2025-04-12 00:00:00	08:00	mathias	Wallyson	558187494403@s.whatsapp.net	2025-04-10 00:00:00	Cabelo+Barba
20afb196-9075-4e94-8229-f5120216a43a	2025-04-11 00:00:00	15:20	joão gabriel	Bruno	558195216795@s.whatsapp.net	2025-04-10 00:00:00	Cabelo
0221e90a-3749-4f2f-8752-5a103d1aa837	2025-04-11 00:00:00	16:00	thomas	Bruno	558181391720@s.whatsapp.net	2025-04-10 00:00:00	Cabelo
6ebd4ce5-c12b-4b12-9785-5f4023e98d73	2025-04-11 00:00:00	18:00	Thiago 	Wallyson	local	2025-04-10 23:27:41.261	Cabelo+Barba
2fc223d9-d0fe-4af0-8aa9-a9f638958434	2025-04-12 00:00:00	14:40	Vinicius Marista 	Wallyson	local	2025-04-11 00:15:38.549	Cabelo
724dfefc-cb0d-4f8b-b4da-0319a0859c7c	2025-04-14 00:00:00	14:40	gabriel	Bruno	558197699397@s.whatsapp.net	2025-04-10 00:00:00	Cabelo
7bd5a298-34a5-4b37-91af-14c92a0424b4	2025-04-24 00:00:00	13:20	shérgyo	Wallyson	558189870188@s.whatsapp.net	2025-04-11 00:00:00	Cabelo
e9cc26fb-9fd8-4b35-8ee5-fae258b5d670	2025-04-11 00:00:00	08:40	Paulinho 	Wallyson	local	2025-04-11 10:34:15.849	Cabelo
9c96430a-c811-4f1d-9504-6f5a0a0c3331	2025-04-17 00:00:00	11:20	Paulinho 	Wallyson	local	2025-04-11 11:55:58.145	Cabelo
737db062-c19f-481f-8363-ba927bc88e3c	2025-04-12 00:00:00	12:00	Bruno 	Wallyson	local	2025-04-11 11:57:56.183	Barba
c028220a-f315-4ac5-ac4b-a281c64cd46c	2025-04-12 00:00:00	17:20	Rômulo 	Wallyson	local	2025-04-11 11:58:29.484	Cabelo
a8306911-16b3-4a7a-b4ee-f729fd16a7ae	2025-04-12 00:00:00	18:00	Paulo 	Wallyson	local	2025-04-11 11:58:53.957	Cabelo
3183e42b-602d-41ee-9bfa-3711c6b26f50	2025-04-12 00:00:00	13:20	ramon	Wallyson	558197423344@s.whatsapp.net	2025-04-11 00:00:00	Cabelo
d7378b99-042b-49c0-a6fa-9a69d7a94877	2025-04-12 00:00:00	16:40	marcos floro	Wallyson	558195363219@s.whatsapp.net	2025-04-11 00:00:00	Cabelo+Sobrancelha
2fd1a840-e0fd-44ba-839b-fafc4c234b37	2025-04-11 00:00:00	15:20	lucas	Wallyson	558197326785@s.whatsapp.net	2025-04-11 00:00:00	Cabelo
7b8c5ac6-8527-4b9d-9816-234e10a25b8b	2025-04-11 00:00:00	13:20	gerdo	Wallyson	558196275453@s.whatsapp.net	2025-04-11 00:00:00	Cabelo
62fc24cc-cdf0-4050-843b-f951dbc56939	2025-04-11 00:00:00	18:40	Joao Paulo 	Wallyson	local	2025-04-11 16:46:45.437	Cabelo
9253a0e5-cb9f-409b-85c8-7bc8555d8606	2025-04-11 00:00:00	11:00	bruno	Bruno	558189873832@s.whatsapp.net	2025-04-11 00:00:00	Cabelo+Barba
88ba50ce-37c9-4d2e-829e-99790a108a4a	2025-04-15 00:00:00	10:40	gabriel	Wallyson	558199481850@s.whatsapp.net	2025-04-11 00:00:00	Cabelo+Sobrancelha
e1d5401f-78a8-4881-bc16-35141fb6411c	2025-04-14 00:00:00	16:40	luiz	Bruno	558181302386@s.whatsapp.net	2025-04-11 00:00:00	Cabelo
da332518-ec98-498a-a952-9ddab23af7d3	2025-04-14 00:00:00	15:20	marcus	Wallyson	558199349818@s.whatsapp.net	2025-04-11 00:00:00	Cabelo
8688f662-8dfb-473f-aa9e-df2947f60718	2025-04-12 00:00:00	11:20	alesson	Wallyson	558181898338@s.whatsapp.net	2025-04-11 00:00:00	Cabelo+Barba
8855fd60-a42e-4d6a-bc44-42baafbf8ffa	2025-04-15 00:00:00	09:40	hélyo	Bruno	558189710860@s.whatsapp.net	2025-04-11 00:00:00	Cabelo
7089db16-3a9d-4ac6-9e98-93330431d820	2025-04-19 00:00:00	11:20	Filho de carlos 	Bruno	local	2025-04-11 22:25:20.531	Cabelo
346c8220-44a2-4e65-8926-1544165dd070	2025-04-19 00:00:00	11:20	Filho de carlos 	Wallyson	local	2025-04-11 22:25:45.409	Cabelo
b7b54ed6-995b-4402-ba9e-f6146a2d4dfe	2025-04-14 00:00:00	17:20	Isaac 	Wallyson	local	2025-04-12 01:32:53.504	Cabelo
dc6ee7b1-71c0-496c-98e2-cf41c7f7bae1	2025-04-24 00:00:00	17:20	iann lucas	Bruno	558196612255@s.whatsapp.net	2025-04-12 00:00:00	Cabelo+Sobrancelha
eb578072-24d1-45c9-937e-58e49a59a650	2025-04-19 00:00:00	08:00	tiago	Bruno	558181319163@s.whatsapp.net	2025-04-12 00:00:00	Cabelo
9cd1f79a-e2b7-40f2-9954-39c6a5752b23	2025-04-16 00:00:00	18:40	dr. marcos araújo	Bruno	558191284429@s.whatsapp.net	2025-04-12 00:00:00	Cabelo
0a92539e-b8c2-4fda-bb7f-3ff07616398d	2025-04-14 00:00:00	16:00	allan	Bruno	558197352705@s.whatsapp.net	2025-04-12 00:00:00	Cabelo
7fde7f8e-e29d-4dad-bbac-9b4200348fc3	2025-04-19 00:00:00	08:00	pedro irmão de tiago	Wallyson	558181319163@s.whatsapp.net	2025-04-12 00:00:00	Cabelo
ebbc76b8-794d-46f3-b3b0-3a27ebe19eb6	2025-04-15 00:00:00	18:00	Vaninho 	Wallyson	local	2025-04-12 18:50:38.445	Cabelo+Barba
0aa54058-eb0c-48f4-93e1-616c49453861	2025-04-14 00:00:00	14:00	Marcello Brito 	Wallyson	local	2025-04-12 18:51:32.256	Cabelo
a8f7d461-3c1d-4a2c-966f-2342cc8dcba4	2025-04-14 00:00:00	17:20	antônio henrique	Bruno	558197083657@s.whatsapp.net	2025-04-12 00:00:00	Cabelo+Sobrancelha
3ef98167-5563-44b9-a1ce-5eeb9d8a9a70	2025-04-15 00:00:00	15:20	kaio	Bruno	558192457408@s.whatsapp.net	2025-04-12 00:00:00	Cabelo+Sobrancelha
97749c0f-f0a7-4737-9a27-71ba20e272be	2025-04-19 00:00:00	08:40	eudes fera	Wallyson	558184793136@s.whatsapp.net	2025-04-13 00:00:00	Cabelo
f9ae6dc4-4b11-42e8-967b-20470f0d3a2a	2025-04-21 00:00:00	10:20	asafe	Bruno	558171076971@s.whatsapp.net	2025-04-13 00:00:00	Cabelo
18a4be6f-087c-45e5-93a7-9c25749f6a2e	2025-04-21 00:00:00	10:20	moisés	Wallyson	558171076971@s.whatsapp.net	2025-04-13 00:00:00	Cabelo+Barba
985d592b-f97c-4e84-b2bb-786e1dadb67f	2025-04-19 00:00:00	14:40	yan	Bruno	558199168954@s.whatsapp.net	2025-04-13 00:00:00	Cabelo
7d73fee7-5415-4acf-89e5-58620b10faf5	2025-04-15 00:00:00	14:00	lucas pio	Wallyson	558181213267@s.whatsapp.net	2025-04-13 00:00:00	Cabelo
37dfe0b3-3d09-4d59-9278-f3f78ffc93a5	2025-04-16 00:00:00	17:20	felipe	Wallyson	558181451150@s.whatsapp.net	2025-04-13 00:00:00	Cabelo
c698113d-1adf-4b84-b4df-4a0c123382aa	2025-04-14 00:00:00	09:40	paulo césar	Bruno	558195254306@s.whatsapp.net	2025-04-13 00:00:00	Cabelo
041333de-4c7e-4c2e-b490-4afe24ea968f	2025-04-19 00:00:00	10:00	Matheus 	Wallyson	local	2025-04-13 17:11:25.452	Cabelo+Barba
c878e867-25af-4572-9ed8-a81275e516b6	2025-04-16 00:00:00	16:00	romerio	Bruno	558198627331@s.whatsapp.net	2025-04-13 00:00:00	Cabelo
5c4f2c31-aef5-444f-bbdf-8d5c264b4636	2025-04-30 00:00:00	16:40	Indisponivel	Bruno	Indisponivel	2025-04-13 22:20:17.307	
39faea7f-6248-4298-8cb7-2dc6fcd544a5	2025-04-30 00:00:00	17:20	Indisponivel	Bruno	Indisponivel	2025-04-13 22:20:17.397	
0f92aa7a-eda0-414f-9756-94f2546589c2	2025-04-30 00:00:00	18:00	Indisponivel	Bruno	Indisponivel	2025-04-13 22:20:17.433	
7ea54a3b-ccaf-422d-8d0a-d2f727abf078	2025-04-30 00:00:00	18:40	Indisponivel	Bruno	Indisponivel	2025-04-13 22:20:17.467	
1ed7f668-dc89-4a91-9afe-75fd327dd434	2025-04-21 00:00:00	16:40	yago	Bruno	558195055274@s.whatsapp.net	2025-04-13 00:00:00	Cabelo+Sobrancelha
9dd236ea-19c3-4644-9656-79dc74707510	2025-04-15 00:00:00	11:00	deyvson	Bruno	558195479577@s.whatsapp.net	2025-04-13 00:00:00	Cabelo
8a9fbc99-2688-4aac-9643-2aa71fd07588	2025-04-14 00:00:00	11:00	Davi 	Wallyson	local	2025-04-14 00:21:22.432	Cabelo
0af948ab-ee53-48c7-b471-51421c280c6d	2025-04-15 00:00:00	11:40	joão pedro campos	Bruno	558196073970@s.whatsapp.net	2025-04-14 00:00:00	Cabelo+Barba
2c067348-782a-4c72-ba53-e1dca52e7df3	2025-04-14 00:00:00	16:00	João Carmen 	Wallyson	local	2025-04-14 11:04:20.08	Cabelo
6d439145-cd58-4519-b1c0-cfb463182e0a	2025-04-14 00:00:00	09:40	Alberto 	Wallyson	local	2025-04-14 11:40:32.983	Cabelo
e335e9b2-6ad9-4e00-bc22-f2bb54c6abf4	2025-04-14 00:00:00	14:40	Gabriel 	Wallyson	local	2025-04-14 11:41:29.902	Cabelo
f91aa726-279f-4d00-b92d-f1063ef2e64a	2025-04-14 00:00:00	13:20	luan	Bruno	558197440899@s.whatsapp.net	2025-04-14 00:00:00	Cabelo+Barba
d2f744e0-8145-43bf-8f24-6c614148d034	2025-04-14 00:00:00	10:20	junior	Bruno	558197549569@s.whatsapp.net	2025-04-14 00:00:00	Cabelo+Barba
c0bf6d9a-72ad-4cd6-8d99-3c8841caf397	2025-04-14 00:00:00	15:20	ivan	Bruno	558181538579@s.whatsapp.net	2025-04-14 00:00:00	Barba
79c3039b-93eb-4a65-a9a9-06d47cea15aa	2025-04-16 00:00:00	10:20	jhonata pedro	Bruno	558182685598@s.whatsapp.net	2025-04-14 00:00:00	Cabelo
8c87bbd3-0b06-4412-89ec-b466f1b8bd7f	2025-04-14 00:00:00	18:40	yallison	Bruno	558198734964@s.whatsapp.net	2025-04-14 00:00:00	Cabelo+Barba
95f7a0d1-0c58-4bbb-affb-a15d324b0818	2025-04-14 00:00:00	11:40	marcos	Bruno	558182745871@s.whatsapp.net	2025-04-14 00:00:00	Cabelo+Barba
5a660cf5-39e7-4a09-8eca-351f43e09b95	2025-04-14 00:00:00	14:00	gustavo nascimento	Bruno	558181670651@s.whatsapp.net	2025-04-14 00:00:00	Cabelo
bd3e9e83-6f6e-495e-b908-2e2625bfd5c3	2025-04-14 00:00:00	18:00	Lúcio mudo	Bruno	local	2025-04-14 14:34:01.228	Cabelo
f6ca1432-ff54-465b-b809-931ab0fa437c	2025-04-14 00:00:00	13:20	pedro henrique	Wallyson	558195071416@s.whatsapp.net	2025-04-14 00:00:00	Cabelo+Sobrancelha
14b4415d-0525-4f7c-a08a-ddd20ed9d1b6	2025-04-17 00:00:00	18:00	anderson carlos	Bruno	558196579148@s.whatsapp.net	2025-04-14 00:00:00	Cabelo
4b42715c-d1e5-42da-aad5-db27009a62f7	2025-04-16 00:00:00	11:00	DETRAN 	Bruno	local	2025-04-14 16:10:03.03	Cabelo
74fba30f-6471-4061-86a5-94e7d2186817	2025-04-16 00:00:00	11:40	Detran	Bruno	local	2025-04-14 16:10:18.317	Cabelo
774a7cff-9d74-4560-b0a4-6fc18e334e17	2025-04-16 00:00:00	13:20	Detran	Bruno	local	2025-04-14 16:10:34.45	Cabelo
52b31686-83c5-47f8-bc85-7ea338f6d065	2025-05-06 00:00:00	13:20	Indisponivel	Bruno	Indisponivel	2025-04-14 16:29:23.655	
d23701bc-49cd-4884-81fa-d757fc19f191	2025-05-06 00:00:00	14:00	Indisponivel	Bruno	Indisponivel	2025-04-14 16:29:24.01	
f3fb86b6-27e5-4cde-8bf0-ef1603d5e15c	2025-05-06 00:00:00	14:40	Indisponivel	Bruno	Indisponivel	2025-04-14 16:29:24.04	
f3f4c956-e9bf-4ddc-b342-189964a0045f	2025-05-06 00:00:00	15:20	Indisponivel	Bruno	Indisponivel	2025-04-14 16:29:24.069	
74b79dc1-d41a-47be-b8f5-0469324a1a45	2025-05-06 00:00:00	16:00	Indisponivel	Bruno	Indisponivel	2025-04-14 16:29:24.099	
a2f2ec03-360f-4b53-b2ea-14f368914dc7	2025-05-06 00:00:00	16:40	Indisponivel	Bruno	Indisponivel	2025-04-14 16:29:24.13	
df1e3953-5b1e-42c4-b067-fee70ccc7a1f	2025-05-06 00:00:00	17:20	Indisponivel	Bruno	Indisponivel	2025-04-14 16:29:24.172	
a07a6c0a-1742-448b-a012-1c2d3589fb89	2025-05-06 00:00:00	18:00	Indisponivel	Bruno	Indisponivel	2025-04-14 16:29:24.216	
546a0e71-4b56-4ec5-b662-1405adbae3dc	2025-05-06 00:00:00	18:40	Indisponivel	Bruno	Indisponivel	2025-04-14 16:29:24.247	
396e7394-1074-42a5-b8af-60f15362ac6f	2025-04-17 00:00:00	17:20	mateus oliveira	Wallyson	558186880205@s.whatsapp.net	2025-04-14 00:00:00	Cabelo+Barba
2a8373b9-81ce-4163-99a0-a53c151e02e3	2025-04-19 00:00:00	09:20	wilson	Wallyson	558197148928@s.whatsapp.net	2025-04-14 00:00:00	Cabelo+Sobrancelha
c2ce10d6-a6db-413a-b304-d09afd9643f3	2025-04-17 00:00:00	18:40	denilson	Bruno	558197084296@s.whatsapp.net	2025-04-14 00:00:00	Barba
31e91e42-9bc6-4c9e-9b9e-7f495464f570	2025-04-15 00:00:00	08:00	Pelada 	Wallyson	local	2025-04-14 17:51:20.536	Cabelo
4191d6ed-0839-46f7-a3b8-06a3b513c8db	2025-04-15 00:00:00	14:40	Gabriel que tem medo de Alan 	Wallyson	local	2025-04-14 17:52:53.357	Cabelo
6fc85619-c3d1-4363-bf7c-83fa07a33979	2025-04-14 00:00:00	18:40	Victor 	Wallyson	local	2025-04-14 17:53:51.788	Cabelo
995c873d-7ac5-4bf7-9a00-3da02ef514c3	2025-04-14 00:00:00	18:00	Eudes 	Wallyson	local	2025-04-14 19:26:14.711	Cabelo
1300d01a-7727-448a-9b47-dd156fd60f1a	2025-04-17 00:00:00	13:20	joão vitor	Bruno	558192250093@s.whatsapp.net	2025-04-14 00:00:00	Cabelo
8594e086-cf7c-46e6-9c48-730a9d27e8ef	2025-04-24 00:00:00	10:20	josé everson	Bruno	558179003193@s.whatsapp.net	2025-04-14 00:00:00	Cabelo
14170b24-cda5-44e8-bb9c-47bc842f010a	2025-04-16 00:00:00	14:00	lucas	Bruno	558182451503@s.whatsapp.net	2025-04-14 00:00:00	Cabelo+Sobrancelha
e6901619-dff4-4dee-a7ce-e6c8a82d8834	2025-04-17 00:00:00	16:40	Davi	Bruno	local	2025-04-14 20:56:40.89	Cabelo
17800549-d033-470e-87c6-2fb6b81d2c17	2025-04-15 00:00:00	18:40	gustavo farias	Bruno	558196195368@s.whatsapp.net	2025-04-14 00:00:00	Cabelo
1d60d864-7ca1-4e01-9481-746d379ab7ec	2025-04-15 00:00:00	16:00	marcel aguiar	Bruno	558198490038@s.whatsapp.net	2025-04-14 00:00:00	Cabelo+Barba
32678b63-e1d1-4d60-9ab9-47eb19167896	2025-04-16 00:00:00	16:00	jeferson	Wallyson	558198265483@s.whatsapp.net	2025-04-14 00:00:00	Cabelo+Barba
08e2774f-bdff-4953-937d-3fb781ac9ef7	2025-04-15 00:00:00	09:00	breno	Bruno	558198437880@s.whatsapp.net	2025-04-15 00:00:00	Cabelo+Sobrancelha
4d6d37de-1ec5-4596-b38d-124f07de9ea0	2025-04-16 00:00:00	17:20	arthur	Bruno	558194115511@s.whatsapp.net	2025-04-15 00:00:00	Barba
05844f7a-4c94-4dcc-898c-d525829d719f	2025-04-15 00:00:00	18:00	mateus	Bruno	558199987381@s.whatsapp.net	2025-04-15 00:00:00	Cabelo
cf64d6b3-2172-4e5d-a690-6ae8555dd83b	2025-04-15 00:00:00	13:20	Lucas corte e luzes 	Wallyson	local	2025-04-15 10:34:46.576	Cabelo
6ae2da7a-ca17-4f05-a810-8a451e5d4eac	2025-04-15 00:00:00	10:20	kaio vinicius silva de carvalho	Bruno	558197839047@s.whatsapp.net	2025-04-15 00:00:00	Cabelo
f6205135-289f-4283-b454-ebba38921932	2025-04-18 00:00:00	09:00	Indisponivel	Bruno	Indisponivel	2025-04-15 10:37:53.347	
2a9d782e-fbbc-4e91-8948-eb702719ce76	2025-04-18 00:00:00	09:40	Indisponivel	Bruno	Indisponivel	2025-04-15 10:37:53.437	
3e19ee44-0616-4f5d-9fca-a91e998fadab	2025-04-18 00:00:00	10:20	Indisponivel	Bruno	Indisponivel	2025-04-15 10:37:53.468	
a2e91403-e6b9-44e4-aab2-5b750c6f5a8f	2025-04-18 00:00:00	11:00	Indisponivel	Bruno	Indisponivel	2025-04-15 10:37:53.499	
53f48af1-b929-4862-aa94-164eb8122390	2025-04-18 00:00:00	11:40	Indisponivel	Bruno	Indisponivel	2025-04-15 10:37:53.529	
850666dd-aeb1-415c-8265-c07903d72b07	2025-04-18 00:00:00	13:20	Indisponivel	Bruno	Indisponivel	2025-04-15 10:37:53.561	
d7e83b09-fc91-4bef-98cb-2c90369cd77f	2025-04-18 00:00:00	14:00	Indisponivel	Bruno	Indisponivel	2025-04-15 10:37:53.591	
6363e37b-1024-4cd3-8cdb-af67fa957700	2025-04-18 00:00:00	14:40	Indisponivel	Bruno	Indisponivel	2025-04-15 10:37:53.622	
9974186b-0c93-4851-addd-c40222134ba5	2025-04-18 00:00:00	15:20	Indisponivel	Bruno	Indisponivel	2025-04-15 10:37:53.653	
10048242-b9ca-4cbf-9b00-e3d33ec0cc34	2025-04-18 00:00:00	16:00	Indisponivel	Bruno	Indisponivel	2025-04-15 10:37:53.696	
86b1a571-cd15-4ce3-9465-fa18930a1174	2025-04-18 00:00:00	16:40	Indisponivel	Bruno	Indisponivel	2025-04-15 10:37:53.727	
1f10fc56-b760-44bd-ac9c-0e4260aa231b	2025-04-18 00:00:00	17:20	Indisponivel	Bruno	Indisponivel	2025-04-15 10:37:53.757	
60c866ec-b438-407c-bad1-9d46af898363	2025-04-18 00:00:00	18:00	Indisponivel	Bruno	Indisponivel	2025-04-15 10:37:53.791	
f862b5ab-69f3-4cd8-85d0-e3ed802ffb49	2025-04-18 00:00:00	18:40	Indisponivel	Bruno	Indisponivel	2025-04-15 10:37:53.822	
cfb37d82-f4a5-4971-9935-3e8aa9106ed0	2025-04-18 00:00:00	19:20	Indisponivel	Bruno	Indisponivel	2025-04-15 10:37:53.852	
e1eb9591-153e-425a-afac-457d88b133ca	2025-04-18 00:00:00	20:00	Indisponivel	Bruno	Indisponivel	2025-04-15 10:37:53.883	
4997e5b5-0e1c-4c13-9c58-bd7113762706	2025-04-19 00:00:00	13:20	allef ryan	Bruno	558195740243@s.whatsapp.net	2025-04-15 00:00:00	Cabelo
ab37e1a4-5ba8-415c-9247-711ce1c2d4da	2025-04-21 00:00:00	09:40	Indisponivel	Bruno	Indisponivel	2025-04-15 10:59:25.42	
bf5cf716-cb23-4c05-84d8-7dd556b49be6	2025-04-21 00:00:00	10:20	Indisponivel	Bruno	Indisponivel	2025-04-15 10:59:25.51	
08d84ff5-8817-4233-b596-ef380bb7210d	2025-04-21 00:00:00	11:00	Indisponivel	Bruno	Indisponivel	2025-04-15 10:59:25.542	
b5394859-b99c-4b03-b365-ae3740c3221f	2025-04-21 00:00:00	11:40	Indisponivel	Bruno	Indisponivel	2025-04-15 10:59:25.575	
77cc05b1-fe44-4184-ba46-2326de1ed9b0	2025-04-21 00:00:00	13:20	Indisponivel	Bruno	Indisponivel	2025-04-15 10:59:25.607	
fe65b9f2-d8ea-46e5-9e1d-18f40bbf0591	2025-04-21 00:00:00	14:00	Indisponivel	Bruno	Indisponivel	2025-04-15 10:59:25.639	
827e905a-34d7-4134-a0f7-a72d112cb310	2025-04-21 00:00:00	14:40	Indisponivel	Bruno	Indisponivel	2025-04-15 10:59:25.669	
24fbed0f-1fb5-4302-9ec4-b4cf0849149b	2025-04-21 00:00:00	15:20	Indisponivel	Bruno	Indisponivel	2025-04-15 10:59:25.7	
b4758d96-db54-4503-8b88-4ee4593aa6bc	2025-04-21 00:00:00	16:00	Indisponivel	Bruno	Indisponivel	2025-04-15 10:59:25.73	
0e17362c-1adb-4f9d-ad3b-5748cb74459c	2025-04-21 00:00:00	16:40	Indisponivel	Bruno	Indisponivel	2025-04-15 10:59:25.76	
cedb63a2-b12c-4243-a1f0-14da50c49cc9	2025-04-21 00:00:00	17:20	Indisponivel	Bruno	Indisponivel	2025-04-15 10:59:25.791	
55a6e3a3-debb-482f-a96a-e8511266b419	2025-04-21 00:00:00	18:00	Indisponivel	Bruno	Indisponivel	2025-04-15 10:59:25.821	
90459864-2223-4e6d-a288-dd892c5a3b8b	2025-04-21 00:00:00	18:40	Indisponivel	Bruno	Indisponivel	2025-04-15 10:59:25.851	
0b484fc5-de60-4a5f-9f1d-556b641b3237	2025-04-15 00:00:00	17:20	erick	Wallyson	558199045127@s.whatsapp.net	2025-04-15 00:00:00	Cabelo
2dd77b45-dc20-47ee-9b6c-16ac3f5ee952	2025-04-16 00:00:00	16:40	Carlos 	Wallyson	local	2025-04-15 13:21:36.698	Cabelo
df836fe7-3a0a-45f2-9fb9-4ffd79cf01c5	2025-04-22 00:00:00	18:00	Vinicius 	Wallyson	local	2025-04-15 13:22:33.922	Cabelo
e850d184-b34c-4f5e-84fd-4d4d4fae031e	2025-04-19 00:00:00	10:00	maurycio	Bruno	558197162890@s.whatsapp.net	2025-04-15 00:00:00	Cabelo+Sobrancelha
41d978fc-e3b1-4e4a-becf-369f970a2a74	2025-04-18 00:00:00	08:00	Indisponivel	Wallyson	Indisponivel	2025-04-15 14:54:50.568	
410d9fc2-c650-4e39-86b0-d912a894c7cb	2025-04-18 00:00:00	08:40	Indisponivel	Wallyson	Indisponivel	2025-04-15 14:54:51.033	
8aab35f0-e091-4238-83bb-744932d92cf7	2025-04-18 00:00:00	09:20	Indisponivel	Wallyson	Indisponivel	2025-04-15 14:54:51.064	
d7947484-0060-4977-88da-d0a698dbf05a	2025-04-18 00:00:00	10:00	Indisponivel	Wallyson	Indisponivel	2025-04-15 14:54:51.096	
77771d3b-bbfb-451d-83ea-171881bc99f7	2025-04-18 00:00:00	10:40	Indisponivel	Wallyson	Indisponivel	2025-04-15 14:54:51.127	
05acd227-b8d8-4ff0-b437-7f6b826531be	2025-04-18 00:00:00	11:20	Indisponivel	Wallyson	Indisponivel	2025-04-15 14:54:51.159	
af212b68-b910-40ba-81a1-ee0730099a17	2025-04-18 00:00:00	13:20	Indisponivel	Wallyson	Indisponivel	2025-04-15 14:54:51.191	
0a0f5cdf-2f2d-4242-8b78-b25d564cd7b8	2025-04-18 00:00:00	14:00	Indisponivel	Wallyson	Indisponivel	2025-04-15 14:54:51.221	
cf8e7faa-74bb-4a69-94ce-faf46fe02aed	2025-04-18 00:00:00	14:40	Indisponivel	Wallyson	Indisponivel	2025-04-15 14:54:51.254	
513a5742-2b16-4401-b7f4-9bf9bb65edaf	2025-04-18 00:00:00	15:20	Indisponivel	Wallyson	Indisponivel	2025-04-15 14:54:51.292	
cf4b9223-b269-49ee-82fd-69f22a78cb3d	2025-04-18 00:00:00	16:00	Indisponivel	Wallyson	Indisponivel	2025-04-15 14:54:51.329	
9d02ed5c-54db-4a10-890b-3a5ba6f1f89c	2025-04-18 00:00:00	16:40	Indisponivel	Wallyson	Indisponivel	2025-04-15 14:54:51.363	
29efeab1-666c-4e31-8ef7-a6b46dbf88ee	2025-04-18 00:00:00	17:20	Indisponivel	Wallyson	Indisponivel	2025-04-15 14:54:51.393	
4e835966-9447-487d-ba61-a1a8f2c697cb	2025-04-18 00:00:00	18:00	Indisponivel	Wallyson	Indisponivel	2025-04-15 14:54:51.424	
aff6dfc3-1a20-4c47-9e94-849a46b2b823	2025-04-18 00:00:00	18:40	Indisponivel	Wallyson	Indisponivel	2025-04-15 14:54:51.456	
14211edb-ea8e-45d2-a85f-f30473534fc1	2025-04-18 00:00:00	19:20	Indisponivel	Wallyson	Indisponivel	2025-04-15 14:54:51.488	
4e2d392c-c1d8-4747-a5b9-7df0a78ae796	2025-04-18 00:00:00	20:00	Indisponivel	Wallyson	Indisponivel	2025-04-15 14:54:51.52	
8e80a3ca-2bae-46a6-b139-32fba76194aa	2025-04-19 00:00:00	13:20	Indisponivel	Wallyson	Indisponivel	2025-04-15 14:55:20.265	
8f69da0c-b074-4d58-a552-deae5ad103ec	2025-04-19 00:00:00	14:00	Indisponivel	Wallyson	Indisponivel	2025-04-15 14:55:20.328	
78d27e99-67b5-4c98-9b1d-99cec2ffde7b	2025-04-19 00:00:00	14:40	Indisponivel	Wallyson	Indisponivel	2025-04-15 14:55:20.361	
97b22cc6-d4f9-4055-8e04-22a7766fb05b	2025-04-19 00:00:00	15:20	Indisponivel	Wallyson	Indisponivel	2025-04-15 14:55:20.394	
6c483861-e7b4-4ec0-bdf5-eead67a34800	2025-04-19 00:00:00	16:00	Indisponivel	Wallyson	Indisponivel	2025-04-15 14:55:20.426	
004432fe-adfa-4466-b983-db86656e251f	2025-04-19 00:00:00	16:40	Indisponivel	Wallyson	Indisponivel	2025-04-15 14:55:20.458	
834b7322-104b-49b6-99ff-94c632573f10	2025-04-19 00:00:00	17:20	Indisponivel	Wallyson	Indisponivel	2025-04-15 14:55:20.489	
fcf5543f-807a-4fa7-a6e1-b02d8916577c	2025-04-19 00:00:00	18:00	Indisponivel	Wallyson	Indisponivel	2025-04-15 14:55:20.519	
b0a3c35a-15b9-4721-b712-2cf0adf90197	2025-04-21 00:00:00	09:00	Indisponivel	Wallyson	Indisponivel	2025-04-15 14:55:38.376	
6d7266d8-61be-413d-9daf-8f7952b60316	2025-04-21 00:00:00	09:40	Indisponivel	Wallyson	Indisponivel	2025-04-15 14:55:38.436	
489ae5e5-395b-4c4e-873d-c45f9e70d916	2025-04-21 00:00:00	10:20	Indisponivel	Wallyson	Indisponivel	2025-04-15 14:55:38.467	
ff3a9bf9-f36b-44f5-bd1d-d2c80ace7db5	2025-04-21 00:00:00	11:00	Indisponivel	Wallyson	Indisponivel	2025-04-15 14:55:38.5	
29696d59-eff6-46df-886c-a2725c5daef3	2025-04-21 00:00:00	11:40	Indisponivel	Wallyson	Indisponivel	2025-04-15 14:55:38.531	
308462fc-6909-4bb8-9166-106f148bcefc	2025-04-21 00:00:00	13:20	Indisponivel	Wallyson	Indisponivel	2025-04-15 14:55:38.562	
49c553b1-e2ab-48f5-901a-11fc99057223	2025-04-21 00:00:00	14:00	Indisponivel	Wallyson	Indisponivel	2025-04-15 14:55:38.595	
cdbcacd8-d678-492c-a302-41c32c2dbd42	2025-04-21 00:00:00	14:40	Indisponivel	Wallyson	Indisponivel	2025-04-15 14:55:38.626	
d02394c1-82f8-433f-b86c-af03a8170ba7	2025-04-21 00:00:00	15:20	Indisponivel	Wallyson	Indisponivel	2025-04-15 14:55:38.657	
5fbe10a9-d25a-4abf-ad9d-65ade5a4c0ab	2025-04-21 00:00:00	16:00	Indisponivel	Wallyson	Indisponivel	2025-04-15 14:55:38.691	
455a30c3-fe84-441a-8cf3-de2e88cd21d1	2025-04-21 00:00:00	16:40	Indisponivel	Wallyson	Indisponivel	2025-04-15 14:55:38.722	
a8bb6479-867b-4814-8844-17390ed3aaa0	2025-04-21 00:00:00	17:20	Indisponivel	Wallyson	Indisponivel	2025-04-15 14:55:38.76	
bbd40d97-059e-482f-846b-38d82684e7a5	2025-04-21 00:00:00	18:00	Indisponivel	Wallyson	Indisponivel	2025-04-15 14:55:38.793	
6fbc8615-7328-44d2-8837-02cf934d8029	2025-04-21 00:00:00	18:40	Indisponivel	Wallyson	Indisponivel	2025-04-15 14:55:38.826	
d161298f-2266-482c-bb27-d452e1fb1d35	2025-04-17 00:00:00	17:20	marcos	Bruno	558197806162@s.whatsapp.net	2025-04-15 00:00:00	Cabelo+Sobrancelha
b292db30-9017-4d80-bc0a-670f915fdbf1	2025-04-17 00:00:00	16:00	vinicius	Bruno	558194296929@s.whatsapp.net	2025-04-15 00:00:00	Cabelo
3128db58-320a-4881-baef-09ce116d0325	2025-04-15 00:00:00	14:00	flávio	Bruno	5511992553806@s.whatsapp.net	2025-04-15 00:00:00	Cabelo
449160eb-9407-46f8-b78e-7e9ca7e99e4b	2025-04-15 00:00:00	18:40	samuel	Wallyson	558199862867@s.whatsapp.net	2025-04-15 00:00:00	Cabelo+Barba
7bd89936-49ca-4d57-820e-337c9d3ba448	2025-04-16 00:00:00	18:00	Leandro 	Wallyson	local	2025-04-15 16:30:27.962	Cabelo+Barba
912ae5b3-b0b7-4f0c-96f4-847e21594cfb	2025-04-17 00:00:00	18:00	Wendel 	Wallyson	local	2025-04-15 16:31:54.878	Cabelo
6972fadf-1148-47f1-97b6-35a996eec72b	2025-04-19 00:00:00	16:00	gabriel silva	Bruno	558171039700@s.whatsapp.net	2025-04-15 00:00:00	Cabelo+Sobrancelha
00618233-cf79-4c43-9b04-5f51fdf5ceb8	2025-04-17 00:00:00	15:20	rafael	Bruno	558188763249@s.whatsapp.net	2025-04-15 00:00:00	Cabelo
beab7e9c-a2e4-4165-b3d1-e30ad1ebbbea	2025-04-19 00:00:00	09:20	arthur sales	Bruno	558199775133@s.whatsapp.net	2025-04-15 00:00:00	Cabelo+Sobrancelha
18960026-00e0-456f-af97-f8d503e700cf	2025-04-19 00:00:00	12:00	ronnye	Wallyson	558198353903@s.whatsapp.net	2025-04-15 00:00:00	Cabelo
f4053e26-c763-4a74-95fe-72b15cb8c93e	2025-04-15 00:00:00	16:00	olá	Wallyson	558195156041@s.whatsapp.net	2025-04-15 00:00:00	Cabelo
a5fa9eb5-d74c-4caa-8b10-6c9a53d12aef	2025-04-19 00:00:00	12:00	asafe	Bruno	558171076971@s.whatsapp.net	2025-04-15 00:00:00	Cabelo
4d55d830-7669-479f-a1e7-4265a456142b	2025-04-19 00:00:00	10:40	moisés	Wallyson	558171076971@s.whatsapp.net	2025-04-15 00:00:00	Cabelo+Barba
0484034a-6d30-42a4-87f6-d5afa221d8b5	2025-04-17 00:00:00	09:00	ivisson melo shoes	Bruno	558197279446@s.whatsapp.net	2025-04-15 00:00:00	Cabelo+Sobrancelha
40a2c6a8-a81d-40d2-8058-b8cd6ecf831c	2025-04-17 00:00:00	09:40	andré leal	Bruno	558197273032@s.whatsapp.net	2025-04-15 00:00:00	Cabelo
8469830a-eaa1-4e54-8610-76984acb58d3	2025-04-16 00:00:00	09:00	Ronaldo	Bruno	local	2025-04-15 21:28:00.501	Cabelo
427e6433-3e85-456a-ae7b-c0a0eeb7af66	2025-04-16 00:00:00	09:40	joão pedro	Bruno	558197967548@s.whatsapp.net	2025-04-15 00:00:00	Cabelo
fc2910f3-3814-4e93-bb3f-92182bc061bf	2025-04-16 00:00:00	14:40	gabriel batista	Bruno	558194907895@s.whatsapp.net	2025-04-15 00:00:00	Cabelo
6a2f69f8-6d29-4e86-a34c-60fb559a6bf2	2025-04-22 00:00:00	09:00	paulo	Bruno	558199302136@s.whatsapp.net	2025-04-15 00:00:00	Cabelo
0d696173-8df9-4dfb-8857-fe6f6f41c18f	2025-04-19 00:00:00	14:00	joão lucas	Bruno	558189785404@s.whatsapp.net	2025-04-15 00:00:00	Cabelo+Sobrancelha
3b7a0565-c99d-43cd-96e9-d022e72e7acc	2025-04-19 00:00:00	16:40	daniel queiroz	Bruno	558181473848@s.whatsapp.net	2025-04-15 00:00:00	Cabelo
c8a89039-1a76-428f-9f11-708c2ef00d83	2025-04-17 00:00:00	14:40	pedro sérgio	Bruno	558197271391@s.whatsapp.net	2025-04-15 00:00:00	Cabelo+Sobrancelha
7a8583e6-9602-4aa9-8136-9b26ff2fcfa5	2025-04-19 00:00:00	17:20	Indisponível 	Bruno	local	2025-04-16 00:00:22.761	Cabelo
eb38ca7b-ff25-40ee-9867-77d7004eec58	2025-04-19 00:00:00	18:00	Indisponível 	Bruno	local	2025-04-16 00:00:36.528	Cabelo
f31599ed-302d-4a2a-8c0f-3d5f979ac091	2025-04-16 00:00:00	18:40	john	Wallyson	558197904314@s.whatsapp.net	2025-04-15 00:00:00	Cabelo+Barba
4492d3d4-8024-4c19-81fe-1e2c63580c28	2025-04-17 00:00:00	14:00	Emanoel 	Bruno	local	2025-04-16 10:20:40.776	Cabelo+Barba
d6ef9c2f-df60-455d-9d82-3969f6733783	2025-04-17 00:00:00	11:40	fredson	Bruno	558195204685@s.whatsapp.net	2025-04-16 00:00:00	Cabelo
f98cb438-5f8a-44d6-9f4c-703d0b375ff2	2025-04-16 00:00:00	10:40	Alan 	Wallyson	local	2025-04-16 12:22:08.044	Cabelo
24396722-a08e-4e84-a0d7-9bee9cafe9bd	2025-04-16 00:00:00	15:20	Pedro 	Wallyson	local	2025-04-16 12:25:00.49	Cabelo
3181df3a-e00a-4adc-ab47-f018a8f241d0	2025-04-16 00:00:00	13:20	Filho de Marcílio 	Wallyson	local	2025-04-16 12:31:47.232	Cabelo
ea4b0c09-b7d8-4ace-935f-7e180a9241b5	2025-04-17 00:00:00	18:40	Fabrício 	Wallyson	local	2025-04-16 13:12:09.962	Cabelo
da9ffc3c-46be-4ecf-af70-af68e974c3cb	2025-04-16 00:00:00	14:40	ryan	Wallyson	5511959620317@s.whatsapp.net	2025-04-16 00:00:00	Cabelo+Sobrancelha
d7ec5c4d-9792-4e1b-a364-c2b2e3445b51	2025-04-17 00:00:00	10:20	tarcísio	Bruno	558185887456@s.whatsapp.net	2025-04-16 00:00:00	Cabelo
e9961fe4-305b-466c-a553-a09f99d14f51	2025-04-16 00:00:00	15:20	joaquim medeiros	Bruno	558196049780@s.whatsapp.net	2025-04-16 00:00:00	Cabelo
9a4d0c91-d5a6-4ea9-8d92-032ab9f5a716	2025-04-17 00:00:00	16:40	Isaías 	Wallyson	local	2025-04-16 14:25:13.238	Cabelo
d06da584-9c91-49cd-80c4-27c13ad77831	2025-04-22 00:00:00	18:00	gago	Bruno	558195055274@s.whatsapp.net	2025-04-16 00:00:00	Cabelo+Sobrancelha
b3988099-7007-4f15-846f-24804b863ba4	2025-04-16 00:00:00	16:40	Eduardo Lins 	Bruno	local	2025-04-16 14:40:54.263	Cabelo
cd0594cf-7bd4-4d67-85f3-adc1a9942712	2025-04-22 00:00:00	13:20	marlon	Bruno	558185124815@s.whatsapp.net	2025-04-16 00:00:00	Cabelo
54c82862-1dc9-4f30-b1fd-b1b9bfdbaf57	2025-04-17 00:00:00	16:00	Bruno ( Fernanda )	Wallyson	local	2025-04-16 16:29:27.551	Cabelo
1f009aae-6839-4e7f-887f-8347c122c51d	2025-04-16 00:00:00	14:00	joão	Wallyson	558196485677@s.whatsapp.net	2025-04-16 00:00:00	Cabelo
20a7c749-cf08-49fc-898f-992cbc0199d9	2025-04-17 00:00:00	15:20	francisco	Wallyson	558182062970@s.whatsapp.net	2025-04-16 00:00:00	Cabelo
34c8ee94-be09-4d9d-bc38-a3997d4a26a7	2025-04-22 00:00:00	15:20	gabriel luiz	Bruno	558187145252@s.whatsapp.net	2025-04-16 00:00:00	Cabelo
1303c36a-d4de-48cb-a933-f3003421112f	2025-04-17 00:00:00	10:00	Igor 	Wallyson	local	2025-04-16 17:29:45.326	Cabelo
d6f58eeb-cd2a-4d5b-ad6f-baeee8b7cde5	2025-04-17 00:00:00	09:20	Jeferson 	Wallyson	local	2025-04-16 18:56:20.995	Cabelo
8200c292-e04c-4b35-8b82-2ee73a77ed91	2025-04-17 00:00:00	14:00	Lyaderson 	Wallyson	local	2025-04-16 19:39:43.006	Cabelo
45a36bfe-34f4-4ba8-b2e6-f309c1a40564	2025-04-19 00:00:00	15:20	Ocupado	Bruno	local	2025-04-16 20:43:24.869	Cabelo
c2cebc0b-ddb3-476d-b9a6-09636bd40157	2025-04-17 00:00:00	10:40	Kauan 	Wallyson	local	2025-04-16 21:12:47.4	Cabelo
7e32258c-795e-4e28-ba7b-fe9d857648c6	2025-04-17 00:00:00	14:40	Gelson 	Wallyson	local	2025-04-17 10:19:39.312	Cabelo
10f8638f-ba99-4b5b-98dc-352ed245ca2e	2025-04-17 00:00:00	13:20	Adegilson 	Wallyson	local	2025-04-17 12:01:34.603	Cabelo
cd606150-81c5-4884-ab2a-421ca4e2ba38	2025-04-23 00:00:00	11:40	henrique	Bruno	558182601936@s.whatsapp.net	2025-04-17 00:00:00	Cabelo
8d9c8d76-7d0f-48dd-9928-025b4ffad0d6	2025-04-22 00:00:00	18:40	gonzaga neto	Bruno	558198514795@s.whatsapp.net	2025-04-17 00:00:00	Cabelo
eaa023bc-faa7-4800-9efd-afc8a1324b5c	2025-04-26 00:00:00	13:20	Emanoel 	Bruno	local	2025-04-17 17:53:24.051	Cabelo+Barba
612d15bb-e3f3-4c11-a929-c44a431fcbe2	2025-05-05 00:00:00	17:20	george luiz	Bruno	558198592917@s.whatsapp.net	2025-04-17 00:00:00	Cabelo+Sobrancelha
54b70f93-b0de-426d-b1f1-b09d1a6aed53	2025-04-22 00:00:00	10:00	Wellington minha máquina 	Wallyson	local	2025-04-17 20:19:35.47	Cabelo
573755db-69b6-4e02-b57c-18e2735f754a	2025-04-22 00:00:00	11:00	Wellington botox 	Bruno	local	2025-04-17 20:22:28.398	Cabelo
5557693d-010e-4f35-8f0e-969238e8b833	2025-04-22 00:00:00	09:40	marcus vinícius	Bruno	558198507164@s.whatsapp.net	2025-04-17 00:00:00	Cabelo
7dc715e7-e039-4909-a944-8a1d3b8d9afc	2025-04-22 00:00:00	10:20	joão marcello	Bruno	558196393507@s.whatsapp.net	2025-04-17 00:00:00	Cabelo+Sobrancelha
cf3c63d0-0dd7-4c9f-ae39-66a2a0e10504	2025-04-28 00:00:00	18:00	cauê	Bruno	558197796167@s.whatsapp.net	2025-04-18 00:00:00	Cabelo
e15fd889-7864-4131-8d3e-90c042302262	2025-04-28 00:00:00	18:40	del alumínio	Bruno	558197796167@s.whatsapp.net	2025-04-18 00:00:00	Cabelo+Barba
0df1c777-d04d-4f7d-aba7-1a700e5cecdf	2025-04-22 00:00:00	11:20	horlean	Wallyson	558281363560@s.whatsapp.net	2025-04-18 00:00:00	Cabelo+Sobrancelha
6c3eb22b-43d9-41b1-a60f-cdc691d374b7	2025-04-23 00:00:00	16:00	gabriel	Wallyson	558198511903@s.whatsapp.net	2025-04-18 00:00:00	Cabelo
517edb91-ed11-4292-bcf2-f2bfb1318490	2025-04-25 00:00:00	14:00	weslley	Bruno	558197215641@s.whatsapp.net	2025-04-19 00:00:00	Cabelo
b22f8575-6c96-4fa0-b3c9-17c89c028d73	2025-04-26 00:00:00	16:40	osmar	Bruno	558196267018@s.whatsapp.net	2025-04-19 00:00:00	Cabelo
4fea1377-971e-4405-a39b-1aef5926fcc7	2025-04-22 00:00:00	18:40	Lucas Rogério 	Wallyson	local	2025-04-19 23:09:15.402	Cabelo
bd5672d9-a222-4c94-8b87-11c2be4baac9	2025-04-22 00:00:00	17:20	Kaue	Wallyson	local	2025-04-19 23:10:22.875	Cabelo
520ed349-654f-4cf7-9e71-83557ff9f407	2025-04-22 00:00:00	17:20	pedro henrique	Bruno	558199160082@s.whatsapp.net	2025-04-19 00:00:00	Cabelo
6c3fbddf-cbaf-423d-b2a2-030238f2f7d7	2025-04-25 00:00:00	11:00	kayque	Bruno	558197975570@s.whatsapp.net	2025-04-20 00:00:00	Cabelo
dae264bd-b1b6-4f3b-8e68-bdfe612abc91	2025-04-22 00:00:00	09:20	carlos	Wallyson	558192507833@s.whatsapp.net	2025-04-20 00:00:00	Cabelo
b8c5731f-47c1-4a2b-9619-6a85b93f10a8	2025-04-22 00:00:00	08:00	Pelada 	Wallyson	local	2025-04-20 21:23:39.227	Cabelo
ffc403bf-6a72-405e-bf12-79e98deda2be	2025-04-22 00:00:00	10:40	Nicolas 	Wallyson	local	2025-04-20 21:23:55.922	Cabelo
6c7cd720-302e-4f17-953e-356f728bdebf	2025-04-22 00:00:00	16:00	Dafnis 	Wallyson	local	2025-04-20 21:28:51.708	Cabelo
4a86dc88-027d-4378-a7df-b8fe1447a228	2025-04-22 00:00:00	08:40	Adaias 	Wallyson	local	2025-04-20 21:30:50.162	Cabelo
faf06a27-2d8c-4683-8d60-9e6ad3d1582c	2025-04-22 00:00:00	11:40	paulo henrique	Bruno	558174004953@s.whatsapp.net	2025-04-20 00:00:00	Cabelo+Sobrancelha
85f55f6f-e275-466b-a2e8-16959ca2ae41	2025-04-22 00:00:00	16:40	vinicius	Bruno	558195743981@s.whatsapp.net	2025-04-21 00:00:00	Cabelo
9909cf1f-3d27-40ee-b895-127ffd182cde	2025-04-26 00:00:00	16:00	heytor	Bruno	558197714625@s.whatsapp.net	2025-04-21 00:00:00	Cabelo+Barba
c68b5c9f-50b1-4dbb-be34-1140be024d31	2025-04-25 00:00:00	18:40	0	Bruno	558181486379@s.whatsapp.net	2025-04-21 00:00:00	Cabelo+Sobrancelha
4225d51d-7ff5-407a-9825-f0166393d007	2025-04-23 00:00:00	16:00	pedro augusto	Bruno	558171185174@s.whatsapp.net	2025-04-21 00:00:00	Cabelo
786a81c0-5e62-4c2c-850b-e396fd11abcd	2025-04-25 00:00:00	18:00	luiz	Bruno	558181486379@s.whatsapp.net	2025-04-21 00:00:00	Cabelo+Sobrancelha
c429e09e-dee4-4669-8020-bf903db865bb	2025-04-24 00:00:00	18:00	bruno	Bruno	558197349442@s.whatsapp.net	2025-04-21 00:00:00	Cabelo
65fc00ed-1215-4004-bc59-85a5bb1c40a7	2025-04-24 00:00:00	18:00	márcio	Wallyson	558197349442@s.whatsapp.net	2025-04-21 00:00:00	Cabelo
94f92b0c-21d6-4e14-bfc1-b54ab9308df6	2025-04-22 00:00:00	16:00	ataliba albuquerque	Bruno	558182671510@s.whatsapp.net	2025-04-21 00:00:00	Barba
7ab84512-a26a-4dfe-8475-a9e4e3207ff5	2025-04-23 00:00:00	08:00	Natan 	Wallyson	local	2025-04-21 18:03:25.442	Cabelo
8cf5c05a-04fa-4f27-bb4c-5ec0daa7f55a	2025-04-26 00:00:00	08:00	elysson	Bruno	558199697267@s.whatsapp.net	2025-04-21 00:00:00	Cabelo+Sobrancelha
7513824e-c2ec-4646-8ffc-4d49ed27229e	2025-04-23 00:00:00	18:40	denilson	Bruno	558197084296@s.whatsapp.net	2025-04-21 00:00:00	Barba
e1036e32-07b3-4d44-a58d-c5654881da67	2025-04-23 00:00:00	16:40	rhuan	Bruno	558195251500@s.whatsapp.net	2025-04-21 00:00:00	Cabelo+Sobrancelha
eb725dde-d09f-4d95-b31a-70be1e0f8d72	2025-04-22 00:00:00	16:40	breno	Wallyson	558198437880@s.whatsapp.net	2025-04-21 00:00:00	Cabelo+Sobrancelha
12c6587d-e8bb-45ad-88e4-4f660a120790	2025-04-22 00:00:00	14:00	Du bolo	Bruno	local	2025-04-21 23:59:10.733	Cabelo
b32107f5-42e0-40dd-9d58-fa47a6bfe6db	2025-04-23 00:00:00	18:00	Juninho compadre 	Wallyson	local	2025-04-22 01:12:41.516	Cabelo
f2395a85-754b-4a34-9530-d9110e150adf	2025-04-23 00:00:00	17:20	J.marcos 	Wallyson	local	2025-04-22 01:16:53.441	Cabelo+Barba
187c3e6e-b798-40d2-938f-8cf17cc568b0	2025-04-25 00:00:00	17:20	renan	Bruno	558199282002@s.whatsapp.net	2025-04-21 00:00:00	Cabelo
78bb0126-02ca-4e31-99ee-185eb4eb856c	2025-04-24 00:00:00	16:40	mateus b	Bruno	558197626344@s.whatsapp.net	2025-04-21 00:00:00	Cabelo+Sobrancelha
a6a4479f-6309-4a81-995e-30bb3ffbaa89	2025-04-23 00:00:00	10:20	emídio arruda	Bruno	558181606802@s.whatsapp.net	2025-04-22 00:00:00	Cabelo
03e1854d-4a7e-4141-a3b7-ecec9da4ba7e	2025-04-23 00:00:00	18:00	Andre	Bruno	local	2025-04-22 10:41:57.399	Cabelo+Sobrancelha
5afe64fb-0db9-4699-a7d1-cd5c23847641	2025-04-23 00:00:00	10:00	jose arthur	Wallyson	558194257577@s.whatsapp.net	2025-04-22 00:00:00	Cabelo
73a0cdbd-6a9e-4ece-802b-871ef410a7a0	2025-04-22 00:00:00	15:20	Érika 	Wallyson	local	2025-04-22 11:51:53.183	Cabelo
61595af4-5331-4895-a3a4-d9c9e60fbf21	2025-04-24 00:00:00	13:20	matheus lima	Bruno	558199670970@s.whatsapp.net	2025-04-22 00:00:00	Cabelo+Sobrancelha
fa0e5e21-4152-40e8-95e7-f68c2ef89a22	2025-04-25 00:00:00	16:00	marcos rodrigues	Bruno	558196681292@s.whatsapp.net	2025-04-22 00:00:00	Cabelo
a5513862-dd2d-4ad7-81ce-e611bc912c8b	2025-04-25 00:00:00	16:00	Ruan 	Wallyson	local	2025-04-22 12:44:11.469	Cabelo
2b3d8146-abeb-497e-8bb9-b5bc02d7ba66	2025-04-25 00:00:00	19:20	fernando nutri smart	Bruno	558199948217@s.whatsapp.net	2025-04-22 00:00:00	Cabelo
1dabe340-7602-4bf4-a77c-4a6d5a248f68	2025-04-24 00:00:00	16:00	matheus	Bruno	558196073942@s.whatsapp.net	2025-04-22 00:00:00	Cabelo+Barba
f0a92cdb-ac40-4c38-a5ca-911460bdd315	2025-04-25 00:00:00	09:40	livio	Bruno	558195436268@s.whatsapp.net	2025-04-22 00:00:00	Cabelo+Barba
e9601f37-64af-4609-abb0-1f758145ae27	2025-04-23 00:00:00	17:20	barbosa.	Bruno	558188938658@s.whatsapp.net	2025-04-22 00:00:00	Cabelo
16628793-3c93-41c3-b990-dd3fe9170a98	2025-04-25 00:00:00	10:20	wanderson	Bruno	558179003193@s.whatsapp.net	2025-04-22 00:00:00	Cabelo
45ce8562-e8a0-43d6-acdb-267d04fdf197	2025-04-22 00:00:00	13:20	Marcado	Wallyson	local	2025-04-22 15:26:37.242	Cabelo
a9c27a54-5d3d-4356-a89c-9d35b6148b8c	2025-04-22 00:00:00	14:00	Kayke filho de Mazinho 	Wallyson	local	2025-04-22 15:27:08.096	Cabelo
530dd1da-0f2b-47a4-9ded-010a088b9f48	2025-04-24 00:00:00	08:00	Rubens 	Wallyson	local	2025-04-22 15:30:08.483	Cabelo
7affe2a0-b84d-43cb-b96e-79ec5c175403	2025-04-23 00:00:00	11:20	Kayke 	Wallyson	local	2025-04-22 15:30:25.705	Cabelo
68397788-2909-47ef-a95c-78e6e2ce9405	2025-04-22 00:00:00	14:40	wellington	Wallyson	558197128046@s.whatsapp.net	2025-04-22 00:00:00	Cabelo+Barba
fac45e37-ae2d-4e27-be74-d2f0fd361b4e	2025-04-26 00:00:00	14:40	aryel emanoel	Bruno	558199124476@s.whatsapp.net	2025-04-22 00:00:00	Cabelo
e618d5dd-d47b-4530-b947-d6580534337e	2025-04-26 00:00:00	15:20	manoel josé	Bruno	558199124476@s.whatsapp.net	2025-04-22 00:00:00	Cabelo
0b85578d-7d9e-461a-9662-f5363c6d3689	2025-04-23 00:00:00	15:20	william gabriel	Bruno	558198087356@s.whatsapp.net	2025-04-22 00:00:00	Cabelo
3b288b48-a7df-4a93-ac4d-f0de8714a0e2	2025-04-24 00:00:00	14:40	Uanderson botox 	Bruno	local	2025-04-22 16:44:04.071	Cabelo
37edb408-4af2-479e-83f9-e90af85c0ad2	2025-04-24 00:00:00	14:00	Uanderson 	Wallyson	local	2025-04-22 16:45:03.093	Cabelo
8eefec2e-51ef-4faa-997c-18786b009efd	2025-04-24 00:00:00	14:40	Irmão de wanderson 	Wallyson	local	2025-04-22 16:45:39.044	Cabelo
6b0f40dd-f5a5-4a9b-861c-ecc720225eb5	2025-04-23 00:00:00	11:00	andré	Bruno	558198646935@s.whatsapp.net	2025-04-22 00:00:00	Cabelo+Sobrancelha
84e762aa-16c3-47b0-9eb8-87d816d1bd52	2025-04-22 00:00:00	14:40	0	Bruno	558182224217@s.whatsapp.net	2025-04-22 00:00:00	Cabelo
41d51885-18c3-45e5-8ff5-f1e60cc7a4c5	2025-04-23 00:00:00	14:40	joão rommel	Bruno	558182224217@s.whatsapp.net	2025-04-22 00:00:00	Cabelo
2ed18123-5272-4a71-b8b0-e20c74407f22	2025-05-23 00:00:00	09:20	pedro	Wallyson	558181362230@s.whatsapp.net	2025-04-22 00:00:00	Cabelo
8df597b0-40df-454a-bc5c-47561baae623	2025-04-24 00:00:00	14:00	romerio	Bruno	558198627331@s.whatsapp.net	2025-04-22 00:00:00	Cabelo+Barba
6e2ddcfb-f2b1-4739-9beb-602b0d14a853	2025-04-26 00:00:00	12:00	Breno	Bruno	local	2025-04-22 20:02:12.001	Cabelo
ac1d24ae-1405-4e80-a198-a8878380558f	2025-04-25 00:00:00	09:00	anderson	Bruno	558198694494@s.whatsapp.net	2025-04-22 00:00:00	Cabelo
0266f498-7efe-47d1-ba2a-a784a0ca0f02	2025-04-26 00:00:00	09:20	erick apolloni	Bruno	558197051743@s.whatsapp.net	2025-04-22 00:00:00	Cabelo
f69f127a-4e3c-4594-8341-436102180a45	2025-04-24 00:00:00	18:40	matheus	Bruno	558197941830@s.whatsapp.net	2025-04-22 00:00:00	Cabelo
ae155706-e5fa-4d69-acf0-82d4fa326448	2025-04-25 00:00:00	14:40	Alyson free shopping 	Bruno	local	2025-04-22 20:36:47.708	Cabelo+Barba
4def72ad-4119-4445-9ac4-0c6b7d71f578	2025-04-23 00:00:00	09:00	vinicius	Bruno	558195743981@s.whatsapp.net	2025-04-22 00:00:00	Cabelo
ece9e955-4891-4e94-aec6-87d439cfde17	2025-04-23 00:00:00	18:40	Eudes 	Wallyson	local	2025-04-22 21:45:28.682	Cabelo
4de3396c-e837-4951-bc63-513adad3313e	2025-04-23 00:00:00	08:40	mayrlon	Wallyson	558196600679@s.whatsapp.net	2025-04-22 00:00:00	Cabelo+Sobrancelha
4d7bb484-f7d2-4e36-9415-e08e352cc399	2025-04-24 00:00:00	15:20	arthur e nilton	Bruno	558199442297@s.whatsapp.net	2025-04-22 00:00:00	Cabelo
3fff203f-8b01-419c-b8e4-5d07db50e311	2025-04-25 00:00:00	20:00	sid	Bruno	558191536718@s.whatsapp.net	2025-04-22 00:00:00	Cabelo+Sobrancelha
96caf9ed-5539-48ff-94a9-12500cfffb81	2025-04-30 00:00:00	18:00	joão nycolas	Wallyson	558195129087@s.whatsapp.net	2025-04-22 00:00:00	Cabelo
35ab17f2-461d-43c0-979c-00af396b4065	2025-04-23 00:00:00	16:40	jorge luiz	Wallyson	558199658478@s.whatsapp.net	2025-04-23 00:00:00	Cabelo+Sobrancelha
7630aaf9-fe11-40df-8476-eef23f4ca736	2025-04-26 00:00:00	14:00	gabriel	Bruno	558192417684@s.whatsapp.net	2025-04-23 00:00:00	Cabelo+Sobrancelha
fe9b00bb-8eea-4261-b2aa-5dd7a70c2282	2025-04-24 00:00:00	17:20	Kaio 	Wallyson	local	2025-04-23 10:19:45.664	Cabelo
0738c8a6-eda1-4b49-be58-b129ecf79c33	2025-04-24 00:00:00	18:40	Paulo 	Wallyson	local	2025-04-23 10:21:45.354	Cabelo
81f0509e-9ea8-4b45-b8a7-12819eb34a9f	2025-04-25 00:00:00	11:40	matheus	Bruno	558199843332@s.whatsapp.net	2025-04-23 00:00:00	Cabelo
8e4ad332-8b60-492d-82ae-fc3dab4ca372	2025-04-23 00:00:00	09:20	Natan 	Wallyson	local	2025-04-23 11:32:03.687	Cabelo
94492e2e-7172-42cd-8b97-9398d017f393	2025-04-23 00:00:00	14:00	antônio medeiros frança lins	Bruno	558171024799@s.whatsapp.net	2025-04-23 00:00:00	Cabelo+Sobrancelha
37425534-ee22-42a8-882f-a5e42320793c	2025-04-26 00:00:00	17:20	Júnior umari 	Bruno	local	2025-04-23 12:23:57.36	Cabelo
666d57ab-5924-4626-810e-9b0268ffccb1	2025-04-24 00:00:00	09:20	joão emanuel	Wallyson	558199715446@s.whatsapp.net	2025-04-23 00:00:00	Cabelo
d1ab5d79-d993-4e50-8aaa-2218c686fefc	2025-05-03 00:00:00	14:40	maicon	Bruno	558194686969@s.whatsapp.net	2025-04-23 00:00:00	Cabelo
78fc14ea-b36c-4ff5-b632-dc67ac6e2ccc	2025-04-26 00:00:00	18:00	eduardo	Bruno	558194297236@s.whatsapp.net	2025-04-23 00:00:00	Cabelo+Barba
6e2aea8b-bef3-4e8f-904e-3f0e6c6af011	2025-04-24 00:00:00	11:40	andrew	Bruno	558198694494@s.whatsapp.net	2025-04-23 00:00:00	Cabelo
9be4c0d6-0079-49a4-a3e1-5f6b7a7466fd	2025-04-24 00:00:00	09:00	Márcia 	Bruno	local	2025-04-23 15:18:21.585	Cabelo
17f8a63a-2b1c-48f8-90da-515bd8f568e4	2025-04-30 00:00:00	11:00	roberto guedes	Bruno	558198028971@s.whatsapp.net	2025-04-23 00:00:00	Cabelo
cd59b2c6-1080-475d-9a7c-dae2f2ad9738	2025-04-25 00:00:00	18:00	noah	Wallyson	558196533335@s.whatsapp.net	2025-04-23 00:00:00	Cabelo
1d1932d2-5510-4ce4-8c8b-a7603e073c32	2025-05-17 00:00:00	15:20	roberto guedes	Bruno	558198028971@s.whatsapp.net	2025-04-23 00:00:00	Cabelo
50693278-250d-4492-b873-511235c48a6b	2025-04-24 00:00:00	16:40	Arlindo Alexandre 	Wallyson	local	2025-04-23 17:06:31.788	Cabelo+Barba
07747877-5033-441a-a2f2-fd6c5f1e54bb	2025-04-24 00:00:00	11:20	Valmir 	Wallyson	local	2025-04-23 18:05:51.599	Cabelo+Barba
52fa1904-4f20-435e-96dc-875fe6f92eab	2025-04-24 00:00:00	10:00	Alex 	Wallyson	local	2025-04-23 19:28:24.854	Cabelo+Barba
21d68209-0ea6-4b77-9b25-426c5c21ed0e	2025-04-24 00:00:00	16:00	Ítalo 	Wallyson	local	2025-04-23 19:38:42.268	Cabelo
29d6e6eb-f897-418e-a86b-b5b855aabc97	2025-04-25 00:00:00	16:40	Lucas ( Bruna ) 	Bruno	local	2025-04-23 19:45:42.473	Cabelo
cb483058-bf64-4899-9693-8011e38c9922	2025-04-25 00:00:00	15:20	joão	Bruno	558196050355@s.whatsapp.net	2025-04-23 00:00:00	Cabelo
d883f2b8-8328-4f14-b527-a3552e4891a5	2025-04-26 00:00:00	10:00	serginhoooo	Bruno	558195354617@s.whatsapp.net	2025-04-23 00:00:00	Cabelo+Sobrancelha
7ea7cdfd-4b9f-496d-898f-1b64f9c446f5	2025-04-24 00:00:00	11:00	ian	Bruno	558196739228@s.whatsapp.net	2025-04-23 00:00:00	Cabelo
1295f96d-383e-4514-a9ef-63ca059782ce	2025-04-24 00:00:00	09:40	ataliba albuquerque	Bruno	558182671510@s.whatsapp.net	2025-04-23 00:00:00	Barba
881bbe06-e1f6-452f-976f-045628abae06	2025-04-24 00:00:00	09:40	tassio melo	Bruno	558195002501@s.whatsapp.net	2025-04-23 00:00:00	Cabelo+Barba
8a4a63a0-2f04-4743-abf0-039f15455dce	2025-04-24 00:00:00	15:20	luiz henrique	Wallyson	558189496855@s.whatsapp.net	2025-04-23 00:00:00	Cabelo
a1b031c2-84af-425d-9648-677f4a84ee0c	2025-04-25 00:00:00	13:20	joão	Bruno	558196050355@s.whatsapp.net	2025-04-23 00:00:00	Cabelo
978b2f87-0d23-45e7-aac1-e43e01d75513	2025-04-26 00:00:00	10:40	ryan valério	Bruno	558181779060@s.whatsapp.net	2025-04-23 00:00:00	Cabelo+Barba
8356c018-b578-45ae-94a2-2c6c9958c00d	2025-04-26 00:00:00	11:20	bruno	Bruno	558189873832@s.whatsapp.net	2025-04-24 00:00:00	Cabelo+Barba
af1e5aff-dc94-4a7b-8153-b8e98f0c1dc8	2025-04-24 00:00:00	08:40	Rubens 	Wallyson	local	2025-04-24 10:58:00.651	Cabelo
ff13ada1-9463-433f-8e51-50c293eaf77d	2025-04-26 00:00:00	10:00	Cleiton 	Wallyson	local	2025-04-24 13:58:32.956	Cabelo
dc3a8f27-a276-4d95-ab3f-f9d5956982d6	2025-05-02 00:00:00	09:00	renan silva	Bruno	558199185971@s.whatsapp.net	2025-04-24 00:00:00	Cabelo
ecdea59e-4425-4176-b3ab-8a8bf54368bd	2025-04-25 00:00:00	13:20	João Mendes 	Wallyson	local	2025-04-24 16:03:05.769	Cabelo+Barba
604943f1-f622-4ccc-80b4-652fec3ec234	2025-04-28 00:00:00	18:40	márcio	Wallyson	558199069172@s.whatsapp.net	2025-04-24 00:00:00	Cabelo
5e7de8e8-df98-48fb-8409-188b6df9d105	2025-04-25 00:00:00	08:40	Ze neto 	Wallyson	local	2025-04-24 20:28:27.598	Cabelo
b80bc559-b576-4a0b-aae2-d3f0ee73c821	2025-04-25 00:00:00	08:00	Marcado 	Wallyson	local	2025-04-24 20:29:49.112	Cabelo
65bc736b-35ea-4cac-bd89-3656dfdbf709	2025-04-29 00:00:00	09:20	cláudio henrique	Wallyson	558188482085@s.whatsapp.net	2025-04-24 00:00:00	Cabelo
caa53243-faa9-45e8-b755-d6ec35a00c23	2025-04-25 00:00:00	17:20	wesley	Wallyson	558199817133@s.whatsapp.net	2025-04-24 00:00:00	Cabelo
c546752d-161b-4fbf-ab50-fe7809b483c9	2025-04-26 00:00:00	14:00	felipe	Wallyson	558181451150@s.whatsapp.net	2025-04-24 00:00:00	Cabelo+Sobrancelha
34568538-a248-41d0-acf9-0b483b6e28da	2025-04-26 00:00:00	13:20	marcos elielson	Wallyson	558195356602@s.whatsapp.net	2025-04-24 00:00:00	Cabelo+Barba
8602bde6-7061-439e-9a37-ddc50a87ac51	2025-04-26 00:00:00	14:40	mario	Wallyson	558381367304@s.whatsapp.net	2025-04-24 00:00:00	Cabelo
8a0238f3-bda2-4a09-9769-3841f3087422	2025-04-28 00:00:00	16:00	breno	Bruno	558197349442@s.whatsapp.net	2025-04-24 00:00:00	Cabelo
5b230d33-d512-494b-b375-123c56904035	2025-04-25 00:00:00	16:40	Marcílio 	Wallyson	local	2025-04-24 23:00:34.826	Cabelo
84ac7bc3-57e5-4c70-9072-937380096b47	2025-04-26 00:00:00	15:20	Allysson 	Wallyson	local	2025-04-24 23:02:21.762	Cabelo
914deb96-630e-4c5c-8aa7-220994f8ca0b	2025-04-25 00:00:00	15:20	Kaio 	Wallyson	local	2025-04-24 23:05:25.491	Cabelo
5527cf6c-2817-4bb3-99c3-b24fa0282d49	2025-04-25 00:00:00	18:40	juininho	Wallyson	558194082765@s.whatsapp.net	2025-04-24 00:00:00	Cabelo
6890d7e3-4bd0-450e-ad8f-883680825369	2025-04-25 00:00:00	19:20	miguel	Wallyson	558194082765@s.whatsapp.net	2025-04-24 00:00:00	Cabelo
c503da49-49b4-414a-a550-ca64a5872104	2025-04-26 00:00:00	09:20	mathias lima	Wallyson	558187494403@s.whatsapp.net	2025-04-24 00:00:00	Cabelo+Barba
4cf50b90-a2ff-4fe1-9522-3559583d25f0	2025-06-09 00:00:00	11:00	roberto guedes	Bruno	558198028971@s.whatsapp.net	2025-04-24 00:00:00	Cabelo
51e523a1-1b68-4a3c-bd02-5be15353eb3c	2025-06-20 00:00:00	13:20	roberto guedes	Bruno	558198028971@s.whatsapp.net	2025-04-24 00:00:00	Cabelo
c7c57eff-8a89-4f99-9363-2cc5043ee7e9	2025-06-27 00:00:00	11:00	roberto guedes	Bruno	558198028971@s.whatsapp.net	2025-04-24 00:00:00	Cabelo
afde033f-356e-4d38-b8ea-a2b9677705f5	2025-04-28 00:00:00	16:40	Filho de Júnior Santa Maria 	Bruno	local	2025-04-25 01:15:17.882	Cabelo
64b744b6-8289-4f79-83af-dd31ef416f9a	2025-06-20 00:00:00	08:00	eudes máquina	Wallyson	558184793136@s.whatsapp.net	2025-04-24 00:00:00	Cabelo
0b191d0e-013a-49b7-bf6a-99ae70e219c5	2025-06-20 00:00:00	16:00	ullisses	Bruno	558182686327@s.whatsapp.net	2025-04-25 00:00:00	Cabelo
29de27b2-3220-4f72-a4ff-4e9d7e70c485	2025-04-26 00:00:00	16:00	calebe	Wallyson	558196987419@s.whatsapp.net	2025-04-25 00:00:00	Cabelo
2d1685e1-239a-4623-86a0-29f524d01213	2025-04-28 00:00:00	10:20	zaldinho	Bruno	558198591039@s.whatsapp.net	2025-04-25 00:00:00	Cabelo
3598cb3b-77f0-4670-a1de-7d4d3a9c29d4	2025-06-18 00:00:00	09:40	josé everson	Bruno	558179003193@s.whatsapp.net	2025-04-25 00:00:00	Cabelo
43741982-97c8-4224-a596-b0f42b1ce363	2025-06-18 00:00:00	10:20	wanderson josé	Bruno	558179003193@s.whatsapp.net	2025-04-25 00:00:00	Cabelo
f70a7d40-0b6b-4865-ba0e-4be015023abd	2025-06-21 00:00:00	16:00	gabriel silva	Bruno	558171039700@s.whatsapp.net	2025-04-25 00:00:00	Cabelo+Sobrancelha
77d355d4-4762-4830-bf73-7d7b5ad1d0dc	2025-06-20 00:00:00	17:20	lucas lucena	Bruno	558198991478@s.whatsapp.net	2025-04-25 00:00:00	Cabelo+Sobrancelha
a47f4b9c-b730-4f52-b9ee-2f6cf8a591b4	2025-06-18 00:00:00	11:40	matheus ryan	Bruno	558198446732@s.whatsapp.net	2025-04-25 00:00:00	Cabelo
de5be3a5-3897-4c23-b2af-0261d9be0328	2025-04-26 00:00:00	18:00	marcos	Wallyson	558197149668@s.whatsapp.net	2025-04-25 00:00:00	Cabelo
464232e2-cef4-4417-9d58-957462bf2cd5	2025-04-26 00:00:00	10:40	fábio	Wallyson	5521980058628@s.whatsapp.net	2025-04-25 00:00:00	Cabelo
d075f22d-b276-4f09-91b2-2a05b56db6aa	2025-04-28 00:00:00	14:00	Marcado 	Wallyson	local	2025-04-25 17:21:13.29	Cabelo
90fec9ad-bd1c-44e4-b0ba-7bf73f9f4991	2025-04-25 00:00:00	14:40	eu acabei marcando de 14:40, sendo que o horário que eu mandei mensagem é 14:52	Wallyson	558189992109@s.whatsapp.net	2025-04-25 00:00:00	Cabelo
c4dd07d4-3ee6-4972-bd59-0b83968fcc17	2025-04-26 00:00:00	16:40	Hiago 	Wallyson	local	2025-04-25 19:04:20.677	Cabelo
3aba1003-4726-479e-ae93-81f89b34b2ee	2025-04-26 00:00:00	08:40	João Henrique 	Wallyson	local	2025-04-25 19:56:30.955	Cabelo
23a988a6-cfd0-44ac-a180-a12d58bf4823	2025-04-26 00:00:00	08:00	Marcado 	Wallyson	local	2025-04-25 19:56:46.377	Cabelo
f1133bca-decf-4212-afda-3a92e27f20a6	2025-04-26 00:00:00	11:20	Rodrigo 	Wallyson	local	2025-04-25 20:24:27.185	Cabelo
0aa6503c-4147-4956-813b-0530840ef278	2025-04-26 00:00:00	17:20	Miguel 	Wallyson	local	2025-04-25 20:26:11.308	Cabelo
6847dd24-cc6e-4fe1-8680-3435302c74de	2025-04-30 00:00:00	16:40	Noa 	Wallyson	local	2025-04-25 22:38:27.828	Cabelo
598b1baf-4d95-4533-8b65-108e5eee8504	2025-04-28 00:00:00	14:40	gabriel	Bruno	558197699397@s.whatsapp.net	2025-04-25 00:00:00	Cabelo
655707d2-459b-4d92-97c9-08f95c5ce9f0	2025-04-28 00:00:00	11:00	pedro henrique	Bruno	558198446899@s.whatsapp.net	2025-04-25 00:00:00	Cabelo
4bb712e2-e156-4ea6-8864-7e97a9b3e1a4	2025-06-19 00:00:00	15:20	yan	Bruno	558199168954@s.whatsapp.net	2025-04-25 00:00:00	Cabelo
1419ce1e-ee04-4ffd-abd3-9a0dc5bfdf33	2025-06-19 00:00:00	18:40	arthur sales	Bruno	558199775133@s.whatsapp.net	2025-04-25 00:00:00	Cabelo+Sobrancelha
352a26b0-3ad0-45af-8143-145af2282715	2025-06-20 00:00:00	18:40	Ocupado 	Bruno	local	2025-04-26 10:15:46.836	Cabelo
49841cfd-42d7-4b09-8bfe-6fb3098411ac	2025-06-20 00:00:00	19:20	Ocupado	Bruno	local	2025-04-26 10:16:04.912	Cabelo
9ade263a-6adf-44ac-99ca-06865abd29f5	2025-06-20 00:00:00	20:00	Ocupado 	Bruno	local	2025-04-26 10:16:23.747	Cabelo
86c57197-b547-4de3-9f7c-92414a0b0d3a	2025-06-21 00:00:00	08:00	Ocupado	Bruno	local	2025-04-26 10:16:41.89	Cabelo
52458a2a-241e-4779-9249-5f1a0cd7c00d	2025-06-21 00:00:00	08:40	Ocupado	Bruno	local	2025-04-26 10:16:59.203	Cabelo
3577a6f5-8218-437c-8e50-74f8335c341d	2025-06-21 00:00:00	09:20	Ocupado	Bruno	local	2025-04-26 10:17:25.166	Cabelo
decacf14-94b7-4597-bf77-408e8c63b0e3	2025-06-21 00:00:00	18:00	Ocupado	Bruno	local	2025-04-26 10:17:42.688	Cabelo
24ba6440-a781-4cb7-82fa-8e1e4a4773ab	2025-04-28 00:00:00	09:40	mateus	Bruno	558196083218@s.whatsapp.net	2025-04-26 00:00:00	Cabelo+Barba
681dd743-6cbc-4a1d-adc5-7c31ea229762	2025-04-26 00:00:00	12:00	rikelmy	Wallyson	558189992109@s.whatsapp.net	2025-04-26 00:00:00	Cabelo
9ec77286-919b-4cdf-b7d9-a1577070f9b5	2025-04-28 00:00:00	11:40	fernando	Bruno	558196035269@s.whatsapp.net	2025-04-26 00:00:00	Cabelo
70aa1e77-6b01-4ef4-aba5-63ee9dbc0bb7	2025-04-28 00:00:00	18:00	Marcado 	Wallyson	local	2025-04-26 14:02:40.399	Cabelo
43db422c-b3f2-442d-981d-3cb570642cff	2025-05-10 00:00:00	14:00	ryan	Bruno	558196680308@s.whatsapp.net	2025-04-26 00:00:00	Cabelo+Barba
ebdbf393-cb8e-4ebc-bf1b-4104f9fb9df0	2025-04-29 00:00:00	08:40	henrique	Wallyson	558171101790@s.whatsapp.net	2025-04-26 00:00:00	Cabelo
90446a74-51d1-4163-9dd6-c73dc36f3be4	2025-04-28 00:00:00	17:20	laércio barbosa da silva	Wallyson	558196620184@s.whatsapp.net	2025-04-26 00:00:00	Cabelo+Barba
3ac3f969-1e7c-4ebb-a19c-2cbd4bfef859	2025-06-20 00:00:00	09:00	samuel	Bruno	558171201693@s.whatsapp.net	2025-04-26 00:00:00	Cabelo
03ba2003-33d9-46a6-a3d9-3137006d44e1	2025-04-28 00:00:00	14:40	Pedro 	Wallyson	local	2025-04-26 19:00:20.647	Cabelo
4237ea99-3641-462e-9189-649268e2d2b3	2025-05-03 00:00:00	10:00	joão lucas	Bruno	558189785404@s.whatsapp.net	2025-04-26 00:00:00	Cabelo+Sobrancelha
c1257345-a1e7-48d2-b7f8-1a6b4cbb08d0	2025-04-28 00:00:00	15:20	Michel 	Wallyson	local	2025-04-26 20:55:04.282	Cabelo
349cd2ec-8885-4b00-96c6-b00546a5267a	2025-05-03 00:00:00	17:20	gustavo	Bruno	558196111653@s.whatsapp.net	2025-04-26 00:00:00	Cabelo+Sobrancelha
55f3c681-ee49-4957-9213-3ca3b01987fe	2025-06-20 00:00:00	14:40	matheus	Bruno	558196073942@s.whatsapp.net	2025-04-26 00:00:00	Cabelo+Barba
89cc3df5-8200-4152-9055-249956af02ba	2025-06-20 00:00:00	16:40	eduardo	Bruno	558196073942@s.whatsapp.net	2025-04-26 00:00:00	Cabelo+Barba
8e9f3116-898e-4d56-9d6a-917933f0ea2d	2025-05-03 00:00:00	08:40	wesley	Wallyson	558181016662@s.whatsapp.net	2025-04-26 00:00:00	Cabelo+Sobrancelha
4b7310e4-5b86-4809-9ba1-6e7b9986d3d1	2025-04-30 00:00:00	14:40	joao victor (botox)	Bruno	558196049253@s.whatsapp.net	2025-04-26 00:00:00	Cabelo
ca4e741c-c16e-41dd-9394-f42742f9ba1a	2025-04-30 00:00:00	16:00	joao victor (botox)	Bruno	558196049253@s.whatsapp.net	2025-04-26 00:00:00	Cabelo
b9af5c05-1bd9-4977-b168-1fd701d61527	2025-04-29 00:00:00	18:00	samuel	Wallyson	558196448583@s.whatsapp.net	2025-04-27 00:00:00	Cabelo+Sobrancelha
1cba188e-ba56-4cec-8bea-44cf09ef7242	2025-05-10 00:00:00	14:00	Indisponivel	Bruno	Indisponivel	2025-04-27 13:48:48.894	
0ea8f791-8403-4abb-91f8-148ff5c73a27	2025-05-10 00:00:00	14:40	Indisponivel	Bruno	Indisponivel	2025-04-27 13:48:48.989	
77ddc121-a224-4c5f-b8b6-270725040615	2025-05-10 00:00:00	15:20	Indisponivel	Bruno	Indisponivel	2025-04-27 13:48:49.018	
88a15600-0cc1-43c5-93f2-cad74b70499d	2025-05-10 00:00:00	16:00	Indisponivel	Bruno	Indisponivel	2025-04-27 13:48:49.047	
6c990565-edfe-45e4-a194-53c3d455a352	2025-05-10 00:00:00	16:40	Indisponivel	Bruno	Indisponivel	2025-04-27 13:48:49.075	
636fc84b-507f-41da-864d-d84070162d36	2025-05-10 00:00:00	17:20	Indisponivel	Bruno	Indisponivel	2025-04-27 13:48:49.104	
115e70de-8de9-49c7-bdfb-ee73d18d021a	2025-05-10 00:00:00	18:00	Indisponivel	Bruno	Indisponivel	2025-04-27 13:48:49.133	
f159049e-9ed1-47bc-a924-8d2e5281ffbb	2025-05-01 00:00:00	09:00	Indisponivel	Bruno	Indisponivel	2025-04-27 13:49:43.716	
95d6c6d9-40b3-4c45-8994-d724c01e6dc2	2025-05-01 00:00:00	09:40	Indisponivel	Bruno	Indisponivel	2025-04-27 13:49:43.876	
a6eefbfc-1be0-4ef4-9a83-4e5c56c66df3	2025-05-01 00:00:00	10:20	Indisponivel	Bruno	Indisponivel	2025-04-27 13:49:43.985	
c65e3425-2768-467a-a793-a432d0f011ac	2025-05-01 00:00:00	11:00	Indisponivel	Bruno	Indisponivel	2025-04-27 13:49:44.022	
ee991ce7-b205-4cb6-83fd-d24ffa35d76b	2025-05-01 00:00:00	11:40	Indisponivel	Bruno	Indisponivel	2025-04-27 13:49:44.05	
7f457e0d-a2b8-4ea7-8ae5-f67113e1a0e2	2025-05-01 00:00:00	13:20	Indisponivel	Bruno	Indisponivel	2025-04-27 13:49:44.078	
9e830075-c378-4c7f-8095-46d32af19da3	2025-05-01 00:00:00	14:00	Indisponivel	Bruno	Indisponivel	2025-04-27 13:49:44.106	
9f1fbb93-8207-4a78-a71d-48a8b4bc1da0	2025-05-01 00:00:00	14:40	Indisponivel	Bruno	Indisponivel	2025-04-27 13:49:44.14	
815192fe-55af-4843-afc2-3b05150a05fc	2025-05-01 00:00:00	15:20	Indisponivel	Bruno	Indisponivel	2025-04-27 13:49:44.167	
30b3e9ef-5e4e-468f-b35c-a9b7a99961df	2025-05-01 00:00:00	16:00	Indisponivel	Bruno	Indisponivel	2025-04-27 13:49:44.2	
acc0a387-22ac-44f7-be5e-e0ac1a03183d	2025-05-01 00:00:00	16:40	Indisponivel	Bruno	Indisponivel	2025-04-27 13:49:44.233	
313c77c8-a351-4964-a6eb-e80fbd3b2460	2025-05-01 00:00:00	17:20	Indisponivel	Bruno	Indisponivel	2025-04-27 13:49:44.261	
db7b9326-7ed3-4a35-bdef-895b0e1936c2	2025-05-01 00:00:00	18:00	Indisponivel	Bruno	Indisponivel	2025-04-27 13:49:44.29	
f928434b-7fc9-49f4-b57c-63a8cd6141cd	2025-05-01 00:00:00	18:40	Indisponivel	Bruno	Indisponivel	2025-04-27 13:49:44.318	
4d13eed5-b2d7-474d-ba92-d7fdd1fbed44	2025-04-28 00:00:00	16:40	césar	Wallyson	558197520499@s.whatsapp.net	2025-04-27 00:00:00	Cabelo+Sobrancelha
17711fef-bb43-45f4-9165-18887dd5a334	2025-04-29 00:00:00	16:40	antônio henrique	Bruno	558197083657@s.whatsapp.net	2025-04-27 00:00:00	Cabelo+Sobrancelha
4e00e1b0-372e-4da1-9101-6ec4d7faa118	2025-05-05 00:00:00	09:40	lázaro rangel	Bruno	558195988560@s.whatsapp.net	2025-04-27 00:00:00	Cabelo
cfc86e50-cb12-40d1-93b8-097107fdb301	2025-06-19 00:00:00	18:00	Leandro 	Wallyson	local	2025-04-27 20:55:08.795	Cabelo+Barba
5b35bbd1-42e4-4e7f-af92-339d9fbf7c41	2025-06-26 00:00:00	18:00	Leandro 	Wallyson	local	2025-04-27 21:25:07.082	Cabelo
478d24ed-3023-4271-b511-1682bc232367	2025-05-02 00:00:00	18:00	Leandro 	Wallyson	local	2025-04-27 21:25:54.968	Cabelo+Barba
6de9abd9-5af9-4208-854f-ddd3f9b3ce6e	2025-05-01 00:00:00	08:00	Indisponivel	Wallyson	Indisponivel	2025-04-27 21:26:29.234	
274b817d-5018-44eb-a00d-4d9c680aef10	2025-05-01 00:00:00	08:40	Indisponivel	Wallyson	Indisponivel	2025-04-27 21:26:29.307	
9b335ecc-a4d5-426d-b791-5ea2d547ec19	2025-05-01 00:00:00	09:20	Indisponivel	Wallyson	Indisponivel	2025-04-27 21:26:29.341	
772b4348-0bc1-4d0b-b6b1-0e7ecc147609	2025-05-01 00:00:00	10:00	Indisponivel	Wallyson	Indisponivel	2025-04-27 21:26:29.375	
15c38adc-4857-4d97-aba4-e5e6432a6db4	2025-05-01 00:00:00	10:40	Indisponivel	Wallyson	Indisponivel	2025-04-27 21:26:29.409	
33de2381-8393-494f-b071-65d6ce04326b	2025-05-01 00:00:00	11:20	Indisponivel	Wallyson	Indisponivel	2025-04-27 21:26:29.446	
e3ec0bd8-2dfc-456c-8238-92c94d94e33f	2025-05-01 00:00:00	13:20	Indisponivel	Wallyson	Indisponivel	2025-04-27 21:26:29.48	
88db7f50-c8b2-4fd6-aeac-322f63fb104d	2025-05-01 00:00:00	14:00	Indisponivel	Wallyson	Indisponivel	2025-04-27 21:26:29.516	
d63fc214-09fe-4fd2-9470-7c6f97c7752e	2025-05-01 00:00:00	14:40	Indisponivel	Wallyson	Indisponivel	2025-04-27 21:26:29.552	
7784fbca-5bb1-453a-b77c-f8aad76399dd	2025-05-01 00:00:00	15:20	Indisponivel	Wallyson	Indisponivel	2025-04-27 21:26:29.588	
a9f76304-2d02-438e-9b5a-b8cc9f496c2c	2025-05-01 00:00:00	16:00	Indisponivel	Wallyson	Indisponivel	2025-04-27 21:26:29.622	
43f78257-89fe-4a21-b3af-176400bf3fe1	2025-05-01 00:00:00	16:40	Indisponivel	Wallyson	Indisponivel	2025-04-27 21:26:29.656	
7508ae09-2393-44fa-9046-94db5f277dd1	2025-05-01 00:00:00	17:20	Indisponivel	Wallyson	Indisponivel	2025-04-27 21:26:29.69	
3a5dc035-e0cb-4c21-9392-417c341910fd	2025-05-01 00:00:00	18:00	Indisponivel	Wallyson	Indisponivel	2025-04-27 21:26:29.724	
413b1317-22b6-479e-bddd-8a917c987176	2025-05-01 00:00:00	18:40	Indisponivel	Wallyson	Indisponivel	2025-04-27 21:26:29.758	
ebb5a3bc-9aca-4c24-aa07-437b6d7d9f02	2025-04-28 00:00:00	13:20	henrique	Bruno	558182601936@s.whatsapp.net	2025-04-27 00:00:00	Cabelo
ee062593-f337-456b-826d-03309abcc37b	2025-05-02 00:00:00	09:40	josivaldo gomes	Bruno	558196887942@s.whatsapp.net	2025-04-27 00:00:00	Cabelo
6addd370-ded0-4803-ad40-806ddf14b23f	2025-06-19 00:00:00	18:00	gonzaga neto	Bruno	558198514795@s.whatsapp.net	2025-04-27 00:00:00	Cabelo
15448cfd-e980-4d5e-a922-f91cf06cb9f6	2025-04-28 00:00:00	14:00	Carlos eduardo	Bruno	local	2025-04-27 22:54:04.268	Cabelo
7b060480-96df-4937-ba83-5e6589ccadaa	2025-04-28 00:00:00	15:20	Higor gustavo	Bruno	local	2025-04-27 22:59:32.537	Cabelo
014ce5a4-0fa6-4dc7-bad6-7412e1e6a1da	2025-06-20 00:00:00	15:20	apollo	Bruno	558198052201@s.whatsapp.net	2025-04-27 00:00:00	Cabelo
db73d07d-41fe-447e-91db-977c422cee0a	2025-05-02 00:00:00	10:20	italo	Bruno	558198405729@s.whatsapp.net	2025-04-27 00:00:00	Cabelo+Barba
75ddd716-8a0e-4da0-b6d2-54f9d893fcfd	2025-05-02 00:00:00	16:00	joão vitor cipriano	Bruno	558188511046@s.whatsapp.net	2025-04-28 00:00:00	Cabelo
197a8ece-07e3-4374-9d25-0127e994984e	2025-04-28 00:00:00	13:20	renan	Wallyson	558195330370@s.whatsapp.net	2025-04-28 00:00:00	Cabelo+Barba
d03db096-e88c-43d0-9216-45eb55265be0	2025-04-29 00:00:00	11:00	joão pedro campos	Bruno	558196073970@s.whatsapp.net	2025-04-28 00:00:00	Cabelo+Barba
b7677127-9d2f-443c-95cc-d473a5e89f83	2025-06-19 00:00:00	11:00	joão pedro campos	Bruno	558196073970@s.whatsapp.net	2025-04-28 00:00:00	Cabelo+Barba
59213eee-5fef-4ce6-b6cc-5dd847c2444f	2025-04-28 00:00:00	09:40	anthony ricardo	Wallyson	558199684430@s.whatsapp.net	2025-04-28 00:00:00	Cabelo
5b57af24-194d-45b6-a3ba-49a55168181d	2025-04-28 00:00:00	16:00	pedro robson	Wallyson	558198929820@s.whatsapp.net	2025-04-28 00:00:00	Cabelo
58cd451d-98e0-418e-8559-a19b6a5e63d1	2025-05-02 00:00:00	19:20	kayke	Wallyson	558197180683@s.whatsapp.net	2025-04-28 00:00:00	Cabelo+Barba
12ef3ce4-a7a6-4084-b876-07c65c6a9fe7	2025-04-29 00:00:00	09:40	jonas do grau	Bruno	558196647899@s.whatsapp.net	2025-04-28 00:00:00	Cabelo
20b6294e-435d-45a0-8096-33fba8cbe060	2025-05-03 00:00:00	14:00	du bolo	Bruno	558196647899@s.whatsapp.net	2025-04-28 00:00:00	Cabelo+Sobrancelha
28dabc6e-f72b-490d-aba9-8439257e8061	2025-05-02 00:00:00	13:20	alex	Bruno	558198874006@s.whatsapp.net	2025-04-28 00:00:00	Cabelo+Barba
812341e7-ae20-4223-b385-b050d598ab67	2025-04-30 00:00:00	08:40	matheus	Wallyson	558193890380@s.whatsapp.net	2025-04-28 00:00:00	Cabelo
e3d77e8a-fc22-44bf-92f8-fb499cf79dc7	2025-04-30 00:00:00	14:00	sousa	Wallyson	558196903604@s.whatsapp.net	2025-04-28 00:00:00	Cabelo+Barba
42b04b51-464a-48da-ab93-16bf3a782f2a	2025-05-03 00:00:00	15:20	rafael melo	Bruno	558199365900@s.whatsapp.net	2025-04-28 00:00:00	Cabelo
e7c6017e-a991-4062-964b-d74cfb9a4c5a	2025-05-02 00:00:00	14:40	Alex progressiva	Bruno	local	2025-04-28 14:47:48.701	Cabelo
c74ccaa9-11d0-4bee-90f9-cf68d0132fa9	2025-04-30 00:00:00	13:20	fabiano	Bruno	558194610556@s.whatsapp.net	2025-04-28 00:00:00	Cabelo
f8976514-4649-49df-b575-cb1cc7626ec3	2025-04-30 00:00:00	14:00	lucas	Bruno	558197326785@s.whatsapp.net	2025-04-28 00:00:00	Cabelo
ab651531-2879-4f9f-bfd8-e1e86ae85ad2	2025-06-19 00:00:00	09:40	paulo césar	Bruno	558195254306@s.whatsapp.net	2025-04-28 00:00:00	Cabelo
2faf3365-99ed-4bb0-ada1-d646ba0fa658	2025-04-30 00:00:00	10:00	júlio	Wallyson	558196192233@s.whatsapp.net	2025-04-28 00:00:00	Cabelo
2414cb27-f231-424a-8f23-9a1818260ec7	2025-04-29 00:00:00	18:40	lucas	Bruno	558182451503@s.whatsapp.net	2025-04-28 00:00:00	Cabelo+Sobrancelha
81df4b47-4f75-47c5-b14e-8c59607c4627	2025-04-29 00:00:00	08:00	Pelada 	Wallyson	local	2025-04-28 17:25:13.942	Cabelo
f088d661-4c75-4a71-add8-1c3fd17dc805	2025-04-29 00:00:00	16:00	Kaio irmão de carlos 	Bruno	local	2025-04-28 17:49:25.081	Cabelo
0db1a15c-5061-4c5d-a0cf-648817878cf8	2025-05-02 00:00:00	11:40	arthur	Bruno	558194115511@s.whatsapp.net	2025-04-28 00:00:00	Cabelo+Barba
bd4418e3-9cf9-4f3e-b256-d4a29e85e2d8	2025-06-19 00:00:00	14:00	lucas	Bruno	558182451503@s.whatsapp.net	2025-04-28 00:00:00	Cabelo+Sobrancelha
a3782597-5bf4-41e4-8f4a-23ee0affc96c	2025-04-29 00:00:00	16:00	Elias 	Wallyson	local	2025-04-28 18:34:16.149	Cabelo
ba656fd0-4906-49d8-8fc3-22207736f9a8	2025-05-24 00:00:00	16:00	Pedro 	Wallyson	local	2025-04-28 18:46:01.804	Cabelo+Barba
83d96173-794a-4dbd-ae1e-908b258d8fed	2025-04-29 00:00:00	18:00	Neto cabelo e botox 	Bruno	local	2025-04-28 19:05:15.526	Cabelo
b6abdcc7-195a-4715-9580-34c2b70733d6	2025-05-12 00:00:00	15:20	Michel 	Wallyson	local	2025-04-28 19:13:00.967	Cabelo
b04abcf7-c263-4bc3-863d-6b3f366f06c6	2025-04-30 00:00:00	09:40	anthony	Bruno	558197620059@s.whatsapp.net	2025-04-28 00:00:00	Cabelo
b3cbb4fc-a260-4528-ab01-ac7f843a8a89	2025-06-19 00:00:00	18:40	césar	Wallyson	558197520499@s.whatsapp.net	2025-04-28 00:00:00	Cabelo+Sobrancelha
0fdfc433-5d70-4770-a840-8e9ba21fde14	2025-04-30 00:00:00	13:20	arthur	Wallyson	558196972098@s.whatsapp.net	2025-04-28 00:00:00	Cabelo
81c08c20-6de6-40ea-8605-0156ccf040af	2025-05-05 00:00:00	16:40	gláucio	Wallyson	558187255411@s.whatsapp.net	2025-04-28 00:00:00	Cabelo
14be61b9-2a5f-4272-9855-e0d5dc033cd7	2025-04-30 00:00:00	17:20	fernando	Wallyson	558197789968@s.whatsapp.net	2025-04-28 00:00:00	Cabelo
193fcb14-6863-4eaa-b5c4-353d19d1cd49	2025-04-29 00:00:00	10:00	Thiago	Wallyson	local	2025-04-28 21:03:31.753	Cabelo
92d14bcc-f9f8-40f0-8ad2-4d68e187781d	2025-04-29 00:00:00	17:20	Daniel 	Wallyson	local	2025-04-28 21:27:13.951	Cabelo
40617243-52a1-421c-8e56-ea33a9c449f2	2025-04-29 00:00:00	11:20	Alan 	Wallyson	local	2025-04-28 23:18:50.053	Cabelo
906217bf-674a-4a5d-bacb-140bdcac8e11	2025-05-02 00:00:00	18:00	denilson	Bruno	558197084296@s.whatsapp.net	2025-04-28 00:00:00	Cabelo+Barba
8925b885-2b48-4ef8-a290-25aa537825e2	2025-05-03 00:00:00	08:00	wilson	Wallyson	558197148928@s.whatsapp.net	2025-04-28 00:00:00	Cabelo+Sobrancelha
fe517885-29c8-437b-a530-0637a79fa7bd	2025-04-29 00:00:00	14:00	Luiz 	Wallyson	local	2025-04-29 02:03:24.42	Cabelo
f4a0cb9a-beda-48f0-be5a-47b38c407a50	2025-04-30 00:00:00	18:40	Gabriel 	Wallyson	local	2025-04-29 02:36:39.758	Cabelo
ba731d6d-6eee-4700-9739-9e40ea46688f	2025-05-03 00:00:00	12:00	felipe silva	Bruno	558196065070@s.whatsapp.net	2025-04-29 00:00:00	Cabelo
3deb40ff-ea12-41b5-b80c-88c20ce17f9c	2025-04-29 00:00:00	17:20	Teteu	Bruno	local	2025-04-29 09:20:13.854	Cabelo
b0929525-9717-438b-8a6e-0fb6ef75ec2e	2025-06-26 00:00:00	18:40	maicon	Bruno	558194686969@s.whatsapp.net	2025-04-29 00:00:00	Cabelo
f26fd6d1-45f5-44c8-83cd-960b51f10e72	2025-04-29 00:00:00	10:20	mathias	Bruno	558181310245@s.whatsapp.net	2025-04-29 00:00:00	Cabelo+Sobrancelha
9b6dae4a-d49b-4c7f-a257-061c0dbcfaa6	2025-05-03 00:00:00	18:00	Levino 	Wallyson	local	2025-04-29 14:13:57.563	Cabelo+Barba
06342236-0f67-4eff-bed9-3b03490dbd41	2025-06-20 00:00:00	14:00	paulo henrique	Bruno	558174004953@s.whatsapp.net	2025-04-29 00:00:00	Cabelo+Sobrancelha
72f345ea-b843-4c27-8a10-0d590356e6f0	2025-05-09 00:00:00	18:40	sid	Bruno	558191536718@s.whatsapp.net	2025-04-29 00:00:00	Cabelo+Sobrancelha
4a64242a-4e56-4475-9c43-b8728ae44d8b	2025-05-10 00:00:00	08:00	pedro emanuel gomes da silva	Bruno	558198721730@s.whatsapp.net	2025-04-29 00:00:00	Cabelo
0b17eb49-0a87-4538-bab8-60ca691fda69	2025-04-30 00:00:00	16:00	Jaciel 	Wallyson	local	2025-04-29 15:36:11.779	Cabelo
9b50ec0e-a202-4948-92a1-52501ebf544d	2025-04-29 00:00:00	13:20	Ocupado	Bruno	local	2025-04-29 15:39:03.547	Cabelo
ef0ddcda-da2f-4718-98df-0fe562966e20	2025-04-30 00:00:00	09:00	Ataliba 	Bruno	local	2025-04-29 15:41:45.143	Barba
307437f6-0a2e-4d83-b847-55df231ed7ff	2025-05-03 00:00:00	18:00	Robert	Bruno	local	2025-04-29 15:53:17.089	Cabelo
61c90e2c-d164-49ee-aee2-c092492c90ec	2025-05-02 00:00:00	16:00	Eraldo 	Wallyson	local	2025-04-29 15:54:37.812	Cabelo+Barba
7c5cb9e0-43d1-45f6-862f-26744922e60a	2025-05-02 00:00:00	16:40	Heitor 	Wallyson	local	2025-04-29 15:55:47.997	Cabelo
d9e5bee4-6092-4663-9f02-302c2b6febf4	2025-05-03 00:00:00	16:00	Levino 	Wallyson	local	2025-04-29 15:58:33.183	Cabelo+Barba
439a2b7a-464c-4818-ab63-cce3456ffe0b	2025-04-29 00:00:00	14:00	edvar josé de lima neto	Bruno	558181296531@s.whatsapp.net	2025-04-29 00:00:00	Cabelo
20aaf74f-f6a2-4230-96fe-ce62991bea2f	2025-05-03 00:00:00	11:20	matheus	Bruno	558199219447@s.whatsapp.net	2025-04-29 00:00:00	Cabelo
60c11760-62dc-4a79-a568-f93a078f9883	2025-05-17 00:00:00	10:00	ruan andré gomes da silva	Bruno	558199765809@s.whatsapp.net	2025-04-29 00:00:00	Cabelo
367786ff-cc85-41be-8d57-bf9c6e52bb5f	2025-05-03 00:00:00	09:20	natacha	Wallyson	558197947166@s.whatsapp.net	2025-04-29 00:00:00	Cabelo
0d7bf2e4-2fd2-47f4-a370-4568afa266a5	2025-04-29 00:00:00	18:40	Gabriel 	Wallyson	local	2025-04-29 21:08:26.584	Cabelo
57da8c8a-729d-48f0-9e83-4550dba563f7	2025-05-03 00:00:00	16:00	allef ryan	Bruno	558195740243@s.whatsapp.net	2025-04-29 00:00:00	Cabelo
b0a9b18a-d8a9-468b-91f4-7007d8a3b6d1	2025-06-20 00:00:00	09:40	neto	Bruno	558181091175@s.whatsapp.net	2025-04-29 00:00:00	Cabelo+Sobrancelha
44c06119-e2db-4339-afbd-c016af29a8af	2025-05-05 00:00:00	13:20	joão marcello	Bruno	558196393507@s.whatsapp.net	2025-04-29 00:00:00	Cabelo+Sobrancelha
5bcf2854-4732-4797-b195-2373ca52fcf2	2025-05-02 00:00:00	15:20	vicente	Bruno	558197192758@s.whatsapp.net	2025-04-29 00:00:00	Cabelo+Sobrancelha
642e76ae-5c07-4e42-af6a-fb080f4227c0	2025-04-30 00:00:00	11:20	Victor 	Wallyson	local	2025-04-30 00:50:58.558	Cabelo+Barba
4ebf2d98-d57f-4f2c-82c7-4130195a1470	2025-05-02 00:00:00	10:00	Matheus 	Wallyson	local	2025-04-30 00:58:25.344	Cabelo
b0dc29a1-5048-465a-b5e9-478406863c63	2025-04-30 00:00:00	15:20	Kauan 	Wallyson	local	2025-04-30 00:59:04.774	Cabelo
f5d9013c-fa69-4412-bf84-2a87b4dcf13f	2025-04-30 00:00:00	08:00	fernando	Wallyson	558199732471@s.whatsapp.net	2025-04-29 00:00:00	Cabelo
c841047f-1efb-4a34-9aaf-ce78534d9328	2025-04-30 00:00:00	09:20	carlos	Wallyson	558192507833@s.whatsapp.net	2025-04-29 00:00:00	Cabelo
3caa72e1-d86e-4cdf-a913-973ab803142b	2025-05-02 00:00:00	17:20	joão neto	Bruno	558197626118@s.whatsapp.net	2025-04-30 00:00:00	Cabelo
fbdebca0-a27f-4eb5-a8fd-970f31a759a1	2025-05-03 00:00:00	16:40	neto	Bruno	558194759358@s.whatsapp.net	2025-04-30 00:00:00	Cabelo+Sobrancelha
d9f782d1-50db-4681-a21f-b6cddccc219c	2025-06-20 00:00:00	11:40	bruno	Bruno	558181317634@s.whatsapp.net	2025-04-30 00:00:00	Cabelo+Barba
bca7db38-0d2d-42d7-ba6d-ae47bce56d49	2025-04-30 00:00:00	14:40	Alyson Daniel 	Wallyson	local	2025-04-30 11:47:53.901	Cabelo
51756f14-8915-45da-90ce-5b551ec3b498	2025-04-30 00:00:00	11:40	manoel neto	Bruno	558195055212@s.whatsapp.net	2025-04-30 00:00:00	Cabelo+Barba
4f1a2a6c-5712-44bc-8b78-b3405e618dc3	2025-05-02 00:00:00	20:00	Matheus 	Wallyson	local	2025-04-30 13:22:09.239	Cabelo
2f1f177c-4d88-41b3-8aed-4ef8703e2e33	2025-05-05 00:00:00	10:20	sam	Bruno	558181726988@s.whatsapp.net	2025-04-30 00:00:00	Cabelo
1e1bf87e-b24c-4e10-9c2b-917408164c06	2025-05-03 00:00:00	10:40	micherlaine	Bruno	558196463146@s.whatsapp.net	2025-04-30 00:00:00	Cabelo
5248d744-2223-4078-93b7-b712ca65b8e5	2025-06-18 00:00:00	13:20	renan arquiles	Bruno	558196877715@s.whatsapp.net	2025-04-30 00:00:00	Cabelo
75ff9abf-5647-4524-ae10-df77d5196cba	2025-05-02 00:00:00	16:40	lucas gomes	Bruno	558198471608@s.whatsapp.net	2025-04-30 00:00:00	Cabelo
3786b148-6fa4-4b2a-bac0-1cf277329a3d	2025-05-03 00:00:00	08:00	tássio moraes	Bruno	558197909383@s.whatsapp.net	2025-04-30 00:00:00	Cabelo+Barba
5975abb4-bf12-4bc1-a0e5-4c9c59809b66	2025-05-02 00:00:00	14:00	matheus	Bruno	558196191710@s.whatsapp.net	2025-04-30 00:00:00	Cabelo+Barba
3ccbceca-dd63-445f-a7f2-7fd928cf12df	2025-05-02 00:00:00	17:20	leandro	Wallyson	558197605190@s.whatsapp.net	2025-04-30 00:00:00	Cabelo
24440602-6e8c-4eca-aa5b-4e54e12fe09e	2025-05-02 00:00:00	18:40	gabriel	Bruno	558187145252@s.whatsapp.net	2025-04-30 00:00:00	Cabelo
f1a28525-b1bc-4d05-9536-73087769eb10	2025-05-02 00:00:00	20:00	eduardo	Bruno	558194297236@s.whatsapp.net	2025-04-30 00:00:00	Cabelo+Barba
14ba0a5a-90ef-4193-ace5-5f5393abdc25	2025-05-02 00:00:00	14:40	thiago fiel romão da silva	Wallyson	558197822298@s.whatsapp.net	2025-04-30 00:00:00	Cabelo
63ad4039-c6ab-4ae5-8d3a-fe0a0535da39	2025-05-02 00:00:00	15:20	gustavo fiel romão da silva	Wallyson	558197822298@s.whatsapp.net	2025-04-30 00:00:00	Cabelo
994937ae-9b3b-47b5-8df9-9daef203525e	2025-05-02 00:00:00	19:20	joão paulo	Bruno	558197180683@s.whatsapp.net	2025-04-30 00:00:00	Cabelo+Barba
99ca02ce-da09-44e9-9c41-023fa1680d05	2025-05-02 00:00:00	08:40	joão guilherme	Wallyson	558192101006@s.whatsapp.net	2025-04-30 00:00:00	Cabelo
034bc207-f6d0-42df-b583-89956cd3eeef	2025-05-05 00:00:00	14:40	josélio gabriel	Bruno	558196502782@s.whatsapp.net	2025-04-30 00:00:00	Cabelo
dd00fab9-4e7f-4a5c-ac34-7586e76bc099	2025-05-03 00:00:00	17:20	João sedoufo 	Wallyson	local	2025-04-30 20:45:30.158	Cabelo
a020df41-ad2c-4cfd-b214-702df59fa059	2025-05-02 00:00:00	08:00	pyetro	Wallyson	558192334077@s.whatsapp.net	2025-04-30 00:00:00	Cabelo
07520dee-ea95-466c-8c2b-a1ba88f88359	2025-05-02 00:00:00	11:00	ivaldir barbosa	Bruno	558196149252@s.whatsapp.net	2025-04-30 00:00:00	Cabelo+Sobrancelha
8a34106f-4491-4141-90d6-cdd9cac573ca	2025-05-02 00:00:00	09:20	victor	Wallyson	558196193892@s.whatsapp.net	2025-04-30 00:00:00	Cabelo
0b655c38-daec-413d-b42c-5769f5fa702f	2025-05-02 00:00:00	10:40	ruan	Wallyson	558199697267@s.whatsapp.net	2025-05-01 00:00:00	Cabelo+Sobrancelha
0cfb03c2-2c80-471b-85e8-fe8c74c53f41	2025-05-02 00:00:00	18:40	nicholas torres	Wallyson	558182645590@s.whatsapp.net	2025-05-01 00:00:00	Cabelo
36f3c483-88fe-46cb-8c46-3f5ae7ffde43	2025-05-02 00:00:00	14:00	vandinho	Wallyson	558197042471@s.whatsapp.net	2025-05-01 00:00:00	Cabelo+Sobrancelha
6eb127c0-2269-4071-a911-73ee8c8db24e	2025-05-03 00:00:00	12:00	gustavo	Wallyson	558199587573@s.whatsapp.net	2025-05-01 00:00:00	Cabelo+Sobrancelha
cda7b460-dd9c-42df-a46c-f6009b762bda	2025-05-05 00:00:00	18:40	guilherme	Bruno	558195949285@s.whatsapp.net	2025-05-01 00:00:00	Cabelo
9237b410-a445-4bef-a762-a46026d1a426	2025-05-03 00:00:00	10:00	wallacy	Wallyson	558182148841@s.whatsapp.net	2025-05-01 00:00:00	Cabelo
1241d132-6f94-42b8-87f2-74f2c8a4c15a	2025-05-05 00:00:00	11:00	larissa	Bruno	558195712225@s.whatsapp.net	2025-05-02 00:00:00	Cabelo
2af08ff5-5546-48e6-89b6-e44263f45f40	2025-05-03 00:00:00	11:20	elysson	Wallyson	558199697267@s.whatsapp.net	2025-05-02 00:00:00	Cabelo+Sobrancelha
f63659ac-b4ef-4def-b699-626e2db413d0	2025-05-02 00:00:00	13:20	Júlio 	Wallyson	local	2025-05-02 09:56:54.805	Cabelo
53ec1ba0-f0ab-4fb1-b85e-b0722ab7ce53	2025-05-02 00:00:00	11:20	Marcado 	Wallyson	local	2025-05-02 11:34:11.954	Cabelo
edab0c1f-4574-4365-b59b-e5704b3bf5dd	2025-05-03 00:00:00	10:40	breno	Wallyson	558198437880@s.whatsapp.net	2025-05-02 00:00:00	Cabelo+Sobrancelha
3395255e-f148-4e57-9743-90e6b49c7042	2025-05-03 00:00:00	16:40	joao pedro	Wallyson	558196610538@s.whatsapp.net	2025-05-02 00:00:00	Cabelo
8af9242f-b34e-4a5e-87ed-7193abf137ab	2025-05-03 00:00:00	13:20	eduardo	Wallyson	558198079679@s.whatsapp.net	2025-05-02 00:00:00	Cabelo
481a1e20-e5a0-4185-825c-5bde24f2c377	2025-05-03 00:00:00	09:20	paulo césar	Bruno	558195254306@s.whatsapp.net	2025-05-02 00:00:00	Cabelo
418243b2-96d5-41b5-ba09-4bbf1cbd8623	2025-05-07 00:00:00	14:00	Mateus Bruna 	Bruno	local	2025-05-02 15:29:29.091	Cabelo
7e5f522f-b5b0-41b2-aaa3-eb776a4f06e0	2025-05-06 00:00:00	09:00	samuel tavares	Bruno	558171201693@s.whatsapp.net	2025-05-02 00:00:00	Cabelo
f98cc9cd-ec1a-4e8f-a826-6d2e4d4ad910	2025-05-03 00:00:00	15:20	arthur	Wallyson	558196000246@s.whatsapp.net	2025-05-02 00:00:00	Cabelo
4d69440a-d5be-44b0-a01a-a7b6e0d2823c	2025-06-21 00:00:00	14:00	neto	Bruno	558194759358@s.whatsapp.net	2025-05-02 00:00:00	Cabelo+Sobrancelha
3b60f27d-179e-4245-908a-328811a037b1	2025-05-03 00:00:00	14:00	neto	Wallyson	558196586838@s.whatsapp.net	2025-05-02 00:00:00	Cabelo
0a431275-8171-4cb5-a5ce-019916184147	2025-06-19 00:00:00	17:20	david callebe	Bruno	558191447860@s.whatsapp.net	2025-05-02 00:00:00	Cabelo+Barba
b6636c51-8776-447f-95cc-4c5ec8bfa224	2025-05-03 00:00:00	14:40	ze véi 	Wallyson	local	2025-05-02 21:51:57.247	Cabelo
591d9ff4-4984-4a57-8a0f-202a43349725	2025-05-07 00:00:00	16:00	rodrigo	Bruno	558197485634@s.whatsapp.net	2025-05-02 00:00:00	Cabelo
1192355f-6f73-4f21-baaa-7f41f651fa98	2025-05-05 00:00:00	16:00	lucas gabriel	Wallyson	558199333703@s.whatsapp.net	2025-05-02 00:00:00	Cabelo
4e419151-d4c7-4041-990a-8d256d177418	2025-05-10 00:00:00	10:40	erick vinicius	Bruno	558195786256@s.whatsapp.net	2025-05-02 00:00:00	Cabelo+Sobrancelha
25a456c8-869c-4425-9f99-4bb04ae9d7ee	2025-05-05 00:00:00	18:00	pedro henrique	Bruno	558199160082@s.whatsapp.net	2025-05-02 00:00:00	Cabelo
0342ff4e-5399-4717-b714-bffb419a6d18	2025-05-05 00:00:00	16:00	jefferson	Bruno	558196311311@s.whatsapp.net	2025-05-03 00:00:00	Cabelo
6b999221-dd1c-4a5a-aca1-cb5ff07e4849	2025-06-20 00:00:00	08:40	wilson	Wallyson	558197148928@s.whatsapp.net	2025-05-03 00:00:00	Cabelo+Sobrancelha
2d68c230-837c-4da0-ad97-cded6bfdd3d2	2025-06-27 00:00:00	08:00	wilson	Wallyson	558197148928@s.whatsapp.net	2025-05-03 00:00:00	Cabelo+Sobrancelha
d0dac17e-eecc-49d6-ba0d-d3eeb5417375	2025-05-05 00:00:00	15:20	matheus	Bruno	558197941830@s.whatsapp.net	2025-05-03 00:00:00	Cabelo
7e08c22d-6cb4-4976-85f7-d49007f495d4	2025-05-05 00:00:00	17:20	nilson fonseca	Wallyson	558189252475@s.whatsapp.net	2025-05-03 00:00:00	Cabelo
d9de63fd-05fb-49b9-bf7f-58e63a1c9047	2025-05-09 00:00:00	13:20	Emanoel	Bruno	local	2025-05-03 17:14:25.256	Cabelo+Barba
97194262-b07b-4f48-9c01-578e1803e713	2025-06-21 00:00:00	14:40	allef ryan	Bruno	558195740243@s.whatsapp.net	2025-05-03 00:00:00	Cabelo
00d99e18-de2b-432a-8145-152f0396bafb	2025-06-17 00:00:00	18:40	Levino 	Wallyson	local	2025-05-03 20:04:00.833	Cabelo+Barba
1cb4673f-42cd-4b17-b43b-00f6820de90f	2025-05-05 00:00:00	16:40	pedro augusto	Bruno	558171185174@s.whatsapp.net	2025-05-03 00:00:00	Cabelo
7a1539de-2d50-4426-8fd7-91abe1c023f6	2025-05-12 00:00:00	16:00	João Pedro 	Wallyson	local	2025-05-03 21:31:38.659	Cabelo
bdeb53af-97cb-4338-8e46-9974d886aca9	2025-06-18 00:00:00	11:00	manoel neto	Bruno	558195055212@s.whatsapp.net	2025-05-03 00:00:00	Cabelo+Barba
f1d0294d-f0aa-4101-8c12-2aa5d5406733	2025-05-05 00:00:00	14:00	samuel barbosa	Wallyson	558198087356@s.whatsapp.net	2025-05-03 00:00:00	Cabelo+Sobrancelha
8c1d397a-bb1f-4ea1-b517-9691597d43ae	2025-06-19 00:00:00	11:40	gago	Bruno	558195055274@s.whatsapp.net	2025-05-03 00:00:00	Cabelo
e555a7ec-5f3a-43ab-bad1-7a7c073239f1	2025-05-05 00:00:00	11:40	tarcísio	Bruno	558185887456@s.whatsapp.net	2025-05-04 00:00:00	Cabelo
ab205cc5-d339-4de9-8fce-16b72dcbe999	2025-05-05 00:00:00	14:00	matheus ryan	Bruno	558198446732@s.whatsapp.net	2025-05-04 00:00:00	Cabelo
074f4e94-01f5-470d-b0e9-40de41f49942	2025-05-05 00:00:00	09:00	rubens	Wallyson	558196865725@s.whatsapp.net	2025-05-04 00:00:00	Cabelo
be038a5e-fde8-4847-9b66-ad5efdd6d583	2025-05-09 00:00:00	14:00	joão vitor	Bruno	558192250093@s.whatsapp.net	2025-05-04 00:00:00	Cabelo
506f1745-bdd2-46b2-9ab6-295fa89a1adc	2025-05-07 00:00:00	14:40	valney e davi	Bruno	558197232916@s.whatsapp.net	2025-05-04 00:00:00	Cabelo
f89c058f-c088-41ce-a350-ab65a8dde284	2025-05-07 00:00:00	15:20	Valney	Bruno	local	2025-05-04 23:09:59.451	Cabelo
01025d0a-4137-46f1-884b-dd7314bc0cec	2025-05-09 00:00:00	17:20	Kaue	Wallyson	local	2025-05-04 23:11:01.152	Cabelo
3c8d277e-412e-4912-adb1-879d05aa52b6	2025-05-05 00:00:00	18:40	gustavo farias	Wallyson	558196195368@s.whatsapp.net	2025-05-04 00:00:00	Cabelo
26e28058-92d2-405e-ade5-ddcff1c67b4f	2025-05-09 00:00:00	11:00	kayque	Bruno	558197975570@s.whatsapp.net	2025-05-04 00:00:00	Cabelo
11843b11-afda-432c-b763-a3ebe2087457	2025-05-05 00:00:00	13:20	guilherme	Wallyson	558196437778@s.whatsapp.net	2025-05-05 00:00:00	Cabelo
db789cea-efbe-4feb-8628-d5dd18c042f6	2025-05-09 00:00:00	18:00	bruno	Bruno	558189873832@s.whatsapp.net	2025-05-05 00:00:00	Cabelo+Barba
99d97308-9ab2-4e23-b22d-c1c6610a5318	2025-05-07 00:00:00	15:20	Gelson	Wallyson	local	2025-05-05 10:03:54.448	Cabelo
c99af075-916b-4f40-8f7a-7dd0a072ec7f	2025-05-08 00:00:00	18:00	ewerton adryan	Bruno	558198289810@s.whatsapp.net	2025-05-05 00:00:00	Cabelo
74b18a5b-9581-4e6a-be9a-86650009e2ff	2025-06-19 00:00:00	16:40	zaldinho delícia de bruninho	Bruno	558198591039@s.whatsapp.net	2025-05-05 00:00:00	Cabelo
c12631a0-bd99-4d5a-bc74-192038821f26	2025-06-20 00:00:00	10:20	renan silva	Bruno	558199185971@s.whatsapp.net	2025-05-05 00:00:00	Cabelo
f521b5c9-728c-45d3-acb2-c57212287e1e	2025-05-05 00:00:00	11:40	pedro henrique	Wallyson	558195071416@s.whatsapp.net	2025-05-05 00:00:00	Cabelo+Sobrancelha
3961b1f7-7aac-456d-83e2-0a61cb72c232	2025-06-17 00:00:00	18:00	wellington arruda	Wallyson	558196852620@s.whatsapp.net	2025-05-05 00:00:00	Cabelo+Barba
8ab6cccd-8e99-4bc2-b39a-0f6622f4e643	2025-06-19 00:00:00	16:00	marlon	Bruno	558185124815@s.whatsapp.net	2025-05-05 00:00:00	Cabelo
88ce98bb-8afb-4512-8ae4-e20615797f67	2025-06-20 00:00:00	11:00	breno	Bruno	558198437880@s.whatsapp.net	2025-05-05 00:00:00	Cabelo+Sobrancelha
911ac564-1fa6-4892-abff-963354e92cad	2025-05-05 00:00:00	15:20	Pedro 	Wallyson	local	2025-05-05 11:45:18.123	Cabelo
f76fade1-d2ce-42cc-ae5f-e32d056d03f0	2025-06-18 00:00:00	17:20	ivaldir barbosa	Bruno	558196149252@s.whatsapp.net	2025-05-05 00:00:00	Cabelo+Sobrancelha
c856d41e-b3fa-48d1-9f80-2ef67aa2f292	2025-05-05 00:00:00	18:00	ravi	Wallyson	558195156041@s.whatsapp.net	2025-05-05 00:00:00	Cabelo
350a76a8-00a4-4be4-8bb7-896bdafad8f3	2025-06-18 00:00:00	18:40	Ualisson 	Bruno	local	2025-05-05 12:18:51.632	Cabelo
96a4a6f8-2b3f-4a95-8c90-4edc09226a54	2025-06-19 00:00:00	13:20	arthur	Bruno	558194115511@s.whatsapp.net	2025-05-05 00:00:00	Cabelo+Barba
88942fd5-2112-40a4-a722-fe1dc7e61654	2025-05-08 00:00:00	09:20	horlean	Wallyson	558281363560@s.whatsapp.net	2025-05-05 00:00:00	Cabelo+Sobrancelha
43fe8063-182e-49ea-8ffd-6b23de06579d	2025-05-15 00:00:00	18:00	matheus vinicius	Bruno	558197894492@s.whatsapp.net	2025-05-05 00:00:00	Cabelo
00363b39-6749-42e4-893b-19c5de6575f2	2025-06-21 00:00:00	10:00	gabriel	Bruno	558197699397@s.whatsapp.net	2025-05-05 00:00:00	Cabelo
6e58f55c-355d-40cd-9274-922a06523e87	2025-05-05 00:00:00	14:40	Wellington 	Wallyson	local	2025-05-05 13:33:11.165	Cabelo
bf3d7675-86b3-4aac-a076-6b8163de19a0	2025-06-18 00:00:00	16:00	leonardo	Bruno	558174001016@s.whatsapp.net	2025-05-05 00:00:00	Cabelo
2d1a2d0f-26ac-4f6d-a7dd-a7f03b550959	2025-06-27 00:00:00	16:00	joão paulo	Bruno	558179098531@s.whatsapp.net	2025-05-05 00:00:00	Cabelo+Barba
5a237e18-5942-49cf-8105-7c1faeb3a976	2025-06-23 00:00:00	18:40	márcio	Wallyson	558199069172@s.whatsapp.net	2025-05-05 00:00:00	Cabelo
aa0ab1c3-329a-46fc-96cb-dfe43a9e0acd	2025-05-07 00:00:00	18:40	carlos	Bruno	558197823796@s.whatsapp.net	2025-05-05 00:00:00	Cabelo+Sobrancelha
27b276d1-c631-496e-b461-a401cb18e6f1	2025-06-20 00:00:00	18:00	josé anderson	Wallyson	558197186991@s.whatsapp.net	2025-05-05 00:00:00	Cabelo+Barba
b49de627-2383-42e2-aa25-db23d4420a6b	2025-05-06 00:00:00	11:00	deyvson	Bruno	558195479577@s.whatsapp.net	2025-05-05 00:00:00	Cabelo
71240426-bd0f-4a90-96c5-332afa85dee1	2025-05-10 00:00:00	08:00	pedro lucas	Wallyson	558197832195@s.whatsapp.net	2025-05-05 00:00:00	Cabelo
ad989e2b-5264-4bca-aa7d-56a21e6e0a97	2025-06-20 00:00:00	18:40	Anderson 	Wallyson	local	2025-05-05 15:22:52.289	Cabelo+Barba
5024139e-2edd-4891-8b9d-ade6f7ad3e70	2025-05-07 00:00:00	09:20	Jhonatha 	Wallyson	local	2025-05-05 15:23:11.628	Cabelo
f4ca8eae-b0ce-4bf9-b97b-8a1ae94b3836	2025-05-06 00:00:00	08:00	Pelada 	Wallyson	local	2025-05-05 15:24:10.884	Cabelo
7c70064c-2d3b-4a70-a812-79c24a8c1cc0	2025-05-06 00:00:00	08:40	Gabriel 	Wallyson	local	2025-05-05 15:24:40.941	Cabelo
a4c73e40-d77b-4359-87ef-721970ff6631	2025-05-23 00:00:00	14:00	vandro júnior	Wallyson	558196610362@s.whatsapp.net	2025-05-05 00:00:00	Cabelo
c7c1702a-5e38-4384-abf8-a56c32fbb00c	2025-05-06 00:00:00	10:20	Pablo	Bruno	local	2025-05-05 16:09:15.328	Cabelo
75a2a432-d7c0-4868-975c-64ae8a9b1b0f	2025-05-10 00:00:00	10:00	heraldo	Bruno	558182599443@s.whatsapp.net	2025-05-05 00:00:00	Cabelo
23a91a10-b640-4dfe-ad71-150074e87128	2025-05-06 00:00:00	11:40	Pablo botox	Bruno	local	2025-05-05 16:09:30.058	Cabelo
55cad8a7-9ffd-4a26-9add-4f43fee4446d	2025-05-07 00:00:00	11:20	guilherme	Wallyson	558195021216@s.whatsapp.net	2025-05-05 00:00:00	Cabelo
6d4bb2d3-5cd4-491a-b736-b3b6c186695c	2025-05-08 00:00:00	15:20	emanoel	Bruno	558181079674@s.whatsapp.net	2025-05-05 00:00:00	Cabelo+Sobrancelha
b2f172a9-cfc9-4625-a049-c790ace9dfff	2025-05-08 00:00:00	16:00	leonardo cabral	Bruno	558197413226@s.whatsapp.net	2025-05-05 00:00:00	Cabelo
56559ebf-0e5c-4586-8587-e394eb702bed	2025-05-06 00:00:00	10:00	ryan	Wallyson	5511959620317@s.whatsapp.net	2025-05-05 00:00:00	Cabelo+Sobrancelha
f780da7c-02bd-4def-912f-5b78090e043a	2025-05-07 00:00:00	17:20	anderson	Bruno	558197666072@s.whatsapp.net	2025-05-05 00:00:00	Cabelo+Barba
e0ac706f-babc-4974-aaf5-269c7a6799fb	2025-06-20 00:00:00	16:00	Weligton 	Wallyson	local	2025-05-05 18:43:33.256	Cabelo
0216d483-d01b-4615-9dc8-2f2cc45a9de6	2025-05-07 00:00:00	10:20	Pablo 	Bruno	local	2025-05-05 19:48:06.47	Cabelo+Barba
e2390275-1c38-454f-8f16-87483d51a863	2025-05-07 00:00:00	11:40	Pablo botox 	Bruno	local	2025-05-05 19:48:22.044	Cabelo
0b6fa773-22cc-4598-b0e7-85c278c3f1f7	2025-05-06 00:00:00	09:40	Ocupado	Bruno	local	2025-05-05 19:48:44.654	Cabelo
658b1689-c43d-4564-a852-9c0f28daffea	2025-06-19 00:00:00	16:40	gláucio	Wallyson	558187255411@s.whatsapp.net	2025-05-05 00:00:00	Cabelo
2bb140fc-72a6-432d-956a-5df27bbfa8b3	2025-05-07 00:00:00	13:20	gabriel henrique	Bruno	558185537298@s.whatsapp.net	2025-05-05 00:00:00	Cabelo
1b3a8664-ba55-4d20-8d03-1cc24960aecc	2025-05-12 00:00:00	18:40	Robson 	Wallyson	local	2025-05-05 21:19:24.073	Cabelo+Barba
4c5c4b92-b101-41a2-99d3-d4e9221c4e18	2025-06-16 00:00:00	18:40	Robson	Wallyson	local	2025-05-05 21:20:27.771	Cabelo+Barba
b39ffa84-cacf-439a-ae98-7f2c6448692b	2025-07-02 00:00:00	16:00	Robson 	Wallyson	local	2025-05-05 21:21:16.264	Cabelo+Barba
dfda6ee5-537d-466f-a8de-f3174f5321b1	2025-06-17 00:00:00	16:40	fernando	Wallyson	558199410150@s.whatsapp.net	2025-05-05 00:00:00	Cabelo+Sobrancelha
dee17b9f-4481-4441-b2a2-b2a9487d3181	2025-05-14 00:00:00	16:40	fernando	Wallyson	558199410150@s.whatsapp.net	2025-05-05 00:00:00	Cabelo+Sobrancelha
ef438a5c-64bb-4208-baa1-be54470a697d	2025-06-19 00:00:00	10:20	del alumínio	Bruno	558197796167@s.whatsapp.net	2025-05-05 00:00:00	Cabelo+Barba
673b8da5-2fa9-4be8-a918-cce395b958e6	2025-05-07 00:00:00	10:00	Gabriel 	Wallyson	local	2025-05-05 22:37:22.9	Cabelo
44f97ed0-458b-4865-864c-dbec6775337f	2025-06-07 00:00:00	12:00	josé kaio	Bruno	558197806738@s.whatsapp.net	2025-05-05 00:00:00	Cabelo+Sobrancelha
a163469a-d0ad-4b3f-ac58-6d6ca6458898	2025-05-08 00:00:00	16:40	lucas leal	Bruno	558199505792@s.whatsapp.net	2025-05-05 00:00:00	Cabelo
ea3ee568-ac70-463b-89bc-6f6ef601c594	2025-05-08 00:00:00	17:20	joão gabriel	Bruno	558195216795@s.whatsapp.net	2025-05-05 00:00:00	Cabelo
559ca3c2-ae4a-4d99-865c-39c1ceb49713	2025-05-09 00:00:00	14:40	gustavo	Bruno	558198983986@s.whatsapp.net	2025-05-05 00:00:00	Cabelo
37de5e74-21f7-4b1f-9468-10ec3a22b1f4	2025-05-08 00:00:00	18:40	denilson	Bruno	558197084296@s.whatsapp.net	2025-05-05 00:00:00	Barba
b24dd740-f150-4df8-aac8-b14efe1a8920	2025-05-06 00:00:00	18:00	Wellington 	Wallyson	local	2025-05-06 01:58:15.773	Cabelo
cda90955-8b17-4de0-b91e-1f3b696b118f	2025-05-06 00:00:00	16:00	Ronnye	Wallyson	local	2025-05-06 01:58:46.846	Cabelo
7e5d65d8-7434-437e-b68f-04a376dc7f61	2025-05-09 00:00:00	18:00	letícia.	Wallyson	558182158768@s.whatsapp.net	2025-05-05 00:00:00	Cabelo
8d5e289e-14db-43c8-baa2-b44d0429a92c	2025-05-10 00:00:00	11:20	davi	Bruno	558182118061@s.whatsapp.net	2025-05-06 00:00:00	Cabelo
81022e9a-569d-45c7-965e-d1b9deec9d58	2025-05-07 00:00:00	09:00	Dorgyl	Bruno	local	2025-05-06 11:02:00.232	Cabelo+Barba
7ab27e7a-1723-4c4b-8b85-951098237895	2025-05-09 00:00:00	11:40	zaldinho delícia	Bruno	558198591039@s.whatsapp.net	2025-05-06 00:00:00	Cabelo
e4d2bf0b-3a69-4c10-b207-59cb22c2ddca	2025-05-06 00:00:00	17:20	Lucas 	Wallyson	local	2025-05-06 12:22:19.033	Cabelo
e5816a17-7a8a-4942-bd32-778e3c56117c	2025-05-07 00:00:00	16:40	lucas josé	Bruno	558199311183@s.whatsapp.net	2025-05-06 00:00:00	Cabelo+Barba
8698fa8d-c637-4124-aea5-691dc7d33273	2025-05-06 00:00:00	18:40	Gustavo 	Wallyson	local	2025-05-06 12:23:06.614	Cabelo
ce653808-1949-4940-92a0-f58bd7610b4c	2025-05-06 00:00:00	14:00	miguel	Wallyson	558199728099@s.whatsapp.net	2025-05-06 00:00:00	Cabelo
3ec2db3f-bca7-4f98-a899-6df5a3d9eb37	2025-05-08 00:00:00	11:00	joão miguel	Bruno	558198328109@s.whatsapp.net	2025-05-06 00:00:00	Cabelo
dc794548-3b8e-4ead-ac60-f8e6eb5a8bf1	2025-05-10 00:00:00	09:20	Heraldo	Bruno	local	2025-05-06 15:05:15.306	Cabelo
f6668aa9-b039-4f30-a6ab-2c01f2042c3b	2025-05-10 00:00:00	12:00	ryan valério	Bruno	558181779060@s.whatsapp.net	2025-05-06 00:00:00	Cabelo+Barba
b5edd982-6e61-406c-999e-ad4097535799	2025-05-09 00:00:00	18:40	eduardo	Wallyson	558194699903@s.whatsapp.net	2025-05-06 00:00:00	Cabelo
a260cd02-cde2-41d1-950e-19bd0e4f3495	2025-05-07 00:00:00	18:00	Dirceu 	Bruno	local	2025-05-06 16:10:22.913	Cabelo
a62693ea-f789-424b-baa6-222af847babf	2025-05-08 00:00:00	09:00	joaquim gonçalo	Bruno	558199504021@s.whatsapp.net	2025-05-06 00:00:00	Cabelo+Sobrancelha
e83a54c1-dca5-4e94-b05b-ce4037c000e7	2025-05-08 00:00:00	14:40	nicolas nóbrega	Bruno	558195411441@s.whatsapp.net	2025-05-06 00:00:00	Cabelo
40c842bd-a773-40c1-8598-9eefe88d4c47	2025-05-08 00:00:00	14:00	ítalo	Bruno	558195671075@s.whatsapp.net	2025-05-06 00:00:00	Cabelo
c0e28650-a3d8-4015-9c7d-581e4e6d7933	2025-05-06 00:00:00	15:20	Miguel 	Wallyson	local	2025-05-06 17:36:42.19	Cabelo
5680139b-bea6-4e6d-b2b2-ecf18f2cc388	2025-05-06 00:00:00	16:40	ryan	Wallyson	558199792268@s.whatsapp.net	2025-05-06 00:00:00	Cabelo
95ee50e1-ebb4-462b-8e2b-60c02563bf38	2025-05-07 00:00:00	10:40	vandro júnior	Wallyson	558196610362@s.whatsapp.net	2025-05-06 00:00:00	Cabelo
5fe97bc0-7779-497f-b842-fed0adf79ad8	2025-05-07 00:00:00	17:20	maria eduarda	Wallyson	558196936841@s.whatsapp.net	2025-05-06 00:00:00	Cabelo
8d211265-9b4c-4bc2-9a65-edb12e1f7073	2025-05-08 00:00:00	13:20	joão vinicius oliveira da silva	Bruno	558199714495@s.whatsapp.net	2025-05-06 00:00:00	Cabelo+Sobrancelha
0c005e36-2a24-47b1-ba99-8b41cb7d64b2	2025-05-10 00:00:00	10:00	matheus vinicius	Wallyson	558192338346@s.whatsapp.net	2025-05-06 00:00:00	Cabelo
94f8e32e-3758-4fdd-897e-c1c5b555a11a	2025-05-07 00:00:00	09:40	pedro henrique	Bruno	558199656200@s.whatsapp.net	2025-05-06 00:00:00	Cabelo+Sobrancelha
48bd080e-850a-4b11-a94d-518c9420191d	2025-05-07 00:00:00	08:00	Marcado 	Wallyson	local	2025-05-07 00:08:06.494	Cabelo
cd075dd9-f05c-4af4-83b8-4e8b88d84017	2025-05-07 00:00:00	11:00	ataliba albuquerque	Bruno	558182671510@s.whatsapp.net	2025-05-06 00:00:00	Barba
bd111d3d-3d87-4e2a-b201-7b763a8fd68d	2025-06-19 00:00:00	09:00	rhuan	Bruno	558195251500@s.whatsapp.net	2025-05-06 00:00:00	Cabelo+Sobrancelha
60910111-23f0-4b56-9912-c6f58edf191f	2025-05-09 00:00:00	16:00	arthur	Bruno	558198951857@s.whatsapp.net	2025-05-06 00:00:00	Cabelo
1cc162ce-e425-4275-b674-33c4e88b5b10	2025-05-07 00:00:00	16:00	Felipe Barbosa 	Wallyson	local	2025-05-07 01:23:18.908	Cabelo+Barba
274414ce-9973-4d39-acf5-5f609a87d51d	2025-05-09 00:00:00	16:40	manoel neto	Bruno	558195055212@s.whatsapp.net	2025-05-06 00:00:00	Cabelo+Barba
b094a11f-65be-409e-8aba-7031485e5cc8	2025-05-07 00:00:00	18:00	erick	Wallyson	558199045127@s.whatsapp.net	2025-05-06 00:00:00	Cabelo
41b56068-ea04-4cdf-81e6-51c55b61b990	2025-05-08 00:00:00	10:20	douglas	Bruno	558182599443@s.whatsapp.net	2025-05-07 00:00:00	Cabelo+Sobrancelha
59e52a0c-8bb6-4f54-8ff1-1ddca3be4aef	2025-05-10 00:00:00	16:00	Kaio 	Wallyson	local	2025-05-07 10:23:38.277	Cabelo
96bf3911-a2a0-45b0-b910-f24344b6ee41	2025-05-07 00:00:00	13:20	Indisponivel	Wallyson	Indisponivel	2025-05-07 10:25:08.163	
96c9aae6-372a-47c7-9a2d-86c71090e70b	2025-05-08 00:00:00	11:40	Kleyton	Bruno	local	2025-05-07 10:31:55.632	Cabelo
9d8fd7af-c759-4d1c-89eb-429e58f9b3c7	2025-05-08 00:00:00	09:40	Fillipe 	Bruno	local	2025-05-07 10:35:41.775	Cabelo
548f2cb3-47e2-400b-88b7-bf50f622b562	2025-05-08 00:00:00	10:00	Fillipe 	Wallyson	local	2025-05-07 10:42:57.817	Cabelo+Sobrancelha
a21c064f-45ed-4ce2-b190-e4b58f7e9653	2025-05-09 00:00:00	19:20	genildo	Bruno	558199736143@s.whatsapp.net	2025-05-07 00:00:00	Cabelo
25ba1de0-6e5e-4427-b8f5-45b5e319ba03	2025-05-09 00:00:00	20:00	thomas	Bruno	558181391720@s.whatsapp.net	2025-05-07 00:00:00	Cabelo
ff5f03ec-c8d1-4f4d-9cb7-3ca29be5821d	2025-05-08 00:00:00	18:00	john	Wallyson	558197904314@s.whatsapp.net	2025-05-07 00:00:00	Cabelo+Barba
9c05dacf-a4c6-4e80-ae1d-331bc5cef097	2025-06-20 00:00:00	15:20	Thiago 	Wallyson	local	2025-05-07 13:35:07.868	Cabelo+Barba
9087fe38-4852-4d2a-a4e7-11cb993a14bc	2025-06-14 00:00:00	09:20	luan	Bruno	558184474628@s.whatsapp.net	2025-05-07 00:00:00	Cabelo+Sobrancelha
e60f44de-22e7-4326-b2c6-28227ba2229d	2025-05-08 00:00:00	15:20	rafael	Wallyson	558188763249@s.whatsapp.net	2025-05-07 00:00:00	Cabelo
b244b22e-22ec-4c76-b666-f9b246be764a	2025-05-09 00:00:00	09:00	windney	Bruno	558187774760@s.whatsapp.net	2025-05-07 00:00:00	Cabelo
ae86bb27-66fc-4916-b243-64f82456e18f	2025-06-19 00:00:00	17:20	gustavo farias	Wallyson	558196195368@s.whatsapp.net	2025-05-07 00:00:00	Cabelo
9b7a2808-e853-4b11-b0e5-fa3c7d731767	2025-05-09 00:00:00	10:20	rennan menezes	Bruno	558179005726@s.whatsapp.net	2025-05-07 00:00:00	Cabelo
e8c8dc7b-e861-43a1-8d76-195b0bd7521c	2025-05-07 00:00:00	18:40	Marcado 	Wallyson	local	2025-05-07 19:16:01.222	Cabelo
2ac2ba42-9f8d-43f6-9d7b-e6eefe2bb6a6	2025-05-15 00:00:00	14:00	Felipe Barbosa 	Wallyson	local	2025-05-07 19:48:20.349	Cabelo+Barba
3785dda1-e17a-4299-bcfb-f2882b24a6e0	2025-05-09 00:00:00	14:00	Jeferson 	Wallyson	local	2025-05-07 19:58:23.036	Cabelo+Barba
263f0832-b300-408b-bf36-d17e17fa08b7	2025-05-12 00:00:00	18:00	andre	Bruno	558198995821@s.whatsapp.net	2025-05-07 00:00:00	Cabelo+Sobrancelha
1aec1344-1bae-4491-a5e7-363b14550e2b	2025-06-19 00:00:00	14:40	andre	Bruno	558198995821@s.whatsapp.net	2025-05-07 00:00:00	Cabelo+Sobrancelha
5538f8e3-d16f-439b-9069-e8de9b02e678	2025-06-21 00:00:00	10:00	luan victor	Wallyson	558181307345@s.whatsapp.net	2025-05-07 00:00:00	Cabelo+Sobrancelha
5c55564b-fd3a-462e-8ea6-eb1167f7b09c	2025-05-08 00:00:00	16:40	Igor 	Wallyson	local	2025-05-07 22:06:22.911	Cabelo+Barba
58e61901-9240-45fb-a9ae-aaf74f8125d7	2025-06-18 00:00:00	18:00	vinicius	Bruno	558196496652@s.whatsapp.net	2025-05-07 00:00:00	Cabelo
1ad0b48d-2034-4bf5-8762-3545b0f1def1	2025-05-15 00:00:00	18:40	josé rafael	Bruno	558197031839@s.whatsapp.net	2025-05-07 00:00:00	Cabelo
33be1df1-9db6-4022-aa2f-38513aa4b0fd	2025-05-08 00:00:00	17:20	gabriel	Wallyson	558196236188@s.whatsapp.net	2025-05-07 00:00:00	Cabelo
14de32c6-48e9-473e-95de-339bec49cf7e	2025-05-10 00:00:00	08:40	mathias	Wallyson	558187494403@s.whatsapp.net	2025-05-07 00:00:00	Cabelo+Barba
99ad6072-01cb-443b-a6e6-c01f1760252d	2025-06-18 00:00:00	15:20	william gabriel	Bruno	558198087356@s.whatsapp.net	2025-05-07 00:00:00	Cabelo
87df9ba4-9413-4d54-9c96-011c56cf5e67	2025-05-16 00:00:00	16:00	joao lucas	Bruno	558189785404@s.whatsapp.net	2025-05-07 00:00:00	Cabelo+Sobrancelha
ce2f8a10-ba43-4250-9d0a-96f9c147bc11	2025-06-18 00:00:00	14:40	joao lucas	Bruno	558189785404@s.whatsapp.net	2025-05-07 00:00:00	Cabelo+Sobrancelha
f7ec830d-7c93-47fe-b1d5-a0d41feda4b8	2025-05-08 00:00:00	18:40	Júnior 	Wallyson	local	2025-05-08 00:57:42.584	Cabelo
403927cc-d27d-42ff-b2bc-a233dab2a0ef	2025-05-09 00:00:00	08:00	luiz felipe barbosa da silva nunes	Wallyson	558197441313@s.whatsapp.net	2025-05-07 00:00:00	Cabelo
a59691c4-2b2f-4683-86ca-a1a7acd25059	2025-05-09 00:00:00	19:20	Wendel 	Wallyson	local	2025-05-08 01:23:50.71	Cabelo
77d9155f-e723-4e8a-9d9a-bfed8a99ff73	2025-05-08 00:00:00	16:00	adaias 	Wallyson	local	2025-05-08 01:25:13.499	Cabelo
54eb72da-47aa-427f-b4e2-382bd340904b	2025-05-09 00:00:00	17:20	marlon	Bruno	558185124815@s.whatsapp.net	2025-05-08 00:00:00	Cabelo
5bcc68a3-3bbd-4ce5-bb02-60314cf63fa1	2025-05-08 00:00:00	08:40	victor kawe santos silva	Wallyson	558391988034@s.whatsapp.net	2025-05-08 00:00:00	Cabelo+Sobrancelha
ba2cfbb5-83ea-424f-a40d-84b692e94203	2025-05-09 00:00:00	13:20	Paulinho 	Wallyson	local	2025-05-08 11:27:37.079	Cabelo
99f543e0-fdbb-4276-850a-46a34a1a2fc2	2025-05-12 00:00:00	18:40	Alex del+ filho 	Bruno	local	2025-05-08 11:35:35.376	Cabelo
6cec6dc7-a4be-4f93-958f-8d09c9c8171e	2025-05-13 00:00:00	18:40	victor	Bruno	558197610116@s.whatsapp.net	2025-05-08 00:00:00	Cabelo
2f83deb5-b778-49cb-8f11-29212885dafc	2025-05-13 00:00:00	18:00	arthur	Bruno	558197087531@s.whatsapp.net	2025-05-08 00:00:00	Cabelo
395a1b95-0226-4534-b3af-02650aa651e6	2025-06-13 00:00:00	16:00	Wellington adv	Bruno	local	2025-05-08 15:52:56.38	Cabelo
6cab2224-e3cb-49ea-b826-af1a9a37269f	2025-06-13 00:00:00	18:00	Wellington adv	Bruno	local	2025-05-08 15:53:17.16	Cabelo+Barba
8da59823-655a-4b3c-9da6-35531ecba08a	2025-05-10 00:00:00	14:40	0	Wallyson	558199700555@s.whatsapp.net	2025-05-08 00:00:00	Cabelo
3e5ce72c-acb8-4f8d-b17b-23c83819e2e2	2025-05-13 00:00:00	18:00	Vinicius 	Wallyson	local	2025-05-08 16:21:18.782	Cabelo
cbde4dd2-4aa2-4c74-aa15-3816add8c18b	2025-05-10 00:00:00	14:00	Clenildo marido roberta	Wallyson	local	2025-05-08 18:26:10.756	Cabelo
8a8c29cd-9a29-453d-9113-a4e9cbb09f17	2025-05-10 00:00:00	09:20	matheus	Wallyson	558196490565@s.whatsapp.net	2025-05-08 00:00:00	Cabelo
3f880a46-7628-4ad9-a4b9-b07b64807afc	2025-05-09 00:00:00	16:40	Adaias 	Wallyson	local	2025-05-08 20:13:00.347	Cabelo
19dabee9-d57e-48aa-8017-0a0bd5daa466	2025-05-09 00:00:00	10:40	marcio	Wallyson	558198973109@s.whatsapp.net	2025-05-08 00:00:00	Cabelo
67b43a29-373b-4266-850f-7b5dfbea8e14	2025-06-20 00:00:00	14:40	Luan 	Wallyson	local	2025-05-08 22:50:43.498	Cabelo+Sobrancelha
bbb70108-76fd-4e5b-bde4-69005c2f80ab	2025-05-17 00:00:00	08:00	tiago	Bruno	558181319163@s.whatsapp.net	2025-05-08 00:00:00	Cabelo
314e2062-1ada-4d79-9aaf-472e6735f3f7	2025-05-10 00:00:00	10:40	júlio césar	Wallyson	558196440108@s.whatsapp.net	2025-05-08 00:00:00	Cabelo+Sobrancelha
0d044f35-5d9a-4b28-94f7-f3c8fa657f10	2025-05-10 00:00:00	13:20	felipe	Wallyson	558181451150@s.whatsapp.net	2025-05-08 00:00:00	Cabelo+Sobrancelha
502d6b64-ca9d-413f-8a41-0f197381df54	2025-05-09 00:00:00	15:20	bruno gomes	Bruno	558196522258@s.whatsapp.net	2025-05-08 00:00:00	Cabelo
12cb164e-194e-4371-9fee-0f81bb94cd21	2025-05-09 00:00:00	16:00	davi	Wallyson	558197232916@s.whatsapp.net	2025-05-09 00:00:00	Cabelo
f41a2403-9cf8-45cc-bc49-0379383ceefa	2025-05-16 00:00:00	13:20	bruno	Bruno	558181317634@s.whatsapp.net	2025-05-09 00:00:00	Cabelo+Sobrancelha
f1e59bd6-a794-4fe5-a63c-e5554d0ee172	2025-05-12 00:00:00	14:00	ismael pedro	Bruno	558199824318@s.whatsapp.net	2025-05-09 00:00:00	Cabelo
6d268f9c-b822-47e9-8faf-54c776e04d0c	2025-05-12 00:00:00	16:40	geam pedro	Bruno	558179092590@s.whatsapp.net	2025-05-09 00:00:00	Cabelo
4a39818d-9fbd-4b76-982c-1f326d714928	2025-05-10 00:00:00	11:20	alysson	Wallyson	558195985705@s.whatsapp.net	2025-05-09 00:00:00	Cabelo
9262b324-6743-4a8b-b85a-d0b957d47e4e	2025-05-10 00:00:00	12:00	Bruno 	Wallyson	local	2025-05-09 13:25:47.907	Cabelo
c81bd08c-deed-4f97-bf37-d3b1a5721a9b	2025-05-10 00:00:00	17:20	Robertinho 	Wallyson	local	2025-05-09 13:32:21.445	Cabelo
975a63ce-a190-45ea-9f02-6801c3e9c3f0	2025-05-09 00:00:00	15:20	lucas	Wallyson	558182524811@s.whatsapp.net	2025-05-09 00:00:00	Cabelo
d2f3ee08-9fee-48f6-b2df-e5789c621351	2025-05-09 00:00:00	14:40	miguel	Wallyson	558198435034@s.whatsapp.net	2025-05-09 00:00:00	Cabelo
4dc5246f-0245-4363-a0a0-e3b5ffda4823	2025-05-23 00:00:00	09:40	tarcísio	Bruno	558185887456@s.whatsapp.net	2025-05-09 00:00:00	Cabelo
00e35c7a-0ecd-42b7-bc0e-12d0e9bb9b4c	2025-05-09 00:00:00	09:40	Indisponivel	Bruno	Indisponivel	2025-05-09 16:41:46.259	
78a42665-94b4-42f1-b368-06681c13a127	2025-06-18 00:00:00	09:00	kayque	Bruno	558197975570@s.whatsapp.net	2025-05-09 00:00:00	Cabelo
531169ba-4a4f-4a59-9286-0a668fa918bb	2025-05-12 00:00:00	15:20	fernando	Bruno	558199817133@s.whatsapp.net	2025-05-09 00:00:00	Cabelo
b6784243-8b00-4cea-bbbc-e7c0b46cc30f	2025-05-10 00:00:00	18:00	yan	Wallyson	558199168954@s.whatsapp.net	2025-05-09 00:00:00	Cabelo
c8216b5f-64e4-4a55-a1e4-77b3895a667d	2025-05-12 00:00:00	17:20	pedro augusto	Bruno	558171185174@s.whatsapp.net	2025-05-09 00:00:00	Cabelo
9b498dac-8d8d-4829-9db9-96c6075ea339	2025-05-10 00:00:00	16:40	ricardo	Wallyson	558182727353@s.whatsapp.net	2025-05-10 00:00:00	Cabelo
800c3121-5c05-4e17-97a7-02fd2a8885b5	2025-06-18 00:00:00	14:00	charles chaple	Bruno	558197279446@s.whatsapp.net	2025-05-10 00:00:00	Cabelo
f6bca098-9d88-4bb3-9c9e-c587ac997b9f	2025-05-10 00:00:00	15:20	nicholas arruda	Wallyson	558182645590@s.whatsapp.net	2025-05-10 00:00:00	Cabelo
6e4f96df-006a-474f-9795-39b95bbcf018	2025-06-21 00:00:00	08:00	pedro lucas	Wallyson	558197832195@s.whatsapp.net	2025-05-10 00:00:00	Cabelo
65aec2d1-cce9-4b0f-898a-3695ed7ef331	2025-05-13 00:00:00	16:00	cauã gabriel	Bruno	558199527666@s.whatsapp.net	2025-05-10 00:00:00	Cabelo
53f61d14-74de-4440-bcc6-a9b50734d0ad	2025-05-12 00:00:00	18:00	edson	Wallyson	558182524811@s.whatsapp.net	2025-05-10 00:00:00	Cabelo
090717f8-de3a-4b65-8a58-ca7cf100954d	2025-06-13 00:00:00	17:20	Kaio 	Wallyson	local	2025-05-10 19:40:23.38	Cabelo
9d0afcf8-1a50-46dd-b249-68658a46e546	2025-05-13 00:00:00	13:20	manoel neto	Bruno	558195055212@s.whatsapp.net	2025-05-10 00:00:00	Cabelo+Barba
60596a00-4730-4327-b530-1c337594d90b	2025-05-12 00:00:00	14:00	luan	Wallyson	558196003977@s.whatsapp.net	2025-05-10 00:00:00	Cabelo+Sobrancelha
e246c162-8654-47a2-9171-582e67283ecb	2025-05-12 00:00:00	14:40	davi	Bruno	558173448482@s.whatsapp.net	2025-05-11 00:00:00	Cabelo
ae1692f6-e83e-4fcc-ba14-e940ab24e21e	2025-05-17 00:00:00	09:20	wictor hugo	Bruno	558182580254@s.whatsapp.net	2025-05-11 00:00:00	Cabelo+Sobrancelha
95bb09d0-f65d-4d51-82df-071a7a241fe3	2025-05-14 00:00:00	18:00	fábio cria	Bruno	5521980058628@s.whatsapp.net	2025-05-11 00:00:00	Cabelo
23545a27-9a08-4ced-96a8-e842ef75ea0f	2025-05-12 00:00:00	13:20	adriel gomes	Bruno	558196649167@s.whatsapp.net	2025-05-11 00:00:00	Cabelo+Barba
f43293a6-084c-4a1a-ba88-f1894b553b83	2025-05-16 00:00:00	18:00	emanuel	Wallyson	558196314532@s.whatsapp.net	2025-05-11 00:00:00	Cabelo
335fd78f-cbc7-4e3a-873d-703ecb7ff59e	2025-05-19 00:00:00	16:40	rhuan	Bruno	558195251500@s.whatsapp.net	2025-05-11 00:00:00	Cabelo+Sobrancelha
891b6120-7f9a-4e9f-a201-56dc77d41bea	2025-06-07 00:00:00	16:40	zaldinho	Bruno	558198591039@s.whatsapp.net	2025-05-11 00:00:00	Cabelo
a960974b-0a95-4127-a956-6209a8c6b79e	2025-06-17 00:00:00	13:20	fabiano	Bruno	558194610556@s.whatsapp.net	2025-05-11 00:00:00	Cabelo
45ef16ad-d8ed-453c-af49-d5d55198c49b	2025-05-12 00:00:00	16:40	francisco	Wallyson	558182062970@s.whatsapp.net	2025-05-11 00:00:00	Cabelo
2941b39e-361b-4b0d-9297-928faacd8d94	2025-05-14 00:00:00	18:40	arthur sales	Bruno	558199775133@s.whatsapp.net	2025-05-11 00:00:00	Cabelo+Sobrancelha
ad1bfa83-bb18-42a1-b3e9-9e33c3c8b674	2025-05-13 00:00:00	11:00	joão pedro campos	Bruno	558196073970@s.whatsapp.net	2025-05-12 00:00:00	Cabelo+Barba
81b01835-c55f-485b-a61d-9940827eec4d	2025-05-13 00:00:00	17:20	Paulo	Wallyson	local	2025-05-12 09:50:57.888	Cabelo
a11f5e1c-552b-4f98-8302-81d1a60f6472	2025-05-17 00:00:00	16:40	heytor	Bruno	558197714625@s.whatsapp.net	2025-05-12 00:00:00	Cabelo+Barba
1cfaf930-4fb6-42f3-af75-692edb258cf8	2025-05-12 00:00:00	09:40	Indisponivel	Bruno	Indisponivel	2025-05-12 10:17:37.417	
fa3ee4bb-1a3c-4526-a794-448e6821a755	2025-05-12 00:00:00	10:20	Indisponivel	Bruno	Indisponivel	2025-05-12 10:17:37.855	
0e9cbb75-235c-417a-8031-afc40d346005	2025-05-12 00:00:00	11:00	Indisponivel	Bruno	Indisponivel	2025-05-12 10:17:37.886	
600257aa-ab6e-42f4-ba61-614e5ef5c605	2025-05-12 00:00:00	11:40	Indisponivel	Bruno	Indisponivel	2025-05-12 10:17:37.919	
d46a1917-fd54-4472-8e56-7c0797655a14	2025-05-12 00:00:00	09:00	Marcelo 	Wallyson	local	2025-05-12 10:28:38.578	Cabelo
b6a1664c-16ba-4662-9e43-6fdb6d325bd5	2025-05-17 00:00:00	14:00	ryan	Bruno	558196680308@s.whatsapp.net	2025-05-12 00:00:00	Cabelo+Barba
87a0c31b-1697-41e7-a2f3-ccb0bff98b82	2025-05-13 00:00:00	11:20	Davi 	Wallyson	local	2025-05-12 12:37:01.529	Cabelo
d47e3a0f-38f2-4e29-9111-28a87da7aa8c	2025-05-17 00:00:00	10:40	leonardo	Bruno	558196987419@s.whatsapp.net	2025-05-12 00:00:00	Cabelo
225ebbe6-d7f2-4a75-abaa-a045fa994d4d	2025-05-17 00:00:00	11:20	leonardo	Bruno	558196987419@s.whatsapp.net	2025-05-12 00:00:00	Cabelo
eb0997de-191f-4a62-b8c9-245a66b35f4c	2025-05-17 00:00:00	08:00	Vaninho 	Wallyson	local	2025-05-12 14:16:04.19	Cabelo+Barba
3a537bc9-566f-48d9-9e8b-4b04e439e1ce	2025-05-14 00:00:00	10:20	Identidade 	Bruno	local	2025-05-12 14:46:10.238	Cabelo
0bf3070f-0e85-4afa-82a0-de97b2781a88	2025-05-14 00:00:00	11:00	Identidade	Bruno	local	2025-05-12 14:47:07.171	Cabelo
a0db0bdc-5924-4c85-a51d-05e8d929e165	2025-05-14 00:00:00	11:40	Identidade 	Bruno	local	2025-05-12 14:47:39.202	Cabelo
cdbee2f8-255f-4a7b-b577-955c73eebb74	2025-05-13 00:00:00	09:40	fillipe	Bruno	558192151856@s.whatsapp.net	2025-05-12 00:00:00	Cabelo+Sobrancelha
991ac860-11ca-46b0-a450-d1b0541acdce	2025-05-12 00:00:00	14:40	João Carmen corte e luzes 	Wallyson	local	2025-05-12 15:45:03.36	Cabelo
819bca03-6a2e-41b4-b130-223927918bf1	2025-05-13 00:00:00	17:20	joão guilherme	Bruno	558181673375@s.whatsapp.net	2025-05-12 00:00:00	Cabelo
94169eb3-b2ff-490c-bfe9-a6bcbce67bb7	2025-05-12 00:00:00	16:00	Dorgyl 	Bruno	local	2025-05-12 17:33:48.937	Cabelo
c53d579f-9ec9-4c35-b4bb-3df1de565a06	2025-05-13 00:00:00	14:40	ataliba albuquerque	Bruno	558182671510@s.whatsapp.net	2025-05-12 00:00:00	Barba
6b3b9164-7e41-4ff2-b250-688787588279	2025-05-16 00:00:00	11:40	arthur	Bruno	558194115511@s.whatsapp.net	2025-05-12 00:00:00	Cabelo+Barba
c80da671-5f55-49e3-a1c1-5d3d61500907	2025-05-13 00:00:00	08:40	Isaac 	Wallyson	local	2025-05-12 19:03:06.173	Cabelo
1161997d-adcd-460f-96a3-d39bcb8993a3	2025-05-13 00:00:00	08:00	Médico 	Wallyson	local	2025-05-12 19:03:43.956	Cabelo
497e20b5-1ce2-4d6c-b622-664a4ba58087	2025-05-14 00:00:00	17:20	welliton fonseca	Bruno	558198022472@s.whatsapp.net	2025-05-12 00:00:00	Cabelo
fe92fac1-927d-4eff-a1e7-fd5739056abb	2025-05-13 00:00:00	15:20	Geam	Bruno	local	2025-05-12 20:00:52.39	Cabelo
74a1af3d-0d14-4702-8e37-b6b7b4e9aeef	2025-05-13 00:00:00	14:00	edinho	Wallyson	558198615843@s.whatsapp.net	2025-05-12 00:00:00	Cabelo
b0a38295-f1a7-4167-b524-49907c962211	2025-05-16 00:00:00	14:00	Wanderson 	Wallyson	local	2025-05-12 22:16:05.933	Cabelo
8fe8a193-b0a2-4b3f-a7ef-38dc7f4bbe84	2025-05-16 00:00:00	17:20	pedro henrique	Bruno	558199160082@s.whatsapp.net	2025-05-12 00:00:00	Cabelo
3da122a6-e453-4c5d-871c-72591c485c2a	2025-05-16 00:00:00	14:40	Irmão de wanderson 	Wallyson	local	2025-05-12 23:08:10.924	Cabelo
91185b3e-1a48-4bd2-8eff-4db03ceaa0c1	2025-05-15 00:00:00	18:00	wellington arruda	Wallyson	558196852620@s.whatsapp.net	2025-05-12 00:00:00	Cabelo+Barba
43a658c8-9a2e-4324-a9b0-ddd8fc7c76aa	2025-05-17 00:00:00	14:40	josé miguel domingos batista	Bruno	558196219587@s.whatsapp.net	2025-05-12 00:00:00	Cabelo+Sobrancelha
27513d9a-d068-4a23-8188-aa1e9af2b184	2025-05-14 00:00:00	14:00	renan	Bruno	558198296625@s.whatsapp.net	2025-05-12 00:00:00	Cabelo
3dbf1023-d45b-4fa8-9024-d25342264fe2	2025-05-14 00:00:00	14:40	moisés	Bruno	558198296625@s.whatsapp.net	2025-05-12 00:00:00	Cabelo
342dcad1-05a1-485d-90bf-7bc743b94e33	2025-05-13 00:00:00	11:40	manoel neto	Bruno	558195055212@s.whatsapp.net	2025-05-12 00:00:00	Cabelo+Barba
9d3f40bd-dd5f-4381-b2b0-604caf4e7ac8	2025-05-13 00:00:00	14:00	andré	Bruno	558198646935@s.whatsapp.net	2025-05-13 00:00:00	Cabelo+Sobrancelha
3309049d-b739-48c4-8c99-41cf871d8200	2025-05-13 00:00:00	13:20	fernando filho	Wallyson	558198514718@s.whatsapp.net	2025-05-13 00:00:00	Cabelo
efbe2102-7d68-4fcd-926e-f59aa5f16016	2025-05-13 00:00:00	16:00	Matheus 	Wallyson	local	2025-05-13 13:59:09.314	Cabelo
fbb2b679-f869-406e-92d5-8a70c7d66777	2025-05-15 00:00:00	16:00	romerio	Bruno	558198627331@s.whatsapp.net	2025-05-13 00:00:00	Cabelo+Barba
a4efc697-ed81-4846-b1a6-dc188b630449	2025-05-17 00:00:00	12:00	allef ryan	Bruno	558195740243@s.whatsapp.net	2025-05-13 00:00:00	Cabelo
4ad1c6bb-3fc0-44db-99db-27019964de05	2025-05-14 00:00:00	13:20	fernando	Bruno	558196035269@s.whatsapp.net	2025-05-13 00:00:00	Cabelo
65525743-04c0-4515-b785-9972b4d84a25	2025-05-13 00:00:00	18:40	Médico walyson 	Wallyson	local	2025-05-13 15:49:42.054	Cabelo
cb6fddf9-0a4b-4ad8-b0f2-d0a61ef7d041	2025-05-13 00:00:00	16:40	Eliel	Bruno	local	2025-05-13 16:08:19.54	Cabelo
b045b4bb-62a6-4e92-b96b-a10e18a09317	2025-05-14 00:00:00	09:00	luan	Bruno	558197440899@s.whatsapp.net	2025-05-13 00:00:00	Cabelo+Barba
487b902d-2666-44b3-83e6-86378e9d055c	2025-05-17 00:00:00	17:20	Júnior umari falta 	Bruno	local	2025-05-13 16:45:44.596	Cabelo
beb7503a-a534-47eb-b487-33052a7f581d	2025-05-17 00:00:00	18:00	eduardo	Bruno	558194297236@s.whatsapp.net	2025-05-13 00:00:00	Cabelo+Barba
bd114e04-4632-4405-810b-442f0a0477b0	2025-05-14 00:00:00	10:00	ruan	Wallyson	558199445445@s.whatsapp.net	2025-05-13 00:00:00	Cabelo
debdf8b1-8769-4e9b-a8de-c33ecde3596f	2025-05-14 00:00:00	10:40	murilo	Wallyson	558199445445@s.whatsapp.net	2025-05-13 00:00:00	Cabelo
1a4a1175-fb91-45e0-993a-438481446848	2025-05-13 00:00:00	14:00	só depois me confirma o horário	Bruno	558195436268@s.whatsapp.net	2025-05-13 00:00:00	Cabelo+Barba
1fd874ee-03d6-47e5-b8ea-1875f6d261b9	2025-05-14 00:00:00	16:00	mayrlon	Bruno	558196600679@s.whatsapp.net	2025-05-13 00:00:00	Cabelo+Sobrancelha
ff6be11f-bd90-4dd8-a3e6-7aa6f1cf110c	2025-05-14 00:00:00	09:40	kevin	Bruno	558195204685@s.whatsapp.net	2025-05-13 00:00:00	Cabelo
1bc3f7ad-3fd8-4dff-8654-06e3717d67a6	2025-05-16 00:00:00	15:20	matheus	Bruno	558197941830@s.whatsapp.net	2025-05-13 00:00:00	Cabelo
577d86dd-edd4-40c2-9b86-cdb49c1d8b65	2025-06-07 00:00:00	15:20	joão lucas	Bruno	558189785404@s.whatsapp.net	2025-05-13 00:00:00	Cabelo+Sobrancelha
603d18a9-4d09-48f3-ad33-c9877a629e31	2025-05-17 00:00:00	14:00	Allysson 	Wallyson	local	2025-05-13 23:33:06.02	Cabelo
21a56240-7029-4d37-bd46-96d9d598ee67	2025-05-15 00:00:00	18:40	Carlos 	Wallyson	local	2025-05-13 23:34:50.637	Cabelo
dd286b2d-4557-43c4-93bf-9e53a141a4b7	2025-05-14 00:00:00	16:40	Livio	Bruno	local	2025-05-13 23:48:31.754	Cabelo+Barba
b7746641-1a26-46eb-8488-3dc6a9bab60c	2025-05-16 00:00:00	16:40	joão neto	Bruno	558197649498@s.whatsapp.net	2025-05-13 00:00:00	Cabelo
f35d9963-1d0e-43b9-a5fc-b4aeeafb70ca	2025-05-14 00:00:00	08:00	fernando	Wallyson	558199732471@s.whatsapp.net	2025-05-13 00:00:00	Cabelo
bbe2513d-d0c5-43c5-abca-427d42abe09c	2025-05-15 00:00:00	13:20	luka	Bruno	558198659687@s.whatsapp.net	2025-05-14 00:00:00	Cabelo+Sobrancelha
66b22ef5-d02d-4922-8b30-ec83c39b978f	2025-05-15 00:00:00	14:00	luis	Bruno	558199061615@s.whatsapp.net	2025-05-14 00:00:00	Cabelo+Sobrancelha
3e03a2d9-f586-4e7e-a3e1-8bb620d0c15b	2025-05-19 00:00:00	13:20	joão marcello	Bruno	558196393507@s.whatsapp.net	2025-05-14 00:00:00	Cabelo
c0cf97a8-459e-4056-b6e9-e0f65f335b3e	2025-05-16 00:00:00	14:00	lucas victor	Bruno	558196941962@s.whatsapp.net	2025-05-14 00:00:00	Cabelo
95a7eced-d8fd-4707-8571-daf1d2bdd849	2025-05-15 00:00:00	08:40	Luiz André 	Wallyson	local	2025-05-14 13:58:16.367	Cabelo
1dab3e37-423f-40b9-80bb-49e4924cc860	2025-05-15 00:00:00	17:20	Daniel 	Wallyson	local	2025-05-14 13:59:44.633	Cabelo
c31fe554-605a-4161-90ad-60b89629c45e	2025-05-16 00:00:00	18:00	matheus	Bruno	558196073942@s.whatsapp.net	2025-05-14 00:00:00	Cabelo+Barba
ee3f5fc1-aa04-4294-b5a5-d2fc15655df7	2025-05-16 00:00:00	09:00	neto	Bruno	558181091175@s.whatsapp.net	2025-05-14 00:00:00	Cabelo+Sobrancelha
59f00cb2-8ad6-46a8-9e74-0ec23db91536	2025-05-16 00:00:00	13:20	Paulinho 	Wallyson	local	2025-05-14 17:02:58.465	Acabamento (Pezinho)
a8d0b3c8-2b5b-4c72-a86e-088d2d41a55c	2025-05-15 00:00:00	09:00	flávio	Bruno	5511992553806@s.whatsapp.net	2025-05-14 00:00:00	Cabelo
0e4c446b-6150-4a7e-9bff-fcfe4f9bc3b3	2025-05-16 00:00:00	14:40	luiz henrique	Bruno	558189496855@s.whatsapp.net	2025-05-14 00:00:00	Cabelo
e1f4493e-4f6d-4f08-b6b6-c507737e2de1	2025-05-15 00:00:00	09:40	Vinicius botox	Bruno	local	2025-05-14 18:19:44.219	Cabelo
56059808-cce4-4d55-a488-838263c9bbdd	2025-05-15 00:00:00	11:00	Vinicius botox	Bruno	local	2025-05-14 18:20:06.869	Cabelo
ae6e38ae-3ba3-47d9-adf6-bd98c81715ba	2025-06-07 00:00:00	08:00	gabriel	Bruno	558197699397@s.whatsapp.net	2025-05-14 00:00:00	Cabelo
66543f05-c414-49bf-a7b8-4162cc2574cc	2025-05-19 00:00:00	14:00	gabriel	Bruno	558197699397@s.whatsapp.net	2025-05-14 00:00:00	Cabelo
1ed7e8bb-5609-46db-905f-a68904c8f9ec	2025-05-15 00:00:00	17:20	keven	Bruno	558189774392@s.whatsapp.net	2025-05-14 00:00:00	Sobrancelha
77b2436a-493d-4e6c-b5ee-61535b1b045c	2025-05-17 00:00:00	16:00	du bolo	Bruno	558196647899@s.whatsapp.net	2025-05-14 00:00:00	Cabelo+Sobrancelha
5218ddb0-cd57-45e2-9198-e0cad2ff1e87	2025-05-15 00:00:00	10:20	joão rommel	Bruno	558182224217@s.whatsapp.net	2025-05-14 00:00:00	Cabelo
a982295f-dbad-4474-8f3e-d9af88d82f98	2025-05-16 00:00:00	19:20	denilson	Bruno	558197084296@s.whatsapp.net	2025-05-14 00:00:00	Barba
b62b88b4-7c5d-4360-ae13-990098ba4ad7	2025-05-19 00:00:00	17:20	henrique gomes de lima segundo	Bruno	558199224958@s.whatsapp.net	2025-05-14 00:00:00	Cabelo
1fb26ee4-a96e-48eb-990e-b620fe01eed4	2025-05-16 00:00:00	09:40	hatus	Bruno	558199706416@s.whatsapp.net	2025-05-14 00:00:00	Cabelo+Barba
8d5a94b5-a0b2-4a6d-bf86-018c08936a63	2025-05-16 00:00:00	11:20	Wellington 	Wallyson	local	2025-05-15 01:43:11.302	Cabelo
541eb958-1781-4c54-a7cd-dd3bc8286032	2025-05-15 00:00:00	16:40	carlos ernandes (nando)	Bruno	558181323380@s.whatsapp.net	2025-05-15 00:00:00	Cabelo
2b3bf983-7453-4ceb-926a-bd07ff665ab0	2025-05-15 00:00:00	14:40	lucas	Bruno	558182451503@s.whatsapp.net	2025-05-15 00:00:00	Cabelo
d7015fce-853c-4687-9458-62ad347dedc3	2025-05-15 00:00:00	11:20	Esterferson 	Wallyson	local	2025-05-15 10:52:22.009	Cabelo
d9760cdc-8fae-4fa4-a158-c460510ac5ee	2025-05-16 00:00:00	10:20	maurycio	Bruno	558197162890@s.whatsapp.net	2025-05-15 00:00:00	Cabelo+Sobrancelha
301ed9f1-fcca-4660-86ee-4768af914603	2025-05-16 00:00:00	17:20	Leandro 	Wallyson	local	2025-05-15 12:56:34.664	Cabelo+Barba
58818549-ffec-44cd-b8a2-93c9d400acc5	2025-05-30 00:00:00	17:20	marlon	Bruno	558185124815@s.whatsapp.net	2025-05-15 00:00:00	Cabelo
41be9796-5496-4777-a1f9-b1d8c644391b	2025-05-16 00:00:00	18:40	lucas	Wallyson	558197326785@s.whatsapp.net	2025-05-15 00:00:00	Cabelo
4d6089df-c06d-4429-b647-89abf710a59e	2025-05-16 00:00:00	20:00	ualesson	Bruno	558199786467@s.whatsapp.net	2025-05-15 00:00:00	Cabelo
93987599-3456-4231-bddb-44ed0e16bc9c	2025-05-19 00:00:00	14:40	rhyan	Bruno	558196672733@s.whatsapp.net	2025-05-15 00:00:00	Cabelo
1a5d1263-e6c7-46b3-a524-6618ba4ba530	2025-05-16 00:00:00	15:20	joao vitor	Wallyson	558198490038@s.whatsapp.net	2025-05-15 00:00:00	Cabelo
6074804e-b8d7-428e-bb0c-ee319fe79783	2025-05-17 00:00:00	16:00	Kayke 	Wallyson	local	2025-05-15 15:24:08.624	Cabelo
f67e4ace-de1a-4a92-b756-6e1f2eff1bba	2025-05-16 00:00:00	20:00	david callebe	Wallyson	558191447860@s.whatsapp.net	2025-05-15 00:00:00	Cabelo+Barba
abf486f8-5385-4974-8584-0f33e4add6a9	2025-05-15 00:00:00	15:20	Felipe 	Wallyson	local	2025-05-15 17:03:15.664	Cabelo
77a64032-48aa-4d1d-9bd2-e9f3177ef005	2025-05-15 00:00:00	16:00	Felipe Barbosa 	Wallyson	local	2025-05-15 18:07:59.103	Cabelo
cb469f0e-aafa-45ef-9241-59b132964b51	2025-05-17 00:00:00	12:00	cláudio henrique	Wallyson	558188482085@s.whatsapp.net	2025-05-15 00:00:00	Cabelo
787065a7-2350-4b13-bf5d-af78537146c5	2025-05-17 00:00:00	09:20	Matheus 	Wallyson	local	2025-05-15 20:15:21.759	Cabelo
67ab7ae4-f029-44d6-b6fa-83e59908aeda	2025-05-16 00:00:00	19:20	Fabrício 	Wallyson	local	2025-05-15 20:19:10.315	Cabelo
38e55c4b-c77d-42b8-8860-3c73f8c45f1a	2025-05-16 00:00:00	10:00	Paulo 	Wallyson	local	2025-05-15 22:51:08.196	Cabelo
07b87819-a6fc-4675-ba82-70fad2b1036f	2025-05-16 00:00:00	16:40	marcus	Wallyson	558199349818@s.whatsapp.net	2025-05-16 00:00:00	Cabelo
20184406-78e6-46c4-b199-aea71b4345f6	2025-05-17 00:00:00	08:40	Gabriel 	Wallyson	local	2025-05-16 13:41:45.923	Cabelo
b2452566-8c5c-484e-9132-64fb168c61a0	2025-05-17 00:00:00	16:40	bruno gomes	Wallyson	558196522258@s.whatsapp.net	2025-05-16 00:00:00	Barba
2363132f-5053-4c09-88c9-26c9c7472bc3	2025-05-17 00:00:00	10:00	john	Wallyson	558197904314@s.whatsapp.net	2025-05-16 00:00:00	Cabelo+Barba
7715612f-21c1-4c2c-81a1-acfe85edcbe3	2025-05-16 00:00:00	18:40	Ocupado	Bruno	local	2025-05-16 20:34:47.666	Cabelo
1e2cc4b3-87e5-4db6-807d-8e168549e141	2025-06-16 00:00:00	17:20	gustavo	Bruno	558198983986@s.whatsapp.net	2025-05-16 00:00:00	Cabelo
b720a466-e406-4314-8ec9-65d784cfa031	2025-05-19 00:00:00	17:20	Noa 	Wallyson	local	2025-05-16 22:32:29.373	Cabelo
cc493c67-4f3d-4fbe-9a97-e7e3444ea368	2025-05-19 00:00:00	18:40	márcio	Wallyson	558199069172@s.whatsapp.net	2025-05-16 00:00:00	Cabelo
bdeb2777-c358-438a-af1d-25a70318cded	2025-05-19 00:00:00	15:20	gago	Bruno	558195055274@s.whatsapp.net	2025-05-16 00:00:00	Cabelo
305f2d9a-a136-471c-b3eb-2093993022bc	2025-05-17 00:00:00	14:40	antonio neto	Wallyson	558196049253@s.whatsapp.net	2025-05-16 00:00:00	Cabelo
41c1d78a-85ed-4746-a8fc-d5248fc141d0	2025-05-17 00:00:00	15:20	mario	Wallyson	558381367304@s.whatsapp.net	2025-05-17 00:00:00	Cabelo+Barba
3b8ba92d-6df2-4604-8c3b-577ac044b328	2025-05-17 00:00:00	10:40	raulzinho	Wallyson	558197886583@s.whatsapp.net	2025-05-17 00:00:00	Cabelo
96f4d3e0-f6d6-4828-a782-7f95bbc9087c	2025-05-24 00:00:00	08:00	Pedro 	Wallyson	local	2025-05-17 12:08:24.045	Cabelo
6d0d0d96-3685-44fb-a475-013ed70dc073	2025-05-20 00:00:00	16:40	antônio henrique	Bruno	558197083657@s.whatsapp.net	2025-05-17 00:00:00	Cabelo+Sobrancelha
9231e710-756f-4e3b-aefd-06282db8c0d2	2025-05-17 00:00:00	18:00	Kiko 	Wallyson	local	2025-05-17 14:15:44.045	Cabelo
ba2c8936-aadb-4698-bed5-9b9283705126	2025-05-19 00:00:00	16:00	leonardo	Bruno	558174001016@s.whatsapp.net	2025-05-17 00:00:00	Cabelo
6e0b6b87-6862-421a-a7f4-5dfb18eda6f5	2025-05-17 00:00:00	13:20	Cláudio 	Wallyson	local	2025-05-17 14:46:32.025	Cabelo
8c357140-ca29-47e3-93f4-dd8e82bbed0f	2025-05-19 00:00:00	09:00	Nicolas 	Wallyson	local	2025-05-17 15:23:30.927	Cabelo
6abae709-2a43-4be4-ba7a-16729ffb6fd3	2025-05-21 00:00:00	09:00	hélyo	Bruno	558189710860@s.whatsapp.net	2025-05-17 00:00:00	Cabelo
e149624f-0386-4da1-bf5a-c9cbe8843fc0	2025-05-19 00:00:00	10:20	felipe silva	Bruno	558196065070@s.whatsapp.net	2025-05-17 00:00:00	Cabelo
0e7a2c46-7c3b-48c1-9d12-9614c7c56f24	2025-06-16 00:00:00	11:40	Kiko 	Wallyson	local	2025-05-17 21:22:35.574	Cabelo
2825a1db-c6a0-42a1-92ac-6e4dad1e2db4	2025-05-19 00:00:00	11:40	henrique	Bruno	558196639360@s.whatsapp.net	2025-05-17 00:00:00	Cabelo
3e424053-76d1-4482-9b91-1edca5eada27	2025-05-28 00:00:00	11:20	gabriel	Wallyson	558181774084@s.whatsapp.net	2025-05-18 00:00:00	Cabelo
d8e82790-6f32-428b-b959-ed2c6096bf9d	2025-06-17 00:00:00	17:20	gabriel	Bruno	558192417684@s.whatsapp.net	2025-05-18 00:00:00	Cabelo+Sobrancelha
a06b2194-961f-4e33-a7a2-5a3d4b43d737	2025-05-24 00:00:00	14:00	kayke	Wallyson	558197180683@s.whatsapp.net	2025-05-18 00:00:00	Cabelo+Barba
cea218a2-dd57-433d-a8ec-75f6118f5abd	2025-05-19 00:00:00	18:40	yallison	Bruno	558198734964@s.whatsapp.net	2025-05-18 00:00:00	Cabelo+Barba
85197b23-7aa4-46d2-be02-95db720d392c	2025-05-20 00:00:00	10:20	pedro henrique	Bruno	558198446899@s.whatsapp.net	2025-05-18 00:00:00	Cabelo
e357319e-2f40-42bc-af42-5e5dbdb35238	2025-05-19 00:00:00	16:40	Flavio 	Wallyson	local	2025-05-19 10:31:10.57	Cabelo
0060268f-4e15-44ba-b991-2e42f9b66d8e	2025-05-21 00:00:00	08:00	Issac 	Wallyson	local	2025-05-19 10:31:49.402	Cabelo
72a951a9-6e6b-43a6-b126-38af7da37968	2025-05-20 00:00:00	08:00	Marcado 	Wallyson	local	2025-05-19 10:32:16.848	Cabelo
69ec5912-cafe-4231-a354-3f6b329ff9ec	2025-05-21 00:00:00	13:20	fabiano	Bruno	558194610556@s.whatsapp.net	2025-05-19 00:00:00	Cabelo
c1f74872-d1b7-416c-ae78-cf7ee41ce822	2025-05-21 00:00:00	14:00	emanuel	Bruno	558197496524@s.whatsapp.net	2025-05-19 00:00:00	Cabelo+Sobrancelha
b9112837-e46a-4053-bf60-2c333fe23c99	2025-05-23 00:00:00	18:40	italo	Bruno	558198405729@s.whatsapp.net	2025-05-19 00:00:00	Cabelo+Barba
29b8b2b6-5efb-4ee5-993a-df2f464285ba	2025-05-23 00:00:00	19:20	marcos	Bruno	558198405729@s.whatsapp.net	2025-05-19 00:00:00	Cabelo
07a7c199-be39-4610-8592-0467c303b7e7	2025-05-22 00:00:00	11:20	horlean	Wallyson	558281363560@s.whatsapp.net	2025-05-19 00:00:00	Cabelo+Sobrancelha
e41cea40-0d02-4105-86e0-1345ec81d680	2025-05-19 00:00:00	15:20	Paulo	Wallyson	local	2025-05-19 15:48:03.634	Cabelo
80d2a2e6-4047-4f91-a8b6-b194f19da8fa	2025-05-23 00:00:00	11:20	josé henrique	Wallyson	558195637127@s.whatsapp.net	2025-05-19 00:00:00	Cabelo
48839ac7-66fa-4b4f-b982-e2cc253631a0	2025-05-19 00:00:00	18:00	anderson carlos	Wallyson	558198557130@s.whatsapp.net	2025-05-19 00:00:00	Barba
ad24215e-f21b-470a-aac4-6550b23e7dd6	2025-05-23 00:00:00	10:40	joao	Wallyson	558196050355@s.whatsapp.net	2025-05-19 00:00:00	Cabelo+Sobrancelha
64785fe7-b2f4-4f63-b7d3-de4e85f043c0	2025-05-24 00:00:00	16:00	lucas josé	Bruno	558199311183@s.whatsapp.net	2025-05-19 00:00:00	Cabelo+Sobrancelha
308656b9-d3a3-4f5e-b163-8c148cbb470b	2025-05-23 00:00:00	14:00	anderson	Bruno	558198694494@s.whatsapp.net	2025-05-19 00:00:00	Cabelo
45229a93-d192-4e6f-806f-a0dd13216b95	2025-05-23 00:00:00	14:40	andrew	Bruno	558198694494@s.whatsapp.net	2025-05-19 00:00:00	Cabelo
f15fa2d0-ff37-45c8-9d06-81543131b0a1	2025-07-05 00:00:00	08:00	talisson rhavi	Bruno	558198833628@s.whatsapp.net	2025-05-19 00:00:00	Cabelo
f4125162-4772-4aa5-8134-8b2a7f1b72c6	2025-05-22 00:00:00	08:40	thiago	Wallyson	558199044022@s.whatsapp.net	2025-05-19 00:00:00	Cabelo
e2fb9fdb-0ea8-4942-9d18-68a04506f446	2025-05-20 00:00:00	18:00	Rivaldo 	Wallyson	local	2025-05-19 19:04:11.452	Cabelo
7bfcceaa-4fe5-4b74-a756-dc1740ee7bdc	2025-05-20 00:00:00	14:00	laércio barboda	Wallyson	558196620184@s.whatsapp.net	2025-05-19 00:00:00	Cabelo
03ad5fab-e091-4153-aa5b-a8d97549cbf7	2025-05-19 00:00:00	18:00	Andressa	Bruno	local	2025-05-19 19:57:19.005	Cabelo
6a6c6a3a-5dcb-44d5-ada7-cdd6d988f22f	2025-05-24 00:00:00	08:40	Cleiton 	Wallyson	local	2025-05-19 20:26:55.461	Cabelo
f8bd7227-a5c3-463f-9281-b1777626d42c	2025-05-23 00:00:00	15:20	Luan 	Wallyson	local	2025-05-19 21:39:23.387	Cabelo
688c71cc-d68f-4f41-b6c9-9c00d2f488c2	2025-05-24 00:00:00	11:20	adeilson	Bruno	558182086614@s.whatsapp.net	2025-05-19 00:00:00	Cabelo
29dfef0c-6d36-444f-99ee-dae86f270c26	2025-05-24 00:00:00	12:00	arthur	Bruno	558182086614@s.whatsapp.net	2025-05-19 00:00:00	Cabelo
9c29d031-8df4-4bd0-bf0a-227aa2865603	2025-05-20 00:00:00	11:40	João adv	Bruno	local	2025-05-19 23:23:39.167	Cabelo
2dd2adb8-57c7-4ae3-a58d-7b6882942c76	2025-05-23 00:00:00	18:00	anderson	Bruno	558197666072@s.whatsapp.net	2025-05-19 00:00:00	Cabelo
0f9cd3b4-1371-4247-ac83-853d42191628	2025-05-20 00:00:00	17:20	anthony	Bruno	558197620059@s.whatsapp.net	2025-05-19 00:00:00	Cabelo
0d194b0d-7080-4e9c-8020-fc7c901d1889	2025-05-23 00:00:00	13:20	arthur	Bruno	558194115511@s.whatsapp.net	2025-05-20 00:00:00	Barba
2911fcbc-b3fb-45a8-9b5d-f0453d5c4dc8	2025-05-20 00:00:00	14:40	josé henrique	Wallyson	558182163068@s.whatsapp.net	2025-05-20 00:00:00	Cabelo
a12586a8-7cbc-43bb-9093-90f395c18f3f	2025-05-20 00:00:00	18:40	Juninho compadre 	Wallyson	local	2025-05-20 10:13:56.055	Cabelo+Barba
8e07c61d-f633-4192-a7fd-727c5424375b	2025-05-20 00:00:00	16:00	mateus de melo guerra	Bruno	558199987381@s.whatsapp.net	2025-05-20 00:00:00	Cabelo
67aebb28-515f-4e85-8a07-2d8394aad50a	2025-05-20 00:00:00	13:20	lucas cauã	Bruno	558183567967@s.whatsapp.net	2025-05-20 00:00:00	Cabelo
88d66818-33e2-4896-abb4-3b6a15746af2	2025-05-20 00:00:00	14:00	júlio césar	Bruno	558198514795@s.whatsapp.net	2025-05-20 00:00:00	Cabelo
5565e197-f59c-4359-8611-b7e77a14b631	2025-05-24 00:00:00	15:20	João paulo 	Bruno	local	2025-05-20 14:40:25.841	Cabelo+Barba
689815e7-7bc8-44bd-bce8-d01d91950f3a	2025-05-20 00:00:00	15:20	heraldo	Bruno	558182599443@s.whatsapp.net	2025-05-20 00:00:00	Cabelo+Barba
d01e4a7e-b253-4cfb-81d7-ca1f8ecf5f0f	2025-05-21 00:00:00	18:40	Teteu	Bruno	local	2025-05-20 16:21:58.477	Cabelo
a9a44aa9-8c15-4d48-90d1-13c3434c14c9	2025-05-23 00:00:00	08:00	wilson	Wallyson	558197148928@s.whatsapp.net	2025-05-20 00:00:00	Cabelo+Sobrancelha
28cd87e5-e0c7-4034-8e2a-22ddfe35c9a2	2025-05-22 00:00:00	18:00	breno	Bruno	558198437880@s.whatsapp.net	2025-05-20 00:00:00	Cabelo+Sobrancelha
18e37688-1bf5-474d-9b19-7d7cb9fbf6fd	2025-06-11 00:00:00	18:40	joão vinicius	Bruno	558199714495@s.whatsapp.net	2025-05-20 00:00:00	Cabelo+Barba
e4ad899f-8ab8-4ae5-bc01-448ee0b41d54	2025-05-20 00:00:00	16:00	Marcílio 	Wallyson	local	2025-05-20 17:53:19.099	Cabelo
21c470a1-2039-4c99-bfae-7be0826f1ffa	2025-05-20 00:00:00	16:40	Filho de Marcílio 	Wallyson	local	2025-05-20 17:53:40.272	Cabelo
cfdba739-8d1e-4472-9451-23f05f89b5a7	2025-05-21 00:00:00	18:00	denilson	Bruno	558197084296@s.whatsapp.net	2025-05-20 00:00:00	Barba
478e988b-943b-49fc-85a2-2edb07f52ec7	2025-05-20 00:00:00	17:20	Alberto 	Wallyson	local	2025-05-20 18:31:31.67	Cabelo
8b08f4a7-e24d-43f3-87f2-11eea8d246d7	2025-05-20 00:00:00	18:00	thomasturbando	Bruno	558182221274@s.whatsapp.net	2025-05-20 00:00:00	Cabelo+Barba
a8150030-bde7-40ee-903c-e2a24b5d95b9	2025-05-23 00:00:00	17:20	welliton fonseca	Bruno	558198022472@s.whatsapp.net	2025-05-20 00:00:00	Cabelo
239e396b-48ce-4a19-bb56-d30731bb837e	2025-05-21 00:00:00	11:20	Douglas 	Wallyson	local	2025-05-20 19:04:48.149	Cabelo
9d4d70fb-d17f-4001-995b-5933057e8ab3	2025-05-21 00:00:00	16:00	ryan	Wallyson	5511959620317@s.whatsapp.net	2025-05-20 00:00:00	Cabelo+Sobrancelha
2b33a7bd-093e-4eae-a4b6-bd73c10c1075	2025-05-22 00:00:00	09:00	anderson carlos	Bruno	558196579148@s.whatsapp.net	2025-05-20 00:00:00	Cabelo
40bad595-0545-4df6-86cd-c8d7f9f62c71	2025-05-24 00:00:00	10:40	joão guilherme	Bruno	558192101006@s.whatsapp.net	2025-05-20 00:00:00	Cabelo
f918a052-fd19-41b3-8936-a7ee83443c63	2025-05-24 00:00:00	08:00	daniel queiroz	Bruno	558181473848@s.whatsapp.net	2025-05-20 00:00:00	Cabelo
f2bc17f3-01a5-4aae-b6cd-8e4965859e73	2025-06-17 00:00:00	18:40	maurycio	Bruno	558197162890@s.whatsapp.net	2025-05-20 00:00:00	Cabelo+Sobrancelha
5c4dfe78-ab18-4434-9c0d-1382ec2998af	2025-05-21 00:00:00	14:40	gonzaga neto	Bruno	558198514795@s.whatsapp.net	2025-05-20 00:00:00	Cabelo
b599eac4-4da8-45bc-8305-bf689e9b2e68	2025-05-21 00:00:00	18:00	carlos	Wallyson	558198314747@s.whatsapp.net	2025-05-20 00:00:00	Cabelo
1c963640-b7f7-4c16-b671-d871bdbf9955	2025-05-21 00:00:00	14:00	pedro henrique	Wallyson	558195071416@s.whatsapp.net	2025-05-20 00:00:00	Cabelo+Sobrancelha
f854fae2-1594-45b0-94f5-5fb5cd8dff1e	2025-05-23 00:00:00	20:00	wesley santoss	Bruno	558196817233@s.whatsapp.net	2025-05-21 00:00:00	Cabelo
60ed4dbf-88ca-4037-b68a-2cdf850c90ca	2025-05-21 00:00:00	15:20	valney	Wallyson	558197232916@s.whatsapp.net	2025-05-21 00:00:00	Cabelo
8d2a1fa8-bb8c-4289-be4a-c991484a5614	2025-05-21 00:00:00	17:20	paulo henrique	Bruno	558174004953@s.whatsapp.net	2025-05-21 00:00:00	Cabelo+Sobrancelha
d22d77a1-a4fb-44ba-b345-fc0c3ce202b7	2025-05-22 00:00:00	13:20	neto	Bruno	558197192758@s.whatsapp.net	2025-05-21 00:00:00	Cabelo+Sobrancelha
c66f34cb-9f9c-45c2-8fdb-374d98e1b643	2025-05-22 00:00:00	18:40	lucas	Wallyson	558182524811@s.whatsapp.net	2025-05-21 00:00:00	Cabelo
43179eed-0b11-46b8-901b-42e61d76d3d9	2025-05-23 00:00:00	18:40	gildevan	Wallyson	558182508046@s.whatsapp.net	2025-05-21 00:00:00	Cabelo+Barba
876e3989-7c28-4513-9515-8737e2df7ff8	2025-05-21 00:00:00	15:20	joão	Bruno	558197967548@s.whatsapp.net	2025-05-21 00:00:00	Cabelo
b4420b41-8489-48e8-a6f2-3218a245522f	2025-05-24 00:00:00	14:00	gabriel	Bruno	558192417684@s.whatsapp.net	2025-05-21 00:00:00	Cabelo+Sobrancelha
2357e93e-fbcb-409e-878e-505a0d4a0349	2025-05-22 00:00:00	16:40	césar	Wallyson	558197520499@s.whatsapp.net	2025-05-21 00:00:00	Cabelo+Sobrancelha
de60cc12-9db2-4e04-93dc-62248d2ab0fe	2025-05-22 00:00:00	09:40	Carlos Eduardo 	Bruno	local	2025-05-21 17:09:51.852	Cabelo
43946c15-20bb-4a37-8509-bb39c0bd4572	2025-05-28 00:00:00	18:00	Issac 	Wallyson	local	2025-05-21 17:36:17.995	Cabelo
2d01d16c-7724-4c2e-8daf-aa26696bed52	2025-05-21 00:00:00	17:20	Valdemir 	Wallyson	local	2025-05-21 19:06:58.981	Cabelo
ab5f08ad-9287-455d-927a-6484fb4a3070	2025-05-22 00:00:00	16:00	Thiago 	Wallyson	local	2025-05-21 19:27:16.15	Cabelo
6ed8892c-463f-4376-8990-3bd6ff105527	2025-05-24 00:00:00	18:00	Eduardo	Bruno	local	2025-05-21 19:27:16.242	Cabelo+Barba
45aa1fb2-b659-420a-9c14-c04e77926a9d	2025-05-23 00:00:00	16:40	lucas da silva	Bruno	558188204134@s.whatsapp.net	2025-05-21 00:00:00	Cabelo
b4d0bc1e-9607-4524-9b2f-10bc348bdfcc	2025-05-23 00:00:00	16:00	hatus	Bruno	558199706416@s.whatsapp.net	2025-05-21 00:00:00	Barba
962ddabf-cfc7-4bc5-a245-7a8279fe0c86	2025-05-29 00:00:00	14:00	miguel	Wallyson	558181060584@s.whatsapp.net	2025-05-21 00:00:00	Cabelo
271a58e5-2633-44a2-a943-48c8223712ca	2025-05-23 00:00:00	11:40	ian	Bruno	558196739228@s.whatsapp.net	2025-05-21 00:00:00	Cabelo
50b59363-28aa-409a-936c-72799e4eb00e	2025-05-23 00:00:00	11:00	kayque	Bruno	558197975570@s.whatsapp.net	2025-05-21 00:00:00	Cabelo
736da286-e07a-4953-8dcf-a078e646fdcc	2025-06-16 00:00:00	13:20	júlio césar	Bruno	558181199672@s.whatsapp.net	2025-05-21 00:00:00	Cabelo
64e67f17-f1af-48d4-b855-d500c79f8936	2025-05-23 00:00:00	15:20	luiz felipe	Bruno	558197800927@s.whatsapp.net	2025-05-21 00:00:00	Cabelo
d0f2cf75-f0b6-4b51-85d6-a5803a642ff8	2025-05-22 00:00:00	14:40	mauricio	Bruno	558182705181@s.whatsapp.net	2025-05-21 00:00:00	Cabelo
74f9feaf-9182-43a4-a853-091e1937ebe7	2025-05-26 00:00:00	17:20	Alison Daniel 	Wallyson	local	2025-05-22 09:34:13.382	Cabelo
66671474-c091-4a47-a753-7a8329032a57	2025-05-23 00:00:00	13:20	ivisson	Wallyson	558197279446@s.whatsapp.net	2025-05-22 00:00:00	Cabelo+Sobrancelha
f6f6167b-18b6-4c3c-b529-e23f260d38c4	2025-05-22 00:00:00	18:40	Vitor pereira 	Bruno	local	2025-05-22 09:44:16.537	Cabelo+Sobrancelha
8fc8e41d-3d70-4bda-b06e-47a19a5306c9	2025-05-26 00:00:00	17:20	isaque	Bruno	558182470021@s.whatsapp.net	2025-05-22 00:00:00	Cabelo
17382401-0b95-479c-ae66-6eaec806680a	2025-05-29 00:00:00	17:20	roberto valério	Bruno	558181779060@s.whatsapp.net	2025-05-22 00:00:00	Cabelo+Barba
c43331d6-4a55-4f24-8547-b0ef3b331d9b	2025-05-26 00:00:00	16:00	Hiago 	Wallyson	local	2025-05-22 13:50:34.54	Cabelo
94a2bf4a-509f-478d-9ee7-637121b679fc	2025-05-26 00:00:00	16:40	Yuri 	Wallyson	local	2025-05-22 13:51:03.747	Cabelo
2d841e0a-cc36-4467-82f4-6508b48546c0	2025-05-22 00:00:00	13:20	Paulinho 	Wallyson	local	2025-05-22 13:52:31.084	Acabamento (Pezinho)
62466735-30de-4a81-add2-56eb9344cfc4	2025-05-24 00:00:00	09:20	Zé neto 	Wallyson	local	2025-05-22 13:55:05.434	Cabelo
541bc037-8ad7-42ae-b7cf-ef7c687c3985	2025-05-22 00:00:00	14:00	Adegilson 	Wallyson	local	2025-05-22 13:56:43.538	Cabelo
5a9b40f1-5721-4ff5-908b-9e54045e7101	2025-05-24 00:00:00	14:40	ewerton adryan	Bruno	558198289810@s.whatsapp.net	2025-05-22 00:00:00	Cabelo
f3c54af7-a74b-4896-a2b0-1105031a35c6	2025-05-22 00:00:00	14:00	antônio medeiros frança lins	Bruno	558171024799@s.whatsapp.net	2025-05-22 00:00:00	Cabelo+Sobrancelha
90fb7ab5-d744-41ca-b6bc-1097d4544bfe	2025-05-22 00:00:00	17:20	antônio medeiros frança lins	Bruno	558171024799@s.whatsapp.net	2025-05-22 00:00:00	Cabelo+Sobrancelha
340a765c-e422-4443-8337-2307452227dd	2025-05-26 00:00:00	15:20	gabriel	Wallyson	558185827719@s.whatsapp.net	2025-05-22 00:00:00	Cabelo
e61e5d6e-7e72-4ad6-adc9-b22ef523a188	2025-05-23 00:00:00	10:00	Valmir 	Wallyson	local	2025-05-22 18:13:37.178	Cabelo+Barba
2e1c8409-0348-4e9a-9fe9-230b0f47a6b5	2025-05-24 00:00:00	17:20	gabriel	Bruno	558187145252@s.whatsapp.net	2025-05-22 00:00:00	Cabelo
3a3f7f50-e570-4f6a-a388-30f7ae195a8d	2025-05-23 00:00:00	10:20	vinicius	Bruno	558196496652@s.whatsapp.net	2025-05-22 00:00:00	Cabelo
dd1306ab-0ef9-493c-9fc8-0c941a0f3d14	2025-06-07 00:00:00	16:00	andre	Bruno	558198995821@s.whatsapp.net	2025-05-22 00:00:00	Cabelo+Sobrancelha
0968d02d-70e4-42b0-91e2-1bc97f7ea263	2025-05-27 00:00:00	11:40	sid	Bruno	558191536718@s.whatsapp.net	2025-05-22 00:00:00	Cabelo+Sobrancelha
6083000e-6872-47d5-885a-66220ec4c10f	2025-05-24 00:00:00	09:20	elysson	Bruno	558199697267@s.whatsapp.net	2025-05-22 00:00:00	Cabelo+Sobrancelha
9c1704f3-50f1-430a-a6de-5b617a19c4ec	2025-06-03 00:00:00	09:00	Indisponivel	Bruno	Indisponivel	2025-05-23 00:06:17.21	
b4d352c0-e745-44da-9c4d-bccae46776a6	2025-06-03 00:00:00	09:40	Indisponivel	Bruno	Indisponivel	2025-05-23 00:06:17.314	
a418e420-652d-446c-b9a9-ef843c55d8c3	2025-06-03 00:00:00	10:20	Indisponivel	Bruno	Indisponivel	2025-05-23 00:06:17.347	
65ca1c8a-b3b4-40d9-aa32-375af0176999	2025-06-03 00:00:00	11:00	Indisponivel	Bruno	Indisponivel	2025-05-23 00:06:17.379	
c85cc087-b52e-47d1-b1e0-7a5f1d294e5c	2025-06-03 00:00:00	11:40	Indisponivel	Bruno	Indisponivel	2025-05-23 00:06:17.414	
b35d1404-6bfc-4c77-bfb8-cf471776e727	2025-06-03 00:00:00	13:20	Indisponivel	Bruno	Indisponivel	2025-05-23 00:06:17.448	
b865d18b-d972-4887-b810-a1b99f600676	2025-06-03 00:00:00	14:00	Indisponivel	Bruno	Indisponivel	2025-05-23 00:06:17.482	
5e8ce2f1-292a-4250-a13e-55a7a0416a8a	2025-06-03 00:00:00	14:40	Indisponivel	Bruno	Indisponivel	2025-05-23 00:06:17.514	
01586e6c-879d-40a3-bbd2-9a9ea24d440c	2025-06-03 00:00:00	15:20	Indisponivel	Bruno	Indisponivel	2025-05-23 00:06:17.547	
8db3c584-ee6a-4201-addb-d3a6d66fe255	2025-06-03 00:00:00	16:00	Indisponivel	Bruno	Indisponivel	2025-05-23 00:06:17.581	
98de1e3f-7483-4348-b6a6-7d3caae78178	2025-06-03 00:00:00	16:40	Indisponivel	Bruno	Indisponivel	2025-05-23 00:06:17.614	
162efd5d-69bc-4b0e-bc4c-f959de17db7b	2025-06-03 00:00:00	17:20	Indisponivel	Bruno	Indisponivel	2025-05-23 00:06:17.65	
67d1c083-60bd-45fb-b345-4317adbf3b87	2025-06-03 00:00:00	18:00	Indisponivel	Bruno	Indisponivel	2025-05-23 00:06:17.682	
8ba5fac6-920d-49a1-821e-3025a64eb47f	2025-06-03 00:00:00	18:40	Indisponivel	Bruno	Indisponivel	2025-05-23 00:06:17.715	
c269389d-2b4e-48f9-94c6-6b86c9bd60af	2025-05-23 00:00:00	09:00	weslley	Bruno	558197215641@s.whatsapp.net	2025-05-22 00:00:00	Cabelo
25dab0c9-b54b-4d28-817c-cc89c4696ed5	2025-05-24 00:00:00	16:40	william gabriel	Bruno	558198087356@s.whatsapp.net	2025-05-23 00:00:00	Cabelo
fc9f676c-1371-4156-90d3-c35975ddc839	2025-05-26 00:00:00	09:40	matheus lima	Bruno	558199670970@s.whatsapp.net	2025-05-23 00:00:00	Cabelo+Sobrancelha
ac4a88cd-2a3a-4f9d-93f4-249719707ef4	2025-05-24 00:00:00	15:20	ronnye	Wallyson	558198353903@s.whatsapp.net	2025-05-23 00:00:00	Cabelo
fd49d407-c4c0-42ea-92ba-c64ff778f1c1	2025-05-23 00:00:00	08:40	Marcado 	Wallyson	local	2025-05-23 10:23:44.275	Cabelo
df0086c5-8ac1-4fd2-96a0-835c6f0627d3	2025-05-23 00:00:00	16:00	Paulinho 	Wallyson	local	2025-05-23 10:33:05.923	Cabelo
3bcad98d-b3b2-453c-bb07-cf6fd4b99f0b	2025-05-24 00:00:00	10:40	ryan valério	Wallyson	558181779060@s.whatsapp.net	2025-05-23 00:00:00	Cabelo+Barba
a1362eda-1196-4bbf-aa28-e96c2f430ef7	2025-05-23 00:00:00	18:00	Eudes 	Wallyson	local	2025-05-23 12:23:09.44	Cabelo
6d59788e-2805-4f0b-aa5d-312270e6f143	2025-05-23 00:00:00	16:40	Michel	Wallyson	local	2025-05-23 12:24:09.004	Cabelo
a4b29fab-b985-4dee-adc5-92c08cf84889	2025-05-24 00:00:00	17:20	João sedoufo 	Wallyson	local	2025-05-23 12:27:53.056	Cabelo+Sobrancelha
90d1078c-ac03-4600-ba76-30fec4e9953c	2025-05-26 00:00:00	18:00	Gustavo 	Wallyson	local	2025-05-23 12:52:26.216	Cabelo
b7e517b5-0c80-4cd5-a496-8000bf48a307	2025-05-26 00:00:00	18:40	Gustavo 	Wallyson	local	2025-05-23 12:52:43.91	Cabelo
706f6c97-8df8-4d96-9765-cee0a24b7d26	2025-05-23 00:00:00	17:20	juininho	Wallyson	558194082765@s.whatsapp.net	2025-05-23 00:00:00	Cabelo
83df8452-b27a-415b-b654-911dc06f3465	2025-05-24 00:00:00	13:20	Alan 	Wallyson	local	2025-05-23 13:47:50.917	Cabelo
38cd02c2-5be7-4012-8771-32dd6b94442f	2025-06-26 00:00:00	18:00	lucas leal	Bruno	558182605271@s.whatsapp.net	2025-05-23 00:00:00	Cabelo+Sobrancelha
101e7345-02be-4f21-8844-8c365a962ae1	2025-05-24 00:00:00	12:00	gustavo	Wallyson	558199587573@s.whatsapp.net	2025-05-23 00:00:00	Cabelo+Sobrancelha
f9a08da0-d171-4669-8322-4ed4cce817d0	2025-06-12 00:00:00	18:00	matheus	Bruno	558197894492@s.whatsapp.net	2025-05-23 00:00:00	Cabelo
3f2710bf-887d-4a5c-beb8-67f925917478	2025-05-23 00:00:00	14:40	pedro robson	Wallyson	558198929820@s.whatsapp.net	2025-05-23 00:00:00	Cabelo
bae2ff1d-1671-4b93-8d64-dfca28447e71	2025-05-23 00:00:00	20:00	Victor 	Wallyson	local	2025-05-23 16:12:52.769	Barba
1b5e09a2-f937-4cd0-8562-09aaa74c3656	2025-05-24 00:00:00	14:40	Victor 	Wallyson	local	2025-05-23 16:14:06.744	Barba
60eacb9b-35d7-490e-8a9a-d5df94e7e036	2025-05-31 00:00:00	10:00	Wanderson 	Wallyson	local	2025-05-23 19:12:02.528	Cabelo
d2dda73f-e3bc-406c-94d6-0641dde7eaa1	2025-05-24 00:00:00	16:40	Bruno 	Wallyson	local	2025-05-23 19:27:11.784	Cabelo
4c9147bc-a4bd-4d43-bfe6-bac5c6b722eb	2025-05-26 00:00:00	10:20	paulo césar	Bruno	558195254306@s.whatsapp.net	2025-05-23 00:00:00	Cabelo
1feb4dda-ffc4-4f8a-a03a-4a81847b1254	2025-05-23 00:00:00	19:20	miguel	Wallyson	558199980878@s.whatsapp.net	2025-05-23 00:00:00	Cabelo
994c3d3d-b444-44d8-a8d0-1b2c26f38fe1	2025-06-28 00:00:00	14:00	arthur	Wallyson	558196972098@s.whatsapp.net	2025-05-23 00:00:00	Cabelo
8ab0248a-0fc4-40fb-bcf5-fd8d63042884	2025-05-26 00:00:00	14:40	laércio	Wallyson	558196620184@s.whatsapp.net	2025-05-23 00:00:00	Cabelo
76a55894-8970-48a0-89fd-d4cc6df64ecb	2025-05-30 00:00:00	16:00	marcos rodrigues	Bruno	558196681292@s.whatsapp.net	2025-05-23 00:00:00	Cabelo
a2b4d143-94a9-4d54-b376-5f4bbdef95e7	2025-05-24 00:00:00	10:00	Ocupado	Bruno	local	2025-05-24 01:43:28.699	Cabelo
911ac9b5-deda-460f-8fd2-44b76b17bbbb	2025-05-27 00:00:00	09:00	samuel	Bruno	558171201693@s.whatsapp.net	2025-05-23 00:00:00	Cabelo
43428ada-271b-4418-b4da-c162d83d16a9	2025-05-26 00:00:00	18:40	serginho cria	Bruno	558195354617@s.whatsapp.net	2025-05-24 00:00:00	Cabelo+Sobrancelha
678a0413-efa6-460f-a9a5-2993196bf2a0	2025-05-24 00:00:00	11:20	jorge luiz	Wallyson	558199658478@s.whatsapp.net	2025-05-24 00:00:00	Cabelo+Sobrancelha
d662c5a0-f081-47ca-be9f-d0b926ae2371	2025-05-24 00:00:00	18:00	letho	Wallyson	558199387144@s.whatsapp.net	2025-05-24 00:00:00	Cabelo
226f90f9-f3e5-407c-93d4-0e31e2cdb7e5	2025-06-20 00:00:00	18:00	ryan valério	Bruno	558181779060@s.whatsapp.net	2025-05-24 00:00:00	Cabelo+Barba
43883442-b387-4c2c-9ff6-9af80c15e739	2025-06-19 00:00:00	08:00	roberto valério	Wallyson	558181779060@s.whatsapp.net	2025-05-24 00:00:00	Cabelo+Barba
634dc5e6-53e6-4ce4-8770-11495227afce	2025-05-31 00:00:00	16:00	guilherme	Bruno	558197258940@s.whatsapp.net	2025-05-24 00:00:00	Cabelo
a61e794d-d33c-4a93-a68f-9a88382ccece	2025-06-13 00:00:00	11:00	joão miguel	Bruno	558198328109@s.whatsapp.net	2025-05-24 00:00:00	Cabelo
91c86cb1-9e59-43a3-869a-9893439677c5	2025-05-26 00:00:00	13:20	mateus barbosa	Bruno	558197626344@s.whatsapp.net	2025-05-24 00:00:00	Cabelo
77475577-a762-44a0-963f-46adfe32c765	2025-05-31 00:00:00	14:40	tássio moraes	Bruno	558197909383@s.whatsapp.net	2025-05-24 00:00:00	Cabelo+Barba
32aa72e2-9bd0-4788-aa7e-f6b6a58ddf51	2025-05-26 00:00:00	14:00	joão vitor	Bruno	558188511046@s.whatsapp.net	2025-05-24 00:00:00	Cabelo
93bf7edf-a2cc-47c0-9435-5bc826d6bf89	2025-05-27 00:00:00	16:00	Elias 	Wallyson	local	2025-05-24 17:49:05.099	Cabelo+Sobrancelha
5a9b44d1-0c2b-4947-8bff-e8c1b3853271	2025-05-19 00:00:00	14:00	Victor 	Wallyson	local	2025-05-24 18:15:41.786	Cabelo+Barba
4a842281-046f-4d8d-b6f2-9f9ce23efe86	2025-05-26 00:00:00	14:00	Victor 	Wallyson	local	2025-05-24 18:16:33.558	Cabelo
b74ae16a-b136-4bf1-93fc-174b27bea6e7	2025-05-19 00:00:00	14:40	João Henrique 	Wallyson	local	2025-05-24 18:17:22.009	Cabelo
b599cc46-63f2-49d2-a028-33993049f99c	2025-06-21 00:00:00	15:20	Pedrão 	Wallyson	local	2025-05-24 19:56:36.585	Cabelo+Barba
7ed8240c-6c05-4b24-b9a4-027e91255cee	2025-05-28 00:00:00	17:20	gustavo farias	Wallyson	558196195368@s.whatsapp.net	2025-05-24 00:00:00	Cabelo
a0cedbae-b998-453b-9e42-6907db7ed571	2025-12-26 00:00:00	10:40	wellington	Wallyson	558193204777@s.whatsapp.net	2025-05-24 00:00:00	Cabelo
8f76b12d-14df-439d-927d-15b64e799d76	2025-05-26 00:00:00	14:40	hugo	Bruno	558199154395@s.whatsapp.net	2025-05-24 00:00:00	Cabelo+Sobrancelha
83a96463-8e75-492c-ab77-dbdce7269a7f	2025-05-31 00:00:00	17:20	Tuti	Bruno	local	2025-05-25 00:47:41.926	Cabelo
f07ef2c3-993d-4efd-bbc5-42bb96b92045	2025-05-26 00:00:00	18:00	renan	Bruno	558199282002@s.whatsapp.net	2025-05-24 00:00:00	Cabelo
0be1b5f7-90e7-4c55-a920-457487364201	2025-05-30 00:00:00	17:20	yan	Wallyson	558199168954@s.whatsapp.net	2025-05-24 00:00:00	Cabelo
e2005c17-c744-4b6b-b643-c70546cb50ce	2025-06-06 00:00:00	16:00	matheus	Bruno	558197941830@s.whatsapp.net	2025-05-25 00:00:00	Cabelo
9ab7915f-75d5-4c81-80a3-74007aa96317	2025-05-31 00:00:00	10:40	júlio césar	Wallyson	558196440108@s.whatsapp.net	2025-05-25 00:00:00	Cabelo+Sobrancelha
d9028c36-92f0-4676-b6d1-c8ec34c4eabc	2025-05-26 00:00:00	16:40	anderson	Bruno	558197666072@s.whatsapp.net	2025-05-25 00:00:00	Cabelo
9e029dc3-38d4-468f-9293-174693697a34	2025-05-30 00:00:00	18:00	ivaldir barbosa	Bruno	558196149252@s.whatsapp.net	2025-05-25 00:00:00	Cabelo+Sobrancelha
9373670d-51fa-4d0a-acfb-3ca3e3c45049	2025-05-26 00:00:00	13:20	Dafnis 	Wallyson	local	2025-05-25 23:31:56.82	Cabelo
6206d345-8bca-43eb-ae9a-2d983e8bda31	2025-05-26 00:00:00	09:00	Miguel 	Wallyson	local	2025-05-25 23:33:20.862	Cabelo
5fe0703b-5c58-42f5-b074-a4bb3149c146	2025-05-28 00:00:00	16:40	Wendel 	Wallyson	local	2025-05-25 23:50:25.529	Cabelo
2570a3df-f6e9-466d-a334-840ee2881366	2025-05-29 00:00:00	11:40	zaldinho	Bruno	558198591039@s.whatsapp.net	2025-05-25 00:00:00	Cabelo
d9ce1be6-a1fe-48c3-8185-a3987f58a489	2025-05-26 00:00:00	09:40	sousq	Wallyson	558196903604@s.whatsapp.net	2025-05-25 00:00:00	Cabelo+Barba
da50e10d-0890-47ef-a77e-eac8ce3d86d3	2025-06-06 00:00:00	13:20	bruno gomes	Bruno	558196522258@s.whatsapp.net	2025-05-26 00:00:00	Cabelo
7a2b4ae0-34f4-4cf6-930a-eb55fa2af9d1	2025-06-20 00:00:00	13:20	bruno gomes	Wallyson	558196522258@s.whatsapp.net	2025-05-26 00:00:00	Barba
4ed31c32-084b-4a77-83d1-dc6d8baa25cf	2025-05-26 00:00:00	11:00	miguel josé	Bruno	558196843988@s.whatsapp.net	2025-05-26 00:00:00	Cabelo
932308d1-9f35-4417-a77c-67911832104b	2025-05-27 00:00:00	09:40	Ocupado	Bruno	local	2025-05-26 11:29:38.476	Cabelo
d57a1ae8-d5c8-4b2b-952f-c19417ff3b89	2025-05-27 00:00:00	11:00	Ocupado	Bruno	local	2025-05-26 11:30:06.654	Cabelo
43e8408e-0a93-42ec-a92b-35aee2574138	2025-05-30 00:00:00	13:20	luan	Bruno	558197301690@s.whatsapp.net	2025-05-26 00:00:00	Cabelo+Sobrancelha
ca85989d-cd53-4617-8148-af3dd831349c	2025-05-30 00:00:00	11:40	arthur	Bruno	558194115511@s.whatsapp.net	2025-05-26 00:00:00	Cabelo+Barba
71478ef3-491a-4ac1-846a-86284aa1e9da	2025-05-26 00:00:00	15:20	Valney 	Bruno	local	2025-05-26 15:02:56.354	Cabelo
4c3b39c1-11a4-410a-a8f5-fa0209ada5c5	2025-05-26 00:00:00	16:00	Willian falta 	Bruno	local	2025-05-26 15:06:38.677	Cabelo
c9d49827-fb12-4a29-902a-663b05582a35	2025-06-19 00:00:00	13:20	Gerdo 	Wallyson	local	2025-05-26 15:07:36.187	Cabelo
745965b1-d2a4-4776-86f0-5fca56c8a20f	2025-06-07 00:00:00	15:20	Gerdo 	Wallyson	local	2025-05-26 15:07:56.476	Cabelo
3e1fca25-403f-4404-9583-42be4381fdc1	2025-05-27 00:00:00	10:00	Eraldo 	Wallyson	local	2025-05-26 15:12:08.27	Cabelo+Barba
6ae440d5-2ff4-4c86-a236-e4d6992ea6d3	2025-05-27 00:00:00	13:20	ataliba albuquerque	Bruno	558182671510@s.whatsapp.net	2025-05-26 00:00:00	Barba
ef02efad-d097-4c85-b20c-f196d8d06ca5	2025-05-29 00:00:00	16:40	jose lucas farias dos santos	Bruno	558187782121@s.whatsapp.net	2025-05-26 00:00:00	Cabelo+Barba
9aad32e8-7a4b-4f63-aa6f-3eb99b7d7551	2025-05-29 00:00:00	16:00	Weligton 	Wallyson	local	2025-05-26 18:59:33.004	Cabelo
6591b2e4-c013-484d-a567-45916b70ddb9	2025-05-31 00:00:00	16:40	jônata davi	Bruno	558199773748@s.whatsapp.net	2025-05-26 00:00:00	Cabelo
3bf13365-5589-4665-8bdf-11cbf49e4d75	2025-06-19 00:00:00	16:00	jeferson	Wallyson	558198265483@s.whatsapp.net	2025-05-26 00:00:00	Cabelo+Barba
720260db-7098-481c-b99a-1a0bcd0bfcb0	2025-05-27 00:00:00	14:40	Gelson 	Wallyson	local	2025-05-26 19:55:27.097	Cabelo
b9283b18-5d2b-4a32-83a8-844feefd0a1e	2025-05-28 00:00:00	17:20	del alumínio	Bruno	558197796167@s.whatsapp.net	2025-05-26 00:00:00	Cabelo
fbd87364-1309-4802-8764-87e34686143a	2025-05-28 00:00:00	18:00	cauê	Bruno	558197796167@s.whatsapp.net	2025-05-26 00:00:00	Cabelo
0d70d82a-71f8-4079-a695-23ede5f10669	2025-05-30 00:00:00	16:40	max farias	Wallyson	558196617265@s.whatsapp.net	2025-05-26 00:00:00	Cabelo
ba96658b-56e5-4a5c-b3b3-da64548d96eb	2025-05-28 00:00:00	18:40	 Vinicius 	Wallyson	local	2025-05-26 21:12:07.807	Cabelo
5e2aefeb-9e3a-4935-896c-dab7a13cc9c0	2025-05-27 00:00:00	08:00	Marcado 	Wallyson	local	2025-05-26 21:12:21.142	Cabelo
1a3e9332-6879-488d-ad52-8a8a32686813	2025-06-21 00:00:00	16:40	renan	Bruno	558199282002@s.whatsapp.net	2025-05-26 00:00:00	Cabelo
d51f5a77-4994-4e3c-af82-f90d1b08e71d	2025-05-27 00:00:00	08:40	joão lucas	Wallyson	558198783426@s.whatsapp.net	2025-05-26 00:00:00	Cabelo
365cd906-7fec-465f-a111-7ae6fd022238	2025-05-31 00:00:00	09:20	luiz	Bruno	558181486379@s.whatsapp.net	2025-05-26 00:00:00	Cabelo+Sobrancelha
60300f6c-e941-496c-97ae-627b2538cbf5	2025-05-29 00:00:00	18:00	pedro henrique	Bruno	558199160082@s.whatsapp.net	2025-05-27 00:00:00	Cabelo
4fde0004-cb36-4bf9-aae9-f4588aa9d0ec	2025-05-27 00:00:00	14:40	ivan	Bruno	558181538579@s.whatsapp.net	2025-05-27 00:00:00	Cabelo
d3a36f20-d937-4c94-b8ea-02d1fe03505c	2025-05-31 00:00:00	08:00	allef ryan	Bruno	558195740243@s.whatsapp.net	2025-05-27 00:00:00	Cabelo
23cab72f-5164-40a5-bd19-a206e1284827	2025-05-27 00:00:00	14:00	Indisponivel	Bruno	Indisponivel	2025-05-27 10:11:07.129	
65132c20-c9a3-48eb-82b3-ac07824b4e24	2025-05-27 00:00:00	11:20	Rubens 	Wallyson	local	2025-05-27 12:28:45.523	Cabelo
5228441f-5686-479b-bbab-e56907b73d3c	2025-05-29 00:00:00	16:40	fernando	Wallyson	558199410150@s.whatsapp.net	2025-05-27 00:00:00	Cabelo+Sobrancelha
ac0f4011-1149-4d2b-bade-edf4aa0cff17	2025-05-27 00:00:00	15:20	Indisponivel	Bruno	Indisponivel	2025-05-27 12:43:26.573	
d915a149-5e91-493f-ab38-6ba792e491e5	2025-05-27 00:00:00	16:00	Indisponivel	Bruno	Indisponivel	2025-05-27 12:43:26.666	
aa5d3342-c274-49f3-a660-55fa1c1bb929	2025-05-27 00:00:00	16:40	Indisponivel	Bruno	Indisponivel	2025-05-27 12:43:26.697	
c0d303c3-ba60-4cd2-b8f5-6f33d50a89e7	2025-05-27 00:00:00	17:20	Indisponivel	Bruno	Indisponivel	2025-05-27 12:43:26.733	
47c2b568-22b4-4b08-ae4b-d4a84b43f077	2025-05-28 00:00:00	16:00	eduardo	Bruno	558196049780@s.whatsapp.net	2025-05-27 00:00:00	Cabelo
ea85d018-cc77-4cae-b5f5-4d95b5e035a1	2025-06-05 00:00:00	17:20	miguel	Bruno	558199728099@s.whatsapp.net	2025-05-27 00:00:00	Cabelo
bf4ea373-ab1a-4eb6-8a06-63dc12cf5db4	2025-05-27 00:00:00	10:20	emídio	Bruno	558181606802@s.whatsapp.net	2025-05-27 00:00:00	Cabelo
7427f5f0-9d2b-4d72-a800-f78ce5757101	2025-05-27 00:00:00	17:20	Saulo	Wallyson	local	2025-05-27 13:45:28.199	Cabelo
de11373c-ffb4-46c4-ab3a-a11b74d232e9	2025-06-04 00:00:00	17:20	Eraldo 	Wallyson	local	2025-05-27 13:49:25.525	Barba
3db14f30-4453-4a79-8b26-a69cca43c51c	2025-05-27 00:00:00	16:40	hugo	Wallyson	558197543337@s.whatsapp.net	2025-05-27 00:00:00	Cabelo
cd4cbf89-23eb-4ce9-9295-42158a0060a5	2025-05-31 00:00:00	08:40	wallacy	Wallyson	558182148841@s.whatsapp.net	2025-05-27 00:00:00	Cabelo
35e716a3-c81b-4fc3-84fd-c2f574b1ad4d	2025-05-31 00:00:00	08:00	wesley	Wallyson	558181016662@s.whatsapp.net	2025-05-27 00:00:00	Cabelo+Sobrancelha
395e6a15-3f9f-4f9b-bd60-0986c063cb2d	2025-05-28 00:00:00	18:40	lucas	Bruno	558197326785@s.whatsapp.net	2025-05-27 00:00:00	Cabelo
225ace22-14a7-4ec2-ac50-134561676d15	2025-05-27 00:00:00	13:20	0	Wallyson	558182062970@s.whatsapp.net	2025-05-27 00:00:00	Cabelo
c2697476-9e68-4853-b406-4cbc54362a18	2025-05-28 00:00:00	09:00	João Danielson 	Bruno	local	2025-05-27 16:18:48.789	Cabelo+Barba
7c2362b9-965f-4a64-bcd6-0833e49ba3bd	2025-05-28 00:00:00	14:40	lucas	Bruno	558182451503@s.whatsapp.net	2025-05-27 00:00:00	Cabelo+Sobrancelha
27981345-77a1-4fd6-8d25-9a68febc736f	2025-05-27 00:00:00	17:20	Indisponivel	Bruno	Indisponivel	2025-05-27 18:32:33.236	
20e65c1d-8617-4c4a-bb12-a2de2a1242cf	2025-05-27 00:00:00	18:00	Indisponivel	Bruno	Indisponivel	2025-05-27 18:32:33.334	
ac3716b4-db30-4724-a7a8-1fbc80e31152	2025-05-27 00:00:00	18:40	Indisponivel	Bruno	Indisponivel	2025-05-27 18:32:33.367	
936582e7-7398-49e8-b0a5-9fd36546b7c2	2025-06-05 00:00:00	18:00	victor alexandre	Bruno	558197610116@s.whatsapp.net	2025-05-27 00:00:00	Cabelo+Sobrancelha
99e7e5d4-2be8-457d-8343-74c992a030be	2025-05-29 00:00:00	18:40	mateus	Bruno	558196083218@s.whatsapp.net	2025-05-27 00:00:00	Cabelo+Barba
dad8624d-8e34-4f5e-a066-9f7a0f766c69	2025-06-05 00:00:00	14:40	renan	Bruno	558182497215@s.whatsapp.net	2025-05-27 00:00:00	Cabelo+Sobrancelha
3e677ea1-491b-4366-a059-d442c01cc09d	2025-05-28 00:00:00	13:20	João Carmen 	Wallyson	local	2025-05-27 19:46:01.671	Cabelo
5b0f9a70-43a0-4d47-a31b-1f11cffccc66	2025-05-29 00:00:00	09:20	leonardo	Wallyson	558199658643@s.whatsapp.net	2025-05-27 00:00:00	Cabelo
269f9820-26e6-4a69-a330-e7868446430d	2025-06-06 00:00:00	14:00	gustavo nascimento	Bruno	558181670651@s.whatsapp.net	2025-05-27 00:00:00	Cabelo
90eee823-4c47-4dee-a2e9-fdc6fb4a4ba2	2025-06-06 00:00:00	14:40	gabriel batista	Bruno	558194907895@s.whatsapp.net	2025-05-27 00:00:00	Cabelo
f6cdc1fb-64d4-41dc-986e-be4d6bda929c	2025-05-28 00:00:00	08:00	Carlos 	Wallyson	local	2025-05-27 21:04:28.194	Cabelo
3f7047ed-7091-4965-9a7a-8dde5a1f843c	2025-05-28 00:00:00	11:00	marcos queiroz	Bruno	558181473848@s.whatsapp.net	2025-05-27 00:00:00	Cabelo
ea71c7f9-f8d9-42d3-bfa2-7b4ee68b6244	2025-06-06 00:00:00	16:00	lucas gabriel	Wallyson	558199333703@s.whatsapp.net	2025-05-27 00:00:00	Cabelo
f581a0b5-d5d6-41cd-a6de-32998a8bc7ab	2025-05-28 00:00:00	15:20	Pedro 	Wallyson	local	2025-05-27 21:54:36.081	Cabelo
\.


--
-- TOC entry 3370 (class 0 OID 16401)
-- Dependencies: 216
-- Data for Name: HorariosBruno; Type: TABLE DATA; Schema: public; Owner: agendamento_bruno_user
--

COPY public."HorariosBruno" ("diaSemana", horarios) FROM stdin;
Sexta	{09:00,09:40,10:20,11:00,11:40,13:20,14:00,14:40,15:20,16:00,16:40,17:20,18:00,18:40,19:20,20:00}
Terca	{09:00,09:40,10:20,11:00,11:40,13:20,14:00,14:40,15:20,16:00,16:40,17:20,18:00,18:40}
Quarta	{09:00,09:40,10:20,11:00,11:40,13:20,14:00,14:40,15:20,16:00,16:40,17:20,18:00,18:40}
Quinta	{09:00,09:40,10:20,11:00,11:40,13:20,14:00,14:40,15:20,16:00,16:40,17:20,18:00,18:40}
Segunda	{09:40,10:20,11:00,11:40,13:20,14:00,14:40,15:20,16:00,16:40,17:20,18:00,18:40}
Sabado	{08:00,09:20,10:00,10:40,11:20,12:00,14:00,14:40,15:20,16:00,16:40,17:20}
\.


--
-- TOC entry 3371 (class 0 OID 16406)
-- Dependencies: 217
-- Data for Name: HorariosWallyson; Type: TABLE DATA; Schema: public; Owner: agendamento_bruno_user
--

COPY public."HorariosWallyson" ("diaSemana", horarios) FROM stdin;
Segunda	{09:00,09:40,10:20,11:00,11:40,13:20,14:00,14:40,15:20,16:00,16:40,17:20,18:00,18:40}
Terca	{08:00,08:40,09:20,10:00,10:40,11:20,13:20,14:00,14:40,15:20,16:00,16:40,17:20,18:00,18:40}
Quarta	{08:00,08:40,09:20,10:00,10:40,11:20,13:20,14:00,14:40,15:20,16:00,16:40,17:20,18:00,18:40}
Quinta	{08:00,08:40,09:20,10:00,10:40,11:20,13:20,14:00,14:40,15:20,16:00,16:40,17:20,18:00,18:40}
Sabado	{08:00,08:40,09:20,10:00,10:40,11:20,12:00,13:20,14:00,14:40,15:20,16:00,16:40,17:20,18:00}
Sexta	{08:00,08:40,09:20,10:00,10:40,11:20,13:20,14:00,14:40,15:20,16:00,16:40,17:20,18:00,18:40,19:20,20:00}
\.


--
-- TOC entry 3372 (class 0 OID 16411)
-- Dependencies: 218
-- Data for Name: _prisma_migrations; Type: TABLE DATA; Schema: public; Owner: agendamento_bruno_user
--

COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM stdin;
e107feb7-cfae-47e7-a1e0-c0c7f37c3a10	c90fcbb65f5e3954b3782c5fbdf3ca6c0f85b1a4d1608821b7068b33ba5c09f5	2024-12-14 17:28:53.341969+00	20241128203416_create_table_agendamentos	\N	\N	2024-12-14 17:28:52.888107+00	1
1741aebc-0ad4-447d-9df9-037cb5da7b90	4c62061a13931bf277211d8b54421147630da49edf8fcbb05c5bc5e97021d3bc	2024-12-14 17:28:53.971349+00	20241128225441_	\N	\N	2024-12-14 17:28:53.520872+00	1
5c500470-2c3e-486e-a199-99f86a3fee87	c0f57f750aa16819cf6bc05dbac5020c89881e64082819b03d65e5e09fee13c5	2024-12-14 17:28:54.597378+00	20241203175746_add_colums	\N	\N	2024-12-14 17:28:54.150331+00	1
78818994-5593-4657-bc86-f072b0d09000	8a40b954958855bdb73af56e44c2fe1cc50ec9425c9ad6b11c3bac17723c2516	2024-12-14 17:28:55.22637+00	20241203180037_add_unique	\N	\N	2024-12-14 17:28:54.776056+00	1
30358f93-c29a-4475-96cb-7be8f33d7ef3	3e8d73b5be82c9070d2bcf5a1af255cf73e4626af0a34bc10f0e67b34adef40b	2024-12-14 17:28:55.858391+00	20241203180146_update_name_column	\N	\N	2024-12-14 17:28:55.404608+00	1
aeb3109b-5fc3-400a-a30f-de556b915b5f	a6373b9749cb05911c1cdc5597c93edd4e38232d749b2daad6839497837fb8e3	2024-12-14 17:28:56.489353+00	20241203185219_add_new_column	\N	\N	2024-12-14 17:28:56.03895+00	1
653f5345-c818-4aa4-af10-cb04b379e134	e0838eb7e48d22dd7e29bb14879dcf0b493587b2d043ba0977a65fd8358be1b6	2024-12-14 17:28:57.114201+00	20241203185831_add_column_at_agendamentos	\N	\N	2024-12-14 17:28:56.667743+00	1
66b91801-311b-483e-a138-cda8e73a38ca	590fd3f0df783ccd92adfe92f9c71871472a06cbb6fedc25a6703fe17ca09476	2024-12-14 17:28:57.760702+00	20241203191654_remove_unique	\N	\N	2024-12-14 17:28:57.295689+00	1
9cabbb7d-4ec0-4390-b820-13f8dabcffc9	205894a5655e5c33f88b8ec76a81c3bbf2b12c0130f46dd0d53c8abe67d8f412	2024-12-14 17:28:58.415516+00	20241204172542_create_horarios	\N	\N	2024-12-14 17:28:57.948256+00	1
a5666db8-6b6a-45ac-963d-b8f0cf542aa8	8ac9f49e97a149e29e2e10efb0fff0646bcc4e1023a17ab8772365f577636e7b	2024-12-14 17:28:59.055065+00	20241204172937_create_table_wallyson	\N	\N	2024-12-14 17:28:58.593761+00	1
e91bce99-76eb-4aec-842f-d8afa6f0725d	b23fe003785df4c782b158447ef7bf6bb360dc5fe61ad796208fed8cc93d7a60	2024-12-14 17:28:59.69934+00	20241204183652_update_column_id	\N	\N	2024-12-14 17:28:59.233433+00	1
2ec23c62-0031-4c04-aed6-9e81ece3c300	41a1ee4c53bcbdf0fb5c8a50c41f65692cf4154559f52a130969b8c1a5311b92	2024-12-14 17:29:00.333286+00	20241205190419_add_servico	\N	\N	2024-12-14 17:28:59.87781+00	1
\.


--
-- TOC entry 3221 (class 2606 OID 16422)
-- Name: Agendamentos Agendamentos_pkey; Type: CONSTRAINT; Schema: public; Owner: agendamento_bruno_user
--

ALTER TABLE ONLY public."Agendamentos"
    ADD CONSTRAINT "Agendamentos_pkey" PRIMARY KEY (id);


--
-- TOC entry 3225 (class 2606 OID 16424)
-- Name: _prisma_migrations _prisma_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: agendamento_bruno_user
--

ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3222 (class 1259 OID 16425)
-- Name: HorariosBruno_diaSemana_key; Type: INDEX; Schema: public; Owner: agendamento_bruno_user
--

CREATE UNIQUE INDEX "HorariosBruno_diaSemana_key" ON public."HorariosBruno" USING btree ("diaSemana");


--
-- TOC entry 3223 (class 1259 OID 16426)
-- Name: HorariosWallyson_diaSemana_key; Type: INDEX; Schema: public; Owner: agendamento_bruno_user
--

CREATE UNIQUE INDEX "HorariosWallyson_diaSemana_key" ON public."HorariosWallyson" USING btree ("diaSemana");


--
-- TOC entry 2050 (class 826 OID 16391)
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: -; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON SEQUENCES TO agendamento_bruno_user;


--
-- TOC entry 2052 (class 826 OID 16393)
-- Name: DEFAULT PRIVILEGES FOR TYPES; Type: DEFAULT ACL; Schema: -; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TYPES TO agendamento_bruno_user;


--
-- TOC entry 2051 (class 826 OID 16392)
-- Name: DEFAULT PRIVILEGES FOR FUNCTIONS; Type: DEFAULT ACL; Schema: -; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON FUNCTIONS TO agendamento_bruno_user;


--
-- TOC entry 2049 (class 826 OID 16390)
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: -; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TABLES TO agendamento_bruno_user;


-- Completed on 2025-05-27 22:50:10 UTC

--
-- PostgreSQL database dump complete
--


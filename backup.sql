--
-- PostgreSQL database dump
--

\restrict mydjmiWDpEingeqBemFlEwQieVgzcjyoVdBqPpqcFhCoRKkljewVzvHVifjI9PC

-- Dumped from database version 17.6 (Debian 17.6-2.pgdg12+1)
-- Dumped by pg_dump version 17.6 (Debian 17.6-1.pgdg13+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: agendamentos_42te_user
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO agendamentos_42te_user;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: Agendamentos; Type: TABLE; Schema: public; Owner: agendamentos_42te_user
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


ALTER TABLE public."Agendamentos" OWNER TO agendamentos_42te_user;

--
-- Name: HorariosBruno; Type: TABLE; Schema: public; Owner: agendamentos_42te_user
--

CREATE TABLE public."HorariosBruno" (
    "diaSemana" text NOT NULL,
    horarios text[]
);


ALTER TABLE public."HorariosBruno" OWNER TO agendamentos_42te_user;

--
-- Name: HorariosWallyson; Type: TABLE; Schema: public; Owner: agendamentos_42te_user
--

CREATE TABLE public."HorariosWallyson" (
    "diaSemana" text NOT NULL,
    horarios text[]
);


ALTER TABLE public."HorariosWallyson" OWNER TO agendamentos_42te_user;

--
-- Name: _prisma_migrations; Type: TABLE; Schema: public; Owner: agendamentos_42te_user
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


ALTER TABLE public._prisma_migrations OWNER TO agendamentos_42te_user;

--
-- Data for Name: Agendamentos; Type: TABLE DATA; Schema: public; Owner: agendamentos_42te_user
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
6f7bd379-db2b-449a-a67d-5cd485a150ee	2025-05-30 00:00:00	18:40	Guilherme Santos 	Bruno	local	2025-05-28 10:29:16.878	Cabelo
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
8f60a39a-3ad9-4c90-845c-94b42d42e6cc	2025-05-28 00:00:00	16:00	Marcado criança 	Wallyson	local	2025-05-28 18:21:04.606	Cabelo
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
29de27b2-3220-4f72-a4ff-4e9d7e70c485	2025-04-26 00:00:00	16:00	calebe	Wallyson	558196987419@s.whatsapp.net	2025-04-25 00:00:00	Cabelo
2d1685e1-239a-4623-86a0-29f524d01213	2025-04-28 00:00:00	10:20	zaldinho	Bruno	558198591039@s.whatsapp.net	2025-04-25 00:00:00	Cabelo
3598cb3b-77f0-4670-a1de-7d4d3a9c29d4	2025-06-18 00:00:00	09:40	josé everson	Bruno	558179003193@s.whatsapp.net	2025-04-25 00:00:00	Cabelo
43741982-97c8-4224-a596-b0f42b1ce363	2025-06-18 00:00:00	10:20	wanderson josé	Bruno	558179003193@s.whatsapp.net	2025-04-25 00:00:00	Cabelo
f70a7d40-0b6b-4865-ba0e-4be015023abd	2025-06-21 00:00:00	16:00	gabriel silva	Bruno	558171039700@s.whatsapp.net	2025-04-25 00:00:00	Cabelo+Sobrancelha
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
52458a2a-241e-4779-9249-5f1a0cd7c00d	2025-06-21 00:00:00	08:40	Ocupado	Bruno	local	2025-04-26 10:16:59.203	Cabelo
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
82fd4cf9-a48d-46df-91d5-c48b6d0856cf	2025-06-28 00:00:00	14:40	Allysson 	Wallyson	local	2025-06-26 14:32:48.501	Cabelo
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
6e58f55c-355d-40cd-9274-922a06523e87	2025-05-05 00:00:00	14:40	Wellington 	Wallyson	local	2025-05-05 13:33:11.165	Cabelo
bf3d7675-86b3-4aac-a076-6b8163de19a0	2025-06-18 00:00:00	16:00	leonardo	Bruno	558174001016@s.whatsapp.net	2025-05-05 00:00:00	Cabelo
2d1a2d0f-26ac-4f6d-a7dd-a7f03b550959	2025-06-27 00:00:00	16:00	joão paulo	Bruno	558179098531@s.whatsapp.net	2025-05-05 00:00:00	Cabelo+Barba
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
74ba2433-7989-43b7-86e0-7ae9fdfa4ac7	2025-06-27 00:00:00	10:40	Vandinho 	Wallyson	local	2025-06-26 18:34:31.239	Cabelo
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
6f19a2d4-a37e-470e-b3b1-1aad1b340849	2025-05-29 00:00:00	09:00	hatus	Bruno	558199706416@s.whatsapp.net	2025-05-27 00:00:00	Cabelo+Barba
195daa13-1ca8-4d9e-bb46-b4dc01831de1	2025-05-29 00:00:00	18:40	marcos e filho	Wallyson	558195363219@s.whatsapp.net	2025-05-28 00:00:00	Cabelo
48a936e3-aa4a-411e-ac1e-6f0b955aeac6	2025-06-18 00:00:00	16:40	maurycio	Bruno	558197162890@s.whatsapp.net	2025-05-28 00:00:00	Cabelo+Sobrancelha
d44bdd34-2e63-46af-979d-4d40bf0e850b	2025-05-31 00:00:00	10:00	maurycio	Bruno	558197162890@s.whatsapp.net	2025-05-28 00:00:00	Cabelo+Sobrancelha
ee8b5a67-b903-4024-8074-68a113754015	2025-06-04 00:00:00	14:40	emídio	Bruno	558181606802@s.whatsapp.net	2025-05-28 00:00:00	Cabelo
ad2e8c0a-0b40-425b-b87e-4b856a30b602	2025-05-30 00:00:00	19:20	denílson	Bruno	558197084296@s.whatsapp.net	2025-05-28 00:00:00	Barba
1752c8b1-4ba3-4590-841a-20f51d74930c	2025-05-28 00:00:00	14:00	renan	Wallyson	558195330370@s.whatsapp.net	2025-05-28 00:00:00	Cabelo
9dc41cdc-2f38-498f-90de-12ebb0615834	2025-05-28 00:00:00	14:40	felipe	Wallyson	558181451150@s.whatsapp.net	2025-05-28 00:00:00	Cabelo
0b2b388b-a30b-4d71-b278-1539e28ba4d9	2025-05-30 00:00:00	09:40	deyvson	Bruno	558195479577@s.whatsapp.net	2025-05-28 00:00:00	Cabelo
35ce38e5-8dfc-42f7-8ed9-1a685f2a1578	2025-06-05 00:00:00	18:40	felipe silva	Bruno	558196065070@s.whatsapp.net	2025-05-28 00:00:00	Cabelo
b0f622be-7c9d-42fa-bdb7-d872bd69b5d2	2025-05-29 00:00:00	11:20	Levino 	Wallyson	local	2025-05-28 18:24:24.112	Cabelo+Barba
da898964-1502-4bfb-b8db-6c6f3adaf66f	2025-05-28 00:00:00	16:40	Eduardo	Bruno	local	2025-05-28 18:25:58.291	Cabelo
727803ce-74db-4358-aa21-2a9b6c400b2d	2025-05-30 00:00:00	15:20	Wellington 	Wallyson	local	2025-05-28 19:16:11.863	Cabelo
d4260d21-b906-4375-a2ca-055d89c9271a	2025-05-31 00:00:00	10:40	fábio cria	Bruno	5521980058628@s.whatsapp.net	2025-05-28 00:00:00	Acabamento (Pezinho)
c8210d36-9c80-4973-b549-5a1da7333b18	2025-06-11 00:00:00	19:20	Paulo 	Bruno	local	2025-05-28 22:36:59.966	Cabelo
2a720e8e-9f7d-4291-b536-09a781d3a257	2025-05-29 00:00:00	10:00	Gabriel 	Wallyson	local	2025-05-28 22:39:58.467	Cabelo
e50e1b15-13fa-4264-8f5a-17b5d3ed06d7	2025-05-30 00:00:00	14:00	dubolo	Bruno	558196647899@s.whatsapp.net	2025-05-28 00:00:00	Cabelo+Sobrancelha
69cc8bd6-152d-4d2a-b08e-320529b5b503	2025-06-14 00:00:00	14:40	dubolo	Bruno	558196647899@s.whatsapp.net	2025-05-28 00:00:00	Cabelo+Sobrancelha
948a8570-1360-49bf-9ba1-05630c075b1d	2025-05-29 00:00:00	16:40	joão pedro	Bruno	558181310245@s.whatsapp.net	2025-05-28 00:00:00	Cabelo
b896dd49-6911-4b9a-b73f-2976dad9b75a	2025-05-31 00:00:00	15:20	osmar	Bruno	558196267018@s.whatsapp.net	2025-05-28 00:00:00	Cabelo
32e8f4bc-b1bd-4fbd-9015-dd6b504d7945	2025-05-30 00:00:00	14:40	matheus ryan	Bruno	558198446732@s.whatsapp.net	2025-05-28 00:00:00	Cabelo
bad821e7-f604-4242-a3fc-347e053a5e8e	2025-05-29 00:00:00	18:00	Kuan	Wallyson	local	2025-05-29 01:22:19.206	Cabelo
f277c6d1-299c-4823-8a06-19f069eb9260	2025-05-30 00:00:00	14:00	samuel	Wallyson	558197939904@s.whatsapp.net	2025-05-28 00:00:00	Cabelo+Sobrancelha
0b7af59b-ace3-4165-9f85-1fd20c29dc67	2025-05-30 00:00:00	08:00	eudes fera	Wallyson	558184793136@s.whatsapp.net	2025-05-29 00:00:00	Cabelo
ef7ce6ed-4d89-4daf-8bb3-631275ef7435	2025-05-29 00:00:00	09:40	sérgio	Bruno	558198288830@s.whatsapp.net	2025-05-29 00:00:00	Cabelo
cd715583-caef-416f-a883-5f6468f41897	2025-05-30 00:00:00	20:00	Marcos 	Wallyson	local	2025-05-29 12:40:30.338	Cabelo+Barba
e14c8431-9188-4838-97ba-1016f86fed25	2025-05-29 00:00:00	11:00	rennan	Bruno	558179005726@s.whatsapp.net	2025-05-29 00:00:00	Cabelo
947f3004-8991-41d3-a83d-efa39933af35	2025-05-30 00:00:00	13:20	Paulinho 	Wallyson	local	2025-05-29 12:57:57.068	Acabamento (Pezinho)
9189204e-229b-4bc9-bc65-bb5b96f6ef16	2025-05-29 00:00:00	13:20	Indisponivel	Bruno	Indisponivel	2025-05-29 13:30:06.352	
3fb97f9f-2e3d-4cf7-a0c6-fb3c762859c0	2025-05-29 00:00:00	10:20	ataliba	Bruno	558182671510@s.whatsapp.net	2025-05-29 00:00:00	Barba
a5adb44b-71ee-4c9f-aff2-cf763e477f21	2025-05-30 00:00:00	16:00	Rômulo 	Wallyson	local	2025-05-29 14:33:11.216	Cabelo
51069a2d-03d0-40f9-bc56-844943ce5be7	2025-05-30 00:00:00	11:00	jefferson	Bruno	558197857453@s.whatsapp.net	2025-05-29 00:00:00	Cabelo
6f492999-3dd4-4709-97a8-f93e8d6d2154	2025-05-29 00:00:00	17:20	jorge miguel	Wallyson	558197887918@s.whatsapp.net	2025-05-29 00:00:00	Cabelo
9f42a425-1666-4177-9448-41814173aac7	2025-05-29 00:00:00	14:00	ataliba	Bruno	558182671510@s.whatsapp.net	2025-05-29 00:00:00	Barba
5d0d0773-23b6-4de0-b830-ec355dc4051f	2025-05-31 00:00:00	18:00	samuel	Wallyson	558196448583@s.whatsapp.net	2025-05-29 00:00:00	Cabelo
1627c24b-ce31-48d9-9622-16e9b39b08af	2025-05-29 00:00:00	14:40	Indisponivel	Bruno	Indisponivel	2025-05-29 15:48:30.852	
3b96bf3f-e13a-4bf8-bf4b-bec2fbefbbd5	2025-05-29 00:00:00	15:20	Indisponivel	Bruno	Indisponivel	2025-05-29 15:48:30.956	
a96d3af0-1c89-4e71-90dd-0756e79bc05c	2025-05-29 00:00:00	16:00	Indisponivel	Bruno	Indisponivel	2025-05-29 15:48:30.987	
13d03d80-7a5b-4111-a537-d426d8a41910	2025-05-31 00:00:00	14:00	breno	Bruno	558197349442@s.whatsapp.net	2025-05-29 00:00:00	Cabelo
bb8dc42c-80fc-4cc8-a69e-ee196acdd748	2025-05-29 00:00:00	15:20	vandinho	Wallyson	558197042471@s.whatsapp.net	2025-05-29 00:00:00	Cabelo
7dd4f0aa-f150-47d8-865a-8f695fc4abce	2025-05-29 00:00:00	14:40	Lucas 	Wallyson	local	2025-05-29 16:34:44.529	Cabelo
f9187fd6-87d5-464a-aeb7-32e6b7061892	2025-05-30 00:00:00	14:40	Matheus 	Wallyson	local	2025-05-29 17:04:32.353	Cabelo
b9f2726a-ddc1-4782-9686-cc2e0659574c	2025-05-30 00:00:00	20:00	Tuti	Bruno	local	2025-05-29 17:31:42.277	Cabelo
a2677950-ad1c-4945-b837-575a2d141191	2025-06-05 00:00:00	18:00	Indisponivel	Wallyson	Indisponivel	2025-05-29 17:32:32.92	
f0b0c49c-b168-45c7-82fa-fed5d4ced9ff	2025-06-05 00:00:00	18:40	Indisponivel	Wallyson	Indisponivel	2025-05-29 17:32:32.983	
5b411d2e-1520-450c-b029-629c2e72bbb7	2025-06-05 00:00:00	17:20	Marcado 	Wallyson	local	2025-05-29 17:35:09.267	Cabelo
728be553-f9f7-4ca2-8f53-8ba3cab4ed10	2025-06-02 00:00:00	09:40	robert fernando	Bruno	558187830953@s.whatsapp.net	2025-05-29 00:00:00	Cabelo
5798e234-f5df-4a9d-8dac-18dd1aefe6cb	2025-05-31 00:00:00	11:20	eliel	Bruno	558199867389@s.whatsapp.net	2025-05-29 00:00:00	Cabelo
d50fcc67-70fb-4a90-91a9-6e0d0277b44d	2025-05-30 00:00:00	15:20	vinicius	Bruno	558194296929@s.whatsapp.net	2025-05-29 00:00:00	Cabelo
2ad87c2d-9ad7-443b-870d-81369091f484	2025-05-30 00:00:00	18:00	Kauan Yuri 	Wallyson	local	2025-05-29 20:52:36.515	Cabelo
3242dec0-4657-4974-a01b-06a318c4e3c2	2025-05-30 00:00:00	10:20	arthur sales	Bruno	558199775133@s.whatsapp.net	2025-05-29 00:00:00	Cabelo+Sobrancelha
aed3e143-0317-4d18-adf3-9b881cbe261f	2025-05-31 00:00:00	12:00	simone	Bruno	558187145252@s.whatsapp.net	2025-05-29 00:00:00	Cabelo
9ce8fa3e-24bd-4c5b-89a1-8460acd0a1c4	2025-06-05 00:00:00	16:00	miguel	Bruno	558198627331@s.whatsapp.net	2025-05-29 00:00:00	Cabelo+Barba
f6465fd3-04e5-4c9a-9689-5227af0af271	2025-06-02 00:00:00	15:20	lucas rafael	Bruno	558197593200@s.whatsapp.net	2025-05-29 00:00:00	Cabelo
cb9c7904-92bf-41f7-b58b-7f1182988c35	2025-06-10 00:00:00	16:00	romerio	Bruno	558198627331@s.whatsapp.net	2025-05-29 00:00:00	Cabelo+Barba
22a7b079-5fc2-4b86-9fed-1ce51661c3fe	2025-06-05 00:00:00	16:40	gabriel	Bruno	558198627331@s.whatsapp.net	2025-05-29 00:00:00	Cabelo
9bc1db06-c40b-41ac-94c4-7f939032736a	2025-05-31 00:00:00	16:00	moisés	Wallyson	558171076971@s.whatsapp.net	2025-05-29 00:00:00	Cabelo+Barba
0ab2da16-9ab0-4ec8-9e4e-d90afa27b714	2025-05-30 00:00:00	18:40	gabriel	Wallyson	558199481850@s.whatsapp.net	2025-05-29 00:00:00	Cabelo+Sobrancelha
e791eb3a-0076-48a7-88a6-9de09ed751ce	2025-05-30 00:00:00	16:40	deyvid jhonatan	Bruno	558199201610@s.whatsapp.net	2025-05-29 00:00:00	Cabelo
f021267c-b83a-414f-af59-d48726d86c69	2025-06-07 00:00:00	10:00	Carlos 	Wallyson	local	2025-05-30 09:39:48.772	Cabelo
5b17a44d-598f-436f-9fa0-1ee9664884c1	2025-05-31 00:00:00	15:20	Allysson 	Wallyson	local	2025-05-30 09:44:51.835	Cabelo
5b5dbda8-1be9-431d-ba55-ecefffcf6410	2025-06-02 00:00:00	13:20	joão marcello	Bruno	558196393507@s.whatsapp.net	2025-05-30 00:00:00	Cabelo+Sobrancelha
303d75a5-c0b7-4b95-9668-2b03994274b4	2025-05-30 00:00:00	09:00	josivaldo gomes de arruda	Bruno	558196887942@s.whatsapp.net	2025-05-30 00:00:00	Cabelo
a7ea8b5c-3b38-4e46-a204-50c1524d91d5	2025-05-30 00:00:00	10:00	mathias	Wallyson	558187494403@s.whatsapp.net	2025-05-30 00:00:00	Cabelo+Barba
79960985-e7ba-4c39-b080-af0f12787c79	2025-05-30 00:00:00	10:40	Júlio 	Wallyson	local	2025-05-30 11:52:50.553	Cabelo
e07d331f-417d-46bd-af6c-9b7f1cf55a87	2025-05-30 00:00:00	11:20	Marcado 	Wallyson	local	2025-05-30 11:56:20.826	Cabelo
44b959ca-b89b-4ec2-aa08-6bf8d3addd8b	2025-06-04 00:00:00	14:00	gonzaga	Bruno	558196532675@s.whatsapp.net	2025-05-30 00:00:00	Cabelo
2d7b3c60-d7cd-47fa-93df-2c8d8701cedc	2025-05-30 00:00:00	19:20	wesley	Wallyson	558196817233@s.whatsapp.net	2025-05-30 00:00:00	Cabelo
02ff65c1-a359-4071-8724-5327850a53e1	2025-05-31 00:00:00	13:20	jorge miguel	Wallyson	558197887918@s.whatsapp.net	2025-05-30 00:00:00	Cabelo
f5bdbff1-bd52-4759-a565-a323d81b2a68	2025-05-31 00:00:00	11:20	marcio	Wallyson	558198973109@s.whatsapp.net	2025-05-30 00:00:00	Cabelo
a530ab89-204e-469a-9d35-9ce3e579f3f9	2025-05-31 00:00:00	14:40	Lucas 	Wallyson	local	2025-05-30 18:45:08.151	Cabelo
2af29f35-f061-4f18-bc59-04f885acc47a	2025-05-31 00:00:00	17:20	Fabrício 	Wallyson	local	2025-05-30 19:12:28.273	Cabelo
683e8c06-e50a-49fb-826a-bbb138d15260	2025-05-31 00:00:00	09:20	rubens	Wallyson	558198296625@s.whatsapp.net	2025-05-30 00:00:00	Cabelo
96f8b151-fa4f-445f-b2a8-fbde1fc55313	2025-06-06 00:00:00	15:20	joão vitor	Bruno	558192250093@s.whatsapp.net	2025-05-30 00:00:00	Cabelo
2bbc4ae0-08a1-407a-aacd-1cc27c354fcc	2025-06-02 00:00:00	11:00	fernando	Bruno	558196035269@s.whatsapp.net	2025-05-30 00:00:00	Cabelo
b6361962-b575-4aa9-a583-4ee5ca2ea2ec	2025-06-17 00:00:00	18:40	maicon	Bruno	558194686969@s.whatsapp.net	2025-05-30 00:00:00	Cabelo
651974a4-cfe5-4925-a03f-f3fc1d84d2b9	2025-06-02 00:00:00	10:20	joão pedro campos	Bruno	558196073970@s.whatsapp.net	2025-05-31 00:00:00	Cabelo+Barba
dec32d9c-766c-4104-811c-4fc45832300e	2025-05-31 00:00:00	12:00	Felipe 	Wallyson	local	2025-05-31 10:04:59.172	Cabelo
acfdbef9-a9f3-4c33-b19f-d39061bff1ad	2025-05-31 00:00:00	16:40	Felipe Barbosa 	Wallyson	local	2025-05-31 10:07:53.796	Cabelo
60b53287-5da9-4be9-a0ea-caf2703ebde5	2025-06-02 00:00:00	18:40	Jeferson 	Wallyson	local	2025-05-31 10:08:59.084	Cabelo+Barba
84b0eb32-02f8-4728-a39e-a76624ff5e30	2025-05-31 00:00:00	14:00	samuel	Wallyson	558199862867@s.whatsapp.net	2025-05-31 00:00:00	Cabelo
c4bfc9c8-67e2-4f21-ac07-59161d7d2e51	2025-06-02 00:00:00	18:40	Alyson free shopping 	Bruno	local	2025-05-31 12:29:15.144	Cabelo
0f3e4d05-ef76-48e9-932d-80f8708ef504	2025-06-07 00:00:00	14:40	manoel neto	Bruno	558195055212@s.whatsapp.net	2025-05-31 00:00:00	Cabelo+Barba
e37233aa-9f3c-4546-874a-4ee6b42dbf82	2025-06-02 00:00:00	14:40	joão pedro ( elma )	Bruno	558181323380@s.whatsapp.net	2025-05-31 00:00:00	Cabelo
d484c189-8251-4c44-83fe-09b7da702f8b	2025-06-28 00:00:00	15:20	Matheus ( Bruna ) 	Bruno	local	2025-06-27 10:23:51.555	Cabelo
195c752b-a231-401b-9123-b010d75a49b4	2025-07-31 00:00:00	18:00	Wendel 	Wallyson	local	2025-07-24 17:34:30.523	Cabelo
41a950f7-7cac-4ff0-a587-edb44d149a92	2025-06-02 00:00:00	16:00	jefferson	Bruno	558196311311@s.whatsapp.net	2025-05-31 00:00:00	Cabelo
f3b7d94b-1332-4409-8a5e-e1d95d1a95e9	2025-06-03 00:00:00	18:40	jeferson	Wallyson	558198265483@s.whatsapp.net	2025-05-31 00:00:00	Cabelo+Barba
85985d36-601f-4af2-a2a4-dd0abc4bf7f0	2025-06-06 00:00:00	16:40	carlos daniel do carmo santos	Bruno	558198034222@s.whatsapp.net	2025-05-31 00:00:00	Cabelo
3494105b-4161-4eac-bc85-8ec14090ea46	2025-06-06 00:00:00	18:00	anderson	Bruno	558197666072@s.whatsapp.net	2025-05-31 00:00:00	Cabelo+Barba
ac064ede-9c93-46e2-b7e1-34436d02484c	2025-06-02 00:00:00	11:40	gabriel nascimento	Bruno	558181670651@s.whatsapp.net	2025-05-31 00:00:00	Cabelo
c7b12731-a4c3-440d-9c5e-79531cf07a47	2025-06-02 00:00:00	16:40	joão pedro	Bruno	558181670651@s.whatsapp.net	2025-05-31 00:00:00	Cabelo
74a72183-2f68-4a63-b1d1-ff1995dd9572	2025-06-04 00:00:00	13:20	paulo cavalcanti	Bruno	558192692547@s.whatsapp.net	2025-05-31 00:00:00	Cabelo
1e61d40e-a32c-4369-b8b4-6479a8fd059e	2025-06-21 00:00:00	14:00	matheus	Wallyson	558196490565@s.whatsapp.net	2025-05-31 00:00:00	Cabelo
32bd01ac-7ae7-4d9e-bb87-a9759086600f	2025-06-07 00:00:00	09:20	luan	Bruno	558184474628@s.whatsapp.net	2025-05-31 00:00:00	Cabelo+Sobrancelha
f3c3064a-572c-4fc4-9420-14566357a00a	2025-06-02 00:00:00	09:00	luan	Wallyson	558197092692@s.whatsapp.net	2025-05-31 00:00:00	Cabelo
4749cc04-7ff2-4a63-a3c5-57f20b19d172	2025-06-02 00:00:00	17:20	bruno	Bruno	558197349442@s.whatsapp.net	2025-05-31 00:00:00	Cabelo
c77782f0-8894-41ec-8553-4b328a212179	2025-06-02 00:00:00	17:20	mácio	Wallyson	558197349442@s.whatsapp.net	2025-05-31 00:00:00	Cabelo
a42e6309-fc45-4ca8-9df2-338ec2c2fdf9	2025-06-09 00:00:00	14:00	ismael	Bruno	558199824318@s.whatsapp.net	2025-06-01 00:00:00	Cabelo
1b88d302-b792-4a2c-8a78-04881ef9fb7f	2025-06-02 00:00:00	09:40	windney darlan	Wallyson	558187774760@s.whatsapp.net	2025-06-01 00:00:00	Cabelo
bb2b8ecc-4954-4c25-bb99-78acb0417f98	2025-06-03 00:00:00	10:00	João do bolo 	Wallyson	local	2025-06-01 19:53:08.881	Cabelo+Sobrancelha
78d0d5a4-9f5f-4475-ba31-2ce219b3a308	2025-06-04 00:00:00	10:20	everson	Bruno	558179003193@s.whatsapp.net	2025-06-01 00:00:00	Cabelo
25560b54-697e-4674-9a75-d724774561be	2025-06-20 00:00:00	10:20	markinhos lopes	Bruno	558182745871@s.whatsapp.net	2025-06-01 00:00:00	Cabelo+Barba
4bf45f6b-b4e6-41a9-85e5-39a0e27062cb	2025-06-02 00:00:00	14:00	nilton e arthur	Bruno	558199442297@s.whatsapp.net	2025-06-01 00:00:00	Cabelo
6c660748-8bb3-4048-8f5e-73bf6a9cdeab	2025-06-07 00:00:00	09:20	cláudio henrique	Wallyson	558188482085@s.whatsapp.net	2025-06-02 00:00:00	Cabelo
e680912a-f4bf-464f-b1be-7f8a9b351f6c	2025-06-06 00:00:00	18:40	gonzaga neto	Bruno	558198514795@s.whatsapp.net	2025-06-02 00:00:00	Cabelo
ce09fd31-7f23-4c7b-9095-d45b1722793e	2025-06-04 00:00:00	09:00	Breno	Bruno	local	2025-06-02 10:08:42.628	Cabelo
79466358-6c83-4f9e-baad-186b09ee16f4	2025-06-06 00:00:00	19:20	ryan	Bruno	558196680308@s.whatsapp.net	2025-06-02 00:00:00	Cabelo+Barba
0bc33fe3-4ef8-40d2-a031-433fe8f00325	2025-06-02 00:00:00	14:40	ravi	Wallyson	558195156041@s.whatsapp.net	2025-06-02 00:00:00	Cabelo
3ec8badf-96f9-43ab-8cce-8cb6bd8e6f25	2025-06-04 00:00:00	10:00	Indisponivel	Wallyson	Indisponivel	2025-06-02 11:03:55.846	
2561cbd1-5adf-42d5-b4c0-065ea8099b37	2025-06-04 00:00:00	10:40	Indisponivel	Wallyson	Indisponivel	2025-06-02 11:03:55.959	
ba19a326-26b4-472b-b7cc-e343b0508654	2025-06-04 00:00:00	11:20	Indisponivel	Wallyson	Indisponivel	2025-06-02 11:03:55.99	
e95b7ef9-e122-473a-9c9b-0224594a9ace	2025-06-04 00:00:00	13:20	Indisponivel	Wallyson	Indisponivel	2025-06-02 11:03:56.021	
f03b7621-897d-49dd-8eda-56c81655fd03	2025-06-04 00:00:00	14:00	Indisponivel	Wallyson	Indisponivel	2025-06-02 11:03:56.062	
c2c90a0d-8c2b-4049-ab31-1c0c23fbe9d5	2025-06-04 00:00:00	14:40	Indisponivel	Wallyson	Indisponivel	2025-06-02 11:03:56.099	
9441b9cc-ac8e-4654-ad47-13bb708cb8fe	2025-06-04 00:00:00	15:20	Indisponivel	Wallyson	Indisponivel	2025-06-02 11:03:56.132	
7e0ec540-8ab4-4ba5-967a-2cb5aa042673	2025-06-04 00:00:00	16:00	Indisponivel	Wallyson	Indisponivel	2025-06-02 11:03:56.164	
0f7e093d-a9a2-4f7f-b75c-852156c7be09	2025-06-04 00:00:00	16:40	Indisponivel	Wallyson	Indisponivel	2025-06-02 11:03:56.195	
e0b229f0-4a43-4533-939b-a1ac950e013e	2025-06-04 00:00:00	18:00	Indisponivel	Wallyson	Indisponivel	2025-06-02 11:03:56.228	
e9b0aeb7-7cb6-4b69-82bb-59206a635af5	2025-06-04 00:00:00	18:40	Indisponivel	Wallyson	Indisponivel	2025-06-02 11:03:56.259	
a51f6981-9152-48b3-a935-4ea1c916fc8c	2025-06-04 00:00:00	15:20	cauã gabriel	Bruno	558199527666@s.whatsapp.net	2025-06-02 00:00:00	Cabelo
5f6be1b7-5d2b-4416-89f6-2de5296d1194	2025-06-06 00:00:00	14:00	Heitor 	Wallyson	local	2025-06-02 12:09:30.528	Cabelo
9abeb212-d4d4-445a-9441-e22e60231fda	2025-06-02 00:00:00	13:20	Vou corta o de Wilson 	Wallyson	local	2025-06-02 12:36:44.804	Cabelo
8dee719c-1a53-4bb1-a741-226470d44bfc	2025-06-04 00:00:00	17:20	thomas	Bruno	558181391720@s.whatsapp.net	2025-06-02 00:00:00	Cabelo
7f3e5c75-5c48-4b66-ba68-7d4c8137c1ea	2025-06-02 00:00:00	18:00	daniel	Wallyson	558199459046@s.whatsapp.net	2025-06-02 00:00:00	Cabelo
f361072f-8d1c-4e44-a49e-45d3fd1feb20	2025-06-04 00:00:00	16:40	andrey	Bruno	558195342893@s.whatsapp.net	2025-06-02 00:00:00	Cabelo
2ee25ded-2fdf-4ac7-a791-5014451a18ca	2025-06-06 00:00:00	15:20	vandro júnior	Wallyson	558196610362@s.whatsapp.net	2025-06-02 00:00:00	Cabelo
2393c4e1-b67d-4062-9479-48c560e738d8	2025-06-02 00:00:00	14:00	Junior	Wallyson	local	2025-06-02 17:10:01.745	Cabelo+Barba
6456e205-10dd-4b4b-83ce-f9dec71906e2	2025-06-02 00:00:00	15:20	Marcado 	Wallyson	local	2025-06-02 17:14:57.357	Cabelo
3651ee93-b66b-4dbb-a3c6-e4eef1335963	2025-06-11 00:00:00	16:40	davi	Bruno	558197570874@s.whatsapp.net	2025-06-02 00:00:00	Cabelo+Sobrancelha
83552628-ed75-4ba2-bf74-b2dbc393dc59	2025-06-05 00:00:00	10:00	kallebe	Wallyson	558195967163@s.whatsapp.net	2025-06-02 00:00:00	Cabelo
26d8c894-2980-4abf-9596-77a162548666	2025-06-02 00:00:00	16:40	josé danilo do nascimento	Wallyson	558182184004@s.whatsapp.net	2025-06-02 00:00:00	Cabelo+Barba
3c00a500-900a-427d-abad-218c86bf3e55	2025-06-02 00:00:00	16:00	Marcado 	Wallyson	local	2025-06-02 17:53:46.351	Cabelo
8948e275-13ee-4615-98c3-d02db4eff30e	2025-06-07 00:00:00	18:00	leiliane agendamento pra ruan	Wallyson	558198371428@s.whatsapp.net	2025-06-02 00:00:00	Cabelo
1c1b6aaa-2b24-45c6-8352-14da1bbc8843	2025-06-03 00:00:00	08:00	fernando correia da silva	Wallyson	558199732471@s.whatsapp.net	2025-06-02 00:00:00	Cabelo
8a159de0-9215-41e8-9c5c-3639d1742d5e	2025-06-10 00:00:00	09:00	emanoel	Bruno	558181079674@s.whatsapp.net	2025-06-02 00:00:00	Sobrancelha
81702b9f-08b3-4b5b-a4e3-2c2866a74593	2025-06-10 00:00:00	09:40	leonardo cabral	Bruno	558197413226@s.whatsapp.net	2025-06-02 00:00:00	Cabelo
003e5d3f-59ca-4892-a5da-f953c8f10375	2025-06-04 00:00:00	11:00	andré	Bruno	558198646935@s.whatsapp.net	2025-06-02 00:00:00	Cabelo+Barba
cb3c03ae-bf83-4f3e-a60d-b390a66f1c57	2025-06-05 00:00:00	09:00	victor alexandre	Bruno	558197610116@s.whatsapp.net	2025-06-02 00:00:00	Cabelo+Sobrancelha
85640417-19d8-4916-a95a-688e5910dfb4	2025-06-03 00:00:00	18:00	samuel	Wallyson	558199862867@s.whatsapp.net	2025-06-02 00:00:00	Cabelo
9361a726-6e83-429c-89da-b7e60f89ab70	2025-06-04 00:00:00	18:00	joão guilherme	Bruno	558181673375@s.whatsapp.net	2025-06-02 00:00:00	Cabelo
f6412c5b-dded-452b-b327-36eb67fec656	2025-06-14 00:00:00	08:00	tiago	Bruno	558181319163@s.whatsapp.net	2025-06-02 00:00:00	Cabelo
49e9a6b3-090c-4422-8d88-23af010b0d40	2025-06-04 00:00:00	18:40	denílson	Bruno	558197084296@s.whatsapp.net	2025-06-02 00:00:00	Barba
3d025f76-8ac8-4c04-a530-b0619346de9e	2025-06-07 00:00:00	14:00	gago	Bruno	558195055274@s.whatsapp.net	2025-06-02 00:00:00	Cabelo+Sobrancelha
9a910036-df3b-4bfd-8ca3-67abb16947c6	2025-06-06 00:00:00	11:40	pedro augusto	Bruno	558171185174@s.whatsapp.net	2025-06-03 00:00:00	Cabelo
cd80a7f7-0b50-4ad5-b2b9-853c106300a7	2025-06-03 00:00:00	08:40	Marcado 	Wallyson	local	2025-06-03 10:09:40.805	Cabelo
311328b7-66a2-4e76-99eb-55221e19013b	2025-06-05 00:00:00	13:20	arthur	Bruno	558194115511@s.whatsapp.net	2025-06-03 00:00:00	Cabelo+Barba
a5583fd1-304a-41a1-9a61-3379becd1bf6	2025-06-03 00:00:00	16:00	Eraldo 	Wallyson	local	2025-06-03 11:36:55.535	Barba
586a9de1-1f61-448e-9889-c5dacbd9caa0	2025-06-13 00:00:00	13:20	Caio 	Wallyson	local	2025-06-03 11:44:20.587	Cabelo
fb0be003-34cc-437a-9e67-3f48407c63d8	2025-06-04 00:00:00	09:20	clarissa	Wallyson	558181358721@s.whatsapp.net	2025-06-03 00:00:00	Cabelo
efefa389-b320-42d8-bf88-8a6b9e00a819	2025-06-03 00:00:00	16:40	fernando	Wallyson	558199732471@s.whatsapp.net	2025-06-03 00:00:00	Cabelo
cb506221-89cd-4751-87ca-d6b578846875	2025-06-04 00:00:00	11:40	Fernando 	Bruno	local	2025-06-03 12:41:14.676	Cabelo
f4b2e5d9-1ed4-470c-9cc4-c1253c0da893	2025-06-04 00:00:00	09:40	Fernando 	Bruno	local	2025-06-03 14:46:34.299	Cabelo
887129f6-d858-4ab0-91fe-8405a8eea999	2025-06-17 00:00:00	17:20	Adaias 	Wallyson	local	2025-06-03 14:52:52.81	Cabelo
3509bee3-d62c-44a5-9586-36a602b5214a	2025-06-03 00:00:00	17:20	Felipe 	Wallyson	local	2025-06-03 14:53:05.967	Cabelo+Barba
23aa6fa5-b8a5-426e-bf3f-e43bc3e194e3	2025-06-11 00:00:00	11:40	micherlaine	Bruno	558196463146@s.whatsapp.net	2025-06-03 00:00:00	Cabelo
bc422652-3bd9-46bb-a9e4-f8d39135002c	2025-06-05 00:00:00	13:20	horlean	Wallyson	558281363560@s.whatsapp.net	2025-06-03 00:00:00	Cabelo+Sobrancelha
4fda45e2-7e0c-4f96-8d3e-142961c98df3	2025-06-05 00:00:00	18:00	calebe	Bruno	558196987419@s.whatsapp.net	2025-06-03 00:00:00	Cabelo
33060ac7-79ab-4d31-8732-f75e99e24fa9	2025-06-14 00:00:00	15:20	ullisses	Bruno	558182686327@s.whatsapp.net	2025-06-03 00:00:00	Cabelo
912f9d89-3e1e-42ec-b9c0-85a1727bb12b	2025-06-12 00:00:00	14:00	lucas josé	Bruno	558199311183@s.whatsapp.net	2025-06-03 00:00:00	Cabelo+Sobrancelha
a881d742-d38e-46e7-ac8d-d6ec891725ec	2025-06-04 00:00:00	08:40	john	Wallyson	558196903604@s.whatsapp.net	2025-06-03 00:00:00	Cabelo+Barba
b7c6f61c-fa53-455a-8d67-1ecf8db7916d	2025-06-07 00:00:00	08:00	wilson	Wallyson	558197148928@s.whatsapp.net	2025-06-03 00:00:00	Cabelo+Sobrancelha
4934de48-e3ba-410c-b25d-2399da1fb860	2025-06-05 00:00:00	16:00	kauê	Wallyson	558199937689@s.whatsapp.net	2025-06-03 00:00:00	Cabelo+Sobrancelha
2a7853e4-9ec1-48b7-9864-8a0b8e25b70b	2025-06-20 00:00:00	16:00	luis	Bruno	558199061615@s.whatsapp.net	2025-06-03 00:00:00	Cabelo+Sobrancelha
68c684fa-7ed1-4558-9aeb-3a71f9f6a490	2025-06-04 00:00:00	08:00	fernando	Wallyson	558199732471@s.whatsapp.net	2025-06-03 00:00:00	Cabelo
985fd493-55fe-4fc4-8caa-b7e8ce7035a5	2025-06-05 00:00:00	15:20	fernando	Bruno	558199817133@s.whatsapp.net	2025-06-03 00:00:00	Cabelo
8a922a6d-5c1a-4e27-9ee3-0850a8d70884	2025-06-06 00:00:00	20:00	marcos	Bruno	558197149668@s.whatsapp.net	2025-06-03 00:00:00	Cabelo
cbeaae02-1a98-4263-ad0a-446253201417	2025-06-05 00:00:00	16:40	Matheus 	Wallyson	local	2025-06-03 23:42:52.174	Cabelo
0a799081-fbde-40c3-888f-d0db4a46e8b1	2025-06-07 00:00:00	17:20	maicon	Bruno	558194686969@s.whatsapp.net	2025-06-04 00:00:00	Cabelo
93c44aab-44f9-401c-a68a-70cca8b0557a	2025-06-06 00:00:00	20:40 	Italo	Bruno	local	2025-06-04 10:31:07.353	Cabelo
19f9f0c1-eefc-4013-ad52-472eebad082c	2025-06-05 00:00:00	15:20	Daniel 	Wallyson	local	2025-06-04 10:43:18.679	Cabelo
d959406f-e19d-456d-9ea3-5b48913f10f3	2025-06-05 00:00:00	14:40	Liaderson 	Wallyson	local	2025-06-04 14:59:29.194	Cabelo
3b66ada5-9ab2-4e7e-b87a-13cc4c02bea6	2025-06-05 00:00:00	08:40	marcos elielson	Wallyson	558195356602@s.whatsapp.net	2025-06-04 00:00:00	Cabelo+Barba
673dda7e-d7ae-454d-b87b-afad0ca72be6	2025-06-05 00:00:00	14:00	pedro henrique santos de lima (messi)	Bruno	558199656200@s.whatsapp.net	2025-06-04 00:00:00	Cabelo+Sobrancelha
26430d01-76ee-4115-bf1f-b705f0b3e1a5	2025-06-07 00:00:00	17:20	Ivonaldo 	Wallyson	local	2025-06-06 19:17:44.927	Cabelo
3e398027-915c-482e-90ec-4eed8e73ca9b	2025-06-19 00:00:00	14:00	Levino 	Wallyson	local	2025-06-14 12:31:28.397	Cabelo+Barba
1416768e-0452-4d28-9081-779dc36e6622	2025-06-14 00:00:00	14:40	Miguel 	Wallyson	local	2025-06-14 12:32:08.54	Cabelo
f9893841-98d9-473f-8844-373783dbc5f6	2025-06-05 00:00:00	11:40	lucas santos	Bruno	558198471608@s.whatsapp.net	2025-06-04 00:00:00	Cabelo
4fca2ffe-d600-483a-af52-2af5e034948f	2025-06-09 00:00:00	18:00	rafael melo	Bruno	558199365900@s.whatsapp.net	2025-06-04 00:00:00	Cabelo
1222f742-c4e7-49da-8b71-f5c701da2931	2025-06-07 00:00:00	10:40	Matheus 	Wallyson	local	2025-06-04 17:25:52.712	Cabelo
b73d1e4e-8e29-4724-8f6c-bab11d51203f	2025-06-07 00:00:00	11:20	Matheus 	Wallyson	local	2025-06-04 17:26:10.213	Cabelo
310dae34-37a1-4832-8097-617c89baa20f	2025-06-06 00:00:00	18:00	João Pedro 	Wallyson	local	2025-06-04 17:28:26.825	Cabelo
46a63914-648b-4b50-b123-818489a48fa2	2025-06-06 00:00:00	18:40	Paulo 	Wallyson	local	2025-06-04 17:28:59.636	Cabelo
3ef2b80c-6816-4d37-8f33-192794d1570a	2025-06-06 00:00:00	17:20	Leandro 	Wallyson	local	2025-06-04 17:33:06.921	Cabelo+Sobrancelha
1d1ae1bf-455b-4c49-b34f-00c9c1dff36f	2025-06-05 00:00:00	14:00	davidson	Wallyson	558199527666@s.whatsapp.net	2025-06-04 00:00:00	Cabelo+Barba
da69b583-5137-4fc8-a423-131b34c10885	2025-06-20 00:00:00	17:20	Rodrigo 	Wallyson	local	2025-06-04 21:46:56.879	Cabelo
6a79d240-d4c1-4d72-84fd-d6cfcda0ad75	2025-06-07 00:00:00	14:00	kayke	Wallyson	558197180683@s.whatsapp.net	2025-06-04 00:00:00	Cabelo+Barba
aee440d2-62b4-43b5-adac-4133d69137a8	2025-06-06 00:00:00	13:20	neto	Wallyson	558382153976@s.whatsapp.net	2025-06-04 00:00:00	Cabelo+Sobrancelha
07123034-a73e-4b42-bb63-5371ed794cb3	2025-06-06 00:00:00	09:00	lucas lucena	Bruno	558198991478@s.whatsapp.net	2025-06-04 00:00:00	Cabelo
62f5420f-45f8-446f-9139-34708c532514	2025-06-26 00:00:00	14:00	lucas lucena	Bruno	558198991478@s.whatsapp.net	2025-06-04 00:00:00	Cabelo
9dfe3277-481b-4ad4-9613-d275bbc104d4	2025-06-05 00:00:00	11:00	jona do grau	Bruno	558196647899@s.whatsapp.net	2025-06-04 00:00:00	Cabelo
f059bd83-8d51-43fa-a8fc-665cd0b91d2d	2025-06-05 00:00:00	10:20	carlos antônio	Bruno	558199353492@s.whatsapp.net	2025-06-04 00:00:00	Cabelo
9d143493-8990-44ca-b444-d5a63d2a3d97	2025-06-07 00:00:00	08:40	victor	Wallyson	558196193892@s.whatsapp.net	2025-06-05 00:00:00	Cabelo+Sobrancelha
951fd56d-0723-4787-8ef0-406a08b41fe7	2025-06-05 00:00:00	10:40	daiane	Wallyson	558189141585@s.whatsapp.net	2025-06-05 00:00:00	Cabelo
1e94f073-f7dc-4a6a-87fb-6738ba69f5ac	2025-06-05 00:00:00	08:00	marcelo	Wallyson	558196959169@s.whatsapp.net	2025-06-05 00:00:00	Cabelo
7a6c2c5f-07b4-48ab-b770-f1b969251bbc	2025-06-05 00:00:00	09:40	Dorgyl 	Bruno	local	2025-06-05 10:53:01.343	Cabelo
79c95d16-3ae9-4fb9-82cf-d798985250d6	2025-06-05 00:00:00	09:20	josé arthur	Wallyson	558194257577@s.whatsapp.net	2025-06-05 00:00:00	Cabelo
82c6e13f-f4ec-44ce-ab26-f7192d5260ac	2025-06-06 00:00:00	08:00	Fabrício 	Wallyson	local	2025-06-05 12:26:57.137	Cabelo
54a9febe-bc1a-4df1-8a75-a1dfea2ee43e	2025-06-05 00:00:00	11:20	Marcelo Brito 	Wallyson	local	2025-06-05 12:27:38.494	Cabelo
a4b799c1-9a70-4672-be6e-8254e54dd412	2025-06-07 00:00:00	10:00	genildo	Bruno	558199736143@s.whatsapp.net	2025-06-05 00:00:00	Cabelo
3066c5ad-9355-439d-b899-a56b4ff27102	2025-06-20 00:00:00	17:20	joão victor	Bruno	558196049253@s.whatsapp.net	2025-06-05 00:00:00	Cabelo+Sobrancelha
94179465-a86c-4aee-9f5c-a3cc04622dab	2025-06-07 00:00:00	10:40	matheus	Bruno	558196191710@s.whatsapp.net	2025-06-05 00:00:00	Cabelo+Sobrancelha
ffd46150-abbb-4f8f-9e71-ec2bf98c6cea	2025-06-06 00:00:00	10:40	Alan	Wallyson	local	2025-06-05 13:17:43.285	Cabelo
3512d7f3-a52b-4045-949a-e88a9be8af98	2025-06-06 00:00:00	11:00	paulo césar	Bruno	558182758461@s.whatsapp.net	2025-06-05 00:00:00	Cabelo
7f51349d-0451-454e-822f-62b0600ad063	2025-06-06 00:00:00	08:40	Jhonatta 	Wallyson	local	2025-06-05 13:44:47.199	Cabelo
60d526d5-7294-42ec-ab47-80ccbf0971bd	2025-06-06 00:00:00	09:40	josé rafael	Bruno	558199670797@s.whatsapp.net	2025-06-05 00:00:00	Cabelo
6ade8b24-c738-4111-b4e6-2a327a4eb257	2025-06-07 00:00:00	11:20	iann lucas	Bruno	558196612255@s.whatsapp.net	2025-06-05 00:00:00	Cabelo+Sobrancelha
664ab2a7-93dd-43eb-8b55-baeddc618ff0	2025-06-06 00:00:00	10:20	henrique	Bruno	558182601936@s.whatsapp.net	2025-06-05 00:00:00	Cabelo
fa5386dc-ae05-4282-b4cb-b0ef4095aa7e	2025-06-09 00:00:00	13:20	joão lucas	Bruno	558182601936@s.whatsapp.net	2025-06-05 00:00:00	Cabelo
28007388-fa9f-41a7-8c44-f48dd295d31e	2025-06-09 00:00:00	14:40	heitor	Bruno	558182601936@s.whatsapp.net	2025-06-05 00:00:00	Cabelo
e5d688e7-6495-4e16-aa22-8a7b11152dea	2025-06-06 00:00:00	09:20	Marcado 	Wallyson	local	2025-06-05 18:19:01.128	Cabelo
b8bf93d6-121c-4899-8196-96ec39bbc4c5	2025-06-12 00:00:00	17:20	Sindolfo	Wallyson	local	2025-06-05 19:11:18.33	Cabelo+Sobrancelha
76f85835-7f11-4380-9cee-79fd6e2e3d0b	2025-06-20 00:00:00	11:20	Sindolfo	Wallyson	local	2025-06-05 19:11:55.963	Cabelo
443dbac0-28c4-4039-8f7d-01b9b47dbd56	2025-06-09 00:00:00	17:20	pedro henrique	Wallyson	558195071416@s.whatsapp.net	2025-06-05 00:00:00	Cabelo+Sobrancelha
963a9e94-9c98-4dad-bee1-3701a8a79930	2025-06-07 00:00:00	14:40	noah	Wallyson	558196533335@s.whatsapp.net	2025-06-05 00:00:00	Cabelo
a859aa71-4b1e-414f-8781-0a7851b0360d	2025-06-09 00:00:00	15:20	paulo henrique	Bruno	558174004953@s.whatsapp.net	2025-06-05 00:00:00	Cabelo+Sobrancelha
b584bf20-6135-4421-ada8-20369a012c29	2025-06-07 00:00:00	12:00	Adaias 	Wallyson	local	2025-06-05 21:44:31.971	Cabelo
ae401e56-bbb1-4ec0-a6da-55f1fdefeff1	2025-06-07 00:00:00	13:20	Adaias 	Wallyson	local	2025-06-05 21:48:06.212	Cabelo
5e3d1bc6-d9e7-4192-9b8f-7d799d83619c	2025-06-06 00:00:00	11:20	mathias	Wallyson	558187494403@s.whatsapp.net	2025-06-05 00:00:00	Barba
e473977c-0758-431e-aa17-098f80667dd3	2025-06-07 00:00:00	16:00	júlio	Wallyson	558196192233@s.whatsapp.net	2025-06-05 00:00:00	Cabelo
30498a4e-9f85-41e1-97ac-9fc2eba6658e	2025-06-06 00:00:00	10:00	vinicius	Wallyson	558199577658@s.whatsapp.net	2025-06-05 00:00:00	Cabelo
7677a31a-b0a7-48bd-ab2a-ff8a5c0debf9	2025-06-09 00:00:00	16:00	pedro	Bruno	558181416722@s.whatsapp.net	2025-06-05 00:00:00	Cabelo
f5c95379-9e74-41f7-8464-8517e997ff2f	2025-06-09 00:00:00	17:20	tarcísio	Bruno	558185887456@s.whatsapp.net	2025-06-05 00:00:00	Cabelo
d7a02ddd-735f-4c26-a519-0f9c80f7b8cd	2025-06-06 00:00:00	16:40	fernando	Wallyson	558197789968@s.whatsapp.net	2025-06-05 00:00:00	Cabelo
3004955d-9c41-4f85-8224-5d4d72893436	2025-06-09 00:00:00	11:40	luiz felipe barbosa da silva nunes	Bruno	558197441313@s.whatsapp.net	2025-06-06 00:00:00	Cabelo
4aa02bf8-d430-4be5-a7bd-f0752d0053cb	2025-06-06 00:00:00	19:20	eduardo	Wallyson	558198079679@s.whatsapp.net	2025-06-06 00:00:00	Cabelo
2c56fcc3-0b2c-438e-900c-f266c0e41c1f	2025-06-10 00:00:00	18:00	carlos	Bruno	558197823796@s.whatsapp.net	2025-06-06 00:00:00	Cabelo+Sobrancelha
50aa63e1-5f80-4c1c-9939-0dafdd5c8d66	2025-06-06 00:00:00	14:40	luan	Wallyson	558196003977@s.whatsapp.net	2025-06-06 00:00:00	Cabelo+Sobrancelha
80fa4fc1-b5a9-4cf3-9bb3-7090ce26181f	2025-06-06 00:00:00	20:00	Luan 	Wallyson	local	2025-06-06 18:26:52.08	Acabamento (Pezinho)
ac872031-07a2-40e7-8aea-e6b3f538690f	2025-06-12 00:00:00	16:00	anderson	Bruno	558198694494@s.whatsapp.net	2025-06-06 00:00:00	Cabelo
7e035c8e-ae5c-4cb2-99da-496dd0a43e7d	2025-06-12 00:00:00	16:40	andrew	Bruno	558198694494@s.whatsapp.net	2025-06-06 00:00:00	Cabelo
fc30f436-43aa-40ff-8854-caf8c2e86fb7	2025-06-13 00:00:00	16:40	leonardo botox	Bruno	558174001016@s.whatsapp.net	2025-06-06 00:00:00	Cabelo
88be13c2-1c29-4d6d-a702-dc29c3efb2e4	2025-06-11 00:00:00	17:20	antônio henrique	Bruno	558197083657@s.whatsapp.net	2025-06-06 00:00:00	Cabelo+Sobrancelha
5aae3d22-9a71-4fa0-a488-3e46b39d4867	2025-06-20 00:00:00	14:00	Ruan 	Wallyson	local	2025-06-07 00:14:15.683	Cabelo
e3a479aa-9a79-491c-b8f2-58b264064af3	2025-06-09 00:00:00	16:40	Flavio 	Wallyson	local	2025-06-07 00:55:30.872	Cabelo
2a6dc87c-7290-49a3-896b-22e2dd1f269a	2025-06-10 00:00:00	17:20	Lucas ( Bruna ) 	Bruno	local	2025-06-07 10:54:16.114	Cabelo
354ad910-d16a-4daa-846b-438248216343	2025-06-13 00:00:00	11:40	pedro arthur	Bruno	558182599443@s.whatsapp.net	2025-06-07 00:00:00	Cabelo
52669dcc-16b2-4daa-ae53-a670be3e208f	2025-06-17 00:00:00	14:00	mateus barbosa	Bruno	558197626344@s.whatsapp.net	2025-06-07 00:00:00	Cabelo
39a0a8e9-c93d-4d8c-8fa2-aaa800cea974	2026-06-09 00:00:00	18:40	yallison	Bruno	558198734964@s.whatsapp.net	2025-06-07 00:00:00	Cabelo+Barba
141129f8-a079-404d-a6df-e3e4aa8bb46b	2025-06-11 00:00:00	15:20	Gelson 	Wallyson	local	2025-06-07 16:12:22.939	Cabelo
d106f6b0-f2d8-4d18-82ae-453e2c3f3be5	2025-06-11 00:00:00	08:00	Matheus 	Wallyson	local	2025-06-07 16:13:23.482	Cabelo
9d43cdb7-f107-4eb8-8e57-8360824c7714	2025-06-20 00:00:00	16:40	Kayke 	Wallyson	local	2025-06-07 17:00:31.701	Cabelo+Barba
f55091c3-954b-4503-9515-496edfb9d289	2025-06-13 00:00:00	18:40	heytor	Bruno	558197714625@s.whatsapp.net	2025-06-07 00:00:00	Cabelo+Barba
93fe0f02-8d89-45c2-93ec-7863263c8e31	2025-06-09 00:00:00	16:00	rafael	Wallyson	558188763249@s.whatsapp.net	2025-06-07 00:00:00	Cabelo
ef582c6e-5a9d-4db8-9766-b5a4cc5823d1	2025-06-12 00:00:00	11:20	Davi 	Wallyson	local	2025-06-07 19:24:23.994	Cabelo
78c374bb-c442-4109-9f77-07eccaa391bd	2025-06-14 00:00:00	16:40	zaldinho	Bruno	558198591039@s.whatsapp.net	2025-06-07 00:00:00	Cabelo
cc15a0f8-53ed-426a-8113-8a32237669e1	2025-06-09 00:00:00	09:40	heitor	Bruno	558196988755@s.whatsapp.net	2025-06-07 00:00:00	Cabelo
e86480e3-770d-41da-9af5-b11410373741	2025-06-09 00:00:00	09:00	Flavio 	Wallyson	local	2025-06-07 22:03:30.497	Cabelo
0ebe7d94-5cc6-4e83-a0d8-06957792f88c	2025-06-11 00:00:00	09:00	renan silva	Bruno	558199185971@s.whatsapp.net	2025-06-07 00:00:00	Cabelo
721df41c-a4d4-44cc-89f1-a20e1960ded6	2025-06-09 00:00:00	15:20	ronnye	Wallyson	558198353903@s.whatsapp.net	2025-06-08 00:00:00	Cabelo
cc4e775d-5fc1-4350-9409-309a14954c11	2025-06-11 00:00:00	14:00	kevin	Wallyson	558195204685@s.whatsapp.net	2025-06-08 00:00:00	Cabelo
0c53e42f-e4d3-4f0a-8693-3f5f15e637ae	2025-06-09 00:00:00	09:40	natacha	Wallyson	558197947166@s.whatsapp.net	2025-06-08 00:00:00	Cabelo
4f46bf48-0232-41e3-b233-7d410648545b	2025-06-09 00:00:00	18:40	felipe	Wallyson	558181451150@s.whatsapp.net	2025-06-08 00:00:00	Cabelo+Sobrancelha
a036c691-b80b-49e6-9a24-fa203fc6e552	2025-06-09 00:00:00	10:20	adson	Bruno	558195002521@s.whatsapp.net	2025-06-08 00:00:00	Cabelo
7da2de9f-bf28-4063-87d1-393edfc74eb9	2025-06-21 00:00:00	17:20	erick vinícius	Bruno	558195786256@s.whatsapp.net	2025-06-08 00:00:00	Cabelo+Sobrancelha
0cf11e1d-998d-47af-8a0c-02a5b3dfa4bf	2025-06-16 00:00:00	14:00	connor mcgregor	Bruno	558197279446@s.whatsapp.net	2025-06-08 00:00:00	Cabelo+Sobrancelha
6aa21de9-0c47-4d23-8641-74e72098c9c5	2025-06-10 00:00:00	10:20	pedro henrique	Bruno	558198446899@s.whatsapp.net	2025-06-08 00:00:00	Cabelo
904063be-0edb-469c-a5c1-84e192600880	2025-06-11 00:00:00	18:00	thomas	Bruno	558181391720@s.whatsapp.net	2025-06-08 00:00:00	Cabelo
f3cb84ef-b90c-4e0c-8aed-a56f9676c160	2025-06-09 00:00:00	11:40	levi gabriel	Wallyson	558199292453@s.whatsapp.net	2025-06-08 00:00:00	Cabelo
360aeda3-6239-441f-a572-f66fc2bad378	2025-06-14 00:00:00	10:00	wesley gonçalves	Bruno	558196817233@s.whatsapp.net	2025-06-08 00:00:00	Cabelo
d43b7f5b-d14b-4f9b-aec0-9e622424fe55	2025-06-11 00:00:00	16:00	ryan	Wallyson	5511959620317@s.whatsapp.net	2025-06-08 00:00:00	Cabelo+Sobrancelha
e8be2228-aab9-4774-98e9-0e5e126e5584	2025-06-11 00:00:00	13:20	bruno	Bruno	558189873832@s.whatsapp.net	2025-06-09 00:00:00	Cabelo+Barba
a6c809ff-c5a9-4087-938e-0a70353e8d70	2025-06-11 00:00:00	13:20	guilherme menezes	Wallyson	558195021216@s.whatsapp.net	2025-06-09 00:00:00	Cabelo
02906f5a-4c11-4049-a4c6-4e99c6fa39c9	2025-06-11 00:00:00	16:00	joão gabriel	Bruno	558195216795@s.whatsapp.net	2025-06-09 00:00:00	Cabelo
dcc29558-154d-430b-a036-4c4dc9d2266d	2025-06-11 00:00:00	15:20	miguel	Bruno	558195712225@s.whatsapp.net	2025-06-09 00:00:00	Cabelo
d9f26cb4-728d-42fc-b740-9301940b8df3	2025-06-11 00:00:00	14:00	matheus	Bruno	558196073942@s.whatsapp.net	2025-06-09 00:00:00	Cabelo+Barba
d4a3a00d-7e72-4929-8580-d9d50c149c29	2025-06-10 00:00:00	18:40	Vaninho 	Wallyson	local	2025-06-09 14:11:49.765	Cabelo+Barba
93b94d00-f70e-4231-906f-668fa52a17c4	2025-06-10 00:00:00	18:40	dr.marcos araújo.	Bruno	558191284429@s.whatsapp.net	2025-06-09 00:00:00	Cabelo
8856ab82-6431-4b0e-aac4-0c7321a76a7d	2025-06-09 00:00:00	13:20	francisco	Wallyson	558182062970@s.whatsapp.net	2025-06-09 00:00:00	Cabelo
838c9b01-e255-4d8c-a91e-4a6d118da98c	2025-06-09 00:00:00	18:00	eduardo	Wallyson	558194699903@s.whatsapp.net	2025-06-09 00:00:00	Cabelo
bff6f6eb-fb4e-4fdf-bcff-0ae272b72b2e	2025-06-10 00:00:00	16:00	arthur aguiar	Wallyson	558196000246@s.whatsapp.net	2025-06-09 00:00:00	Cabelo
126f5bcd-7420-4ffb-a13d-b59ce9b1aa65	2025-06-14 00:00:00	08:00	wesley	Wallyson	558181016662@s.whatsapp.net	2025-06-09 00:00:00	Cabelo+Sobrancelha
609b939e-d26d-464e-a9c8-fa0feae30364	2025-06-09 00:00:00	14:40	Marcado 	Wallyson	local	2025-06-09 16:13:25.519	Cabelo
b4cba6eb-ba51-4751-a16a-d86ad67d9b71	2025-06-09 00:00:00	14:00	Paulo 	Wallyson	local	2025-06-09 16:14:02.105	Cabelo
e5497da0-f891-4789-9d50-f29d4523c8c1	2025-06-13 00:00:00	14:40	ítalo	Bruno	558195671075@s.whatsapp.net	2025-06-09 00:00:00	Cabelo
1c56dd97-be2d-457c-83d8-37efec3ddbb7	2025-06-13 00:00:00	14:40	weliton	Wallyson	558196789894@s.whatsapp.net	2025-06-09 00:00:00	Cabelo
51eecfe4-635e-4a5f-8662-f8bcebe55697	2025-06-10 00:00:00	16:40	guilherme	Bruno	558195949285@s.whatsapp.net	2025-06-09 00:00:00	Cabelo
382659d9-b7b7-40e0-b16f-34f9a009b511	2025-06-10 00:00:00	10:00	Galdino	Wallyson	local	2025-06-09 16:31:37.481	Cabelo
2b1251c8-17c5-42b5-82f0-3152bdcffa5e	2025-06-17 00:00:00	11:00	matheus	Bruno	558199843332@s.whatsapp.net	2025-06-09 00:00:00	Cabelo
a269322d-2806-4309-977f-f6c46f7599a7	2025-06-10 00:00:00	18:00	Allysson 	Wallyson	local	2025-06-09 17:42:49.474	Cabelo
7611a8c2-3625-48dd-a4cc-a85036ad60c7	2025-06-09 00:00:00	16:40	O upado	Bruno	local	2025-06-09 18:26:17.443	Cabelo
0bbddd36-b5e5-4dcb-9f28-04a3d399c542	2025-06-10 00:00:00	17:20	erick	Wallyson	558199045127@s.whatsapp.net	2025-06-09 00:00:00	Cabelo
d635a537-1418-46a1-8275-1f29f1287050	2025-06-10 00:00:00	08:00	caio césar 👶🏻	Wallyson	558197520499@s.whatsapp.net	2025-06-09 00:00:00	Cabelo
b68264ce-2ce9-4859-904d-c81ac5020ade	2025-06-13 00:00:00	19:20	fernando	Bruno	558199948217@s.whatsapp.net	2025-06-09 00:00:00	Cabelo
c1fac0ea-d63c-42f3-a42d-27441f78a6f2	2025-06-12 00:00:00	17:20	denilson	Bruno	558197084296@s.whatsapp.net	2025-06-09 00:00:00	Cabelo+Barba
160ad5ff-2e66-45af-bc79-c483caf83931	2025-06-13 00:00:00	20:00	fillipe	Bruno	558192151856@s.whatsapp.net	2025-06-09 00:00:00	Cabelo+Sobrancelha
3e813f30-2a61-447c-be52-d373f7ce259a	2025-06-12 00:00:00	14:40	fabiano	Bruno	558194610556@s.whatsapp.net	2025-06-09 00:00:00	Cabelo+Barba
86096523-7dd6-459d-a76f-ce6e5e0a85e4	2025-06-11 00:00:00	18:40	Letícia 	Wallyson	local	2025-06-09 22:45:56.311	Cabelo
5b410e76-9a42-41b2-8438-755b7fb13aa7	2025-06-12 00:00:00	11:40	alex	Bruno	558198874006@s.whatsapp.net	2025-06-09 00:00:00	Cabelo+Barba
e5ca54d1-bcf1-4ba1-845f-f56e77bff0e0	2025-06-17 00:00:00	18:00	ewerton adryan	Bruno	558198289810@s.whatsapp.net	2025-06-09 00:00:00	Cabelo
c6e271cd-b7f2-4e0a-afff-5f35f853c6a0	2025-06-11 00:00:00	09:40	ian holanda	Bruno	558179005726@s.whatsapp.net	2025-06-09 00:00:00	Cabelo
8cb66bf8-a622-4102-b706-6d4cb66804ea	2025-06-21 00:00:00	08:40	márcio	Wallyson	558199069172@s.whatsapp.net	2025-06-10 00:00:00	Cabelo
d9867819-6337-4077-9e61-f4a0d3199114	2025-06-14 00:00:00	14:00	Márcia 	Bruno	local	2025-06-10 11:10:31.698	Cabelo
64f90335-2b9b-402f-b183-9e7896f2abc0	2025-06-11 00:00:00	11:00	mayrlon	Bruno	558196600679@s.whatsapp.net	2025-06-10 00:00:00	Cabelo+Sobrancelha
37af2ff3-40ff-4f13-8b3f-4a7bfc5f39ed	2025-06-10 00:00:00	14:00	Miguel 	Wallyson	local	2025-06-10 13:24:01.54	Cabelo
de9942ac-445f-4943-8724-2d41541bcbad	2025-06-10 00:00:00	15:20	livio	Bruno	558195436268@s.whatsapp.net	2025-06-10 00:00:00	Barba
1098dd32-e981-4b95-9517-8e8157a672b9	2025-06-10 00:00:00	14:40	theo aguiar	Bruno	558198739294@s.whatsapp.net	2025-06-10 00:00:00	Cabelo
1bd2b243-223b-497b-ba19-c7d926c78e9f	2025-06-16 00:00:00	18:00	joão paulo	Wallyson	558182158768@s.whatsapp.net	2025-06-10 00:00:00	Cabelo
23ae142d-d922-49e4-89b9-612cc6423288	2025-06-16 00:00:00	16:00	flávio	Bruno	5511992553806@s.whatsapp.net	2025-06-10 00:00:00	Cabelo
dea94ff5-67bb-436f-ad1d-30b5ff239fd2	2025-06-12 00:00:00	13:20	breno	Bruno	558198437880@s.whatsapp.net	2025-06-10 00:00:00	Cabelo+Sobrancelha
0f4f99f0-2033-4d77-8afe-c95cc58c653b	2025-06-11 00:00:00	18:00	Davi 	Wallyson	local	2025-06-10 18:13:10.347	Cabelo
ae42d8ea-023c-4f26-922b-2a15ce6e15eb	2025-06-13 00:00:00	17:20	pedro henrique	Bruno	558199160082@s.whatsapp.net	2025-06-10 00:00:00	Cabelo
f5a50f54-72cb-4046-ac39-f48428c622c1	2025-06-13 00:00:00	08:00	Paulinho 	Wallyson	local	2025-06-10 20:00:11.05	Acabamento (Pezinho)
e1520329-d690-4857-bcd2-fc4de75752af	2025-06-11 00:00:00	17:20	Paulo 	Wallyson	local	2025-06-10 20:09:36.026	Cabelo
2809bcf9-5313-4241-b9aa-4117747c91b1	2025-06-12 00:00:00	16:00	nilson fonseca	Wallyson	558189252475@s.whatsapp.net	2025-06-10 00:00:00	Cabelo
6ae8c3a9-f0aa-493c-a3e3-6029833cc42f	2025-06-12 00:00:00	15:20	josé anthony	Wallyson	558189252475@s.whatsapp.net	2025-06-10 00:00:00	Cabelo
d6cb4f43-8a24-488f-8569-2c39d1a309d4	2025-06-13 00:00:00	16:40	Noa	Wallyson	local	2025-06-10 21:47:07.705	Cabelo
27bc17cd-e373-4cb1-a77b-13a5a4fdb6c0	2025-06-12 00:00:00	09:00	adelson lopes	Bruno	558181524707@s.whatsapp.net	2025-06-10 00:00:00	Cabelo
8d84f626-6168-4c36-aa5e-fe7155583f98	2025-06-11 00:00:00	14:40	Bruno ( Fernanda ) 	Wallyson	local	2025-06-10 21:56:09.906	Cabelo+Sobrancelha
76fe5eb2-cefb-4645-8b04-582cdcb8b3bd	2025-06-21 00:00:00	10:40	henrique segundo	Bruno	558199224958@s.whatsapp.net	2025-06-10 00:00:00	Cabelo
920c6d64-11c3-4662-aeb5-d4c152ac40aa	2025-06-12 00:00:00	18:40	Indisponivel	Bruno	Indisponivel	2025-06-10 22:56:33.813	
d191879b-ff38-4cde-ba44-e5f8093364c5	2025-06-13 00:00:00	09:40	elysson	Bruno	558199697267@s.whatsapp.net	2025-06-10 00:00:00	Cabelo+Sobrancelha
f79e1375-749f-456f-98f9-1010e468474b	2025-06-14 00:00:00	09:20	mathias lima	Wallyson	558187494403@s.whatsapp.net	2025-06-10 00:00:00	Cabelo+Barba
a401b157-d9cd-4d87-a901-bd1dfa32bb58	2025-06-18 00:00:00	18:00	emanuel	Wallyson	558196314532@s.whatsapp.net	2025-06-10 00:00:00	Cabelo
c1d535de-561c-4ce4-b142-92c97039151a	2025-06-18 00:00:00	17:20	hugo	Wallyson	558197524355@s.whatsapp.net	2025-06-10 00:00:00	Cabelo
ff711ff7-1741-41fc-bc5d-f70aaa6fcad1	2025-06-11 00:00:00	14:40	joão neto	Bruno	558197626118@s.whatsapp.net	2025-06-10 00:00:00	Cabelo
e25a449b-c869-4253-8f4d-e8693c6f3827	2025-06-19 00:00:00	10:00	Allison Daniel 	Wallyson	local	2025-06-11 10:26:15.176	Cabelo
ff086754-8dd4-49a4-8c74-3ff101878db8	2025-06-11 00:00:00	08:40	Marcado 	Wallyson	local	2025-06-11 10:55:16.44	Cabelo
a73cafa0-08e4-4587-a096-dab3cded27af	2025-06-11 00:00:00	10:20	elysson	Bruno	558199697267@s.whatsapp.net	2025-06-11 00:00:00	Cabelo+Sobrancelha
8687a9ef-a695-473d-ae62-39b2b03d6934	2025-06-12 00:00:00	14:00	Walyson 	Wallyson	local	2025-06-11 13:03:14.6	Cabelo
d8ab08fc-0701-466d-b74f-b973d5cd61ac	2025-06-12 00:00:00	14:40	Walyson 	Wallyson	local	2025-06-11 13:03:32.464	Cabelo
bea78eba-42cf-44bd-8741-ff23c349ba9b	2025-06-12 00:00:00	10:00	Álvaro 	Wallyson	local	2025-06-11 14:11:54.947	Cabelo
d1d0f4ec-248c-4a3f-8a8a-63dc159dacde	2025-06-11 00:00:00	16:40	Alberto 	Wallyson	local	2025-06-11 14:51:50.051	Cabelo
ce7872d6-1618-4dc2-ac78-dfb53d4ee6ec	2025-06-21 00:00:00	12:00	mateus	Bruno	558196083218@s.whatsapp.net	2025-06-11 00:00:00	Cabelo+Barba
2e98bc01-e5fd-4cd9-9a1b-98c787f4269f	2025-06-13 00:00:00	15:20	anderson	Bruno	558197666072@s.whatsapp.net	2025-06-11 00:00:00	Barba
91206bca-df13-4053-bdea-c03d3b0fa109	2025-06-14 00:00:00	10:40	marcus	Bruno	558198507164@s.whatsapp.net	2025-06-11 00:00:00	Cabelo
6cc6d270-2dca-450d-bef3-d8060692a0be	2025-06-16 00:00:00	18:40	rennan	Bruno	558196502964@s.whatsapp.net	2025-06-11 00:00:00	Cabelo
93536945-a014-4c1c-a854-3856e8d277bd	2025-06-12 00:00:00	09:40	miguel	Bruno	558195712225@s.whatsapp.net	2025-06-11 00:00:00	Cabelo
27969677-4e2b-420a-bb94-2257a70994b0	2025-06-13 00:00:00	16:00	fernando	Wallyson	558197789968@s.whatsapp.net	2025-06-11 00:00:00	Cabelo
a5cd68c0-e47d-4ce8-b067-e4a87a82b433	2025-06-12 00:00:00	10:40	Matheus 	Wallyson	local	2025-06-11 20:19:50.342	Barba
fdcf9df0-6a45-4e6c-bc58-4ae5c4ae4b7c	2025-06-17 00:00:00	11:40	sid	Bruno	558191536718@s.whatsapp.net	2025-06-11 00:00:00	Cabelo+Sobrancelha
a254f144-3dcc-4c9a-b85b-d58b12e9bec4	2025-06-12 00:00:00	10:20	Ocupado 	Bruno	local	2025-06-12 01:50:49.671	Cabelo
5b285496-cc2a-4434-ab3e-f714671525f3	2025-06-12 00:00:00	11:00	joão danielson	Bruno	558196702254@s.whatsapp.net	2025-06-12 00:00:00	Cabelo+Barba
22e3becf-f5b8-4ca9-8815-052d735895f0	2025-06-13 00:00:00	10:00	Natan 	Wallyson	local	2025-06-12 04:29:08.548	Cabelo
cc38fbe5-2fa4-46eb-9daa-d97f10f0b347	2025-06-13 00:00:00	14:00	Wanderson 	Wallyson	local	2025-06-12 04:36:50.229	Cabelo
ed0f1c4f-b163-4fe7-9a3b-c42d2173a21e	2025-06-12 00:00:00	13:20	João Felipe 	Wallyson	local	2025-06-12 04:43:22.701	Cabelo
a0ee8daa-b9af-4b2b-bd6e-0389606593ac	2025-06-14 00:00:00	11:20	joão vitor	Bruno	558188511046@s.whatsapp.net	2025-06-12 00:00:00	Cabelo
806a948d-c94c-4b95-b591-dcea17f062cb	2025-06-12 00:00:00	08:40	Indisponivel	Wallyson	Indisponivel	2025-06-12 11:22:00.265	
d9dfca51-b714-495d-9a23-1c8f5aa33233	2025-06-12 00:00:00	09:20	Indisponivel	Wallyson	Indisponivel	2025-06-12 11:22:00.354	
ef0087cf-55c4-4b07-9449-fabb4c3642cd	2025-06-13 00:00:00	11:20	ryan	Wallyson	558199792268@s.whatsapp.net	2025-06-12 00:00:00	Cabelo
71dab59d-f797-4a18-adfa-fa2d81139176	2025-06-12 00:00:00	15:20	João Danielson 	Bruno	local	2025-06-12 14:28:02.987	Cabelo
23caadc1-5f86-4ba8-a70c-f3e3b785f6c7	2025-06-12 00:00:00	16:40	carlos	Wallyson	558199700555@s.whatsapp.net	2025-06-12 00:00:00	Cabelo
59eb1e8f-db8c-48b0-a792-dd0d51d485d7	2025-06-23 00:00:00	17:20	lucas da silva	Bruno	558188204134@s.whatsapp.net	2025-06-12 00:00:00	Cabelo
8055c21f-d28e-443e-9832-c60e82bc846e	2025-06-23 00:00:00	16:40	joão vitor	Bruno	558192250093@s.whatsapp.net	2025-06-12 00:00:00	Cabelo
6615e2ca-6de2-4d73-b4c9-ca1a9b070a22	2025-06-13 00:00:00	15:20	Natan 	Wallyson	local	2025-06-12 18:01:10.402	Cabelo
cd30d542-1ac5-47a5-87ec-3dafd6e41b39	2025-06-13 00:00:00	14:00	allan	Bruno	558197352705@s.whatsapp.net	2025-06-12 00:00:00	Cabelo
05996dd2-4633-41cc-8be1-ce3b1badc8b0	2025-06-18 00:00:00	18:40	gustavo	Wallyson	558199587573@s.whatsapp.net	2025-06-12 00:00:00	Cabelo+Sobrancelha
0e0d17c4-b8e8-4d7e-a392-18a2dd80b78f	2025-06-13 00:00:00	10:20	hatus	Bruno	558199706416@s.whatsapp.net	2025-06-12 00:00:00	Cabelo+Barba
a9249b4d-0df0-4bce-81ce-2a2f80d6864c	2025-06-23 00:00:00	09:40	deyvid jhonatan	Bruno	558199201610@s.whatsapp.net	2025-06-13 00:00:00	Cabelo
2da18c09-3180-4708-9b78-fcf601464b2c	2025-06-13 00:00:00	13:20	joaquim	Bruno	558199642761@s.whatsapp.net	2025-06-13 00:00:00	Cabelo
b43dab34-a0ba-491c-9dc5-56c82a7cd1e6	2025-06-13 00:00:00	08:40	Marcado 	Wallyson	local	2025-06-13 10:57:25.279	Cabelo
cd9095eb-33ed-416b-bc7d-0025cd14ea94	2025-06-20 00:00:00	10:40	Paulinho 	Wallyson	local	2025-06-13 11:59:00.944	Cabelo
fee8c29c-9793-482e-90b5-c0d035d2c2f7	2025-06-14 00:00:00	10:00	Cleiton 	Wallyson	local	2025-06-13 12:04:15.319	Cabelo
8a8e83a9-4672-430d-aea3-046559f7e297	2025-06-14 00:00:00	10:00	Cleiton 	Wallyson	local	2025-06-13 12:04:16.425	Cabelo
e3ff7d1c-7c94-401c-8023-9b59597a0432	2025-06-13 00:00:00	20:00	Miguel 	Wallyson	local	2025-06-13 13:41:43.085	Cabelo
51349267-4373-474d-90df-697c66f5892e	2025-06-13 00:00:00	18:00	Ze véi 	Wallyson	local	2025-06-13 13:47:06.9	Cabelo
874579c6-9f6f-45ee-bdd7-646d2b76efb0	2025-06-13 00:00:00	19:20	Victor 	Wallyson	local	2025-06-13 14:13:53.701	Barba
cc49a39d-f57c-4067-a2fa-fc02f704d7b9	2025-06-20 00:00:00	19:20	Victor 	Wallyson	local	2025-06-13 14:16:05.161	Cabelo+Barba
f720254c-6e95-4fda-9fd9-c6196c5e38b9	2025-06-20 00:00:00	20:00	João Henrique 	Wallyson	local	2025-06-13 14:16:20.798	Cabelo
fc50a8d1-507f-4212-9351-d88dde781741	2025-06-18 00:00:00	14:40	Indisponivel	Wallyson	Indisponivel	2025-06-13 14:20:14.285	
507df6ba-d1b6-4fed-aa61-77090dea95e1	2025-06-18 00:00:00	15:20	Indisponivel	Wallyson	Indisponivel	2025-06-13 14:20:14.598	
49cd29a0-cca2-4eae-a0cc-57fe397ad5c2	2025-06-18 00:00:00	16:00	Indisponivel	Wallyson	Indisponivel	2025-06-13 14:20:14.632	
d48e530c-7d47-465f-948a-867f6562b3bc	2025-06-18 00:00:00	16:40	Indisponivel	Wallyson	Indisponivel	2025-06-13 14:20:14.666	
7d6180bd-a001-41c3-96a6-e0130fbde0cf	2025-06-21 00:00:00	09:20	Hatus	Bruno	local	2025-06-13 14:25:03.465	Barba
140882f0-4d40-4ff9-80b4-538235b053d8	2025-06-17 00:00:00	11:20	gabriel	Wallyson	558196106906@s.whatsapp.net	2025-06-13 00:00:00	Cabelo
f4bc714e-866f-4e89-9ce2-3200aacb77e8	2025-06-17 00:00:00	16:40	mauricio	Bruno	558182705181@s.whatsapp.net	2025-06-13 00:00:00	Cabelo
2c721c00-f838-4482-b1c5-f5db7ec7f338	2025-06-13 00:00:00	18:40	antônio medeiros frança lins	Wallyson	558171024799@s.whatsapp.net	2025-06-13 00:00:00	Cabelo+Sobrancelha
e27afa25-de58-4b61-972e-40eb3de7f950	2025-06-16 00:00:00	18:00	pedro henrique	Bruno	558199160082@s.whatsapp.net	2025-06-13 00:00:00	Cabelo
f4107d77-9e0c-4fd1-add7-b10f3bab998a	2025-06-17 00:00:00	16:00	vicente	Bruno	558197192758@s.whatsapp.net	2025-06-13 00:00:00	Cabelo+Sobrancelha
5fdb1e65-d550-4072-9ddc-0bd675c5865d	2025-06-14 00:00:00	10:40	alan elias	Wallyson	558182284289@s.whatsapp.net	2025-06-13 00:00:00	Cabelo
76fcb771-dade-43e3-ab75-42fc1caa8697	2025-06-14 00:00:00	12:00	eliel	Bruno	558199867389@s.whatsapp.net	2025-06-13 00:00:00	Cabelo
a6133e1f-f216-4301-875a-9708f885ab48	2025-06-14 00:00:00	08:40	Gabriel gd	Wallyson	local	2025-06-13 16:53:29.946	Cabelo
2d0601e3-b664-490e-91d9-962a531e32f8	2025-06-14 00:00:00	17:20	Marcos filho 	Wallyson	local	2025-06-13 17:04:16.664	Cabelo
d352c050-2b19-47ff-a917-db0e02e13438	2025-06-23 00:00:00	10:20	asafe	Bruno	558171076971@s.whatsapp.net	2025-06-13 00:00:00	Cabelo
c8f5dc4a-f5ec-495d-bcd6-ce410eb07bb2	2025-06-16 00:00:00	14:40	Lucas piu	Wallyson	local	2025-06-13 20:52:13.349	Cabelo
aea38cc8-bfd8-43c9-810c-bbac7f3ab67c	2025-06-14 00:00:00	15:20	Marcos 	Wallyson	local	2025-06-13 20:57:31.894	Cabelo
d05b8bd2-dbea-4394-b33e-a619d7f3b32c	2025-06-14 00:00:00	11:20	john	Wallyson	558196903604@s.whatsapp.net	2025-06-13 00:00:00	Cabelo+Barba
8c0a6d1e-4ee3-4f59-835c-9a483282ddf5	2025-07-18 00:00:00	18:00	Wellington adv	Bruno	local	2025-06-13 21:53:41.093	Cabelo+Barba
6fa5829d-797b-42f2-8686-f2851453816d	2025-06-17 00:00:00	13:20	henrique	Wallyson	558171101790@s.whatsapp.net	2025-06-13 00:00:00	Cabelo
f9a11ccb-08db-4962-9c0c-73e62dca2147	2025-06-13 00:00:00	09:00	oi	Bruno	558198022472@s.whatsapp.net	2025-06-13 00:00:00	Cabelo
3c366fb8-1bb5-4dff-80bc-14c82adca620	2025-06-14 00:00:00	12:00	miguel	Wallyson	558197272851@s.whatsapp.net	2025-06-13 00:00:00	Cabelo
bf904768-9be8-450e-8a34-4dc96369a32e	2025-06-19 00:00:00	15:20	marcus	Wallyson	558199349818@s.whatsapp.net	2025-06-13 00:00:00	Cabelo
2379c0b9-001b-4fd5-8c7e-e521141cec4e	2025-06-14 00:00:00	16:00	jorge	Wallyson	558199658478@s.whatsapp.net	2025-06-13 00:00:00	Cabelo+Sobrancelha
dbbd6843-2f41-44b3-8fe3-9100b60cab81	2025-06-20 00:00:00	10:00	matheus	Wallyson	558197941830@s.whatsapp.net	2025-06-13 00:00:00	Cabelo
3ed69760-b2f6-4a69-8464-f32fda6af1e0	2025-06-16 00:00:00	09:00	Marcos do Instagram 	Wallyson	local	2025-06-14 12:22:41.531	Cabelo
ef04c1f5-6847-48a0-810c-bea76a49a0ed	2025-06-14 00:00:00	16:40	anderson	Wallyson	558198557130@s.whatsapp.net	2025-06-14 00:00:00	Cabelo
3c41bc2b-b3d6-4845-b28d-5fa30b3a7242	2025-06-16 00:00:00	11:40	mateus de melo guerra	Bruno	558199987381@s.whatsapp.net	2025-06-14 00:00:00	Cabelo
ea66f3f6-30ad-48f4-bbd7-a199a118459b	2025-06-21 00:00:00	15:20	anderson	Bruno	558197666072@s.whatsapp.net	2025-06-14 00:00:00	Cabelo+Barba
4cd7dc9a-bf03-4a79-9b23-9c90c2a4b4ca	2025-06-16 00:00:00	16:40	anderson da silva	Bruno	558199072414@s.whatsapp.net	2025-06-14 00:00:00	Cabelo
e561c139-3b0c-476c-96aa-65d652651bd7	2025-06-14 00:00:00	14:00	miguel	Wallyson	558197272851@s.whatsapp.net	2025-06-14 00:00:00	Cabelo
a3022a9c-f875-435e-a528-d4bdbe28ce65	2025-06-14 00:00:00	18:00	Vínicos 	Wallyson	local	2025-06-14 16:47:14.343	Cabelo
9704d721-b381-4b39-b3c3-99a81b4b99a0	2025-06-16 00:00:00	13:20	Marcelly 	Wallyson	local	2025-06-14 16:47:36.506	Cabelo
e6c5ebba-3c68-4da7-8c84-b348185bf7c5	2025-06-27 00:00:00	10:20	Emanoel 	Bruno	local	2025-06-14 17:09:01.872	Cabelo+Barba
01227ac0-73d1-40ac-b664-5b9f726cda09	2025-06-16 00:00:00	09:40	matheus	Wallyson	558189099239@s.whatsapp.net	2025-06-14 00:00:00	Cabelo
35b2da1b-8545-4541-abf6-e014244253ca	2025-06-16 00:00:00	15:20	fernando	Bruno	558196035269@s.whatsapp.net	2025-06-14 00:00:00	Cabelo
88088f44-2f8c-470a-81a5-efb4b2aa9c49	2025-06-21 00:00:00	16:00	Arthur filho cara do balaio	Wallyson	local	2025-06-14 18:55:40.808	Cabelo
c433deea-93ba-49e9-a387-90a6348db3e2	2025-06-18 00:00:00	19:20	Teteu	Bruno	local	2025-06-14 19:00:52.716	Cabelo
bae3e41d-8267-4fac-a7a6-45f45be12b24	2025-06-16 00:00:00	09:40	Ocupado	Bruno	local	2025-06-14 20:09:22.65	Cabelo
adfa1452-12cf-48f9-9a5f-63aac404995b	2025-06-16 00:00:00	10:20	Ocupado	Bruno	local	2025-06-14 20:09:33.472	Cabelo
aedabcd5-6f06-4f2c-8dca-540a9a607c9a	2025-06-16 00:00:00	11:00	Ocupado	Bruno	local	2025-06-14 20:09:49.409	Cabelo
68215234-ab0a-4666-a5dd-e970436b98c1	2025-06-19 00:00:00	10:40	júlio césar	Wallyson	558196440108@s.whatsapp.net	2025-06-15 00:00:00	Cabelo+Sobrancelha
8fda722f-4572-41bd-a3da-056c9a2796db	2025-06-21 00:00:00	11:20	elysson	Bruno	558199697267@s.whatsapp.net	2025-06-15 00:00:00	Cabelo+Sobrancelha
af912133-d463-40d3-9b15-c54465fb2a5d	2025-06-23 00:00:00	14:00	Serginho irmão Deivid 	Bruno	local	2025-06-15 16:44:51.933	Cabelo
9cb85e8f-6402-42f7-81d4-19d66a996442	2025-06-17 00:00:00	19:20	Vitor negão 	Bruno	local	2025-06-15 17:05:23.148	Cabelo
1bda3a79-2023-4083-9d3c-c6f4bf99f436	2025-06-16 00:00:00	17:20	Vinicius 	Wallyson	local	2025-06-15 17:17:01.128	Cabelo
2275a5c0-b7c7-4b41-9593-c9c3b55596aa	2025-06-17 00:00:00	16:00	rubens	Wallyson	558198296625@s.whatsapp.net	2025-06-15 00:00:00	Cabelo
103f3a4f-9687-493f-9a7f-9cbb2aab589d	2025-06-20 00:00:00	18:40	renan	Bruno	558198296625@s.whatsapp.net	2025-06-15 00:00:00	Cabelo
b6e2ec2d-41d5-4dce-9273-26a122c4849c	2025-06-16 00:00:00	14:40	matheus	Bruno	558196073942@s.whatsapp.net	2025-06-15 00:00:00	Cabelo+Barba
ba26fda3-1620-49fa-95f7-5476d1f116af	2025-06-16 00:00:00	14:00	rafael	Wallyson	558196073942@s.whatsapp.net	2025-06-15 00:00:00	Cabelo
340fdc77-8cda-4f20-a6be-b219ff9b26d3	2025-06-16 00:00:00	16:40	mario areias	Wallyson	558381367304@s.whatsapp.net	2025-06-16 00:00:00	Cabelo
4755a7b9-a1f6-46c4-ac14-03a1c3a1b400	2025-06-18 00:00:00	08:00	horlean	Wallyson	558281363560@s.whatsapp.net	2025-06-16 00:00:00	Cabelo+Sobrancelha
19ac5866-1087-4227-aec6-ac443019ddf6	2025-06-17 00:00:00	08:40	Pyetro	Wallyson	local	2025-06-16 10:51:25.155	Cabelo
f63c8113-c21d-41ec-80a6-76a554789813	2025-06-18 00:00:00	14:00	luiz	Wallyson	558197975570@s.whatsapp.net	2025-06-16 00:00:00	Cabelo
c6b6609a-4a3b-43cf-82d6-cd904435bff9	2025-06-16 00:00:00	15:20	Pedro 	Wallyson	local	2025-06-16 13:07:44.286	Cabelo
30195b43-b74e-45fa-951b-4fa722c10ef2	2025-06-19 00:00:00	09:20	Robertinho 	Wallyson	local	2025-06-16 13:16:57.775	Cabelo
cb51eba0-5944-4a14-95c4-13b31813ed57	2025-06-19 00:00:00	08:40	Daniel 	Wallyson	local	2025-06-16 13:17:36.176	Cabelo
14ad9dce-8675-4a63-9976-63078eed6423	2025-06-17 00:00:00	15:20	lucas	Bruno	558197326785@s.whatsapp.net	2025-06-16 00:00:00	Cabelo
4eb3f255-93c3-43ab-98cd-e8b5040a3ac4	2025-06-16 00:00:00	16:00	João Carmen 	Wallyson	local	2025-06-16 14:28:11.784	Cabelo
1cb36a38-1ee4-4d88-b0a0-096522c4f4bc	2025-06-17 00:00:00	10:00	Miguel 	Wallyson	local	2025-06-16 14:47:49.214	Cabelo
12e5c22a-b597-4c3e-b8a4-ffa81dd6d018	2025-06-17 00:00:00	08:00	gabriel	Wallyson	558181774084@s.whatsapp.net	2025-06-16 00:00:00	Cabelo
56b57dd7-31a6-4aa9-bc77-3ead341bf0ca	2025-06-17 00:00:00	14:40	evodya	Bruno	558197121270@s.whatsapp.net	2025-06-16 00:00:00	Cabelo
3247876e-ead1-4021-9353-e4e79ddcffe8	2025-06-19 00:00:00	14:40	Higor 	Wallyson	local	2025-06-16 20:05:13.156	Cabelo+Barba
f49e3a1d-8e7a-4bda-bcb2-41546ed77ab9	2025-06-21 00:00:00	09:20	Matheus criança 	Wallyson	local	2025-06-16 20:59:55.018	Cabelo
062fea35-613e-4410-98eb-cb3a6aa70633	2025-07-03 00:00:00	18:40	lucas leal	Bruno	558182605271@s.whatsapp.net	2025-06-16 00:00:00	Cabelo+Sobrancelha
9469b341-6ab0-4eb4-8332-e4301e9c2b47	2025-06-19 00:00:00	11:20	pedro sérgio	Wallyson	558197271391@s.whatsapp.net	2025-06-16 00:00:00	Cabelo
46bac491-1fb2-4ba7-9911-7e85a149ace3	2025-06-17 00:00:00	09:40	Dorgyl	Bruno	local	2025-06-17 00:41:47.075	Cabelo
fe85c66b-da5a-499e-883c-690839a50efb	2025-06-17 00:00:00	09:20	Ocupado 	Wallyson	local	2025-06-17 11:34:08.064	Cabelo
f41dae4b-d530-49a4-8a90-5985c7cbd435	2025-06-27 00:00:00	18:40	ualesson	Bruno	558199786467@s.whatsapp.net	2025-06-17 00:00:00	Cabelo
0679c4cc-69d3-443c-a03e-b2e43fc8f2d0	2025-06-17 00:00:00	09:00	Wellington 	Bruno	local	2025-06-17 13:01:43.976	Cabelo
2dfe68d5-3b14-4d60-b93b-4184f5c74aeb	2025-06-18 00:00:00	08:40	leandro	Wallyson	558195021216@s.whatsapp.net	2025-06-17 00:00:00	Cabelo
24b85042-4de0-4f74-9e5f-b7c14ef9dbbf	2025-06-21 00:00:00	18:00	foi eu vi bruno tinha esquecido, valeu	Wallyson	558196448583@s.whatsapp.net	2025-06-17 00:00:00	Cabelo+Sobrancelha
2ce52dd3-7f35-4c63-975a-5fae6f6b3f26	2025-06-21 00:00:00	17:20	samuel	Wallyson	558196448583@s.whatsapp.net	2025-06-17 00:00:00	Cabelo+Sobrancelha
2780a08a-a493-4508-aa81-b440a75c244a	2025-06-21 00:00:00	10:40	davidson	Wallyson	558199527666@s.whatsapp.net	2025-06-17 00:00:00	Cabelo+Barba
100c1c04-cf55-4cda-8386-de36486702bc	2025-06-24 00:00:00	08:00	joaquim gonçalo	Wallyson	558199504021@s.whatsapp.net	2025-06-17 00:00:00	Cabelo+Sobrancelha
a23f5b46-ac89-422a-863a-7ebe3125cea8	2025-06-21 00:00:00	14:40	pedro robson	Wallyson	558198929820@s.whatsapp.net	2025-06-17 00:00:00	Cabelo
d86b2f61-2191-4e14-8fcd-6505c2f70d1c	2025-06-23 00:00:00	11:00	cauê	Bruno	558197796167@s.whatsapp.net	2025-06-17 00:00:00	Cabelo
197e5c24-4aa8-4e7c-a373-88ed648c0207	2025-06-23 00:00:00	15:20	breno	Bruno	558197349442@s.whatsapp.net	2025-06-17 00:00:00	Cabelo
6b1cf275-7e7f-4ccb-a9fe-4c4c66e4401d	2025-06-19 00:00:00	11:00	João mendes	Wallyson	local	2025-06-17 15:56:00.809	Cabelo
2369ae7f-5b51-4cd0-a7ae-f1a5123ea500	2025-06-23 00:00:00	13:20	tássio moraes	Bruno	558197909383@s.whatsapp.net	2025-06-17 00:00:00	Cabelo+Barba
60cacd37-3326-45e1-95c5-2f8a2a90eb7e	2025-06-18 00:00:00	13:20	Filho de Marcílio 	Wallyson	local	2025-06-17 17:35:19.767	Cabelo
afdee5be-7b30-4e42-86c1-9d4b5907c344	2025-06-18 00:00:00	10:00	Marcílio 	Wallyson	local	2025-06-17 17:50:14.129	Cabelo
29592c02-6e84-4f82-aaa0-56c3d1123190	2025-06-18 00:00:00	10:40	Wesely 	Wallyson	local	2025-06-17 18:46:17.325	Cabelo
14bc890d-e46b-4889-8972-cb15971ea996	2025-06-18 00:00:00	11:20	Kauan 	Wallyson	local	2025-06-17 18:53:36.054	Cabelo
adc26159-fd6b-4139-af6f-e3ad5641eb42	2025-06-20 00:00:00	19:20	denilson	Bruno	558197084296@s.whatsapp.net	2025-06-17 00:00:00	Barba
33bba5c3-97b5-47a5-853a-41a350d38318	2025-06-20 00:00:00	20:00	paulo	Bruno	558199302136@s.whatsapp.net	2025-06-17 00:00:00	Cabelo
49f4601e-fae3-44b8-91b7-300284d136b9	2025-06-23 00:00:00	18:00	anderson carlos	Bruno	558196579148@s.whatsapp.net	2025-06-18 00:00:00	Cabelo
e2e17998-88cc-47be-ab34-aea5611bbf78	2025-06-21 00:00:00	12:00	Lucian 	Wallyson	local	2025-06-18 11:30:24.624	Cabelo
24381998-ecb5-44a0-9fb9-4b5ea7a1a04d	2025-06-21 00:00:00	13:20	daniel	Wallyson	558199459046@s.whatsapp.net	2025-06-18 00:00:00	Cabelo
3d174a53-bbae-46b6-9799-21705ec06ad4	2025-06-21 00:00:00	11:20	Daniel 	Wallyson	local	2025-06-18 11:52:13.578	Cabelo
e79088e9-fc58-43ce-8106-2dd755743bd0	2025-06-23 00:00:00	13:20	gustavo fiel romão da silva	Wallyson	558197822298@s.whatsapp.net	2025-06-18 00:00:00	Cabelo
ff3144bf-7905-4907-9082-f1d631184bc1	2025-06-23 00:00:00	14:00	thiago fiel romão da silva	Wallyson	558197822298@s.whatsapp.net	2025-06-18 00:00:00	Cabelo+Barba
fd91b463-21dc-4fe0-8f34-c0afdcc47883	2025-06-24 00:00:00	14:00	vandro júnior	Wallyson	558196610362@s.whatsapp.net	2025-06-18 00:00:00	Cabelo
ae6e5a90-8264-4fb0-ab98-248d87ed144c	2025-06-23 00:00:00	10:20	moisés	Wallyson	558171076971@s.whatsapp.net	2025-06-18 00:00:00	Cabelo+Barba
c90318d7-cbb2-4658-bcfe-7bdf8427acf1	2025-06-23 00:00:00	16:00	pedro augusto	Bruno	558171185174@s.whatsapp.net	2025-06-19 00:00:00	Cabelo
f8aeae1b-e23a-48ba-9614-00f0869c50c2	2025-06-23 00:00:00	09:00	Indisponivel	Wallyson	Indisponivel	2025-06-19 17:14:57.668	
ad57137f-92c8-41af-a284-b7e503b76232	2025-06-23 00:00:00	09:40	Indisponivel	Wallyson	Indisponivel	2025-06-19 17:14:57.755	
5f993a54-9e69-4e38-9367-468790a34b77	2025-06-23 00:00:00	10:20	Indisponivel	Wallyson	Indisponivel	2025-06-19 17:14:57.783	
9f405e7e-22d4-46a9-ac06-4212980416a0	2025-06-23 00:00:00	11:00	Indisponivel	Wallyson	Indisponivel	2025-06-19 17:14:57.811	
eb46242a-e7f4-4a72-b8c6-7fbb9d4a66ae	2025-06-23 00:00:00	11:40	Indisponivel	Wallyson	Indisponivel	2025-06-19 17:14:57.849	
2379f10e-bc89-4327-8742-db0d837c2ee5	2025-06-23 00:00:00	13:20	Indisponivel	Wallyson	Indisponivel	2025-06-19 17:14:57.875	
9f924a13-b6c3-4ecc-89e9-6571e1b24115	2025-06-23 00:00:00	14:00	Indisponivel	Wallyson	Indisponivel	2025-06-19 17:14:57.904	
b73fe8de-d8a0-4892-a6db-f5b1c0f89f82	2025-06-23 00:00:00	14:40	Indisponivel	Wallyson	Indisponivel	2025-06-19 17:14:57.93	
f7f17f9b-8805-4c4b-8437-0b9869dfd32f	2025-06-23 00:00:00	15:20	Indisponivel	Wallyson	Indisponivel	2025-06-19 17:14:57.957	
fa2c732f-806e-4896-a498-490ca500144c	2025-06-23 00:00:00	16:00	Indisponivel	Wallyson	Indisponivel	2025-06-19 17:14:57.985	
2fcb65eb-a15d-4e1d-85c4-05277b7c996c	2025-06-23 00:00:00	16:40	Indisponivel	Wallyson	Indisponivel	2025-06-19 17:14:58.018	
4587dbb9-0d94-4aa9-ba64-aab56eaaccc4	2025-06-23 00:00:00	17:20	Indisponivel	Wallyson	Indisponivel	2025-06-19 17:14:58.046	
432c3287-47bd-4e92-a786-a90d8cd45736	2025-06-23 00:00:00	18:00	Indisponivel	Wallyson	Indisponivel	2025-06-19 17:14:58.073	
05a0ddd7-703f-4d97-99a3-3ff57dd2b2d3	2025-06-23 00:00:00	18:40	Indisponivel	Wallyson	Indisponivel	2025-06-19 17:14:58.1	
1bbe7553-949b-4750-9091-68a257b8ae85	2025-06-23 00:00:00	18:40	deyvson	Bruno	558195479577@s.whatsapp.net	2025-06-19 00:00:00	Cabelo
3805a5c4-f1cd-47e6-87ce-e87d89f4e5bd	2025-06-27 00:00:00	14:00	william gabriel	Bruno	558198087356@s.whatsapp.net	2025-06-19 00:00:00	Cabelo
9b4e3e46-5c67-4855-b807-8e0f5a0f1392	2025-06-23 00:00:00	11:40	pedro henrique	Bruno	558185032618@s.whatsapp.net	2025-06-19 00:00:00	Cabelo+Sobrancelha
71491fe7-fa11-443a-91a4-67e3fbc922d3	2025-06-21 00:00:00	16:40	gabriel	Wallyson	558196236188@s.whatsapp.net	2025-06-19 00:00:00	Cabelo
e9ceb4b8-875c-44be-ac6f-9aa8adfbae6e	2025-06-25 00:00:00	16:40	tarcísio	Bruno	558185887456@s.whatsapp.net	2025-06-19 00:00:00	Cabelo
13d8bf05-a1d8-40a3-bc17-8d822d211ffa	2025-06-21 00:00:00	10:00	Ocupado 	Bruno	local	2025-06-20 02:52:42.972	Cabelo
cb266e7d-59e1-46f8-9484-49d9660eb954	2025-06-28 00:00:00	14:40	dubolo	Bruno	558196647899@s.whatsapp.net	2025-06-20 00:00:00	Cabelo+Sobrancelha
5d5131bb-4092-4cb4-9918-e42cd13180e8	2025-07-10 00:00:00	11:20	Kiko 	Wallyson	local	2025-06-20 15:12:09.712	Cabelo
7f7d3a4d-3048-4192-bb0c-9f19895e9562	2025-06-24 00:00:00	14:40	edson	Wallyson	558198615843@s.whatsapp.net	2025-06-20 00:00:00	Cabelo
0683c700-136c-421f-bb0b-d366311a8f7a	2025-06-25 00:00:00	15:20	wellington (anthony)	Bruno	558198296294@s.whatsapp.net	2025-06-20 00:00:00	Cabelo
6a6b2a63-2dc7-4d41-b317-9f1af31fd10f	2025-06-25 00:00:00	17:20	lucas	Wallyson	558197326785@s.whatsapp.net	2025-06-20 00:00:00	Cabelo
50132e00-257f-4106-9c7a-570cec7bd8ff	2025-07-25 00:00:00	13:20	gabriel henrique	Bruno	558185537298@s.whatsapp.net	2025-06-20 00:00:00	Cabelo
a4e7e382-9d12-4681-8b90-0d8a95646609	2025-06-24 00:00:00	10:20	joão marcello	Bruno	558196393507@s.whatsapp.net	2025-06-20 00:00:00	Cabelo
296f0af8-6d48-43a0-bf27-6f64845d55d7	2025-06-21 00:00:00	08:00	wesley	Bruno	558196817233@s.whatsapp.net	2025-06-20 00:00:00	Cabelo
d65d8950-b1f1-4f6d-b246-0e498b7ae138	2025-06-25 00:00:00	11:40	manoel neto	Bruno	558195055212@s.whatsapp.net	2025-06-20 00:00:00	Cabelo+Barba
cf37cf4a-393e-45d9-98fb-124e92d904c0	2025-06-26 00:00:00	18:00	gonzaga neto	Bruno	558198514795@s.whatsapp.net	2025-06-21 00:00:00	Cabelo
43e2fa29-3425-4f5a-825b-0f7650c1168f	2025-07-01 00:00:00	10:00	henrique	Wallyson	558171101790@s.whatsapp.net	2025-06-21 00:00:00	Cabelo
a7bf71e7-8b2a-4870-8c1d-d12655212ed1	2025-06-25 00:00:00	13:20	gabriel henrique	Bruno	558185537298@s.whatsapp.net	2025-06-21 00:00:00	Cabelo
0566153a-5928-41c9-9b99-2d196cf3c4da	2025-06-24 00:00:00	09:00	renan	Bruno	558198296625@s.whatsapp.net	2025-06-21 00:00:00	Cabelo
f56bfba7-0870-4928-a93b-7a9012e4f6de	2025-06-24 00:00:00	09:40	vinicius jorge	Bruno	558195743981@s.whatsapp.net	2025-06-21 00:00:00	Cabelo
ef1eb41c-21b8-470e-aec6-a1ad0f333847	2025-06-25 00:00:00	16:40	Ademir 	Wallyson	local	2025-06-21 17:10:22.266	Cabelo
9ccdbd99-0b51-43c9-9f16-23d84cdca2ef	2025-06-27 00:00:00	13:20	fabiano	Bruno	558194610556@s.whatsapp.net	2025-06-21 00:00:00	Cabelo+Barba
c4b4e078-12d8-4d9d-b552-8484aa1417ca	2025-06-24 00:00:00	14:40	eliel	Bruno	558199867389@s.whatsapp.net	2025-06-21 00:00:00	Cabelo
75fad652-c341-4567-933d-d36a567ab149	2025-06-24 00:00:00	16:00	francisco	Wallyson	558182062970@s.whatsapp.net	2025-06-22 00:00:00	Cabelo
cf3b0d27-f989-4463-ac54-52c60e8ba403	2025-06-25 00:00:00	18:40	felipe silva	Bruno	558196065070@s.whatsapp.net	2025-06-22 00:00:00	Cabelo
a18a63a0-c803-43af-9c26-71bc0d6fd149	2025-06-24 00:00:00	17:20	lucas da silva	Bruno	558188204134@s.whatsapp.net	2025-06-22 00:00:00	Cabelo
c07e4205-deed-4d9c-bb2a-6e20688139d7	2025-06-23 00:00:00	14:40	heitor batista	Bruno	558197535746@s.whatsapp.net	2025-06-22 00:00:00	Cabelo
64dcf417-962d-4f02-a882-091131000965	2025-06-27 00:00:00	16:00	wesley	Wallyson	558181016662@s.whatsapp.net	2025-06-22 00:00:00	Cabelo+Sobrancelha
816f3c81-fa89-4ef4-b3d2-884c9e8aff61	2025-06-27 00:00:00	14:40	joão lucas	Bruno	558189785404@s.whatsapp.net	2025-06-22 00:00:00	Cabelo+Sobrancelha
e84380a7-93a9-40ad-811d-30cd3f02e4c1	2025-06-27 00:00:00	18:00	marcos	Bruno	558197149668@s.whatsapp.net	2025-06-22 00:00:00	Cabelo
347705eb-5740-4520-9359-d06476989d4e	2025-06-26 00:00:00	17:20	italo	Bruno	558198405729@s.whatsapp.net	2025-06-22 00:00:00	Cabelo
0e952a2b-3d51-425b-9b87-479a8f425b93	2025-06-27 00:00:00	09:00	jefferson	Bruno	558196311311@s.whatsapp.net	2025-06-23 00:00:00	Cabelo
e90bbc52-b69e-4ecf-ba53-2cc578555c9b	2025-06-24 00:00:00	09:00	Indisponivel	Bruno	Indisponivel	2025-06-23 13:02:24.681	
252ca3c8-715e-49cc-bc32-2bf3a66811c7	2025-06-24 00:00:00	09:40	Indisponivel	Bruno	Indisponivel	2025-06-23 13:02:24.771	
0876e43f-1092-4613-aeed-7779b4e6db86	2025-06-24 00:00:00	10:20	Indisponivel	Bruno	Indisponivel	2025-06-23 13:02:24.802	
d4d1732c-46c5-4976-a07b-cc703cef4dc7	2025-06-24 00:00:00	11:00	Indisponivel	Bruno	Indisponivel	2025-06-23 13:02:24.832	
9ed9ca9e-6604-4368-bc5d-d32de6ecdfd6	2025-06-24 00:00:00	11:40	Indisponivel	Bruno	Indisponivel	2025-06-23 13:02:24.862	
6fbd7c88-0b6e-431e-83b5-86916f5b4ad9	2025-06-24 00:00:00	13:20	Indisponivel	Bruno	Indisponivel	2025-06-23 13:02:24.895	
6697849a-ad11-483c-bd8d-2076385525c5	2025-06-24 00:00:00	14:00	Indisponivel	Bruno	Indisponivel	2025-06-23 13:02:24.926	
64724a90-bd6a-4d23-bb57-76f9d9d0a542	2025-06-24 00:00:00	14:40	Indisponivel	Bruno	Indisponivel	2025-06-23 13:02:25.013	
250351fc-6df9-4599-80bf-35c8dc5cf63d	2025-06-24 00:00:00	15:20	Indisponivel	Bruno	Indisponivel	2025-06-23 13:02:25.045	
ef6639e6-d7ef-4552-89b8-2bbb4fdf289d	2025-06-24 00:00:00	16:00	Indisponivel	Bruno	Indisponivel	2025-06-23 13:02:25.074	
fedd05b0-1c4b-416a-8353-0dacdf9ccf78	2025-06-24 00:00:00	16:40	Indisponivel	Bruno	Indisponivel	2025-06-23 13:02:25.105	
7a7bf647-ba5e-40a3-955e-b176f6d350f3	2025-06-24 00:00:00	17:20	Indisponivel	Bruno	Indisponivel	2025-06-23 13:02:25.135	
8409bf73-cdef-4bfd-8038-03e98057f77f	2025-06-24 00:00:00	18:00	Indisponivel	Bruno	Indisponivel	2025-06-23 13:02:25.166	
a20665d3-cdcf-4a64-a6bd-760932f220ac	2025-06-24 00:00:00	18:40	Indisponivel	Bruno	Indisponivel	2025-06-23 13:02:25.197	
9bf431b0-20ee-4cab-80ae-9126ac02d21c	2025-06-24 00:00:00	19:20	Indisponivel	Bruno	Indisponivel	2025-06-23 13:02:25.228	
e05bb0d6-57fe-4396-8f70-3df3a96fd1a2	2025-06-25 00:00:00	09:40	deyvid luzes	Bruno	558199201610@s.whatsapp.net	2025-06-23 00:00:00	Cabelo
bfa05676-01ce-4fb7-b439-9f7a87369ea7	2025-06-25 00:00:00	16:00	weslley	Bruno	558197215641@s.whatsapp.net	2025-06-23 00:00:00	Cabelo
da5a6cf1-de9d-45b9-b87d-55d8da06e77a	2025-06-27 00:00:00	15:20	matheus	Bruno	558196191710@s.whatsapp.net	2025-06-23 00:00:00	Cabelo+Sobrancelha
732971be-3441-4ab3-8e43-9cb71d25e7e3	2025-06-26 00:00:00	16:40	joão guilherme	Bruno	558181673375@s.whatsapp.net	2025-06-23 00:00:00	Cabelo
f5cf9f4e-2827-4761-beb5-2ea0471f5ace	2025-06-27 00:00:00	11:40	arthur	Bruno	558194115511@s.whatsapp.net	2025-06-23 00:00:00	Cabelo+Barba
887efa21-6068-48ab-9be7-be9e7ef757ce	2025-06-27 00:00:00	16:40	eduardo	Bruno	558194297236@s.whatsapp.net	2025-06-23 00:00:00	Cabelo+Barba
18d59e69-6875-48f7-b1c3-bc1fd3b5e46f	2025-06-28 00:00:00	16:40	Rafael da farmácia 	Wallyson	local	2025-06-23 18:13:06.312	Cabelo+Barba
199c9b18-fcbb-46f7-a33a-0e2553f1538f	2025-06-25 00:00:00	11:00	jefferson	Bruno	558197857453@s.whatsapp.net	2025-06-23 00:00:00	Cabelo
231a3dc2-f824-4555-a5d3-3b227a9c8fd6	2025-06-24 00:00:00	18:40	Marcado 	Wallyson	local	2025-06-23 19:08:03.829	Cabelo+Barba
09775446-32f5-47a3-bfcb-18dc996d3feb	2025-06-24 00:00:00	18:00	Juninho compadre 	Wallyson	local	2025-06-23 19:08:29.984	Cabelo+Barba
6541c0af-1e22-47e7-bbe1-e0ed97e1979f	2025-06-25 00:00:00	18:40	Juninho 	Wallyson	local	2025-06-23 19:11:04.754	Cabelo+Barba
b8719764-290a-4ad9-8e57-de7499f2797f	2025-06-24 00:00:00	17:20	Marcado 	Wallyson	local	2025-06-23 19:11:20.199	Cabelo
26628496-57e3-490e-9553-b745ab1a8138	2025-06-24 00:00:00	15:20	Miguel 	Wallyson	local	2025-06-23 19:11:47.046	Cabelo
932a36f7-9ff4-457a-86ad-b2259d1f6151	2025-06-24 00:00:00	08:40	Marcado 	Wallyson	local	2025-06-23 19:33:47.395	Cabelo
4ee71072-d969-4bd6-86ff-32e559630e68	2025-06-24 00:00:00	13:20	Marcado 	Wallyson	local	2025-06-23 19:34:01.466	Cabelo
e85128e4-12b3-4e4e-88a2-432f5737c507	2025-06-25 00:00:00	15:20	Gustavo 	Wallyson	local	2025-06-24 00:23:46.534	Cabelo
cfa4f92c-498d-411e-bf1f-ee145af8f73b	2025-06-25 00:00:00	17:20	lucas da silva batista	Bruno	558188204134@s.whatsapp.net	2025-06-24 00:00:00	Cabelo
863c428c-ffa1-4d08-958e-f6947d9a1fb3	2025-06-27 00:00:00	09:40	bruno	Bruno	558189873832@s.whatsapp.net	2025-06-24 00:00:00	Cabelo+Barba
ec25af88-fc5b-4005-b652-a54ab6e344d3	2025-06-25 00:00:00	09:00	Joaquim gonzalo	Bruno	local	2025-06-24 11:05:25.186	Cabelo
53054566-fc9c-4b8d-b7bd-e2cf791c00ac	2025-06-24 00:00:00	16:40	Marcado 	Wallyson	local	2025-06-24 11:57:17.602	Cabelo
96803957-79bd-4147-a696-8421574856b8	2025-06-26 00:00:00	16:00	matheus lima	Bruno	558199670970@s.whatsapp.net	2025-06-24 00:00:00	Cabelo+Sobrancelha
56ae1d6d-120a-432b-a49c-90300c7e62cc	2025-06-25 00:00:00	13:20	gustavo fiel romão da silva	Wallyson	558197822298@s.whatsapp.net	2025-06-24 00:00:00	Cabelo
da0b599a-aa17-41c2-ade7-f1b78fb230a4	2025-06-25 00:00:00	14:00	thiago fiel romão da silva	Wallyson	558197822298@s.whatsapp.net	2025-06-24 00:00:00	Cabelo
980ecf46-6285-4009-b547-cea3568643ca	2025-06-26 00:00:00	10:20	matheus	Bruno	558199219447@s.whatsapp.net	2025-06-24 00:00:00	Cabelo
e750956a-4679-4052-ae05-4e9d1d236bd9	2025-06-25 00:00:00	18:00	Ademir 	Wallyson	local	2025-06-24 16:58:56.201	Cabelo
b9ff9a54-9cc1-49d8-a017-e9e61b8cb6dd	2025-06-25 00:00:00	16:00	Nicolas 	Wallyson	local	2025-06-24 17:35:23.165	Cabelo
f2e6b155-9c81-440c-bed0-00c0804bc18d	2025-06-25 00:00:00	14:40	victor scanone	Bruno	558197607060@s.whatsapp.net	2025-06-24 00:00:00	Cabelo
a4ace9df-f925-47cd-80c8-8815fb390dc5	2025-06-27 00:00:00	17:20	lucas josé	Bruno	558199311183@s.whatsapp.net	2025-06-24 00:00:00	Cabelo+Sobrancelha
f5f0c840-682a-44ef-8ddf-6e1cf3313432	2025-06-26 00:00:00	14:40	marcos rodrigues	Bruno	558196681292@s.whatsapp.net	2025-06-24 00:00:00	Cabelo
5f489df7-6e5d-4af7-bc40-0fb811b14039	2025-06-25 00:00:00	14:40	ronnye	Wallyson	558198353903@s.whatsapp.net	2025-06-24 00:00:00	Cabelo
1966b6c4-b189-4768-8cf1-f051d0ccf6ee	2025-06-27 00:00:00	19:20	denílson	Bruno	558197084296@s.whatsapp.net	2025-06-24 00:00:00	Barba
b22ecd94-a385-43e6-a5e9-574c3a503977	2025-06-28 00:00:00	10:00	0	Bruno	558199700555@s.whatsapp.net	2025-06-24 00:00:00	Cabelo
96e8c8ed-eef3-4350-9489-fd259964a28c	2025-06-28 00:00:00	10:00	0	Wallyson	558199700555@s.whatsapp.net	2025-06-24 00:00:00	Cabelo
fb72cccf-07c9-4731-831c-fa1efadb27cf	2025-06-27 00:00:00	18:40	Indisponivel	Wallyson	Indisponivel	2025-06-24 22:25:08.588	
4b42f0a2-b2bb-4dee-bf5d-1f7807196da5	2025-06-27 00:00:00	19:20	Indisponivel	Wallyson	Indisponivel	2025-06-24 22:25:08.692	
ec37b797-4933-482a-90b4-ee68c666723c	2025-06-27 00:00:00	20:00	Indisponivel	Wallyson	Indisponivel	2025-06-24 22:25:08.727	
3bbd7c84-89bc-4a8b-8b98-381d12940ada	2025-06-27 00:00:00	18:00	Wendel 	Wallyson	local	2025-06-24 22:25:38.766	Cabelo
a1226bf1-3488-4b78-9994-ea25818d6d98	2025-06-27 00:00:00	11:20	felipe	Wallyson	558181451150@s.whatsapp.net	2025-06-24 00:00:00	Cabelo+Sobrancelha
04e4a234-9aa4-4b54-b60f-cf23efeb973a	2025-06-27 00:00:00	20:00	pedro henrique	Bruno	558199160082@s.whatsapp.net	2025-06-24 00:00:00	Cabelo
90df2678-dfea-43b9-81ed-6327410fa448	2025-06-26 00:00:00	17:20	enzo alexandre lima	Wallyson	558184998670@s.whatsapp.net	2025-06-24 00:00:00	Cabelo+Sobrancelha
3b689898-ea0d-4ed4-8fe3-df44e0db0885	2025-06-28 00:00:00	08:40	cláudio henrique	Wallyson	558188482085@s.whatsapp.net	2025-06-24 00:00:00	Cabelo
8f9f664c-16f7-4b13-91fc-d9837f41240b	2025-06-25 00:00:00	10:20	Itami 	Bruno	local	2025-06-25 10:39:33.26	Cabelo
1e54a347-116f-43ee-a5cf-7c17e2b2e431	2025-06-26 00:00:00	16:40	Paulo 	Wallyson	local	2025-06-25 11:35:11.681	Cabelo
d41e3513-c44e-4601-afb4-5bd94fae3fa5	2025-06-26 00:00:00	08:00	Luís André 	Wallyson	local	2025-06-25 11:42:53.841	Cabelo
9921724c-926e-4bca-b986-4f6da4832063	2025-06-26 00:00:00	18:40	Eudes 	Wallyson	local	2025-06-25 13:05:07.463	Cabelo+Barba
99611e26-c5a7-4f11-ace1-44f30886bd4e	2025-06-26 00:00:00	10:00	Adegilson 	Wallyson	local	2025-06-25 13:13:14.685	Cabelo
ce92b219-1a40-49c8-8715-f19d87c3450b	2025-06-25 00:00:00	18:00	Ocupado	Bruno	local	2025-06-25 13:39:26.25	Cabelo
19a38dd4-8566-4bb8-ad05-d4607483dfce	2025-06-27 00:00:00	08:40	fernando correia da silva	Wallyson	558199732471@s.whatsapp.net	2025-06-25 00:00:00	Cabelo
eb6e7f8e-d118-476b-82cf-ce2ea110f9b0	2025-06-27 00:00:00	09:20	welliton	Wallyson	558199732471@s.whatsapp.net	2025-06-25 00:00:00	Cabelo
7a0f7e3f-a133-49ac-beac-88c09308cf09	2025-06-25 00:00:00	14:00	eliel	Bruno	558199867389@s.whatsapp.net	2025-06-25 00:00:00	Cabelo
18ef9479-4bf4-41a6-b957-c431828122a6	2025-06-26 00:00:00	11:40	thomas	Bruno	558181391720@s.whatsapp.net	2025-06-25 00:00:00	Cabelo
ec57003f-0c2c-4271-a621-351fe7324a3e	2025-06-26 00:00:00	09:40	Ivan 	Bruno	local	2025-06-25 18:09:47.564	Cabelo
2ccf8f8e-9b0d-4210-91d5-dc5ff91b2926	2025-06-26 00:00:00	16:00	Liaderson 	Wallyson	local	2025-06-25 19:01:58.776	Cabelo
004721de-de21-44af-97c4-b76b3cb72953	2025-06-26 00:00:00	15:20	nando	Wallyson	558181323380@s.whatsapp.net	2025-06-25 00:00:00	Cabelo
1e031851-5cb7-4b2f-b45f-e941c6868fe1	2025-06-28 00:00:00	10:40	fábio cria	Bruno	5521980058628@s.whatsapp.net	2025-06-25 00:00:00	Cabelo
6cca26e9-9e14-49e3-8e33-1680187eab48	2025-06-27 00:00:00	15:20	Rivaldo 	Wallyson	local	2025-06-25 19:53:32.575	Cabelo
c611943c-6511-4b31-9182-3f1a9c16ea5c	2025-06-26 00:00:00	08:40	Marcelo 	Wallyson	local	2025-06-25 19:54:44.71	Cabelo
85dbdacf-97a6-4588-9c0e-a4991a5aa60a	2025-06-27 00:00:00	17:20	Liaderson 	Wallyson	local	2025-06-25 19:55:30.548	Cabelo
4d88cd87-7fb1-4858-acfd-f9c83d5c7151	2025-06-28 00:00:00	08:00	douglas wesley	Bruno	558181954284@s.whatsapp.net	2025-06-25 00:00:00	Cabelo
7aaba1c6-167e-427b-9798-f2b98d8835ed	2025-06-28 00:00:00	14:00	joão guilherme	Bruno	558192101006@s.whatsapp.net	2025-06-25 00:00:00	Cabelo
ed3742fb-9f58-417d-89e5-4598a05fdbbb	2025-06-26 00:00:00	13:20	lucas rafael	Bruno	558197593200@s.whatsapp.net	2025-06-25 00:00:00	Cabelo
39f19c2d-9d07-4ad4-85b5-22419d2514e7	2025-07-03 00:00:00	17:20	george luiz	Bruno	558198592917@s.whatsapp.net	2025-06-25 00:00:00	Cabelo
671c7a40-e3c2-418c-8595-b70b7dc9f09a	2025-06-30 00:00:00	11:00	fernando	Bruno	558196035269@s.whatsapp.net	2025-06-25 00:00:00	Cabelo
8916ca26-defc-4138-b22b-d3c2bef9d951	2025-06-27 00:00:00	10:00	john	Wallyson	558196903604@s.whatsapp.net	2025-06-25 00:00:00	Cabelo+Barba
66cfcc2b-bc09-42e2-93fa-8790370dec92	2025-06-26 00:00:00	11:00	kleyton	Bruno	558198744016@s.whatsapp.net	2025-06-26 00:00:00	Cabelo
f906aa48-ee9a-403a-98c0-f13e55282021	2025-06-26 00:00:00	09:00	lucas	Bruno	558183567967@s.whatsapp.net	2025-06-26 00:00:00	Cabelo
a7f12bbe-0db4-4c26-b14e-e92469c6d8bf	2025-06-26 00:00:00	15:20	romerio	Bruno	558198627331@s.whatsapp.net	2025-06-26 00:00:00	Cabelo+Barba
71af36f7-1648-4dcb-80a3-31568c85d2a9	2025-06-28 00:00:00	16:00	antonio	Bruno	558799676551@s.whatsapp.net	2025-06-26 00:00:00	Barba
a6a4d964-8c86-4b14-9c42-618cb79016ce	2025-06-26 00:00:00	13:20	gerdo	Wallyson	558196275453@s.whatsapp.net	2025-06-26 00:00:00	Barba
2a73afde-b23e-4af4-98b2-e61f02ab3c76	2025-06-30 00:00:00	14:00	nilton e arthur	Bruno	558199442297@s.whatsapp.net	2025-06-26 00:00:00	Cabelo
d0afd3fb-9192-4cb7-9c5e-27d6977389f9	2025-06-28 00:00:00	09:20	leonardo	Bruno	558196987419@s.whatsapp.net	2025-06-26 00:00:00	Cabelo
26d83aab-5c2b-4d5c-9f24-c8c9ea12f7ac	2025-06-28 00:00:00	10:40	matheus  vinicius	Wallyson	558192338346@s.whatsapp.net	2025-06-26 00:00:00	Cabelo
173060a4-00f2-48bd-956a-d42d1382ed6d	2025-06-26 00:00:00	14:40	vandinho	Wallyson	558197042471@s.whatsapp.net	2025-06-26 00:00:00	Cabelo
4442866d-d88c-4d33-a6c9-363f8930536b	2025-06-28 00:00:00	11:20	calebe	Bruno	558196987419@s.whatsapp.net	2025-06-26 00:00:00	Cabelo
1feb5e80-e190-4990-b09a-8430c2246e47	2025-07-04 00:00:00	08:40	thiago vinicius	Wallyson	558199044022@s.whatsapp.net	2025-06-26 00:00:00	Cabelo
f700aa9a-2ee7-44d9-8b64-f033a7b328d1	2025-06-28 00:00:00	12:00	romildo	Bruno	558199796225@s.whatsapp.net	2025-06-26 00:00:00	Cabelo
c82692e5-8a6b-4b69-8705-5bac9c2c031b	2025-06-28 00:00:00	17:20	robert fernando	Bruno	558187830953@s.whatsapp.net	2025-06-26 00:00:00	Cabelo
5eda5731-ed52-40ee-a6b6-660397e36bc3	2025-06-27 00:00:00	14:00	josé rafael	Wallyson	558199670797@s.whatsapp.net	2025-06-26 00:00:00	Cabelo
1478832f-4b1a-4f8b-ac3b-957c5b06fe52	2025-06-27 00:00:00	13:20	alan elias	Wallyson	558182284289@s.whatsapp.net	2025-06-26 00:00:00	Cabelo
6620d683-ad59-4da2-b49c-9b9e6a686afa	2025-06-27 00:00:00	14:40	Gabriel 	Wallyson	local	2025-06-27 11:17:33.912	Cabelo
cbd049e8-b11c-42af-a508-5a77fd6a43aa	2025-07-05 00:00:00	16:00	ryan valério	Bruno	558181779060@s.whatsapp.net	2025-06-27 00:00:00	Cabelo+Barba
048357da-3788-471b-908c-a13b07e6e962	2025-07-04 00:00:00	16:00	Wellington 	Wallyson	local	2025-06-27 13:14:09.002	Cabelo
3124b9e5-e5f3-4b47-87b4-fd3be93a909f	2025-07-14 00:00:00	09:00	joaquim barbosa	Wallyson	558181603996@s.whatsapp.net	2025-06-27 00:00:00	Cabelo
05eecbd4-164b-40ca-bed2-2488825b532c	2025-06-28 00:00:00	09:20	jorge	Wallyson	558199658478@s.whatsapp.net	2025-06-27 00:00:00	Cabelo+Sobrancelha
0eaa0efc-6b66-4ad5-95bb-9933c39763c6	2025-06-27 00:00:00	16:40	davi	Wallyson	558197232916@s.whatsapp.net	2025-06-27 00:00:00	Cabelo
8c13ae4d-0660-4fc7-80ee-a38bd4693a80	2025-07-04 00:00:00	13:20	Paulinho 	Wallyson	local	2025-06-27 18:01:31.542	Acabamento (Pezinho)
535fa825-0192-4c9f-809d-261ae2eef074	2025-06-28 00:00:00	08:00	Gabriel 	Wallyson	local	2025-06-27 18:02:04.384	Cabelo
2fe56c46-7b4a-40d3-a108-e1754e0db98f	2025-07-05 00:00:00	09:20	rhyan	Bruno	558196672733@s.whatsapp.net	2025-06-27 00:00:00	Cabelo
8b7377d6-8b35-4b23-bbc8-f86dcdccdbc4	2025-06-30 00:00:00	14:40	adriel gomes	Bruno	558196649167@s.whatsapp.net	2025-06-28 00:00:00	Cabelo+Barba
294ad6c6-90c8-49b1-87a0-f1de0c80788f	2025-06-28 00:00:00	16:40	Zaldinho	Bruno	local	2025-06-28 12:29:41.597	Cabelo
02094932-ad8c-4541-9dd5-d2e717a790d2	2025-06-28 00:00:00	13:20	natacha	Wallyson	558197947166@s.whatsapp.net	2025-06-28 00:00:00	Cabelo
ef0db8d1-875c-488a-a56c-7c2fe92adb05	2025-06-28 00:00:00	12:00	Marcado 	Wallyson	local	2025-06-28 14:53:41.547	Cabelo
f982e411-cb41-4565-90c1-24cacc7a3864	2025-06-30 00:00:00	09:40	Indisponivel	Bruno	Indisponivel	2025-06-28 14:57:42.186	
86ac9769-3706-4457-a895-7d7844d1f205	2025-06-30 00:00:00	10:20	Indisponivel	Bruno	Indisponivel	2025-06-28 14:57:42.244	
dea4a65a-7d0a-4193-ac36-0e808f2a6477	2025-06-30 00:00:00	11:00	Indisponivel	Bruno	Indisponivel	2025-06-28 14:57:42.273	
95d5400b-778d-4564-9091-0401f8d826e2	2025-06-30 00:00:00	11:40	Indisponivel	Bruno	Indisponivel	2025-06-28 14:57:42.304	
c02f647f-fe5b-4a0b-9a55-e849c03f0683	2025-06-28 00:00:00	18:00	Rafael farmácia 	Wallyson	local	2025-06-28 18:20:18.359	Cabelo
ddbebd50-f0a4-4b5f-9ed1-6bc859b22047	2025-07-01 00:00:00	15:20	Gabriel Lima 	Wallyson	local	2025-06-28 18:37:23.18	Cabelo
315b45e6-02f2-4d91-b9f4-0c38857ada04	2025-06-28 00:00:00	17:20	Marcado 	Wallyson	local	2025-06-28 18:37:47.582	Cabelo
93295f20-794a-412b-a71f-b7f7a26b8ab1	2025-06-30 00:00:00	16:40	antônio henrique	Bruno	558197083657@s.whatsapp.net	2025-06-28 00:00:00	Cabelo+Sobrancelha
6e33dab5-1341-4b8d-a02a-35e2cb17ac4b	2025-06-30 00:00:00	11:00	ruan	Wallyson	558199445445@s.whatsapp.net	2025-06-28 00:00:00	Cabelo
a60fbf7f-dbb9-480d-9db0-a4c6af420d6d	2025-06-30 00:00:00	11:40	murilo	Wallyson	558199445445@s.whatsapp.net	2025-06-28 00:00:00	Cabelo
46df9136-b32f-40a7-866a-385a0af1173c	2025-07-05 00:00:00	16:40	heytor	Bruno	558197714625@s.whatsapp.net	2025-06-29 00:00:00	Cabelo+Barba
7c01e5d7-daf4-4f6c-86ca-4a92c0890492	2025-06-30 00:00:00	09:40	Jorge	Wallyson	local	2025-06-29 15:06:10.751	Cabelo
b31d9e80-4f35-4cbe-bc99-f5840d800ff4	2025-07-05 00:00:00	14:00	Filho Júnior Snata Maria 	Bruno	local	2025-06-29 15:10:12.061	Cabelo
5b55544c-19c9-43ed-b11e-8309afe1a56a	2025-06-30 00:00:00	16:40	kaue	Wallyson	558199937689@s.whatsapp.net	2025-06-29 00:00:00	Cabelo+Sobrancelha
f08831f7-4d21-4014-8f6e-56de1e603acf	2025-06-30 00:00:00	18:40	felipe	Bruno	558198734964@s.whatsapp.net	2025-06-29 00:00:00	Cabelo+Barba
00cc5f32-8fa8-4093-b917-0f827a70d9b6	2025-07-02 00:00:00	18:40	edson	Wallyson	558182524811@s.whatsapp.net	2025-06-29 00:00:00	Cabelo
f9ed6c8b-1014-4ddb-9544-a4fea1be104e	2025-07-07 00:00:00	16:40	gláucio	Wallyson	558187255411@s.whatsapp.net	2025-06-29 00:00:00	Cabelo
37afb55f-8f31-4f4c-ad23-09b6c74e916c	2025-07-02 00:00:00	09:00	Mãe de Igor marcou	Bruno	local	2025-06-29 22:06:57.27	Cabelo
e450af30-c0ec-4ad8-a14d-2693fc54b243	2025-07-02 00:00:00	09:40	Mãe de Igor marcou 9095	Bruno	local	2025-06-29 22:07:50.411	Cabelo
42099db7-e1f0-4582-bd91-0d840de76687	2025-06-30 00:00:00	15:20	victor alexandre	Bruno	558197610116@s.whatsapp.net	2025-06-29 00:00:00	Cabelo+Sobrancelha
3653fcbb-5e6b-423d-be10-90bc8cf64165	2025-06-30 00:00:00	16:00	mauricio	Bruno	558182705181@s.whatsapp.net	2025-06-29 00:00:00	Cabelo
6c7cfc2a-2863-4260-9243-26dde0400873	2025-07-02 00:00:00	10:20	arthur	Bruno	558194115511@s.whatsapp.net	2025-06-30 00:00:00	Barba
87747088-bc16-4957-86be-138e58a61c0d	2025-07-01 00:00:00	11:40	joão correia	Bruno	558182601936@s.whatsapp.net	2025-06-30 00:00:00	Cabelo
f8462109-6bd1-4072-93e8-7a59b484681f	2025-06-30 00:00:00	13:20	kellinghton	Bruno	558195330370@s.whatsapp.net	2025-06-30 00:00:00	Cabelo+Barba
17e134eb-d5af-4e2d-ada1-ea788ac9f4f8	2025-06-30 00:00:00	18:40	Robson 	Wallyson	local	2025-06-30 12:27:22.712	Cabelo
7daeaf79-aa34-4891-ac06-ccb4ef9906f4	2025-07-01 00:00:00	14:00	Eraldo	Wallyson	local	2025-06-30 12:31:14.357	Cabelo+Barba
af02e91e-82aa-4b36-85f6-0211c80b0949	2025-07-01 00:00:00	14:40	Heitor 	Wallyson	local	2025-06-30 12:31:28.721	Cabelo
4dc114bd-3b24-48ac-9f99-fc8602362d65	2025-06-30 00:00:00	18:00	Robson 	Wallyson	local	2025-06-30 13:25:29.317	Cabelo
48cf6daa-5d0d-4fff-8b86-61cd60400fc6	2025-07-03 00:00:00	18:00	cláudio videogames	Bruno	558197279446@s.whatsapp.net	2025-06-30 00:00:00	Cabelo
1fb58836-c5c4-46f6-878b-dfc9b058fa32	2025-07-05 00:00:00	17:20	kaique roberto	Bruno	558194270364@s.whatsapp.net	2025-06-30 00:00:00	Cabelo
d92b086e-0486-44c1-a85a-d2ef77d773c9	2025-07-05 00:00:00	17:20	lucas vinicius	Wallyson	558194270364@s.whatsapp.net	2025-06-30 00:00:00	Cabelo
f6c45f29-c7b0-4da4-b677-3c1755de9723	2025-07-02 00:00:00	08:40	joão lucas	Wallyson	558198783426@s.whatsapp.net	2025-06-30 00:00:00	Cabelo
520cc583-0bab-4a09-b576-c7f3b42ece95	2025-06-30 00:00:00	15:20	Rafael 	Wallyson	local	2025-06-30 14:58:21.112	Cabelo+Barba
8345744f-e0a0-4147-9291-e2adaea2cd02	2025-06-30 00:00:00	17:20	eduardo	Bruno	558198079679@s.whatsapp.net	2025-06-30 00:00:00	Cabelo
1cda61a3-e121-4e71-b500-3f1a4823812b	2025-07-03 00:00:00	14:00	Gabriel 	Wallyson	local	2025-06-30 15:48:23.301	Cabelo
dbc59b45-e4ec-4ec7-9cc4-b08cc4574fed	2025-07-01 00:00:00	16:00	Pedro 	Bruno	local	2025-06-30 15:49:30.564	Cabelo
ccebfea8-f928-4280-b08b-d95759937467	2025-07-01 00:00:00	16:40	Pedro luzes 	Bruno	local	2025-06-30 15:49:47.708	Cabelo
b7041e12-ee21-492c-9f68-1582f7e37a20	2025-06-30 00:00:00	16:00	Marcado 	Wallyson	local	2025-06-30 16:07:11.804	Cabelo
b6d704c4-6f9b-4c7a-87f3-d3c5aba4f4d9	2025-07-05 00:00:00	12:00	alex	Bruno	558198874006@s.whatsapp.net	2025-06-30 00:00:00	Cabelo+Barba
88b9646d-b3d5-48ac-a7bf-dc9a73701a23	2025-07-02 00:00:00	14:00	ismael	Bruno	558199824318@s.whatsapp.net	2025-06-30 00:00:00	Cabelo
25fe4688-2aac-4c6f-a95d-0d1a524c7b4d	2025-07-01 00:00:00	13:20	Zé neto 	Wallyson	local	2025-06-30 17:03:12.638	Cabelo
4c8ecc0d-244b-4d81-a7d3-428c1e2bc6b2	2025-07-01 00:00:00	14:00	davi	Bruno	558173448482@s.whatsapp.net	2025-06-30 00:00:00	Cabelo
4fd96256-bc1d-4cb8-b3d2-89dd9e9e9823	2025-07-02 00:00:00	18:00	denílson	Bruno	558197084296@s.whatsapp.net	2025-06-30 00:00:00	Cabelo+Barba
4121c0b6-a8b5-464c-8b91-7ea2e4543b69	2025-07-16 00:00:00	16:00	Samuel 	Wallyson	local	2025-07-05 16:15:06	Cabelo
16c61e9b-a777-4f60-84ae-3f8e15e4d415	2025-07-09 00:00:00	16:00	Samuel 	Wallyson	local	2025-07-05 16:24:51.705	Cabelo
039a9a9b-cd7c-4f48-9715-c8bb62fd1a8f	2025-07-04 00:00:00	20:00	joão danielson	Bruno	558196702254@s.whatsapp.net	2025-06-30 00:00:00	Cabelo+Barba
e3330120-fea2-4494-9433-c39c684c2c83	2025-07-05 00:00:00	14:40	adeilson	Bruno	558182086614@s.whatsapp.net	2025-06-30 00:00:00	Cabelo
32a9432f-3ec9-4f9c-9a4c-1178dd562482	2025-07-05 00:00:00	15:20	arthur	Bruno	558182086614@s.whatsapp.net	2025-06-30 00:00:00	Cabelo
1ec5dc48-55aa-4666-a4f2-2e03db8d818c	2025-07-01 00:00:00	19:20	capacete	Bruno	558198471608@s.whatsapp.net	2025-06-30 00:00:00	Cabelo
78c9accb-794e-43ca-ab7e-b330b99f291c	2025-07-12 00:00:00	08:00	luan	Bruno	558185889249@s.whatsapp.net	2025-06-30 00:00:00	Cabelo+Barba
8a60b339-fd10-419b-8a3c-e544e2f52eed	2025-07-01 00:00:00	18:40	Kayke	Wallyson	local	2025-06-30 21:45:13.555	Cabelo
b58b3a38-2b0f-4dc8-a09c-2fa23963f05b	2025-07-04 00:00:00	15:20	fernando	Bruno	558199817133@s.whatsapp.net	2025-06-30 00:00:00	Cabelo
3f571c28-05b4-4b0d-9519-a4b06e71676b	2025-07-03 00:00:00	14:00	marcel aguiar	Bruno	558198490038@s.whatsapp.net	2025-06-30 00:00:00	Cabelo+Barba
6715ff37-e66c-4efd-a34f-94bdc9086c58	2025-07-03 00:00:00	14:40	joao vitor souto	Bruno	558198490038@s.whatsapp.net	2025-06-30 00:00:00	Cabelo
92e10ce7-a39c-454a-8670-956cc07987f3	2025-07-01 00:00:00	17:20	joão rommel	Bruno	558182224217@s.whatsapp.net	2025-07-01 00:00:00	Cabelo
33f86819-5350-4136-8920-3a74cabf9f7c	2025-07-01 00:00:00	09:00	anthony rodrigues	Bruno	558199046289@s.whatsapp.net	2025-07-01 00:00:00	Cabelo+Sobrancelha
2ecf3dbf-d7b0-41af-a417-ca94a52b153f	2025-07-01 00:00:00	10:20	anthony rodrigues	Bruno	558199046289@s.whatsapp.net	2025-07-01 00:00:00	Cabelo
3079bf77-7993-41f2-bc97-c3e4d78ae90c	2025-07-04 00:00:00	08:00	eudes fera	Wallyson	558184793136@s.whatsapp.net	2025-07-01 00:00:00	Cabelo
86f208c7-684e-41b8-a404-db6b3217bb03	2025-07-01 00:00:00	16:00	juininho	Wallyson	558194082765@s.whatsapp.net	2025-07-01 00:00:00	Cabelo
aa815025-9373-4a46-bee6-7268d561d888	2025-07-01 00:00:00	18:00	ryan	Wallyson	5511959620317@s.whatsapp.net	2025-07-01 00:00:00	Cabelo+Sobrancelha
a82b952b-1867-4fd9-bd34-65f990b64d72	2025-07-01 00:00:00	14:40	pedro pimentel	Bruno	558192919702@s.whatsapp.net	2025-07-01 00:00:00	Cabelo
ab85ed5b-de97-45af-87b0-3c677ea9fc02	2025-07-02 00:00:00	18:00	daniel	Wallyson	558199459046@s.whatsapp.net	2025-07-01 00:00:00	Cabelo
3baa2a30-165d-421a-859c-654ed2fbd1b9	2025-07-04 00:00:00	11:00	matheus	Bruno	558197941830@s.whatsapp.net	2025-07-01 00:00:00	Cabelo
695a8b33-1df7-47ec-ad9c-aed1e5e08388	2025-07-01 00:00:00	18:00	Luquinhas	Bruno	local	2025-07-01 15:01:26.647	Cabelo
90ea0fa8-3e7a-49a0-b7fc-1bdc26645b5c	2025-07-02 00:00:00	18:40	Alyson free shopping 	Bruno	local	2025-07-01 15:02:00.088	Cabelo
700e4471-c49b-498c-9f75-ae4bcd9eac70	2025-07-04 00:00:00	18:00	Alyson free shopping 	Bruno	local	2025-07-01 15:11:19.959	Cabelo+Barba
28648705-f441-41c3-9013-6af5d2209163	2025-07-02 00:00:00	11:00	marcos queiroz	Bruno	558181473848@s.whatsapp.net	2025-07-01 00:00:00	Cabelo
e1b961bc-b0bb-4e8b-9c27-2fbd67a497a2	2025-07-04 00:00:00	19:20	daniel queiroz	Bruno	558181473848@s.whatsapp.net	2025-07-01 00:00:00	Cabelo
e567c837-fe9b-49dc-a437-2cf4af157d2a	2025-07-02 00:00:00	10:00	Tierry 	Wallyson	local	2025-07-01 16:24:10.454	Cabelo
d3264925-9b57-49fd-86ec-3b0ce2f648aa	2025-07-01 00:00:00	17:20	Felipe 	Wallyson	local	2025-07-01 16:27:33.015	Cabelo+Barba
0068fdaf-eb59-40dd-9b6f-f5a0c5218f0f	2025-07-05 00:00:00	16:00	Júnior 	Wallyson	local	2025-07-01 16:27:58.854	Barba
c3125896-cbc8-43ed-a1d6-9a46cb51e050	2025-07-02 00:00:00	13:20	Zé neto 	Wallyson	local	2025-07-01 16:47:24.958	Cabelo
a8d2cb7f-62e9-4bd4-bf09-2e647ae1a623	2025-07-05 00:00:00	11:20	miguel cabral	Bruno	558196537955@s.whatsapp.net	2025-07-01 00:00:00	Cabelo
fffdf070-fa01-4946-99ca-b0fc192ebe21	2025-07-01 00:00:00	18:40	livio	Bruno	558195436268@s.whatsapp.net	2025-07-01 00:00:00	Cabelo+Barba
f98665cc-9a3d-4e0f-837e-3c52567add70	2025-07-05 00:00:00	10:00	Heraldo	Bruno	local	2025-07-01 18:49:29.763	Barba
1ffb9297-8ce1-4ed9-90e2-e0d43fcbe25d	2025-07-05 00:00:00	08:40	raisse jaqueline ferreira barbosa	Bruno	558193721197@s.whatsapp.net	2025-07-01 00:00:00	Cabelo
ebb61873-5de1-487d-99fd-c3b0bd2b009d	2025-07-03 00:00:00	15:20	Felipe botox	Bruno	local	2025-07-01 20:54:04.885	Cabelo
43e340f6-34b5-4445-bff6-4c5cb6730ef5	2025-07-10 00:00:00	17:20	keven	Bruno	558189774392@s.whatsapp.net	2025-07-01 00:00:00	Cabelo+Sobrancelha
47586f1c-363d-409a-ae25-b15e56d97516	2025-07-02 00:00:00	17:20	wellington fonseca	Bruno	558198022472@s.whatsapp.net	2025-07-01 00:00:00	Cabelo
72443aaf-d2b7-4f54-bcc7-b052821809b9	2025-07-05 00:00:00	08:00	pedro	Wallyson	40166651633741@lid	2025-07-01 00:00:00	Cabelo
50a05773-187e-4043-8b18-22f2cd883f5e	2025-07-04 00:00:00	18:40	emídio	Bruno	558181606802@s.whatsapp.net	2025-07-01 00:00:00	Cabelo
df391d09-2049-41a4-adf5-5668394ad6a6	2025-07-03 00:00:00	14:40	Hiago 	Wallyson	local	2025-07-01 23:09:09.378	Cabelo
24565cd5-18fb-48eb-971b-46cd252f7ff9	2025-07-03 00:00:00	09:00	bruno	Bruno	558197349442@s.whatsapp.net	2025-07-01 00:00:00	Cabelo
8e0e0dc2-5b41-4f2b-97ab-cbf48272dbcb	2025-07-03 00:00:00	09:20	márcio	Wallyson	558197349442@s.whatsapp.net	2025-07-01 00:00:00	Cabelo
408ae9cc-f29b-46a1-a15d-034d7a4d992d	2025-07-02 00:00:00	15:20	alysson	Wallyson	558195985705@s.whatsapp.net	2025-07-01 00:00:00	Cabelo
4f816ce2-4dd2-4b99-8a43-f0be336887d5	2025-07-03 00:00:00	11:00	carlos henrique	Bruno	558196639360@s.whatsapp.net	2025-07-02 00:00:00	Cabelo+Barba
99c511f7-c4a6-4a01-bfd3-427cb59daf79	2025-07-05 00:00:00	08:40	Raisss Jaqueline 	Wallyson	local	2025-07-02 10:24:57.913	Cabelo
f15bdbe6-91a6-4f43-bfc7-5b01d146e3c6	2025-07-18 00:00:00	18:40	roberto guedes	Bruno	558198028971@s.whatsapp.net	2025-07-02 00:00:00	Cabelo
175cc080-385b-4443-b58f-79afa7954687	2025-08-09 00:00:00	15:20	roberto guedes	Bruno	558198028971@s.whatsapp.net	2025-07-02 00:00:00	Cabelo
824549f9-797a-4f4e-963e-2adae8da5438	2025-08-30 00:00:00	15:20	roberto guedes	Bruno	558198028971@s.whatsapp.net	2025-07-02 00:00:00	Cabelo
7d466fee-c63f-45df-8b7b-f0879fc2d407	2025-10-04 00:00:00	12:00	roberto guedes	Bruno	558198028971@s.whatsapp.net	2025-07-02 00:00:00	Cabelo
e78296c6-2b55-4a55-a664-8e45b28fd630	2025-07-02 00:00:00	11:40	Leonardo	Bruno	local	2025-07-02 10:51:33.161	Cabelo
cc34fbe4-7052-4e2d-9fc3-bae4012ee6d2	2025-07-02 00:00:00	13:20	Alex	Bruno	local	2025-07-02 10:54:41.289	Cabelo+Barba
7bdb723b-df01-4a00-aab5-1716f0d530a9	2025-07-02 00:00:00	14:40	Alex prog	Bruno	local	2025-07-02 10:55:20.74	Cabelo
0940d605-1bd6-472b-9cf4-957784697f5e	2025-07-02 00:00:00	15:20	Flavio 	Bruno	local	2025-07-02 13:21:46.067	Cabelo
b38abc3c-a15d-4db8-87a7-86931f585459	2025-07-03 00:00:00	18:40	Fabrício 	Wallyson	local	2025-07-02 13:57:08.923	Cabelo
75345281-344b-459e-8279-2faeac68ff81	2025-07-02 00:00:00	16:40	nicolas nóbrega	Bruno	558195411441@s.whatsapp.net	2025-07-02 00:00:00	Cabelo
3d1ab06a-d2b3-44bc-b07f-73ad83d7e67e	2025-07-04 00:00:00	09:40	josivaldo gomes	Bruno	558196887942@s.whatsapp.net	2025-07-02 00:00:00	Cabelo
6418f49a-4ed9-4d06-b0d5-eff44525c9af	2025-07-12 00:00:00	10:00	davi	Bruno	558197570874@s.whatsapp.net	2025-07-02 00:00:00	Cabelo+Sobrancelha
02ec0d48-fb40-4afc-9f99-b9c2948ac63f	2025-07-02 00:00:00	14:00	Seu Daniel 	Wallyson	local	2025-07-02 16:30:41.475	Cabelo
1b8dfc74-c904-401e-a78f-18a354ec3b8c	2025-07-03 00:00:00	16:00	pedro henrique	Bruno	558198446899@s.whatsapp.net	2025-07-02 00:00:00	Cabelo
4e10f003-e20e-4f66-b12a-9fedeb2c93f7	2025-07-03 00:00:00	13:20	Gelson 	Wallyson	local	2025-07-02 17:27:29.268	Cabelo
6158e323-29e4-4bbe-b27e-ff88edb7d86f	2025-07-02 00:00:00	16:00	Marcado 	Bruno	local	2025-07-02 17:29:38.055	Cabelo
5d9cdb12-abe2-403d-95e2-dc38fa0de03e	2025-07-04 00:00:00	16:40	josé júnior de souza	Bruno	558195772244@s.whatsapp.net	2025-07-02 00:00:00	Cabelo
348bca91-2f66-4ac0-b988-db22039d2087	2025-07-04 00:00:00	19:20	samuel	Wallyson	558196448583@s.whatsapp.net	2025-07-02 00:00:00	Cabelo
c3b07ebb-f16a-4c4c-a1c4-69ddd74de4fe	2025-07-03 00:00:00	15:20	joaquim	Wallyson	558196348765@s.whatsapp.net	2025-07-02 00:00:00	Cabelo
d7fa5801-178c-4b96-afc6-34bc0b2990ee	2025-07-04 00:00:00	09:00	joão campos	Bruno	558196073970@s.whatsapp.net	2025-07-02 00:00:00	Cabelo+Barba
c33da11f-f2db-437e-bb66-d80ec04f8cc4	2025-07-04 00:00:00	17:20	fillipe	Bruno	558192151856@s.whatsapp.net	2025-07-02 00:00:00	Cabelo+Sobrancelha
ab29110a-3ab3-4e10-9191-08ed5460f8ea	2025-07-04 00:00:00	17:20	alexsander	Wallyson	558199337045@s.whatsapp.net	2025-07-02 00:00:00	Cabelo
bf6b32e0-87a7-4160-9bd1-f60532db373d	2025-07-03 00:00:00	16:40	arthur sales	Bruno	558197065270@s.whatsapp.net	2025-07-02 00:00:00	Cabelo+Sobrancelha
1cf97a3a-0213-40f9-af69-e643985ac910	2025-07-10 00:00:00	11:40	sid	Bruno	558191536718@s.whatsapp.net	2025-07-02 00:00:00	Cabelo+Barba
9ea892c1-2781-476b-898d-fd5e309a3f09	2025-07-04 00:00:00	14:00	kayke	Wallyson	558197180683@s.whatsapp.net	2025-07-02 00:00:00	Cabelo+Barba
f3456ec0-8965-47f7-89f0-d64c504f0bae	2025-07-03 00:00:00	08:40	francisco	Wallyson	558182062970@s.whatsapp.net	2025-07-02 00:00:00	Cabelo
f8176644-4347-4d02-9352-745a43d0f23d	2025-07-05 00:00:00	10:40	joão victor	Bruno	558196049253@s.whatsapp.net	2025-07-02 00:00:00	Cabelo+Sobrancelha
7e73e46c-8b6b-4447-ad7a-d4738080c66c	2025-07-04 00:00:00	11:40	mateus	Bruno	558196083218@s.whatsapp.net	2025-07-02 00:00:00	Cabelo+Barba
d58845fc-0a48-41a9-96b9-7c202ace5e25	2025-07-04 00:00:00	10:20	serginho💅🏻	Bruno	558195354617@s.whatsapp.net	2025-07-03 00:00:00	Cabelo+Sobrancelha
29d42caa-b5a4-495f-833b-bcb168d427b0	2025-07-03 00:00:00	18:00	lucas	Wallyson	558182524811@s.whatsapp.net	2025-07-03 00:00:00	Cabelo
d648b5df-3fe1-4f77-8ec6-fdf743e14afb	2025-07-03 00:00:00	09:40	Bruno	Bruno	local	2025-07-03 10:12:11.62	Cabelo
70a76c7c-9a7d-4cf8-8622-92c6db022fc0	2025-07-03 00:00:00	11:20	pedro	Wallyson	558195071416@s.whatsapp.net	2025-07-03 00:00:00	Cabelo+Sobrancelha
a5d411e8-84ac-4bf0-8d99-e1e3d00f8925	2025-07-04 00:00:00	14:40	gabriel	Bruno	558192417684@s.whatsapp.net	2025-07-03 00:00:00	Cabelo+Sobrancelha
3013add4-1b50-4e23-a8db-aedf59db427a	2025-07-03 00:00:00	11:40	ryan	Bruno	558196680308@s.whatsapp.net	2025-07-03 00:00:00	Cabelo+Barba
6d6ce9e4-b46c-4099-95d8-790464d14111	2025-07-03 00:00:00	13:20	renan	Bruno	558198296625@s.whatsapp.net	2025-07-03 00:00:00	Cabelo
6ac3124d-f342-4633-b670-9b2b9e1b8eee	2025-07-05 00:00:00	14:40	clóvis junior	Wallyson	558197889433@s.whatsapp.net	2025-07-03 00:00:00	Barba
ad410104-ce69-4399-895f-51457c6c653c	2025-07-07 00:00:00	18:40	rennan	Bruno	558196502964@s.whatsapp.net	2025-07-03 00:00:00	Cabelo
08efedfe-596c-4d77-80e4-70f155885097	2025-07-04 00:00:00	14:00	ataliba	Bruno	558182671510@s.whatsapp.net	2025-07-03 00:00:00	Barba
d5453aef-d310-4d2c-b9d4-15ade45c8828	2025-07-03 00:00:00	17:20	Cleiton 	Wallyson	local	2025-07-03 16:22:25.725	Cabelo
41e84616-aeae-49b4-9e0b-0fb6ec2563a2	2025-07-03 00:00:00	08:00	Cacilda	Wallyson	local	2025-07-03 17:57:53.476	Cabelo
9b6e9136-002c-42fc-bdeb-e6f558fc0629	2025-07-04 00:00:00	15:20	Valmir 	Wallyson	local	2025-07-03 20:55:58.75	Cabelo+Barba
ca6542cf-02b2-4fe3-8734-d451404d77c7	2025-07-07 00:00:00	09:40	Indisponivel	Bruno	Indisponivel	2025-07-03 22:23:09.859	
1ba16906-376d-4156-8abf-2365f9319d64	2025-07-07 00:00:00	10:20	Indisponivel	Bruno	Indisponivel	2025-07-03 22:23:09.943	
3ea3fe32-a434-4aec-87a7-212dc9765644	2025-07-07 00:00:00	11:00	Indisponivel	Bruno	Indisponivel	2025-07-03 22:23:09.971	
d9a7afe9-5626-434d-8e06-c73d3b124a30	2025-07-07 00:00:00	11:40	Indisponivel	Bruno	Indisponivel	2025-07-03 22:23:10.002	
154d41b0-a4b3-4d57-b109-64828285687f	2025-07-04 00:00:00	16:40	Noa	Wallyson	local	2025-07-03 22:32:14.282	Cabelo
09fbdfeb-e194-4661-8127-65ba38a3768a	2025-07-10 00:00:00	16:00	Wellington 	Wallyson	local	2025-07-04 01:55:23.468	Cabelo+Barba
1f2f6faa-5b73-4a4d-9cec-ad47993f7d62	2025-07-04 00:00:00	10:00	anthony ricardo	Wallyson	558199684430@s.whatsapp.net	2025-07-03 00:00:00	Cabelo+Sobrancelha
99f2db00-f5fa-4c00-84e8-84bfbb77a8bd	2025-07-04 00:00:00	13:20	Dorgyl	Bruno	local	2025-07-04 10:31:33.488	Cabelo
db82b628-f1dc-47f7-a889-461caff04ffa	2025-07-04 00:00:00	09:20	Marcado 	Wallyson	local	2025-07-04 11:21:04.606	Cabelo
dcd2c3b3-df0f-4ff7-8391-1dcd5301b3cc	2025-07-04 00:00:00	16:00	Hatus	Bruno	local	2025-07-04 11:58:48.574	Cabelo
5f760e94-f2ea-4065-bcd9-c28e6f2687d4	2025-07-04 00:00:00	10:40	Marcado 	Wallyson	local	2025-07-04 13:24:20.534	Cabelo
8b56aaab-5506-471f-b483-a074d70d395b	2025-07-04 00:00:00	11:20	Marcado 	Wallyson	local	2025-07-04 13:24:31.616	Cabelo
ccad0bc4-6497-464c-8edf-0c102804697e	2025-07-04 00:00:00	14:40	paulo césar	Wallyson	558195254306@s.whatsapp.net	2025-07-04 00:00:00	Cabelo
a146c35d-c146-4620-b24a-2d2b9a81253f	2025-07-07 00:00:00	14:40	pedro leo messi	Bruno	558199656200@s.whatsapp.net	2025-07-04 00:00:00	Cabelo+Barba
7a6da6db-c183-46b8-9936-108868d95ea0	2025-07-04 00:00:00	18:40	joão pedro	Wallyson	116664247009310@lid	2025-07-04 00:00:00	Cabelo
541b577e-fb90-4fd3-a5dc-731b0add742e	2025-07-04 00:00:00	20:00	Alberto 	Wallyson	local	2025-07-04 18:19:30.706	Cabelo
bfe2772e-b015-4c10-85aa-5e4f13b1fb9a	2025-07-07 00:00:00	16:00	antonio	Bruno	558799676551@s.whatsapp.net	2025-07-04 00:00:00	Cabelo+Barba
2c5f2a91-ae2a-46b5-aa0c-a0e504a8a125	2025-07-07 00:00:00	15:20	cauã gabriel	Bruno	558199527666@s.whatsapp.net	2025-07-04 00:00:00	Cabelo
d971ef72-d5ea-4d00-b86c-a46e2fe27c0b	2025-07-07 00:00:00	15:20	davidson	Wallyson	558199527666@s.whatsapp.net	2025-07-04 00:00:00	Cabelo+Barba
aa8c0569-c470-41c5-ba12-e027a7e15fd4	2025-07-07 00:00:00	09:40	mayrlon	Wallyson	558196600679@s.whatsapp.net	2025-07-04 00:00:00	Cabelo+Sobrancelha
4634d9d1-5a86-4e73-a950-4b9e7b87076e	2025-07-05 00:00:00	15:20	Levino 	Wallyson	local	2025-07-05 01:52:02.712	Cabelo
19c02184-24ad-4d01-951c-98b6b230c5e6	2025-07-08 00:00:00	19:20	mathias	Bruno	558181310245@s.whatsapp.net	2025-07-05 00:00:00	Cabelo
bf879a73-ab7b-4fba-926a-fd4354afb398	2025-07-05 00:00:00	11:20	Francisco 	Wallyson	local	2025-07-05 12:01:45.551	Cabelo
0fff9a1d-97c7-46c2-9290-d3a3811d219f	2025-07-05 00:00:00	10:40	lucas rogério	Wallyson	558196051507@s.whatsapp.net	2025-07-05 00:00:00	Cabelo
bac32e4b-06b6-4e30-9bfe-5032bc80c141	2025-07-05 00:00:00	12:00	Rubens 	Wallyson	local	2025-07-05 14:03:26.155	Cabelo
55fbf7c2-4a33-4c03-84de-3fc57abdedcb	2025-07-05 00:00:00	14:00	Samuel 	Wallyson	local	2025-07-05 14:48:49.155	Cabelo
a77609f3-57e4-4414-82d9-769b868fff59	2025-07-12 00:00:00	08:40	tiago	Bruno	40166651633741@lid	2025-07-05 00:00:00	Cabelo
9e0f1c15-c008-4b03-97c7-39fe7eaa2ff5	2025-07-05 00:00:00	18:00	bruno	Wallyson	558198567818@s.whatsapp.net	2025-07-05 00:00:00	Cabelo
0b2e824c-99fd-4c1d-980c-74abe6ea45a5	2025-07-10 00:00:00	14:40	Júnior 	Wallyson	local	2025-07-05 19:54:14.066	Cabelo
0c367fdd-3b59-4009-acb4-a636bb4011f4	2025-07-10 00:00:00	14:00	Gabriel 	Wallyson	local	2025-07-05 19:54:40.06	Cabelo
bfd5514b-a9e5-4a96-8988-305e86174055	2025-07-08 00:00:00	18:00	erick	Wallyson	558199045127@s.whatsapp.net	2025-07-05 00:00:00	Cabelo
a46a64a9-27d1-4dd3-afa5-fabef442d16f	2025-07-07 00:00:00	14:00	antonio neto	Bruno	558196049253@s.whatsapp.net	2025-07-05 00:00:00	Cabelo+Sobrancelha
e5246b39-5986-4e9d-b764-ea60314c89b2	2025-07-07 00:00:00	13:20	erik borges	Bruno	558191948830@s.whatsapp.net	2025-07-05 00:00:00	Cabelo
62a5a5a2-198f-4330-a3da-6b11e4a214c2	2025-07-07 00:00:00	17:20	Pedro botox 	Bruno	local	2025-07-06 00:21:31.644	Cabelo
f7c6c87a-f2df-484e-9e84-4f71a28d88e1	2025-07-12 00:00:00	17:20	lucas josé	Bruno	558199311183@s.whatsapp.net	2025-07-06 00:00:00	Cabelo+Barba
203c404d-9c30-45f5-9485-9643a4cbe79e	2025-07-07 00:00:00	09:00	júlio césar gonçalves de lima	Wallyson	558196440108@s.whatsapp.net	2025-07-06 00:00:00	Cabelo+Sobrancelha
c9474d8e-ec04-4775-a185-b29a240b64fd	2025-07-08 00:00:00	13:20	rhuan	Bruno	558195251500@s.whatsapp.net	2025-07-06 00:00:00	Cabelo+Sobrancelha
393635d5-25ce-4072-b05e-66a44eca1401	2025-07-11 00:00:00	15:20	rafael	Bruno	558188763249@s.whatsapp.net	2025-07-06 00:00:00	Cabelo
cb04a0b6-8b5f-4f1d-bb02-217f4ea6f8f0	2025-07-29 00:00:00	09:00	Indisponivel	Bruno	Indisponivel	2025-07-07 01:08:11.945	
e92a42be-3177-4e75-ac20-f728b45cf8a8	2025-07-29 00:00:00	09:40	Indisponivel	Bruno	Indisponivel	2025-07-07 01:08:12.038	
ff405dc0-6d98-42e1-bada-4fa4b0a6ae30	2025-07-29 00:00:00	10:20	Indisponivel	Bruno	Indisponivel	2025-07-07 01:08:12.07	
78367d19-86cc-4860-83ce-a7f0b2cd3d62	2025-07-29 00:00:00	11:00	Indisponivel	Bruno	Indisponivel	2025-07-07 01:08:12.104	
ecc94927-d8d8-48ab-be0c-154db8bd598b	2025-07-29 00:00:00	11:40	Indisponivel	Bruno	Indisponivel	2025-07-07 01:08:12.136	
dd42a773-6eb8-4fea-a88c-f728673566b9	2025-07-29 00:00:00	13:20	Indisponivel	Bruno	Indisponivel	2025-07-07 01:08:12.168	
26f8140a-665d-4cf6-8827-8d8f36b825a5	2025-07-29 00:00:00	14:00	Indisponivel	Bruno	Indisponivel	2025-07-07 01:08:12.2	
c306cb8d-770d-48fb-9bc8-07d32ab3b6a4	2025-07-29 00:00:00	14:40	Indisponivel	Bruno	Indisponivel	2025-07-07 01:08:12.234	
43ee6094-4a61-4a33-810d-9a299e0a785d	2025-07-29 00:00:00	15:20	Indisponivel	Bruno	Indisponivel	2025-07-07 01:08:12.267	
2e60e7f5-c7c9-4559-85c2-75b3c6d4c2f3	2025-07-29 00:00:00	16:00	Indisponivel	Bruno	Indisponivel	2025-07-07 01:08:12.299	
6799cd73-c4c3-4d44-96f5-9f29fba9d25e	2025-07-29 00:00:00	16:40	Indisponivel	Bruno	Indisponivel	2025-07-07 01:08:12.332	
4870c606-7de1-4513-9d6e-9b883acfaa84	2025-07-29 00:00:00	17:20	Indisponivel	Bruno	Indisponivel	2025-07-07 01:08:12.364	
5e1681f5-fd0e-4494-a2f3-cc70344d06fb	2025-07-29 00:00:00	18:00	Indisponivel	Bruno	Indisponivel	2025-07-07 01:08:12.396	
31cd68c4-66c7-4264-81b7-5d618d02c771	2025-07-29 00:00:00	18:40	Indisponivel	Bruno	Indisponivel	2025-07-07 01:08:12.429	
118afe6a-abd9-4511-81ed-13bd2a0eddbc	2025-07-29 00:00:00	19:20	Indisponivel	Bruno	Indisponivel	2025-07-07 01:08:12.461	
bdd1ba53-790c-4822-b257-b6a969fbb3fa	2025-07-09 00:00:00	13:20	ian menezes	Bruno	558196739228@s.whatsapp.net	2025-07-06 00:00:00	Cabelo
b5b966b2-dca8-4296-9e3c-52f878e7304b	2025-07-07 00:00:00	10:20	gildevan	Wallyson	558182508046@s.whatsapp.net	2025-07-07 00:00:00	Cabelo+Barba
384f05f5-bcd6-4653-a063-ad7d42a865d2	2025-07-07 00:00:00	17:20	Alison Daniel 	Wallyson	local	2025-07-07 10:57:17.192	Cabelo
5f99c1b4-752d-4ce9-addc-107a4cb9106e	2025-07-08 00:00:00	14:40	pablo	Bruno	558182396657@s.whatsapp.net	2025-07-07 00:00:00	Cabelo
cfd9b0aa-4f8c-41b5-8d69-b0d517a2df2b	2025-07-07 00:00:00	13:20	Jesus	Wallyson	local	2025-07-07 13:25:53.275	Cabelo
4598b2c0-bdef-4d75-a315-0d2cdfa59bc8	2025-07-07 00:00:00	18:00	rafael delicia	Bruno	558199365900@s.whatsapp.net	2025-07-07 00:00:00	Cabelo
f312c67f-4518-42dc-a69e-0e1a0501af00	2025-07-07 00:00:00	16:00	Felipe 	Wallyson	local	2025-07-07 13:58:27.233	Cabelo
18b41389-b0d2-4bcb-a8e4-b8af2ceb8cf3	2025-07-14 00:00:00	09:40	arthur	Bruno	558194115511@s.whatsapp.net	2025-07-07 00:00:00	Cabelo+Barba
aa1d5953-32b9-4309-8111-fd6ca5770b4d	2025-07-08 00:00:00	08:00	Marcado 	Wallyson	local	2025-07-07 14:19:23.815	Cabelo
046536a0-5c98-488c-9e19-1b64afe5528a	2025-07-08 00:00:00	08:40	Tierry 	Wallyson	local	2025-07-07 14:20:24.808	Cabelo
2324f4fd-6b3f-4e2c-8434-b02f13fb560b	2025-07-15 00:00:00	18:40	Jeferson 	Wallyson	local	2025-07-07 14:20:43.681	Cabelo+Barba
72537720-29a6-425f-bd3b-7e3390905ba3	2025-07-07 00:00:00	18:40	eduardo	Wallyson	558194699903@s.whatsapp.net	2025-07-07 00:00:00	Cabelo
e7e10640-6367-4a77-ad55-69b80008b80d	2025-07-07 00:00:00	14:40	eduardo	Wallyson	558171024799@s.whatsapp.net	2025-07-07 00:00:00	Cabelo
1f64c95a-9b08-43f9-b008-221107cf91a9	2025-07-08 00:00:00	18:40	Jeferson 	Wallyson	local	2025-07-07 16:02:24.743	Cabelo+Barba
c3ca4517-420a-452a-a7c3-bfa80de83b32	2025-07-08 00:00:00	14:00	jefferson	Wallyson	558198266953@s.whatsapp.net	2025-07-07 00:00:00	Cabelo
afb14938-dd2e-492a-ae3d-f2e1ac223bd6	2025-07-08 00:00:00	15:20	yago	Bruno	558195055274@s.whatsapp.net	2025-07-07 00:00:00	Cabelo+Sobrancelha
8c51ffd2-45e7-4036-9f1a-7a6472de6578	2025-07-08 00:00:00	16:00	Caio irmão carlos	Bruno	local	2025-07-07 16:49:16.001	Cabelo
065acefa-97d0-49f3-bb1d-dce66f92c004	2025-07-08 00:00:00	18:00	Carlos 	Bruno	local	2025-07-07 16:52:00.52	Cabelo
42406b1c-5b0a-47b3-940d-4fb714517738	2025-07-08 00:00:00	18:40	Janielson	Bruno	local	2025-07-07 16:52:15.631	Cabelo
575924e4-752a-4fe3-8baf-28cdb20a89ca	2025-07-08 00:00:00	09:00	Gustavo botox	Bruno	local	2025-07-07 17:12:51.397	Cabelo
8abd8818-bd0f-4f9a-b3e2-5b680b4a4ff6	2025-07-08 00:00:00	10:20	Gustavo botox 	Bruno	local	2025-07-07 17:13:13.208	Cabelo
22bc1546-4073-4c74-9ac9-0c663c16cfea	2025-07-07 00:00:00	11:40	joao	Wallyson	558196050355@s.whatsapp.net	2025-07-07 00:00:00	Cabelo+Sobrancelha
017531c6-1103-4912-9ebd-0a50817238d1	2025-07-08 00:00:00	14:00	felipe silva	Bruno	558196065070@s.whatsapp.net	2025-07-07 00:00:00	Cabelo
1a1c8a05-04ef-481c-a863-79926e017412	2025-07-08 00:00:00	17:20	valney  e davi	Bruno	558197232916@s.whatsapp.net	2025-07-07 00:00:00	Cabelo
21f8543d-c37e-46f6-a28d-4e17601d84ad	2025-07-08 00:00:00	09:40	joão lucas	Bruno	558189785404@s.whatsapp.net	2025-07-07 00:00:00	Cabelo+Sobrancelha
e326ea01-0d36-44b3-bc61-fff3be0a6918	2025-07-08 00:00:00	11:40	antônio	Bruno	558171024799@s.whatsapp.net	2025-07-07 00:00:00	Cabelo
2460ffcc-2c04-4f68-bbbb-0b01f47e89c4	2025-07-08 00:00:00	17:20	leonardo	Wallyson	558199658643@s.whatsapp.net	2025-07-08 00:00:00	Cabelo
15cdde4e-edb6-410a-9925-213e8a6bff8e	2025-07-09 00:00:00	14:00	lucas	Bruno	558182451503@s.whatsapp.net	2025-07-08 00:00:00	Cabelo+Sobrancelha
b2192eba-1fe0-4f10-a373-15cb7729f0d7	2025-07-10 00:00:00	10:00	marquinhos	Wallyson	558198441841@s.whatsapp.net	2025-07-08 00:00:00	Cabelo
0769fcb2-92c9-49c2-b504-1fa5a9477067	2025-07-10 00:00:00	16:00	tarcísio	Bruno	558185887456@s.whatsapp.net	2025-07-08 00:00:00	Cabelo
527d8a9a-b55f-44e6-a529-58a56fadaac0	2025-07-08 00:00:00	11:00	sérgio	Bruno	558198288830@s.whatsapp.net	2025-07-08 00:00:00	Cabelo
66907df5-03de-4328-9898-5026291aab9e	2025-07-09 00:00:00	14:40	windney darlan	Bruno	558187774760@s.whatsapp.net	2025-07-08 00:00:00	Cabelo
a20c33f4-45e4-4718-b09d-34d8cd1c2d58	2025-07-12 00:00:00	14:00	allef ryan	Bruno	558195740243@s.whatsapp.net	2025-07-08 00:00:00	Cabelo
07030ac0-44fb-4f7b-868c-1e8d2052c830	2025-07-11 00:00:00	08:00	wilson	Wallyson	558197148928@s.whatsapp.net	2025-07-08 00:00:00	Cabelo+Sobrancelha
572b7379-d58b-4035-87a0-c475011684f2	2025-07-31 00:00:00	14:40	yan	Bruno	558199168954@s.whatsapp.net	2025-07-08 00:00:00	Cabelo
0769c270-bd7a-4c72-9074-0439a8b0c52f	2025-07-11 00:00:00	18:40	bruno	Bruno	558189873832@s.whatsapp.net	2025-07-08 00:00:00	Cabelo+Barba
edd2b110-f95c-49a1-ac45-800d7dbb9f1b	2025-07-08 00:00:00	16:40	gabriel vitorino	Bruno	558196610362@s.whatsapp.net	2025-07-08 00:00:00	Cabelo
e01f2856-3ac1-474e-a124-94f4106e98b9	2025-07-25 00:00:00	11:00	Indisponivel	Bruno	Indisponivel	2025-07-25 11:23:54.285	
4c751a4b-b6b5-4460-8662-91356d4306fe	2025-08-05 00:00:00	09:00	Italo corte e luzes	Bruno	local	2025-08-04 19:55:09.849	Cabelo
69b5d0d9-fd1e-4b72-8bb0-11a4f56109da	2025-07-08 00:00:00	16:40	vandro júnior	Wallyson	558196610362@s.whatsapp.net	2025-07-08 00:00:00	Cabelo
9eb4b17b-b4cc-4f75-b058-6d89c011fe78	2025-07-12 00:00:00	12:00	luan	Bruno	558197301690@s.whatsapp.net	2025-07-08 00:00:00	Cabelo
31af0f23-0073-47fa-8742-1738c7e42593	2025-07-08 00:00:00	16:00	J Marcos 	Wallyson	local	2025-07-08 17:39:52.502	Cabelo+Barba
53c26837-1b5b-44c8-85c1-dec2d7e7bbdb	2025-07-10 00:00:00	13:20	Pablo 	Bruno	local	2025-07-08 18:08:11.812	Cabelo+Barba
9b458c36-90e3-46e5-bd61-1fdf1e284375	2025-07-10 00:00:00	14:40	Pablo botox 	Bruno	local	2025-07-08 18:08:36.24	Cabelo
9b0bfac8-ace4-4b67-8de9-3338a5d0ca81	2025-07-10 00:00:00	14:00	Pablo	Bruno	local	2025-07-08 18:08:54.521	Cabelo
6dc467ea-8dc6-4dd9-9edb-65400b52c982	2025-07-11 00:00:00	14:00	kevin	Wallyson	558195204685@s.whatsapp.net	2025-07-08 00:00:00	Cabelo
3fb45fca-e483-4d01-a593-78e1279c0c57	2025-07-10 00:00:00	16:40	Adaias 	Wallyson	local	2025-07-08 21:03:12.34	Cabelo
e2035c78-ee25-4cfd-83d5-928888e5aa67	2025-07-10 00:00:00	11:00	andré	Bruno	558198646935@s.whatsapp.net	2025-07-08 00:00:00	Cabelo+Sobrancelha
07494b41-124d-47af-82b9-046ec55f05de	2025-07-10 00:00:00	18:00	ronnye	Wallyson	558198353903@s.whatsapp.net	2025-07-08 00:00:00	Cabelo
5265b2aa-46bb-493b-9fe4-012f7569e696	2025-07-09 00:00:00	10:00	césar	Wallyson	558197520499@s.whatsapp.net	2025-07-08 00:00:00	Cabelo+Sobrancelha
2490cbea-e974-487e-bc77-2a95bf995b51	2025-07-09 00:00:00	11:00	sérgio	Bruno	558198288830@s.whatsapp.net	2025-07-08 00:00:00	Cabelo
a06ef2a9-3ffb-4397-ae69-3a4181ccb3c6	2025-07-11 00:00:00	18:00	pedro henrique	Bruno	558199160082@s.whatsapp.net	2025-07-08 00:00:00	Cabelo
2ebde805-ff3d-4c04-b6ff-6526cf7c556c	2025-07-12 00:00:00	10:40	luiz	Bruno	558181486379@s.whatsapp.net	2025-07-08 00:00:00	Cabelo+Sobrancelha
25f67e50-87b4-427f-9dce-a32d45dee11a	2025-07-12 00:00:00	08:40	victor	Wallyson	558196193892@s.whatsapp.net	2025-07-09 00:00:00	Cabelo
5d276466-6dc2-459e-a741-b8a548b36a9c	2025-07-11 00:00:00	17:20	wesley	Bruno	558196817233@s.whatsapp.net	2025-07-09 00:00:00	Cabelo
46a0b117-dfc5-4b74-854e-e9a2d4bf9f53	2025-07-09 00:00:00	09:40	Indisponivel	Bruno	Indisponivel	2025-07-09 09:37:36.646	
20922ebf-bd99-4d53-ad6d-73dbb42b0bb2	2025-07-09 00:00:00	10:20	Indisponivel	Bruno	Indisponivel	2025-07-09 09:37:36.732	
9f1fc569-1277-461a-a303-00c8dcd52b71	2025-07-09 00:00:00	11:40	Indisponivel	Bruno	Indisponivel	2025-07-09 09:37:36.761	
929ca116-817c-435b-8b75-ee78c9386a30	2025-07-10 00:00:00	09:00	Indisponivel	Bruno	Indisponivel	2025-07-09 09:41:31.314	
193a295b-5faf-438a-a659-41d1b2839d0e	2025-07-09 00:00:00	16:40	fernando	Wallyson	558199410150@s.whatsapp.net	2025-07-09 00:00:00	Cabelo+Sobrancelha
8338621e-91cd-4c66-aaec-910d552414a8	2025-07-09 00:00:00	09:20	Rubens 	Wallyson	local	2025-07-09 10:13:48.47	Cabelo
70bf780b-0066-4d95-81d1-d82eaa4d2d04	2025-07-11 00:00:00	16:00	joão gabriel	Bruno	558195216795@s.whatsapp.net	2025-07-09 00:00:00	Cabelo
2123c0d9-51be-4b5f-a1d7-5cdb342ffae5	2025-07-09 00:00:00	09:00	Indisponivel	Bruno	Indisponivel	2025-07-09 11:02:32.513	
c7dfdce4-bd4b-4e13-b9cb-d965840df8ad	2025-07-12 00:00:00	08:00	gabriel	Wallyson	558195699749@s.whatsapp.net	2025-07-09 00:00:00	Cabelo+Barba
e686e833-50e1-4dea-a9b5-601c2a39a308	2025-07-11 00:00:00	14:40	douglas	Bruno	558181954284@s.whatsapp.net	2025-07-09 00:00:00	Cabelo
5214bac5-8ad7-445d-a05a-f4ca7a7529a2	2025-07-09 00:00:00	15:20	ataliba	Bruno	558182671510@s.whatsapp.net	2025-07-09 00:00:00	Barba
64f1eeaa-8ad7-4a00-9691-2c41a67df76f	2025-07-10 00:00:00	13:20	gerdo	Wallyson	558196275453@s.whatsapp.net	2025-07-09 00:00:00	Cabelo+Barba
a2ac5fbe-c7e7-46bc-b736-25a254d09524	2025-07-10 00:00:00	09:40	Júnior Bezerra 	Bruno	local	2025-07-09 14:59:27.222	Cabelo
c7432b46-2f62-464b-af57-caa21e531e7b	2025-07-09 00:00:00	17:20	samuel	Wallyson	558199862867@s.whatsapp.net	2025-07-09 00:00:00	Cabelo
68146cf0-9ef7-4857-b66b-9a22443be7e1	2025-07-10 00:00:00	10:40	Paulinho 	Wallyson	local	2025-07-09 15:34:32.843	Acabamento (Pezinho)
bd24618c-8574-4514-a8b5-e9f1fdc32b40	2025-07-09 00:00:00	18:00	Victor 	Wallyson	local	2025-07-09 16:05:49.263	Cabelo+Barba
08724adc-4bcb-4706-af62-082e5b9bcbb9	2025-07-10 00:00:00	10:20	joão da costa cabral	Bruno	558182968875@s.whatsapp.net	2025-07-09 00:00:00	Cabelo
4fae2d26-6950-4484-83f7-105f75d28db5	2025-07-14 00:00:00	09:40	Indisponivel	Bruno	Indisponivel	2025-07-09 16:10:34.695	
d0e19f09-3767-4ff0-b5d7-7d1940259e2f	2025-07-14 00:00:00	10:20	Indisponivel	Bruno	Indisponivel	2025-07-09 16:10:34.754	
580574e3-b5ba-4b33-9f14-15021709ebea	2025-07-14 00:00:00	11:00	Indisponivel	Bruno	Indisponivel	2025-07-09 16:10:34.782	
18b42852-fccf-4956-8dd7-22355c3d8774	2025-07-14 00:00:00	11:40	Indisponivel	Bruno	Indisponivel	2025-07-09 16:10:34.812	
63d52e87-4b47-4958-a30a-3e9d96ce4b56	2025-07-11 00:00:00	20:00	rennan	Bruno	558179005726@s.whatsapp.net	2025-07-09 00:00:00	Cabelo
f7a67eca-452c-48c2-96b9-57ae0e4a675b	2025-07-10 00:00:00	18:40	carlos	Wallyson	558198314747@s.whatsapp.net	2025-07-09 00:00:00	Cabelo+Barba
7fe8d639-c818-44c4-bcce-46666bb8b6c2	2025-07-09 00:00:00	18:00	denílson	Bruno	558197084296@s.whatsapp.net	2025-07-09 00:00:00	Barba
1bdef7e8-4681-4f77-b272-5859170966a8	2025-07-11 00:00:00	09:40	anderson	Bruno	558198694494@s.whatsapp.net	2025-07-09 00:00:00	Cabelo
81230f83-6362-4958-94c4-934a278ea1e3	2025-07-09 00:00:00	17:20	marcio	Bruno	558198973109@s.whatsapp.net	2025-07-09 00:00:00	Cabelo
63e369a5-19f6-4baa-98b2-1d1ff548786a	2025-07-10 00:00:00	15:20	josé henrique	Wallyson	558182163068@s.whatsapp.net	2025-07-09 00:00:00	Cabelo
d96cd223-d323-4c09-a67b-aa16ed4a8166	2025-07-14 00:00:00	13:20	Arthur	Bruno	local	2025-07-09 18:57:20.509	Cabelo
78164581-3cd9-4173-a95e-644a84b9d817	2025-07-09 00:00:00	16:40	samuel	Bruno	558171201693@s.whatsapp.net	2025-07-09 00:00:00	Cabelo
18d95096-809e-4bf7-94a4-e5a291b5b470	2025-07-17 00:00:00	14:00	Matheus 	Bruno	local	2025-07-17 15:59:22.754	Barba
68311789-e80a-4d7a-a9a9-bb011050b5a7	2025-07-17 00:00:00	18:40	Kauan 	Wallyson	local	2025-07-17 16:01:46.572	Cabelo
ddad0c39-9250-4b6b-b331-8e1418ac0e11	2025-07-12 00:00:00	16:00	dubolo	Bruno	558196647899@s.whatsapp.net	2025-07-09 00:00:00	Cabelo+Sobrancelha
d5b5dc8b-54cb-4070-991e-7960607555fd	2025-07-09 00:00:00	18:40	Ocupado	Bruno	local	2025-07-09 19:30:21.75	Cabelo
da3e9029-a26b-4058-8e56-c30cbb5980cd	2025-07-09 00:00:00	18:40	Eudes 	Wallyson	local	2025-07-09 19:39:38.337	Cabelo
6e99c73d-4d95-4b01-b617-81017429a019	2025-07-11 00:00:00	16:40	osmar	Bruno	558196267018@s.whatsapp.net	2025-07-09 00:00:00	Cabelo
c8fbe96b-138c-4dc9-ac23-7db516a068cd	2025-07-12 00:00:00	10:00	Carlos 	Wallyson	local	2025-07-09 21:37:37.051	Cabelo
96deb293-b8ec-44c8-8680-5d278c63ef3b	2025-07-11 00:00:00	11:40	thomas	Bruno	558181391720@s.whatsapp.net	2025-07-09 00:00:00	Cabelo+Sobrancelha
2b9c5867-ca8b-49ea-a4d3-721c39671305	2025-07-11 00:00:00	14:00	bruno gomes	Bruno	558196522258@s.whatsapp.net	2025-07-09 00:00:00	Barba
f024e413-73a4-4cd1-83a4-d8316ae3ed34	2025-07-18 00:00:00	13:20	bruno gomes	Bruno	558196522258@s.whatsapp.net	2025-07-09 00:00:00	Cabelo+Barba
2046bc5b-b124-4a1f-8035-d423bc03970a	2025-07-15 00:00:00	17:20	everson	Bruno	558179003193@s.whatsapp.net	2025-07-10 00:00:00	Cabelo
81664764-06a3-45dc-b3b9-60503d6f5252	2025-07-18 00:00:00	14:00	Bruno botox	Bruno	local	2025-07-10 10:26:43.755	Cabelo
32ee76d6-24b5-453a-b7e0-416758fe2ab7	2025-07-18 00:00:00	14:40	Bruno botox	Bruno	local	2025-07-10 10:26:58.614	Cabelo
d98287fe-e9ff-4d78-a3f5-d968d4e0f404	2025-07-10 00:00:00	17:20	Issac 	Wallyson	local	2025-07-10 11:20:35.312	Cabelo
856b3384-0217-49fb-9915-555476850ac0	2025-07-10 00:00:00	15:20	anthony	Bruno	558197620059@s.whatsapp.net	2025-07-10 00:00:00	Cabelo
fa5cb605-0d7a-4564-ac1a-c7414e8420ef	2025-07-12 00:00:00	14:40	del	Bruno	558197796167@s.whatsapp.net	2025-07-10 00:00:00	Cabelo+Barba
1acf72ea-c52f-426d-96a1-8f52f53e5e5d	2025-07-11 00:00:00	20:00	luan victor	Wallyson	558181307345@s.whatsapp.net	2025-07-10 00:00:00	Acabamento (Pezinho)
7d63ccd5-878c-4a3c-8762-22cb9e6590b0	2025-07-12 00:00:00	16:40	zaldinho	Bruno	558198591039@s.whatsapp.net	2025-07-10 00:00:00	Cabelo
6a25d340-f276-4581-8f49-da0a77fca5ab	2025-07-19 00:00:00	16:40	zaldinho	Bruno	558198591039@s.whatsapp.net	2025-07-10 00:00:00	Cabelo
0584282f-1fd8-476b-9afc-d3dd9995a464	2025-07-16 00:00:00	11:00	renan silva	Bruno	558199185971@s.whatsapp.net	2025-07-10 00:00:00	Cabelo
f44198ee-7ad2-42ab-b9f3-f43bdfa184b7	2025-07-12 00:00:00	10:40	aline	Wallyson	558182535973@s.whatsapp.net	2025-07-10 00:00:00	Cabelo
55fe66c6-7178-40cd-b44e-17d131a2c9fd	2025-07-10 00:00:00	16:40	yan	Bruno	558199168954@s.whatsapp.net	2025-07-10 00:00:00	Cabelo
38d1af6e-d901-4f8a-aba3-7ad673dde075	2025-07-14 00:00:00	14:00	matheus ryan	Bruno	558198446732@s.whatsapp.net	2025-07-10 00:00:00	Cabelo
059f280a-772f-497a-a473-43f07df720c5	2025-07-10 00:00:00	18:40	maykon	Bruno	558199870087@s.whatsapp.net	2025-07-10 00:00:00	Cabelo
32c4dbba-6c49-4b3f-9243-a856272c4b0f	2025-07-10 00:00:00	18:00	okik	Bruno	558197496524@s.whatsapp.net	2025-07-10 00:00:00	Cabelo+Sobrancelha
84fa9496-1a80-4d51-8f38-946c09711a20	2025-07-11 00:00:00	09:00	Hatus	Bruno	local	2025-07-10 21:48:51.836	Barba
f270084f-6c58-42eb-9924-423a6ed5427e	2025-07-10 00:00:00	09:20	marcos elielson	Wallyson	558195356602@s.whatsapp.net	2025-07-10 00:00:00	Cabelo+Barba
48b51955-40c1-4199-979a-62ff6d3a6cf2	2025-07-11 00:00:00	16:00	mario areias	Wallyson	558381367304@s.whatsapp.net	2025-07-10 00:00:00	Cabelo+Barba
6d3bf10d-dbb8-4d0d-bfcf-d5c32ea3156c	2025-07-11 00:00:00	14:40	marcos elielson	Wallyson	558195356602@s.whatsapp.net	2025-07-10 00:00:00	Cabelo+Barba
6991b76c-0184-4214-9388-cfe321d26cc5	2025-07-12 00:00:00	11:20	lucas gabriel	Wallyson	558199333703@s.whatsapp.net	2025-07-10 00:00:00	Cabelo+Sobrancelha
7db515f2-896e-4d34-9662-cd825da47557	2025-07-11 00:00:00	08:40	natacha	Wallyson	558197947166@s.whatsapp.net	2025-07-10 00:00:00	Cabelo
ba09cb7f-cf26-4f40-ada3-30fc516cf8ed	2025-07-11 00:00:00	09:20	iago silva	Wallyson	5511986812843@s.whatsapp.net	2025-07-11 00:00:00	Cabelo+Sobrancelha
7dd064a3-01dc-44d6-87c4-e3a49b7923c4	2025-07-11 00:00:00	19:20	maykon	Bruno	558199870087@s.whatsapp.net	2025-07-11 00:00:00	Cabelo
bd2c79e9-389c-4e44-8990-676cc55859b7	2025-07-11 00:00:00	13:20	Vinicius 	Wallyson	local	2025-07-11 11:39:10.242	Cabelo
f7450c95-6218-4dd0-a65e-71f1286d7cee	2025-07-11 00:00:00	15:20	letho	Wallyson	558199387144@s.whatsapp.net	2025-07-11 00:00:00	Cabelo
343e18fb-94f2-4a71-967b-f7e388742175	2025-07-12 00:00:00	15:20	jona	Bruno	558196647899@s.whatsapp.net	2025-07-11 00:00:00	Cabelo
4f802152-a49a-4e5a-a101-7761cab056e5	2025-07-11 00:00:00	11:20	Matheus	Wallyson	local	2025-07-11 13:03:22.861	Barba
376fe3d5-ed45-4186-9f51-4c98477aead2	2025-07-11 00:00:00	11:00	Vinicius	Bruno	local	2025-07-11 13:37:39.196	Cabelo
d6fb9488-0a73-4572-98e6-abae2f97525c	2025-07-12 00:00:00	14:00	Allysson 	Wallyson	local	2025-07-11 13:45:41.513	Cabelo
b96d6fc5-abb2-457c-8944-633f919ea154	2025-07-12 00:00:00	18:00	Paulo 	Wallyson	local	2025-07-11 13:46:09.357	Cabelo
72e5bc5f-2c5c-49f8-bba2-cae0ce6bad87	2025-07-11 00:00:00	13:20	Ocupado 	Bruno	local	2025-07-11 13:55:14.094	Cabelo
446f60c8-a403-4559-a651-7b44763107d6	2025-07-12 00:00:00	09:20	john	Wallyson	558196903604@s.whatsapp.net	2025-07-11 00:00:00	Cabelo+Barba
2e937d39-ba7c-4554-8eab-9f0a90668729	2025-07-12 00:00:00	13:20	arthur	Wallyson	558196000246@s.whatsapp.net	2025-07-11 00:00:00	Cabelo
57c93962-d7bd-4810-812b-ab6a5959091c	2025-07-12 00:00:00	11:20	Ocupado 	Bruno	local	2025-07-11 18:23:48.125	Cabelo
c09470f9-596c-4902-ba7c-96d8faa4edd6	2025-07-12 00:00:00	14:40	mauricio	Wallyson	558197954525@s.whatsapp.net	2025-07-11 00:00:00	Cabelo
9b285a23-4ee2-4463-b198-0c49e783062b	2025-07-12 00:00:00	12:00	gustavo	Wallyson	558199587573@s.whatsapp.net	2025-07-11 00:00:00	Cabelo+Sobrancelha
26490d8e-0b7b-4375-aab6-2f7a21c164d4	2025-07-14 00:00:00	14:00	Ítalo 	Wallyson	local	2025-07-11 19:21:18.149	Cabelo
9c2dc856-73be-4ca7-bfbf-a42d07926a4c	2025-07-14 00:00:00	14:40	Dafnis	Wallyson	local	2025-07-11 21:07:14.141	Cabelo
fa7970c0-ab98-4d12-90f6-97d5e2b3b9f4	2025-07-19 00:00:00	11:20	henrique	Bruno	558199224958@s.whatsapp.net	2025-07-11 00:00:00	Cabelo
70bd7d70-c167-4777-b801-06e6e4936906	2025-07-12 00:00:00	16:40	fábio cria	Wallyson	5521980058628@s.whatsapp.net	2025-07-11 00:00:00	Cabelo
ca380982-26d0-4009-b52c-94ec9126620f	2025-07-12 00:00:00	17:20	fernando correia da silva	Wallyson	558199732471@s.whatsapp.net	2025-07-12 00:00:00	Cabelo
4f20bc96-8e97-46fa-8ae5-2a527d4d5ea2	2025-07-15 00:00:00	08:40	ryan	Wallyson	5511959620317@s.whatsapp.net	2025-07-12 00:00:00	Cabelo+Sobrancelha
6967f2d3-20c0-4e63-ad50-adfb0fc60228	2025-07-14 00:00:00	16:00	antonio	Bruno	558799676551@s.whatsapp.net	2025-07-12 00:00:00	Barba
ee11c71e-979b-438c-82a9-79bba14ae64b	2025-07-14 00:00:00	18:00	fernando	Bruno	558196035269@s.whatsapp.net	2025-07-12 00:00:00	Cabelo
e6aa8a7e-f099-47ec-bd10-c9b828e2085f	2025-07-14 00:00:00	11:40	Davi 	Wallyson	local	2025-07-12 17:59:16.702	Cabelo
4b0a317d-ac50-4459-a30e-fe16c8d46c41	2025-07-17 00:00:00	09:40	fernando correia da silva	Bruno	558199732471@s.whatsapp.net	2025-07-12 00:00:00	Cabelo
97f497fc-6aee-4999-a731-5c6b429b89df	2025-07-19 00:00:00	08:00	fernando correia da silva	Wallyson	558199732471@s.whatsapp.net	2025-07-12 00:00:00	Cabelo
ec4a14a9-a026-47b1-82a1-8d80ba7ee6b9	2025-07-14 00:00:00	15:20	william gabriel	Bruno	558198087356@s.whatsapp.net	2025-07-12 00:00:00	Cabelo
be0cf7c4-3d05-473d-9e71-242324524f40	2025-07-14 00:00:00	18:00	Leandro 	Wallyson	local	2025-07-12 23:34:24.948	Cabelo+Barba
d50dd1b3-d4be-487e-afa9-eca8976b446f	2025-07-17 00:00:00	18:00	mateus barbosa	Bruno	558197626344@s.whatsapp.net	2025-07-12 00:00:00	Cabelo
f4362eb9-99ba-4a10-902c-289bd7488670	2025-08-07 00:00:00	18:00	Indisponivel	Bruno	Indisponivel	2025-07-13 13:24:35.866	
8dd88645-7728-469c-9ad3-c8b8961bf693	2025-08-07 00:00:00	18:40	Indisponivel	Bruno	Indisponivel	2025-07-13 13:24:35.974	
acf9f360-deb7-4993-b22e-93d390485c5f	2025-07-14 00:00:00	17:20	renan	Bruno	558199282002@s.whatsapp.net	2025-07-13 00:00:00	Cabelo
01487660-54b7-4121-87ab-4e71c5417823	2025-07-14 00:00:00	14:40	Hugo Thomas 	Bruno	local	2025-07-13 15:23:10.202	Cabelo+Barba
335335cc-642b-4003-98cb-fe6f1cfb8c5e	2025-07-15 00:00:00	09:40	genildo	Bruno	558199736143@s.whatsapp.net	2025-07-13 00:00:00	Cabelo
2058807b-3269-4446-a48c-11b091570304	2025-07-14 00:00:00	16:40	miguel	Bruno	558195712225@s.whatsapp.net	2025-07-13 00:00:00	Cabelo
8340966a-bc07-4a07-8d29-621bca15c16e	2025-07-19 00:00:00	08:40	paulo henrique	Bruno	558174004953@s.whatsapp.net	2025-07-13 00:00:00	Cabelo+Sobrancelha
1bcd304e-4368-4715-ae5f-2c0023e8811e	2025-07-19 00:00:00	14:00	ewerton adryan	Bruno	558198289810@s.whatsapp.net	2025-07-13 00:00:00	Cabelo
ad95b44a-d988-4842-8d3c-b22e3c0fd957	2025-07-14 00:00:00	18:40	eduardo	Wallyson	558181806550@s.whatsapp.net	2025-07-13 00:00:00	Cabelo
9d5cfcb8-2ca5-4239-a72b-4b11f62231e2	2025-07-14 00:00:00	18:40	ataliba	Bruno	558182671510@s.whatsapp.net	2025-07-13 00:00:00	Barba
7d01e544-c499-4ec6-b340-264590d25f3b	2025-07-15 00:00:00	09:20	marcos cipriano	Wallyson	558199770448@s.whatsapp.net	2025-07-13 00:00:00	Cabelo
f6cc14ba-84ae-4708-b272-f98eee8c2087	2025-07-18 00:00:00	19:20	italo	Bruno	558198405729@s.whatsapp.net	2025-07-13 00:00:00	Cabelo
fff77d31-aa7f-4b6c-8dc9-d1afd7b19121	2025-07-18 00:00:00	20:00	marcos	Bruno	558198405729@s.whatsapp.net	2025-07-13 00:00:00	Cabelo
d3a03063-df69-493f-bf77-6093f2e28abb	2025-07-14 00:00:00	09:40	francisco	Wallyson	558182062970@s.whatsapp.net	2025-07-13 00:00:00	Cabelo
c8b96379-3e9d-49d5-bdf1-ebdf541d0486	2025-07-16 00:00:00	18:40	neto	Bruno	558181091175@s.whatsapp.net	2025-07-13 00:00:00	Cabelo+Barba
c7fe2fc9-7808-400d-8edb-3b90b40d3a80	2025-07-19 00:00:00	08:40	márcio	Wallyson	558199069172@s.whatsapp.net	2025-07-14 00:00:00	Cabelo
e345bbed-2e9f-4f92-a7b5-fe991f99b881	2025-07-14 00:00:00	16:00	andrew	Wallyson	558198694494@s.whatsapp.net	2025-07-14 00:00:00	Cabelo
47c21e3e-1e08-47e4-b419-3c849e526361	2025-07-14 00:00:00	17:20	Rodrigo 	Wallyson	local	2025-07-14 12:17:11.23	Cabelo
9918ac34-8791-4d5b-9ea7-c250a6fed58f	2025-07-15 00:00:00	09:00	joão miguel	Bruno	558198328109@s.whatsapp.net	2025-07-14 00:00:00	Cabelo
fa04bce9-2bf4-4123-9e27-8666b44b3ee3	2025-07-16 00:00:00	14:00	joão vitor	Bruno	558188511046@s.whatsapp.net	2025-07-14 00:00:00	Cabelo
b5c48e26-30d3-44b2-933b-ea3b7421ebba	2025-07-14 00:00:00	15:20	Carlos 	Wallyson	local	2025-07-14 12:47:20.101	Cabelo
0380e2c9-764d-4119-9e60-064ee8166f35	2025-07-14 00:00:00	11:00	Wellington 	Wallyson	local	2025-07-14 12:48:36.106	Cabelo
5510beca-8e14-4bc1-b4a8-6adfe0cc839f	2025-07-18 00:00:00	17:20	Felipe do mudo	Wallyson	local	2025-07-14 15:07:14.335	Cabelo
3b46296e-e441-4737-b719-88b51061d19f	2025-07-15 00:00:00	18:40	Alex del	Bruno	local	2025-07-14 15:14:25.612	Cabelo
013dad7a-45e2-40eb-87e6-fa83f2d2033b	2025-07-15 00:00:00	19:20	Alex del	Bruno	local	2025-07-14 15:14:50.094	Cabelo
c5a8a388-7333-4b59-98aa-a5be8e5f2420	2025-07-15 00:00:00	08:00	Marcado	Wallyson	local	2025-07-14 15:25:51.094	Cabelo
b46fbdd8-c834-4614-a6f1-9fa062832286	2025-07-14 00:00:00	16:40	Jamily	Wallyson	local	2025-07-14 15:50:11.865	Cabelo
2560b6e7-6f0e-4c57-a5e5-9edbc5c1ad98	2025-07-15 00:00:00	14:00	pedro henrique	Bruno	558198446899@s.whatsapp.net	2025-07-14 00:00:00	Cabelo
2d9e245c-f2d2-41e4-8400-a04faf74c700	2025-07-15 00:00:00	13:20	iann lucas	Bruno	558196612255@s.whatsapp.net	2025-07-14 00:00:00	Cabelo+Sobrancelha
069d9958-29bc-4197-ab23-1419fd783e02	2025-07-15 00:00:00	18:00	Bruno Silva 	Wallyson	local	2025-07-14 17:54:29.611	Cabelo
0deb32e6-41ad-4480-85d6-66ec75cb4a31	2025-07-17 00:00:00	13:20	Paulinho 	Wallyson	local	2025-07-14 18:21:45.027	Cabelo
ced06fab-d8c9-4f4b-9bf7-cca26108d4dc	2025-07-18 00:00:00	17:20	joão guilherme	Bruno	558181673375@s.whatsapp.net	2025-07-14 00:00:00	Cabelo
edfc66c1-67ba-41ea-a373-c451f629c05c	2025-07-15 00:00:00	18:00	paulo	Bruno	558182758461@s.whatsapp.net	2025-07-14 00:00:00	Cabelo
a128c9d3-a3b6-4c38-812d-950cad0bd900	2025-07-18 00:00:00	09:00	fabiano	Bruno	558198025719@s.whatsapp.net	2025-07-14 00:00:00	Cabelo+Barba
e9454791-6f5f-4dc5-b181-1b5ac152e056	2025-07-15 00:00:00	10:00	Paulo 	Wallyson	local	2025-07-14 22:14:13.437	Cabelo
a8988e01-7b77-49ca-b4e3-7873f3096438	2025-07-15 00:00:00	16:00	Dafnis 	Wallyson	local	2025-07-14 22:15:46.147	Cabelo
13783fea-49c4-4bf4-b884-a061875974fc	2025-07-15 00:00:00	15:20	andre gentil	Bruno	5511984999751@s.whatsapp.net	2025-07-14 00:00:00	Cabelo
f1c29499-1b61-44be-92b0-5e6cb2e86298	2025-07-15 00:00:00	17:20	Lyaderson 	Wallyson	local	2025-07-15 01:01:48.969	Cabelo
d972c06e-af10-420f-8936-9b77e3b83869	2025-07-18 00:00:00	09:40	manoel neto	Bruno	558195055212@s.whatsapp.net	2025-07-14 00:00:00	Cabelo+Barba
7ef6a751-7d72-4a98-a01c-6faaa06dbaa9	2025-07-16 00:00:00	09:00	manoel neto	Bruno	558195055212@s.whatsapp.net	2025-07-15 00:00:00	Cabelo+Barba
6b2e1bda-ad88-44de-9e40-d8b04046adb2	2025-07-15 00:00:00	10:20	Dorgyl	Bruno	local	2025-07-15 09:59:32.676	Cabelo+Barba
d8eccc07-e027-4e05-97d2-050f0b132dc5	2025-07-19 00:00:00	14:40	Neto 	Bruno	local	2025-07-15 10:29:26.293	Cabelo
3baf4d24-eebd-4706-af0a-7cd808bb5fd9	2025-07-15 00:00:00	11:00	Ulises 	Bruno	local	2025-07-15 11:50:38.647	Cabelo
d001460a-d493-4165-9ab1-b91fadefb4db	2025-07-18 00:00:00	10:20	maurycio	Bruno	558197162890@s.whatsapp.net	2025-07-15 00:00:00	Cabelo+Sobrancelha
2fac0b90-e1f8-4a79-b15d-2435c88c5c8c	2025-07-15 00:00:00	13:20	Miguel 	Wallyson	local	2025-07-15 12:18:58.469	Cabelo
a018c04b-b86f-4fbd-8257-8dc4439b07d6	2025-07-15 00:00:00	14:00	Marcílio 	Wallyson	local	2025-07-15 12:48:13.3	Cabelo
1110e391-c3bc-425d-9d37-2e985dd0bdb9	2025-07-15 00:00:00	14:40	Davi 	Wallyson	local	2025-07-15 12:48:28.586	Cabelo
16fb5b56-43ac-4f71-8367-d65495bc0f9e	2025-07-15 00:00:00	16:00	Indisponivel	Bruno	Indisponivel	2025-07-15 13:00:25.463	
d95712f5-24a3-408d-8658-f529350bfa53	2025-07-15 00:00:00	16:40	Indisponivel	Bruno	Indisponivel	2025-07-15 13:00:26.278	
f34d94a6-bf9a-4d0a-9278-27bc77112ad0	2025-07-15 00:00:00	16:40	Júlio 	Wallyson	local	2025-07-15 13:14:47.318	Cabelo
54c1646a-d92c-4843-baa1-593fcf35a194	2025-07-15 00:00:00	10:40	Francisco 	Wallyson	local	2025-07-15 13:15:02.578	Cabelo
e0737f82-a12f-4091-bb1f-0f91bb7f3ee9	2025-07-15 00:00:00	14:40	kaio silva	Bruno	558197839047@s.whatsapp.net	2025-07-15 00:00:00	Cabelo
9ae21699-9876-47db-9e4c-4ac9687e4977	2025-07-19 00:00:00	09:20	Vaninho 	Wallyson	local	2025-07-15 14:02:37.125	Cabelo+Barba
360a433c-38f0-4f52-89d6-f8966a0a7898	2025-07-19 00:00:00	14:00	kayke	Wallyson	558197180683@s.whatsapp.net	2025-07-15 00:00:00	Cabelo+Barba
ba5555a7-2365-48d8-ba78-257aa3f67117	2025-07-18 00:00:00	11:00	romerio	Bruno	558198627331@s.whatsapp.net	2025-07-15 00:00:00	Cabelo+Barba
92b464dd-7bde-40a4-ac51-1eb7ef72a514	2025-07-16 00:00:00	11:40	breno	Bruno	558198437880@s.whatsapp.net	2025-07-15 00:00:00	Cabelo+Sobrancelha
bc4cbab3-4d16-4063-a75f-4447ec93bc21	2025-07-17 00:00:00	18:40	david callebe	Bruno	558191447860@s.whatsapp.net	2025-07-15 00:00:00	Cabelo+Barba
c71f635e-c97e-48a3-979a-9e39dddaf1a4	2025-07-17 00:00:00	17:20	andre	Bruno	558198995821@s.whatsapp.net	2025-07-15 00:00:00	Cabelo+Sobrancelha
7672c3bd-8f56-49a5-a2de-3d39ac6d5cd9	2025-07-16 00:00:00	17:20	gabriel	Bruno	558187145252@s.whatsapp.net	2025-07-15 00:00:00	Cabelo
f69188fd-1052-46db-b5b8-2aac2ea235d1	2025-07-16 00:00:00	14:00	fredson	Wallyson	558198396655@s.whatsapp.net	2025-07-15 00:00:00	Cabelo
b260ad90-992d-4122-9dba-bc94e30cc2e6	2025-07-16 00:00:00	09:40	Fabiano 	Bruno	local	2025-07-15 21:22:06.96	Cabelo
d8c13476-bfc8-4e2c-97ea-ec8c7b761839	2025-07-21 00:00:00	13:20	samuel	Wallyson	558196448583@s.whatsapp.net	2025-07-15 00:00:00	Cabelo+Sobrancelha
cf1e6de2-d610-4050-88f8-e7a1815f6e14	2025-07-18 00:00:00	16:00	elysson	Bruno	558199697267@s.whatsapp.net	2025-07-15 00:00:00	Cabelo+Sobrancelha
aa623e88-49e4-4672-ba2b-b3eab5a66bdb	2025-07-18 00:00:00	18:00	cláudio henrique	Wallyson	558188482085@s.whatsapp.net	2025-07-15 00:00:00	Cabelo
57dacfe8-f142-42d0-b48c-da536814beb4	2025-07-19 00:00:00	17:20	denílson	Bruno	558197084296@s.whatsapp.net	2025-07-15 00:00:00	Barba
26efafc6-18ab-4c00-bf7e-537c0c502e4f	2025-07-17 00:00:00	11:40	anderson	Bruno	558197666072@s.whatsapp.net	2025-07-15 00:00:00	Cabelo
eaf8c00e-31ba-401a-97a5-23bcb4b56b37	2025-07-18 00:00:00	16:40	vinicius	Bruno	558196496652@s.whatsapp.net	2025-07-16 00:00:00	Cabelo
9e813c15-2c13-45f2-8a66-ce5d9c88ec3b	2025-07-16 00:00:00	18:40	marcos e filho ( joão miguel )	Wallyson	558195363219@s.whatsapp.net	2025-07-16 00:00:00	Cabelo
6893e216-7407-4b6a-9c39-f4fd1d9da99c	2025-07-16 00:00:00	10:00	Miguel	Wallyson	local	2025-07-16 10:37:53.168	Cabelo
1929a9fd-e689-4935-b196-8500e18e9ce5	2025-07-16 00:00:00	16:40	Tierey 	Wallyson	local	2025-07-16 10:41:47.717	Barba
628790c2-692b-4cc8-950c-e36b23ecf594	2025-07-16 00:00:00	17:20	Lyaderson 	Wallyson	local	2025-07-16 10:43:11.115	Cabelo
2cc59957-5e8a-4a75-88a8-5c2fdb6787b5	2025-07-17 00:00:00	18:00	Kaio 	Wallyson	local	2025-07-16 10:46:59.3	Cabelo
b92d25b7-9e49-4593-9e69-516ef75e7e00	2025-07-19 00:00:00	10:40	ryan valério da silva	Bruno	558181779060@s.whatsapp.net	2025-07-16 00:00:00	Cabelo+Barba
f5a13aeb-6545-427c-a21f-1ce2a33eb466	2025-07-17 00:00:00	15:20	pedro	Bruno	558198110192@s.whatsapp.net	2025-07-16 00:00:00	Cabelo
c1fece66-dbad-4ed7-82d9-3a89792221c2	2025-07-18 00:00:00	15:20	matheus	Bruno	558197941830@s.whatsapp.net	2025-07-16 00:00:00	Cabelo
ddafcb5a-0784-44d2-8068-50ac9554c5a2	2025-07-16 00:00:00	13:20	Tiery 	Wallyson	local	2025-07-16 12:55:11.747	Cabelo
44504ddb-6df5-42b1-8baf-c7aa811f2cfe	2025-07-16 00:00:00	13:20	josé rafael	Bruno	558197031839@s.whatsapp.net	2025-07-16 00:00:00	Cabelo
900d3455-e52d-4469-abe2-e4744474880b	2025-07-17 00:00:00	17:20	juininho	Wallyson	558194082765@s.whatsapp.net	2025-07-16 00:00:00	Cabelo
6440c3ce-8c47-4624-9339-265274a0542e	2025-07-17 00:00:00	10:00	Anderson 	Wallyson	local	2025-07-16 14:37:21.67	Cabelo
343c7d9d-515c-4a50-86c5-2d4e80d924da	2025-07-17 00:00:00	14:00	Wesely 	Wallyson	local	2025-07-16 14:37:42.415	Cabelo
4c8e3be9-e865-44f4-8e8d-51d146035a0b	2025-07-18 00:00:00	08:40	max	Wallyson	558196617265@s.whatsapp.net	2025-07-16 00:00:00	Cabelo
f2e79cd3-e20e-4cd8-a3ad-89d40a32c044	2025-07-16 00:00:00	14:40	Rafaek	Bruno	local	2025-07-16 15:54:39.53	Cabelo
c23a4a9d-dec8-478a-8811-a172bf899633	2025-07-19 00:00:00	10:00	Matheus 	Wallyson	local	2025-07-16 16:21:01.814	Cabelo
5b0c2f2b-3a99-4a0f-b34d-376f4a7b3e10	2025-07-19 00:00:00	10:40	Francelino 	Wallyson	local	2025-07-16 16:21:18.782	Cabelo
5cbdad42-723a-45b9-88c5-1db938a45484	2025-07-16 00:00:00	15:20	Alan 	Wallyson	local	2025-07-16 16:23:40.879	Cabelo
b5ad6645-9587-456e-8106-a9e3e630b05c	2025-07-16 00:00:00	14:40	Pedro 	Wallyson	local	2025-07-16 16:25:22.338	Cabelo
f654591b-d9c4-428d-aaaf-154068a633e5	2025-07-17 00:00:00	11:20	Luiz André 	Wallyson	local	2025-07-16 16:37:03.586	Cabelo
733c79fb-aed6-4eb6-9266-15adaa237ea7	2025-07-17 00:00:00	09:20	letícia	Wallyson	558182158768@s.whatsapp.net	2025-07-16 00:00:00	Cabelo
60ad6aa3-ac02-49d7-a566-e7d7542726e4	2025-07-18 00:00:00	11:40	ataliba	Bruno	558182671510@s.whatsapp.net	2025-07-16 00:00:00	Barba
71eb21a7-643b-4167-8001-68e6ae47bd50	2025-07-16 00:00:00	18:00	nilson fonseca	Wallyson	558189252475@s.whatsapp.net	2025-07-16 00:00:00	Cabelo
0bed92d5-53af-47bc-9ca2-96579673e123	2025-07-19 00:00:00	10:00	lucas silva	Bruno	558188204134@s.whatsapp.net	2025-07-16 00:00:00	Cabelo
75c858b1-1391-4c28-b1f7-6affae7c9dc5	2025-07-19 00:00:00	08:00	joão vitor	Bruno	558192250093@s.whatsapp.net	2025-07-16 00:00:00	Cabelo
aba8b7dd-124a-4016-9de1-80a8762e3cdd	2025-07-16 00:00:00	16:00	eduardo	Bruno	558198079679@s.whatsapp.net	2025-07-16 00:00:00	Cabelo
67cab925-0bd3-4ced-a351-8492ed715ada	2025-07-17 00:00:00	10:40	Matheus 	Wallyson	local	2025-07-16 19:28:39.84	Cabelo
809d641d-0cf4-476b-8a7b-993d8ad82766	2025-07-18 00:00:00	15:20	felipe	Wallyson	558195274374@s.whatsapp.net	2025-07-16 00:00:00	Cabelo
f0a1b10a-9593-4503-a56e-e9e1b6b1243f	2025-07-18 00:00:00	16:00	felipe	Wallyson	558195274374@s.whatsapp.net	2025-07-16 00:00:00	Cabelo
57cbfe4f-af97-4f51-8d93-46c432de8fcd	2025-07-19 00:00:00	12:00	Ryan fanho	Bruno	local	2025-07-16 21:02:53.372	Cabelo
2635424c-4078-412e-ba74-567eb27e0498	2025-07-17 00:00:00	08:40	Josino 	Wallyson	local	2025-07-16 21:29:08.599	Cabelo
2e694fea-8cd4-4ddc-8d68-fc1835b8b537	2025-07-17 00:00:00	10:20	joão pedro campos	Bruno	558196073970@s.whatsapp.net	2025-07-16 00:00:00	Cabelo+Barba
fec9b081-7ecb-42a8-b3c1-a7520c88556b	2025-07-19 00:00:00	15:20	Teteu	Bruno	local	2025-07-17 01:05:23.259	Cabelo+Sobrancelha
3b379961-daf4-4238-a210-3a23cd52e2dc	2025-07-17 00:00:00	14:40	pedro	Wallyson	558195071416@s.whatsapp.net	2025-07-16 00:00:00	Cabelo+Sobrancelha
2b63c1fd-96c1-400e-9a86-8d00770fced3	2025-07-17 00:00:00	13:20	vinicius	Bruno	558194296929@s.whatsapp.net	2025-07-17 00:00:00	Cabelo
5176dd66-edb4-4af5-8303-a0996064b1bf	2025-07-18 00:00:00	08:00	Wilson 	Wallyson	local	2025-07-17 11:21:25.132	Cabelo
ed8832c7-52eb-4d55-80d0-69b58c66cabe	2025-07-17 00:00:00	11:00	ataliba	Bruno	558182671510@s.whatsapp.net	2025-07-17 00:00:00	Barba
c6afcbf4-7cda-49ff-ae01-046544d87601	2025-07-18 00:00:00	09:20	Jhonatha 	Wallyson	local	2025-07-17 12:58:22.452	Cabelo
59d59175-6f93-4a54-9788-6b8754f57adf	2025-07-17 00:00:00	16:00	Ivan	Bruno	local	2025-07-17 13:16:45.342	Cabelo
c5170b26-3b0c-4dbf-bc54-a96f08cc3770	2025-07-19 00:00:00	11:20	Jorge 	Wallyson	local	2025-07-17 13:30:42.652	Cabelo
3c54a6e2-515d-49b7-8f7a-8b2dc59eaeb6	2025-07-18 00:00:00	10:00	paulo césar	Wallyson	558195254306@s.whatsapp.net	2025-07-17 00:00:00	Cabelo
c6743eae-3e7d-4843-98a6-2f5c45691db5	2025-07-18 00:00:00	14:00	Matheus 	Wallyson	local	2025-07-17 14:30:59.408	Cabelo
340b11e2-292d-41fd-8031-cbda6beaa986	2025-07-22 00:00:00	11:00	micherlaine	Bruno	558196463146@s.whatsapp.net	2025-07-17 00:00:00	Cabelo
b65a3a66-2e10-4573-99c2-dd8963133176	2025-07-19 00:00:00	16:00	marcos	Bruno	558193547860@s.whatsapp.net	2025-07-17 00:00:00	Cabelo
caa1950e-0516-4cda-a742-ff9acbd81e2b	2025-07-19 00:00:00	16:00	carlos	Wallyson	558199700555@s.whatsapp.net	2025-07-17 00:00:00	Cabelo
1f3cb30e-8610-4395-9b27-be0ac328e1a3	2025-07-17 00:00:00	16:00	davidson	Wallyson	558199527666@s.whatsapp.net	2025-07-17 00:00:00	Barba
a1dcbdd6-cf9f-4b2b-bd08-a02d4a91c3bf	2025-07-21 00:00:00	16:00	emanoel	Bruno	558181079674@s.whatsapp.net	2025-07-17 00:00:00	Cabelo+Barba
a9697346-139c-49d4-83ab-cbfc35fb75ae	2025-07-21 00:00:00	16:40	leonardo cabral	Bruno	558197413226@s.whatsapp.net	2025-07-17 00:00:00	Cabelo
191d95c4-9f75-4f16-a685-d6d0f86bfaa6	2025-07-21 00:00:00	18:40	flávio	Bruno	5511992553806@s.whatsapp.net	2025-07-17 00:00:00	Cabelo
46dc8ffe-eeed-4138-bdb0-91c77b1b150c	2025-07-21 00:00:00	10:20	shérgyo	Wallyson	558189870188@s.whatsapp.net	2025-07-17 00:00:00	Cabelo
cc2da363-1092-4b45-945b-517717a23dd2	2025-07-18 00:00:00	19:20	andrew miguel	Wallyson	558181524707@s.whatsapp.net	2025-07-17 00:00:00	Cabelo
097e87eb-ea49-47c4-add1-5b759480955b	2025-07-18 00:00:00	18:40	rennan	Wallyson	558196502964@s.whatsapp.net	2025-07-17 00:00:00	Barba
3f51db12-82c4-42a7-9678-56878ec25ac0	2025-07-18 00:00:00	14:40	emanuel	Wallyson	558196314532@s.whatsapp.net	2025-07-17 00:00:00	Cabelo
b298b021-5e7e-455e-8d02-0ccee6a08b64	2025-07-19 00:00:00	12:00	Marcos Antônio 	Wallyson	local	2025-07-18 02:38:48.091	Cabelo
3dcd2639-934f-4cc8-b52e-99657a0a8aae	2025-07-31 00:00:00	15:20	josé kaio	Bruno	558197806738@s.whatsapp.net	2025-07-18 00:00:00	Cabelo+Sobrancelha
d8bdf9de-fe5f-4803-94d1-c9436aae024b	2025-07-19 00:00:00	13:20	João Carmen 	Wallyson	local	2025-07-18 11:00:30.884	Cabelo
67a9b40d-3659-4d77-af19-37abc6835183	2025-07-19 00:00:00	14:40	Allysson 	Wallyson	local	2025-07-18 11:37:38.068	Cabelo
62fcc351-510f-4b96-be9f-f88d9b11a7a5	2025-07-18 00:00:00	13:20	Wilson 	Wallyson	local	2025-07-18 11:52:34.669	Cabelo
3e91952d-3519-4eca-9066-91efd4ea9b60	2025-07-19 00:00:00	15:20	Robson 	Wallyson	local	2025-07-18 14:31:08.076	Cabelo+Barba
f5060f4d-6ee2-4fd0-9cdc-6c4dccaf83cc	2025-07-22 00:00:00	15:20	arthur rafael	Bruno	558197087531@s.whatsapp.net	2025-07-18 00:00:00	Cabelo
00760e5e-0dc5-4305-8ae3-7a3df6577535	2025-07-18 00:00:00	16:40	Bruninho 	Wallyson	local	2025-07-18 14:48:55.121	Cabelo
2241d2af-13bd-4ca5-be73-d6d62686b546	2025-07-31 00:00:00	16:40	leonardo	Bruno	558174001016@s.whatsapp.net	2025-07-18 00:00:00	Cabelo
2926881f-94c0-45e5-a9fb-d5ea6d733e82	2025-07-18 00:00:00	20:00	alan elias	Wallyson	558182284289@s.whatsapp.net	2025-07-18 00:00:00	Cabelo
6c65fa15-ecc0-4f3e-a605-f2f317b022db	2025-07-19 00:00:00	18:00	Anderson 	Wallyson	local	2025-07-18 20:51:10.156	Cabelo
0045487c-6fee-4c4f-acf6-ed451ab0e507	2025-08-15 00:00:00	16:00	Anthony Wellington adv	Bruno	local	2025-07-18 21:30:00.837	Cabelo
f55c07bb-a7c7-48aa-a560-9598906ab60b	2025-08-15 00:00:00	18:00	Wellington adv	Bruno	local	2025-07-18 21:30:19.841	Cabelo
bf6c7f15-7118-4745-9271-ff3a16da10d2	2025-07-28 00:00:00	13:20	vicente	Bruno	558197192758@s.whatsapp.net	2025-07-18 00:00:00	Cabelo+Sobrancelha
5b144df6-ebdd-481c-974c-8f296d31d74d	2025-07-19 00:00:00	16:40	joão paulo	Wallyson	558179098531@s.whatsapp.net	2025-07-18 00:00:00	Cabelo+Barba
19d08468-829c-4085-bbc2-01d0c2700426	2025-07-19 00:00:00	17:20	Robertinho 	Wallyson	local	2025-07-19 02:55:41.183	Cabelo
5de96235-f951-4cc0-9fc7-dddc9dad5692	2025-07-21 00:00:00	10:20	lucas	Bruno	558185469353@s.whatsapp.net	2025-07-19 00:00:00	Cabelo
cecfd71e-6f44-43a5-adb0-2c6748104986	2025-07-22 00:00:00	11:20	henry	Wallyson	558196600679@s.whatsapp.net	2025-07-19 00:00:00	Cabelo
e19f260d-3546-4f97-905c-78f4ef3a676d	2025-07-21 00:00:00	15:20	joao lucas	Bruno	558189785404@s.whatsapp.net	2025-07-19 00:00:00	Cabelo+Sobrancelha
bb47b007-f681-4911-b348-ec7d1e88f352	2025-07-21 00:00:00	16:00	Wellington 	Wallyson	local	2025-07-19 18:50:43.913	Cabelo
799e5260-ae2b-47fa-b89e-ff56e999ca77	2025-07-26 00:00:00	08:40	horlean	Wallyson	558281363560@s.whatsapp.net	2025-07-19 00:00:00	Cabelo+Sobrancelha
75bf7f42-d916-47e6-8f37-a1aa3284fb7f	2025-07-21 00:00:00	14:40	vandro júnior	Wallyson	558196610362@s.whatsapp.net	2025-07-19 00:00:00	Cabelo
26927d9c-cb1e-4e2e-86b8-228f8b1737b6	2025-07-21 00:00:00	09:00	kauê	Wallyson	558199937689@s.whatsapp.net	2025-07-19 00:00:00	Cabelo+Sobrancelha
94200961-39ab-4cc2-82a2-6bbe62c6cb8e	2025-07-26 00:00:00	12:00	osmar	Bruno	558196267018@s.whatsapp.net	2025-07-19 00:00:00	Cabelo
ebde6028-f17d-4f34-b05b-4f97ddcae36e	2025-07-21 00:00:00	17:20	roberto guedes	Bruno	558198028971@s.whatsapp.net	2025-07-20 00:00:00	Cabelo
62e37697-a2e1-4853-9ee4-7708842360fc	2025-07-21 00:00:00	11:00	lucas	Bruno	558185469353@s.whatsapp.net	2025-07-20 00:00:00	Barba
223602ed-e9e0-40c6-855f-e9e951c92eef	2025-07-24 00:00:00	13:20	Indisponivel	Bruno	Indisponivel	2025-07-20 17:08:00.831	
beb68dd5-02f1-4391-bf12-22c08c646835	2025-07-24 00:00:00	14:00	Indisponivel	Bruno	Indisponivel	2025-07-20 17:08:00.862	
9fa76a6f-8893-499b-9ab4-9cd5be8b043b	2025-07-24 00:00:00	14:40	Indisponivel	Bruno	Indisponivel	2025-07-20 17:08:00.894	
ecde1ec8-6778-441d-9f66-b475511ffb41	2025-07-24 00:00:00	15:20	Indisponivel	Bruno	Indisponivel	2025-07-20 17:08:00.925	
e0b22eae-f4d8-4625-9529-dbbce4a4eae3	2025-07-24 00:00:00	16:00	Indisponivel	Bruno	Indisponivel	2025-07-20 17:08:00.956	
1db12aa9-b753-45bd-ae1b-dcd77ff13576	2025-07-21 00:00:00	11:00	nicholas	Wallyson	558182645590@s.whatsapp.net	2025-07-20 00:00:00	Cabelo
f06bdaa4-f180-4e7a-9608-eead6f2f0cdc	2025-07-28 00:00:00	11:40	antônio	Bruno	558171024799@s.whatsapp.net	2025-07-20 00:00:00	Cabelo
73fdbdab-3a66-4efd-9b62-39d68da30c7b	2025-07-22 00:00:00	18:40	erick	Bruno	558195786256@s.whatsapp.net	2025-07-20 00:00:00	Cabelo+Sobrancelha
82ab8397-a2d3-4738-96c8-e2de98b1a5cf	2025-07-22 00:00:00	10:20	lucas lucena	Bruno	558198991478@s.whatsapp.net	2025-07-20 00:00:00	Cabelo
252d2e57-f1c7-4365-bc4d-5605b61aeba5	2025-07-21 00:00:00	09:40	miguel	Wallyson	558198435034@s.whatsapp.net	2025-07-21 00:00:00	Cabelo
9764d680-6940-4580-82a9-01636c016f49	2025-07-22 00:00:00	13:20	heitor	Bruno	558182601936@s.whatsapp.net	2025-07-21 00:00:00	Cabelo
f5f5bfc1-cdbb-4ac9-bd59-8086e0251650	2025-07-22 00:00:00	14:00	henrique	Bruno	558182601936@s.whatsapp.net	2025-07-21 00:00:00	Cabelo
12f8442b-3a60-444e-a7b9-e2c95955cceb	2025-07-22 00:00:00	14:40	joão lucas	Bruno	558182601936@s.whatsapp.net	2025-07-21 00:00:00	Cabelo
46996194-8b6a-4a68-8b10-d6feacb3a497	2025-07-23 00:00:00	09:00	weslley	Bruno	558197215641@s.whatsapp.net	2025-07-21 00:00:00	Cabelo
9c7b4407-0d36-470e-82c7-546ec0b5f686	2025-07-21 00:00:00	11:40	joão pedro farias	Wallyson	558196610538@s.whatsapp.net	2025-07-21 00:00:00	Cabelo
10969488-e419-4e80-b32e-e58cbf0520bf	2025-07-28 00:00:00	09:00	Mathias Lima 	Wallyson	local	2025-07-21 13:34:26.815	Cabelo+Barba
5bb00f12-59b2-4620-ae17-fa7d7de3b930	2025-07-21 00:00:00	15:20	ryan	Wallyson	558199792268@s.whatsapp.net	2025-07-21 00:00:00	Cabelo
74b288c0-92fd-479a-a9c2-be2f7177e674	2025-07-22 00:00:00	08:00	Marcado 	Wallyson	local	2025-07-21 14:40:02.253	Cabelo
71507b17-0a41-4c61-a78c-7e143b8f8fe9	2025-07-22 00:00:00	08:40	Marcado 	Wallyson	local	2025-07-21 14:40:40.108	Cabelo
67e7db36-05ec-47df-add7-c5c9940cd58a	2025-07-25 00:00:00	09:20	Matheus 	Wallyson	local	2025-07-21 14:41:06.973	Cabelo+Barba
09b1499e-bc3d-45b1-ae90-62aa89dbb214	2025-07-21 00:00:00	14:00	gabriel	Wallyson	558185827719@s.whatsapp.net	2025-07-21 00:00:00	Cabelo
d1d79c91-7a0c-4618-953e-70871b42b910	2025-07-26 00:00:00	17:20	lucas josé	Bruno	558199311183@s.whatsapp.net	2025-07-21 00:00:00	Cabelo+Sobrancelha
f6a1e549-fa36-4716-b5f5-88cdfefeefd1	2025-07-24 00:00:00	16:00	kallebe	Wallyson	558195967163@s.whatsapp.net	2025-07-21 00:00:00	Cabelo
eea70a86-8314-4f10-8ba1-6017d3ab0790	2025-07-21 00:00:00	14:00	ozair	Bruno	558195806903@s.whatsapp.net	2025-07-21 00:00:00	Cabelo
a3c63304-ad7e-4f3e-858f-8d9dad089443	2025-07-22 00:00:00	09:00	moisés	Bruno	558171076971@s.whatsapp.net	2025-07-21 00:00:00	Cabelo+Barba
aad979cb-7221-4375-b05a-625ca1497da6	2025-07-21 00:00:00	18:00	miguel	Bruno	558195712225@s.whatsapp.net	2025-07-21 00:00:00	Cabelo
57edd651-2a07-437d-80fe-993245e06e31	2025-07-22 00:00:00	09:40	Augusto	Bruno	local	2025-07-21 17:08:32.5	Cabelo
dfab7b18-f3ec-4d5e-8c8a-b7135365669a	2025-07-22 00:00:00	17:20	João Pedro 	Wallyson	local	2025-07-21 17:52:15.238	Cabelo
8fb555a4-fe07-4596-b91f-d820f960a1ef	2025-07-21 00:00:00	18:00	diego santos	Wallyson	558173303801@s.whatsapp.net	2025-07-21 00:00:00	Cabelo
91ba8daa-b3f2-4d73-b9b7-24fb46fdb0fe	2025-07-30 00:00:00	09:40	Gabriel pedrosa	Bruno	local	2025-07-21 18:33:47.292	Cabelo
30f513b4-4607-4e4b-8fb8-b15cce83fc32	2025-07-30 00:00:00	10:20	Gabriel pedrosa	Bruno	local	2025-07-21 18:34:16.061	Cabelo
1b3de733-2c31-4122-8203-70e3d91e0a13	2025-07-26 00:00:00	08:40	erick apolloni neri de araújo alves	Bruno	558197051743@s.whatsapp.net	2025-07-21 00:00:00	Cabelo
6aca7738-edac-47e1-9c4a-87809bef98c9	2025-07-23 00:00:00	10:20	Lucas de Bruna 	Bruno	local	2025-07-21 18:52:50.63	Cabelo
fdff1b5a-cc7b-4941-887a-3b008325ca0b	2025-07-21 00:00:00	17:20	ricardo	Wallyson	10969648508995@lid	2025-07-21 00:00:00	Cabelo
4feb143c-4e6a-46bf-b31d-01971a5fae05	2025-07-21 00:00:00	18:40	Diego 	Wallyson	local	2025-07-21 19:01:04.818	Cabelo
368683cd-e76d-41fe-9890-8e06eb5b6d0a	2025-07-22 00:00:00	18:40	Elias Melo 	Wallyson	local	2025-07-21 20:06:53.991	Cabelo
d7afbedd-41c4-4f9a-9f73-6f8506019595	2025-08-04 00:00:00	13:20	Wellington botox	Bruno	local	2025-07-21 20:07:26.947	Cabelo
e81bf05e-f330-4956-b761-9d91595fe392	2025-08-04 00:00:00	14:00	Wellington botox	Bruno	local	2025-07-21 20:07:49.192	Cabelo
a7d3a9b1-159b-4dbc-bd72-406084ab355c	2025-09-12 00:00:00	17:20	roberto guedes	Bruno	558198028971@s.whatsapp.net	2025-07-21 00:00:00	Cabelo
20ad2219-e289-4303-999d-b87375f087e6	2025-07-22 00:00:00	10:00	Valdemir 	Wallyson	local	2025-07-21 20:46:33.932	Cabelo
51580eaf-7a6f-4c20-b45f-3231beb6c033	2025-07-22 00:00:00	14:00	Marcado Miguel 	Wallyson	local	2025-07-21 20:49:39.936	Cabelo
006aab16-869b-4b78-bb4e-e973039bcc66	2025-07-22 00:00:00	16:00	lucas	Bruno	558197326785@s.whatsapp.net	2025-07-21 00:00:00	Cabelo
e40c4cd0-6a98-4785-8272-5fb056cf42df	2025-07-23 00:00:00	15:20	Gustavo 	Wallyson	local	2025-07-21 21:52:54.62	Cabelo
5eba61ef-8661-4dfa-9b45-e22ac3824e24	2025-07-22 00:00:00	16:00	lucas filho	Wallyson	558197326785@s.whatsapp.net	2025-07-21 00:00:00	Cabelo
bf1d1000-f35a-45a6-bbec-b752881e1f42	2025-07-22 00:00:00	18:00	daniel	Wallyson	558199459046@s.whatsapp.net	2025-07-21 00:00:00	Cabelo
e9f2bde6-f757-4574-a802-7505aab6e79a	2025-07-23 00:00:00	09:40	vinicius jorge da silva	Bruno	558195743981@s.whatsapp.net	2025-07-21 00:00:00	Cabelo
c049213c-bcac-4336-8fa9-91b18191eed2	2025-07-25 00:00:00	18:40	wesley	Bruno	558196817233@s.whatsapp.net	2025-07-22 00:00:00	Cabelo
5fc75891-1447-4402-a095-d5fc5ff9c5b5	2025-07-22 00:00:00	18:00	Arthur Ulisses 	Bruno	local	2025-07-22 10:37:03.002	Cabelo+Sobrancelha
33a2cdd8-0971-4ecb-a849-4780370073f3	2025-07-23 00:00:00	08:40	Gelson 	Wallyson	local	2025-07-22 10:42:48.817	Cabelo
c81b95f2-b39d-4eea-ac9d-c718069b9605	2025-07-26 00:00:00	08:00	wilson	Wallyson	558197148928@s.whatsapp.net	2025-07-22 00:00:00	Cabelo+Sobrancelha
0464fd20-f76e-44e7-bdca-3ccd30aea3f4	2025-07-25 00:00:00	18:00	denílson	Bruno	558197084296@s.whatsapp.net	2025-07-22 00:00:00	Barba
30ff366a-5bd4-49a4-bd8e-40f4baf615ae	2025-07-23 00:00:00	08:00	gildevan	Wallyson	558182508046@s.whatsapp.net	2025-07-22 00:00:00	Cabelo+Barba
cbd20ec2-3910-461a-bbca-91c6e0958e95	2025-07-23 00:00:00	18:40	lucas	Bruno	558182451503@s.whatsapp.net	2025-07-22 00:00:00	Cabelo+Sobrancelha
d299d947-aa3b-4556-9748-77a656c2c13d	2025-07-26 00:00:00	11:20	matheus	Bruno	558199219447@s.whatsapp.net	2025-07-22 00:00:00	Cabelo
20062a4b-28a8-4792-8de9-ad610af6034c	2025-07-22 00:00:00	13:20	Felipe 	Wallyson	local	2025-07-22 14:02:17.421	Cabelo
274aef6d-8eb1-4777-9cf8-d4dd2e6a0f71	2025-07-26 00:00:00	10:00	pedro arthur	Bruno	558182599443@s.whatsapp.net	2025-07-22 00:00:00	Cabelo
848ae68b-e626-4a8d-a787-cf6a65f18090	2025-07-22 00:00:00	16:40	pedro robson	Wallyson	558198929820@s.whatsapp.net	2025-07-22 00:00:00	Cabelo
bd8806fc-c81a-4b1e-ba4d-5430887d4282	2025-07-22 00:00:00	16:40	valney	Bruno	558197232916@s.whatsapp.net	2025-07-22 00:00:00	Cabelo
2421d184-3226-403c-8839-f3c339807ada	2025-07-23 00:00:00	18:40	Juninho 	Wallyson	local	2025-07-22 15:25:27.697	Cabelo
286762d3-b78b-4978-a5dd-272f77135063	2025-07-23 00:00:00	11:40	breno	Bruno	558198437880@s.whatsapp.net	2025-07-22 00:00:00	Cabelo+Sobrancelha
ca916533-a39b-400d-9999-949775f51e49	2025-07-25 00:00:00	14:00	Alison Daniel 	Wallyson	local	2025-07-22 15:54:39.142	Cabelo
b488891d-9a8f-4ff7-80ae-42499a0f8ecf	2025-07-22 00:00:00	17:20	Matheus irmão Eduardo 	Bruno	local	2025-07-22 16:04:49.788	Cabelo
612582b2-6aa5-4419-9a57-5948e6614785	2025-07-26 00:00:00	16:40	heytor	Bruno	558197714625@s.whatsapp.net	2025-07-22 00:00:00	Cabelo+Barba
ffe559d5-bca2-4317-bf52-e7a245cde9d3	2025-07-28 00:00:00	09:40	guilherme	Bruno	558197258940@s.whatsapp.net	2025-07-22 00:00:00	Cabelo
0c80ff95-3e36-44ae-88e1-f30c59df1e16	2025-07-22 00:00:00	15:20	luan	Wallyson	558196537045@s.whatsapp.net	2025-07-22 00:00:00	Cabelo
950856b9-2fae-4e1f-8ef4-a623ca1c9d9d	2025-07-24 00:00:00	13:20	Ademir 	Wallyson	local	2025-07-22 17:00:08.548	Cabelo
d78d1dc1-8230-4d20-9c1a-6242999660a1	2025-07-24 00:00:00	14:00	Ademir 	Wallyson	local	2025-07-22 17:00:31.914	Cabelo
dcb61f95-1c67-41f4-9ae8-bd53cb4e0a08	2025-07-30 00:00:00	16:00	Ruan 	Wallyson	local	2025-07-22 17:00:52.949	Cabelo
3f30645c-eb54-4fee-8bb0-7dd3293f41aa	2025-07-25 00:00:00	16:40	andrey	Bruno	558195342893@s.whatsapp.net	2025-07-22 00:00:00	Cabelo
5c6076d7-1601-4b4b-af60-94d98ab78563	2025-07-26 00:00:00	15:20	aryel emanoel	Bruno	558199124476@s.whatsapp.net	2025-07-22 00:00:00	Cabelo
e9643981-9b94-4c7d-a059-dd796bc0fce2	2025-07-26 00:00:00	16:00	manoel josé	Bruno	558199124476@s.whatsapp.net	2025-07-22 00:00:00	Cabelo
5badef9e-bce5-4f79-97ab-c54f7a132d16	2025-07-23 00:00:00	09:20	matheus	Wallyson	558189099239@s.whatsapp.net	2025-07-22 00:00:00	Cabelo
477a5143-7ca3-44b2-8593-8b206cd3eb06	2025-07-23 00:00:00	10:00	Adegilson 	Wallyson	local	2025-07-22 18:15:40.519	Cabelo
5073fd00-ede9-4c8d-bb1c-cc90d0375691	2025-07-23 00:00:00	10:40	Marcelo 	Wallyson	local	2025-07-22 18:16:36.038	Cabelo
ea6e57c9-7285-4e7b-b764-447227c14a76	2025-07-23 00:00:00	14:00	Michel 	Wallyson	local	2025-07-22 18:18:07.112	Cabelo
5df0f223-eb0c-4f39-8d19-29bfa161ba2c	2025-07-22 00:00:00	19:20	müller	Bruno	558195330370@s.whatsapp.net	2025-07-22 00:00:00	Barba
d4e1ff1a-4b17-429d-886e-f17745d41a33	2025-07-23 00:00:00	17:20	mauricio	Bruno	558182705181@s.whatsapp.net	2025-07-22 00:00:00	Cabelo
a363eec2-a792-44a0-bc11-07ed76b700ed	2025-07-26 00:00:00	14:40	pedro augusto	Bruno	558171185174@s.whatsapp.net	2025-07-22 00:00:00	Cabelo
9a178411-94a3-4544-8690-1f219675fb67	2025-07-23 00:00:00	16:40	deyvson	Bruno	558195479577@s.whatsapp.net	2025-07-22 00:00:00	Cabelo
41289cff-968c-4da0-bdc9-bb835a1e5064	2025-07-26 00:00:00	09:20	Cleiton 	Wallyson	local	2025-07-22 20:45:04.808	Cabelo
773714fb-be62-462f-a75d-8f5fbc8967b9	2025-07-26 00:00:00	10:40	wesley	Bruno	558181016662@s.whatsapp.net	2025-07-22 00:00:00	Cabelo+Sobrancelha
c5bdaf42-5047-44f7-a69a-1002c95adb4a	2025-07-26 00:00:00	10:40	wallacy	Wallyson	90104202809537@lid	2025-07-22 00:00:00	Cabelo
40c6fda8-cf37-476f-b7ef-50a39ed6bb8c	2025-08-01 00:00:00	16:00	miguel	Bruno	558199728099@s.whatsapp.net	2025-07-22 00:00:00	Cabelo
abee2155-1a48-438e-bd01-fc337c2aaa95	2025-07-26 00:00:00	08:00	Josivaldo	Bruno	local	2025-07-22 23:25:44.412	Cabelo
ed31900f-c495-4e08-83d1-5d07aa39bc52	2025-07-28 00:00:00	10:20	breno	Bruno	558197349442@s.whatsapp.net	2025-07-22 00:00:00	Cabelo
abcae629-aced-49b1-8d4d-659a811535e2	2025-07-24 00:00:00	15:20	Indisponivel	Bruno	Indisponivel	2025-07-23 00:48:18.103	
7267f2aa-2cb7-4cc9-8ea6-3b1d7b8980a4	2025-07-24 00:00:00	16:00	Indisponivel	Bruno	Indisponivel	2025-07-23 00:48:18.204	
0ccb6329-3caf-4778-86c8-2cf677cdee8b	2025-07-24 00:00:00	16:40	Indisponivel	Bruno	Indisponivel	2025-07-23 00:48:18.241	
f2d9e826-4c27-48ef-bbb8-cf5f95fc308e	2025-07-24 00:00:00	17:20	Indisponivel	Bruno	Indisponivel	2025-07-23 00:48:18.277	
9b4dbdc2-7f61-4bd7-86bd-455212ecbf7f	2025-07-24 00:00:00	18:00	Indisponivel	Bruno	Indisponivel	2025-07-23 00:48:18.361	
abefa20e-8a52-45fd-ad9d-b6e505902688	2025-07-24 00:00:00	18:40	Indisponivel	Bruno	Indisponivel	2025-07-23 00:48:18.473	
4a872a10-576b-446a-bd34-57b532924a1d	2025-07-30 00:00:00	08:40	Gelson 	Wallyson	local	2025-07-23 12:21:55.994	Cabelo
42d02f9d-3b85-4509-8fc8-497ecbb2d445	2025-07-23 00:00:00	14:40	Indisponivel	Bruno	Indisponivel	2025-07-23 12:56:40.042	
d674e6a7-505c-4bf2-95bb-4d38e259d738	2025-07-23 00:00:00	15:20	Indisponivel	Bruno	Indisponivel	2025-07-23 12:56:40.141	
63bb0fc3-8da0-4dfb-b589-9c9f4647e414	2025-07-23 00:00:00	16:00	Indisponivel	Bruno	Indisponivel	2025-07-23 12:56:40.173	
868f7471-0bac-4ce3-9cbd-4a10720277eb	2025-07-23 00:00:00	14:40	Alex	Wallyson	local	2025-07-23 13:26:59.918	Cabelo+Barba
35fc3a7b-43fd-4b23-a01e-636ac7d24dac	2025-07-23 00:00:00	17:20	Michel 	Wallyson	local	2025-07-23 13:40:19.069	Cabelo
7dafa2f2-6892-4b3d-943f-9cc9d8373f34	2025-07-25 00:00:00	19:20	fernando nutri smart	Bruno	558199948217@s.whatsapp.net	2025-07-23 00:00:00	Cabelo
55c164c8-70bd-4eb7-abb8-07c0aa734f9f	2025-07-24 00:00:00	10:00	Heitor 	Wallyson	local	2025-07-23 14:05:55.627	Cabelo
44ace690-9132-4102-bff8-2d4ac57134b6	2025-07-25 00:00:00	20:00	matheus vinicius	Bruno	558197894492@s.whatsapp.net	2025-07-23 00:00:00	Cabelo
1949f727-48d8-40fd-b00a-bfb8943278a4	2025-07-23 00:00:00	18:00	Vitor 	Bruno	local	2025-07-23 14:07:42.367	Cabelo
f959abc8-08fb-4d36-8f3b-846ca01f6a6b	2025-07-23 00:00:00	13:20	lucas xoxota	Bruno	558198659687@s.whatsapp.net	2025-07-23 00:00:00	Cabelo+Sobrancelha
09e4a07e-1e7f-4889-b59c-409ea2d31040	2025-07-30 00:00:00	18:40	gonzaga neto	Bruno	558198514795@s.whatsapp.net	2025-07-23 00:00:00	Cabelo
f0c81f75-f357-42f8-b499-2f2462e4dc3c	2025-07-28 00:00:00	16:40	antônio henrique	Bruno	558197083657@s.whatsapp.net	2025-07-23 00:00:00	Cabelo+Sobrancelha
bb631744-1420-4af5-945f-3ffd13743627	2025-07-28 00:00:00	17:20	pedro henrique	Bruno	558196200528@s.whatsapp.net	2025-07-23 00:00:00	Cabelo+Sobrancelha
1f40073f-798f-4226-baae-836ccae52806	2025-07-23 00:00:00	14:00	Breno 	Bruno	local	2025-07-23 16:14:33.636	Cabelo
5a2d53b0-00e8-4bc7-8128-bfc80d32697f	2025-07-25 00:00:00	17:20	thomas	Bruno	558181391720@s.whatsapp.net	2025-07-23 00:00:00	Cabelo
8ebb8e70-199d-4e37-bd64-1a31ae231811	2025-07-28 00:00:00	11:00	joão pedro campos	Bruno	558196073970@s.whatsapp.net	2025-07-23 00:00:00	Cabelo+Barba
8c531c00-6cfb-4719-b045-0d99c389f5f1	2025-07-25 00:00:00	18:40	sport maior do nordeste	Wallyson	558196903604@s.whatsapp.net	2025-07-23 00:00:00	Cabelo+Barba
720af43e-a2b9-4bea-b0b4-ac634fcfa112	2025-07-23 00:00:00	16:00	Indisponivel	Wallyson	Indisponivel	2025-07-23 18:58:09.288	
77abacea-29f4-4b9d-9c34-725adf460cbe	2025-07-23 00:00:00	16:40	Indisponivel	Wallyson	Indisponivel	2025-07-23 18:58:09.375	
2613dee1-1556-48b8-b77a-76cc61414e59	2025-07-29 00:00:00	17:20	Lucas 	Wallyson	local	2025-07-23 21:09:45.062	Cabelo
bd611798-e0b1-4d75-b0a6-74d2c0be7e42	2025-08-11 00:00:00	18:40	neto	Bruno	558194759358@s.whatsapp.net	2025-07-23 00:00:00	Cabelo+Sobrancelha
f1381511-2586-4146-920c-9dab69788925	2025-07-24 00:00:00	14:40	Victor 	Wallyson	local	2025-07-23 23:12:36.471	Cabelo+Barba
e038894a-3c9d-43a0-a093-62a68fac1fa2	2025-07-24 00:00:00	11:20	Zé neto 	Wallyson	local	2025-07-24 00:54:32.226	Cabelo
67759642-f3aa-48cb-ab13-e01e6e03a48a	2025-07-31 00:00:00	09:40	rhuan	Bruno	558195251500@s.whatsapp.net	2025-07-23 00:00:00	Cabelo+Sobrancelha
6b932483-44c3-4096-b868-6104100e2606	2025-07-28 00:00:00	16:40	gláucio	Wallyson	558187255411@s.whatsapp.net	2025-07-23 00:00:00	Cabelo
6ed7bf95-e2c3-4767-b07f-935d2a685652	2025-07-25 00:00:00	19:20	felipe	Wallyson	558198734964@s.whatsapp.net	2025-07-24 00:00:00	Cabelo+Barba
d2062496-6fcf-4fe9-b0ef-6ccd3cd8e974	2025-07-24 00:00:00	08:00	Eudes 	Wallyson	local	2025-07-24 10:20:25.31	Cabelo
c7d1b32c-481c-4c65-97f3-41dedf050692	2025-07-24 00:00:00	09:00	Indisponivel	Bruno	Indisponivel	2025-07-24 12:03:58.349	
50638805-00bc-4b1c-9b1a-42ef15133dd8	2025-07-24 00:00:00	09:40	Indisponivel	Bruno	Indisponivel	2025-07-24 12:03:58.44	
ea9c4d53-0354-4954-8480-e14e257682f3	2025-07-24 00:00:00	10:20	Indisponivel	Bruno	Indisponivel	2025-07-24 12:03:58.471	
af810bf2-c523-41be-8670-4e82e491aaa6	2025-07-24 00:00:00	11:00	Indisponivel	Bruno	Indisponivel	2025-07-24 12:03:58.504	
2b4aeaa1-0a23-4579-8c5e-a6ca306b6b79	2025-07-24 00:00:00	11:40	Indisponivel	Bruno	Indisponivel	2025-07-24 12:03:58.537	
0f751ebe-ebca-4c45-b9de-da4be61d71c8	2025-07-26 00:00:00	10:00	mayrlon	Wallyson	558196600679@s.whatsapp.net	2025-07-24 00:00:00	Cabelo+Sobrancelha
2763f076-e1f7-43c1-9d62-b8e7dcad6a24	2025-07-25 00:00:00	09:40	tarcísio	Bruno	558185887456@s.whatsapp.net	2025-07-24 00:00:00	Cabelo
702060f7-4aed-418f-91ae-72858a73524c	2025-07-25 00:00:00	16:00	antonio	Bruno	558799676551@s.whatsapp.net	2025-07-24 00:00:00	Barba
e8d40df9-d18d-4d89-b67f-b76c1767f88f	2025-07-26 00:00:00	14:00	lucas	Wallyson	558194270364@s.whatsapp.net	2025-07-24 00:00:00	Cabelo
4d565ead-2196-46ea-92cb-93a581550265	2025-07-26 00:00:00	14:40	kaique	Wallyson	558194270364@s.whatsapp.net	2025-07-24 00:00:00	Cabelo
7c2f7b50-d376-47ee-801f-215f1cf4c9db	2025-07-25 00:00:00	18:00	jackson	Wallyson	558197174200@s.whatsapp.net	2025-07-24 00:00:00	Cabelo
25981673-9a87-4239-bf73-c9a85347ab7c	2025-07-24 00:00:00	18:00	raul	Wallyson	558197286844@s.whatsapp.net	2025-07-24 00:00:00	Cabelo
29a34295-0d81-4e16-be38-dbde82af25ee	2025-07-25 00:00:00	09:00	hatus	Bruno	558199706416@s.whatsapp.net	2025-07-24 00:00:00	Cabelo+Barba
6edb3f41-ff58-45f4-bd59-8e9245f5914d	2025-07-25 00:00:00	13:20	Paulinho 	Wallyson	local	2025-07-24 17:26:04.874	Acabamento (Pezinho)
0e1d631c-028c-4807-9931-bd58185d3499	2025-07-28 00:00:00	14:40	Yuri 	Wallyson	local	2025-07-24 17:27:09.581	Cabelo
fd716715-cc32-47a0-8587-5037406996e2	2025-07-28 00:00:00	15:20	Hiago 	Wallyson	local	2025-07-24 17:27:24.324	Cabelo
f67f1202-e92f-4f96-b9b8-4d6cacf7e808	2025-07-25 00:00:00	11:40	arthur	Bruno	558194115511@s.whatsapp.net	2025-07-24 00:00:00	Barba
319be095-287d-4675-8e8c-56a43236f988	2025-07-25 00:00:00	15:20	kauê	Wallyson	558199937689@s.whatsapp.net	2025-07-24 00:00:00	Cabelo+Sobrancelha
d0ea02a8-4b24-48e1-b7ac-b6d56514f2a0	2025-07-31 00:00:00	18:40	luan victor	Bruno	558181307345@s.whatsapp.net	2025-07-24 00:00:00	Cabelo+Sobrancelha
ddf3983d-65b4-4153-adfe-7d0708782c1f	2025-07-31 00:00:00	18:00	evoney fernandes	Bruno	558197279446@s.whatsapp.net	2025-07-24 00:00:00	Cabelo
047ebdc5-666a-484d-be36-d596d6f305a3	2025-07-31 00:00:00	17:20	leal	Bruno	558197273032@s.whatsapp.net	2025-07-24 00:00:00	Cabelo
0b497733-b6ae-4b14-9553-622e1f67b9bd	2025-07-26 00:00:00	18:00	joão nycolas	Wallyson	558195129087@s.whatsapp.net	2025-07-24 00:00:00	Cabelo
e85474bd-979f-40f6-a40e-225b4e0a85f6	2025-07-25 00:00:00	15:20	gabriel	Bruno	558192417684@s.whatsapp.net	2025-07-24 00:00:00	Cabelo+Sobrancelha
28ccfaa8-b443-43b0-94d8-6f2a71335b36	2025-07-28 00:00:00	18:40	jônata davi	Bruno	558199773748@s.whatsapp.net	2025-07-24 00:00:00	Cabelo
9ee897d2-967d-4af0-a63a-1469aff895e9	2025-07-25 00:00:00	14:40	josé miguel	Bruno	558196219587@s.whatsapp.net	2025-07-24 00:00:00	Cabelo
a33da136-fec0-4cb0-a17d-6d233e48e659	2025-08-08 00:00:00	09:20	Matheus 	Wallyson	local	2025-07-25 13:18:46.968	Cabelo
a04ba33d-d5a0-4e5c-95ae-97a55369a805	2025-07-31 00:00:00	16:00	gustavo farias	Wallyson	558196195368@s.whatsapp.net	2025-07-24 00:00:00	Cabelo+Sobrancelha
6279ccfb-eafb-4e7c-a15f-39207f84ca21	2025-07-25 00:00:00	10:20	joão	Bruno	558196702254@s.whatsapp.net	2025-07-25 00:00:00	Cabelo+Barba
4657cbb9-1668-492f-a61a-8ddef8408529	2025-07-26 00:00:00	12:00	ruan	Wallyson	558199697267@s.whatsapp.net	2025-07-25 00:00:00	Cabelo+Sobrancelha
081294c9-cbc0-4fb6-a2fd-e8ccb4be989e	2025-07-25 00:00:00	16:00	elysson	Wallyson	558199697267@s.whatsapp.net	2025-07-25 00:00:00	Cabelo+Sobrancelha
999c971c-24b0-4b60-8e81-42d6df2f0713	2025-07-25 00:00:00	16:40	ravi	Wallyson	558195156041@s.whatsapp.net	2025-07-25 00:00:00	Cabelo
33469b53-f4b5-4527-bc1a-d6d3a280dacf	2025-07-25 00:00:00	17:20	bruno gomes	Wallyson	558196522258@s.whatsapp.net	2025-07-25 00:00:00	Barba
8790e01d-48aa-4f2c-84e9-74de2cac9588	2025-07-26 00:00:00	16:40	Kauan Yuri 	Wallyson	local	2025-07-25 15:47:32.74	Cabelo
ddfadf55-e351-4eda-91d8-5ef8ef8aedcf	2025-07-26 00:00:00	11:20	Matheus 	Wallyson	local	2025-07-25 15:49:37.984	Cabelo
30080775-cf5f-41a3-afa4-4cc67fa6d0b0	2025-07-25 00:00:00	20:00	Ivonaldo 	Wallyson	local	2025-07-25 16:27:38.278	Cabelo
677c0322-46aa-45e1-a0d8-c602df146a6a	2025-07-26 00:00:00	15:20	Luiz André 	Wallyson	local	2025-07-25 16:56:01.542	Cabelo
4056288c-7311-488c-85ab-93c793d1420c	2025-07-26 00:00:00	13:20	pedro sérgio	Wallyson	558197271391@s.whatsapp.net	2025-07-25 00:00:00	Cabelo+Sobrancelha
9ef93611-f568-4a3a-bb7e-29c3be81e874	2025-07-28 00:00:00	16:00	mateus de melo guerra	Bruno	558199987381@s.whatsapp.net	2025-07-25 00:00:00	Cabelo
76230cd6-ceb5-453b-afa2-8deed02e5fdb	2025-07-28 00:00:00	17:20	Noa 	Wallyson	local	2025-07-25 22:26:15.477	Cabelo
73710f3e-9e18-4e4a-b01a-22efe07ddd87	2025-08-01 00:00:00	15:20	joao lucas	Bruno	558189785404@s.whatsapp.net	2025-07-25 00:00:00	Cabelo+Sobrancelha
2704fee6-5c3d-42fa-b1c6-fc36bc018852	2025-07-31 00:00:00	14:00	gabriel	Wallyson	558198511903@s.whatsapp.net	2025-07-25 00:00:00	Cabelo
ec6d8015-20fe-4774-b8ca-fe83cbf43693	2025-07-26 00:00:00	17:20	júlio césar	Wallyson	558196440108@s.whatsapp.net	2025-07-25 00:00:00	Cabelo
c1e006ed-474e-44f9-94c6-3789f6b56a20	2025-07-28 00:00:00	18:00	fernando	Bruno	558196035269@s.whatsapp.net	2025-07-25 00:00:00	Cabelo
86de2c8c-96af-438d-ac4d-0b4ae2dff851	2025-08-02 00:00:00	14:00	14:00	Wallyson	558196852620@s.whatsapp.net	2025-07-25 00:00:00	Cabelo+Barba
8ad277db-b202-424a-86ca-58f46461f768	2025-07-26 00:00:00	16:00	fernando	Wallyson	558197789968@s.whatsapp.net	2025-07-26 00:00:00	Cabelo
3951fb2d-1c0b-4479-a267-f26d316178c1	2025-07-26 00:00:00	14:00	Indisponivel	Bruno	Indisponivel	2025-07-26 03:33:06.27	
421af125-1077-4a59-a69b-c9d6fa20269a	2025-07-28 00:00:00	10:20	josé arthur	Wallyson	558194257577@s.whatsapp.net	2025-07-26 00:00:00	Cabelo
58ca76ac-0636-4496-a150-f82b8408aa75	2025-08-02 00:00:00	16:00	Thiago 	Wallyson	local	2025-07-26 13:53:27.318	Cabelo+Barba
ba55e9c3-9496-4c0d-9f9b-4c985190ddd7	2025-07-30 00:00:00	11:20	João hidratação tbm 	Wallyson	local	2025-07-26 14:42:15.953	Cabelo+Sobrancelha
27035b0e-9702-447b-a79f-4851e8454e68	2025-07-21 00:00:00	16:40	Pedrao	Wallyson	local	2025-07-26 14:53:40.544	Cabelo+Barba
3e74ee96-c0d7-40b4-a981-5cabf331e93f	2025-08-01 00:00:00	18:00	wellington	Wallyson	558196852620@s.whatsapp.net	2025-07-26 00:00:00	Cabelo+Barba
9b0f3d73-c641-49e1-9a66-3c04b4d1c606	2025-07-28 00:00:00	14:00	guilherme	Bruno	5521980058628@s.whatsapp.net	2025-07-26 00:00:00	Cabelo
8525edf9-27c9-48bb-a201-3ac365847c4a	2025-08-02 00:00:00	09:20	Kauan 	Wallyson	local	2025-07-26 18:36:32.385	Cabelo
cb2e62f2-cb13-4b01-99e5-6bdac529c9b0	2025-07-28 00:00:00	14:40	guilherme	Bruno	558192973085@s.whatsapp.net	2025-07-26 00:00:00	Cabelo+Sobrancelha
2751f70d-af3f-4003-9930-2327d98c5058	2025-07-30 00:00:00	18:40	carlos henrique	Wallyson	558197954525@s.whatsapp.net	2025-07-26 00:00:00	Cabelo
9c9c0ed1-7460-46c4-bbce-80f0e12164ed	2025-07-30 00:00:00	14:00	ítalo	Bruno	70411761017020@lid	2025-07-26 00:00:00	Cabelo
0c1b71c6-dc07-42c0-b605-5386b2629777	2025-07-31 00:00:00	16:00	bruno	Bruno	558181317634@s.whatsapp.net	2025-07-26 00:00:00	Cabelo+Barba
c861c73f-14bf-40d8-a71b-22a18886fc74	2025-07-29 00:00:00	14:00	Pedro de Lima 	Wallyson	local	2025-07-26 20:47:53.697	Cabelo
73df4389-ab39-4530-8a09-19a5198fe8a5	2025-07-31 00:00:00	09:00	joão rommel	Bruno	558182224217@s.whatsapp.net	2025-07-26 00:00:00	Cabelo
a5555a80-6831-493b-9577-ff6dc6e1d7c7	2025-07-31 00:00:00	11:40	gustavo	Bruno	558198983986@s.whatsapp.net	2025-07-26 00:00:00	Cabelo
04215874-77a0-4c0a-8ff2-ada9a3c8d3f6	2025-07-28 00:00:00	11:00	joão victor	Wallyson	558196049253@s.whatsapp.net	2025-07-26 00:00:00	Cabelo+Sobrancelha
549a3b61-af88-4f02-9721-8beeb37c9664	2025-07-30 00:00:00	09:00	pedro augusto	Bruno	558171185174@s.whatsapp.net	2025-07-27 00:00:00	Cabelo
9bbde2f2-0fa8-4f00-a010-dbb57706e434	2025-07-28 00:00:00	18:00	kauê	Wallyson	558199937689@s.whatsapp.net	2025-07-27 00:00:00	Cabelo+Sobrancelha
7657e4df-df41-4223-a6c4-fc2ba463e189	2025-08-02 00:00:00	17:20	gustavo	Bruno	558196111653@s.whatsapp.net	2025-07-27 00:00:00	Cabelo+Sobrancelha
c99f9d37-9401-49d8-89a9-c2cf3bf2aeb4	2025-07-31 00:00:00	08:00	pedro lucas	Wallyson	558197832195@s.whatsapp.net	2025-07-27 00:00:00	Cabelo
4b545216-8d84-44c9-9c14-1db4b4ecfae7	2025-07-30 00:00:00	15:20	gabriel henrique	Bruno	558185537298@s.whatsapp.net	2025-07-28 00:00:00	Cabelo
1c818254-ad72-4113-ad2c-a5b2b9a6290c	2025-07-30 00:00:00	16:40	francisco	Wallyson	558182062970@s.whatsapp.net	2025-07-28 00:00:00	Cabelo
df9b6d35-b003-47d1-9c45-c2c63454622e	2025-07-28 00:00:00	16:00	marcus	Wallyson	558199349818@s.whatsapp.net	2025-07-28 00:00:00	Cabelo
f8124311-f117-441f-9107-2a88bd742fd4	2025-08-02 00:00:00	08:40	allef ryan	Bruno	558195740243@s.whatsapp.net	2025-07-28 00:00:00	Cabelo
b7370e58-2870-4dc9-9e78-0e404c302eda	2025-07-31 00:00:00	11:00	lucas rafael	Bruno	558197593200@s.whatsapp.net	2025-07-28 00:00:00	Cabelo
d62b2bf6-ff0e-4884-9f31-e08ea65d2d7e	2025-07-28 00:00:00	18:40	alexandre	Wallyson	558196593259@s.whatsapp.net	2025-07-28 00:00:00	Cabelo+Barba
472c9359-5829-4e82-bcf9-9f0888f31024	2025-07-30 00:00:00	11:00	cauê	Bruno	558197796167@s.whatsapp.net	2025-07-28 00:00:00	Cabelo
186ac8c0-c03b-4340-a198-cc82179f1cfd	2025-07-28 00:00:00	11:40	josué lima	Wallyson	558192532850@s.whatsapp.net	2025-07-28 00:00:00	Cabelo+Sobrancelha
5d8f744c-bb70-4479-a37d-0f914341d89f	2025-07-30 00:00:00	16:40	rafael	Bruno	558188763249@s.whatsapp.net	2025-07-28 00:00:00	Cabelo
eac984cb-2196-4299-a934-89cd3e7d6aa1	2025-07-28 00:00:00	15:20	ataliba	Bruno	558182671510@s.whatsapp.net	2025-07-28 00:00:00	Barba
ac349f6d-d26b-4e92-84a3-10ed09951842	2025-07-29 00:00:00	16:40	Leandro 	Wallyson	local	2025-07-28 13:37:47.525	Cabelo+Barba
814a2811-5aa1-4388-9ac2-561f292873f0	2025-07-28 00:00:00	14:00	Alberto 	Wallyson	local	2025-07-28 13:46:09.726	Cabelo
1df0a94a-ce62-4d14-8676-93c008ea800f	2025-07-30 00:00:00	11:40	joão gabriel	Bruno	558195216795@s.whatsapp.net	2025-07-28 00:00:00	Cabelo
0bd1b0f4-d5f4-4aa4-8e88-0530aa18858b	2025-07-29 00:00:00	16:00	Jaciel 	Wallyson	local	2025-07-28 14:54:58.266	Cabelo
3a43322e-a546-4d91-8225-244b1d5ec161	2025-08-02 00:00:00	10:00	wanderson	Bruno	558189785404@s.whatsapp.net	2025-07-28 00:00:00	Cabelo
040c30b4-8299-4833-b057-4d8dd19bc098	2025-07-30 00:00:00	14:40	Alan botox ( vem de 13h) 	Bruno	local	2025-07-28 16:03:19.181	Cabelo
e5e87535-d062-4929-a05d-96910abf6895	2025-07-29 00:00:00	09:20	antonio	Wallyson	558196049253@s.whatsapp.net	2025-07-28 00:00:00	Cabelo
b047dc3d-d6a3-4387-8000-de60a015fd91	2025-08-02 00:00:00	16:00	paulo henrique	Bruno	558174004953@s.whatsapp.net	2025-07-28 00:00:00	Cabelo
ebff894b-9319-43e5-88b0-022022241bc2	2025-07-29 00:00:00	18:00	Pedro 	Wallyson	local	2025-07-28 19:56:16.29	Cabelo+Barba
2a7abe93-d040-4211-b328-76ec3d01fc24	2025-08-02 00:00:00	08:00	deyvid	Bruno	558199201610@s.whatsapp.net	2025-07-28 00:00:00	Cabelo
64221485-e756-4821-9fc5-11fac4a29df6	2025-07-29 00:00:00	08:00	Indisponivel	Wallyson	Indisponivel	2025-07-28 20:57:21.469	
cdd85078-a628-4bb4-a5ec-07f7db46fdf9	2025-07-29 00:00:00	08:40	Indisponivel	Wallyson	Indisponivel	2025-07-28 20:57:21.552	
5c848596-93b2-4731-8b3b-40cd91e992a6	2025-07-30 00:00:00	16:00	cauã gabriel	Bruno	558199527666@s.whatsapp.net	2025-07-28 00:00:00	Cabelo
d2a23073-a0ed-4d05-803b-95908077ca78	2025-07-30 00:00:00	13:20	joaquim	Bruno	558196049780@s.whatsapp.net	2025-07-28 00:00:00	Cabelo
08cd612e-2514-475f-a886-51610bbc46ac	2025-07-30 00:00:00	13:20	felipe	Wallyson	558181451150@s.whatsapp.net	2025-07-29 00:00:00	Cabelo+Sobrancelha
dc80a908-cdb2-4f01-ba7f-9cc245e3b57a	2025-07-31 00:00:00	10:00	marquinhos	Wallyson	558198441841@s.whatsapp.net	2025-07-29 00:00:00	Cabelo
5a12cae7-6394-4b7a-b723-48cf161f77e3	2025-07-29 00:00:00	11:20	gabriel	Wallyson	558181774084@s.whatsapp.net	2025-07-29 00:00:00	Cabelo
151d4c40-f776-4bb9-a729-ec1c1cb854dd	2025-09-02 00:00:00	08:00	pedro	Wallyson	40166651633741@lid	2025-07-29 00:00:00	Cabelo
6420e423-befd-48ff-ba30-297966fbc15f	2025-07-29 00:00:00	18:40	henrique	Wallyson	558195637127@s.whatsapp.net	2025-07-29 00:00:00	Cabelo
84fe2e1d-ecb4-4605-bae3-4e60f0971b8e	2025-07-29 00:00:00	15:20	jefferson	Wallyson	558198266953@s.whatsapp.net	2025-07-29 00:00:00	Cabelo
c78fb944-d121-420d-b7b1-df844b221231	2025-07-30 00:00:00	09:20	Walyson 	Wallyson	local	2025-07-29 12:53:52.672	Cabelo
a3ea8508-a09a-4490-bffc-13d1677ebd37	2025-07-30 00:00:00	10:00	Luzes 	Wallyson	local	2025-07-29 12:54:10.077	Cabelo
ba7fbb6a-bee4-4ac8-bae9-9f1c30aa12fc	2025-07-29 00:00:00	13:20	wellington	Wallyson	558193204777@s.whatsapp.net	2025-07-29 00:00:00	Cabelo
4613c668-e1ee-4d09-904a-3b24a26585f1	2025-08-02 00:00:00	10:40	ismael	Bruno	558199824318@s.whatsapp.net	2025-07-29 00:00:00	Cabelo
5aad2016-9149-48c3-9467-1d2a2d2cb839	2025-08-01 00:00:00	13:20	ian holanda	Bruno	558196739228@s.whatsapp.net	2025-07-29 00:00:00	Cabelo
b6fd9079-59db-45e1-9b76-f304b0d7be3e	2025-07-31 00:00:00	11:20	Jorge 	Wallyson	local	2025-07-29 14:26:14.899	Cabelo
462ab4a4-dd69-490a-9a3b-bac4b4affe45	2025-07-29 00:00:00	14:40	felipe helcias	Wallyson	558197667880@s.whatsapp.net	2025-07-29 00:00:00	Cabelo+Barba
00183768-7de5-4657-8283-40eac8550250	2025-07-30 00:00:00	17:20	anthony rodrigues	Bruno	558199046289@s.whatsapp.net	2025-07-29 00:00:00	Cabelo+Sobrancelha
d88ba750-4347-4c74-b59f-11f963a1b1bb	2025-08-01 00:00:00	18:00	Alyson free shopping 	Bruno	local	2025-07-29 15:18:51.664	Cabelo+Barba
de6de891-80a0-4dd3-baf6-88df78e89fe9	2025-08-01 00:00:00	10:20	joão paulo	Bruno	558182599443@s.whatsapp.net	2025-07-29 00:00:00	Cabelo
15233733-6946-4d30-a324-2e7faf1c3465	2025-08-02 00:00:00	15:20	joão guilherme	Bruno	558181673375@s.whatsapp.net	2025-07-29 00:00:00	Cabelo
b316aed6-7f65-4ec8-a77e-4306f9c46280	2025-08-02 00:00:00	11:20	anderson carlos	Bruno	558196579148@s.whatsapp.net	2025-07-29 00:00:00	Cabelo
9e0523df-d4ac-414a-b294-30abf6a7e1ea	2025-07-31 00:00:00	10:20	carlos daniel do carmo santos	Bruno	558198034222@s.whatsapp.net	2025-07-29 00:00:00	Cabelo
4f616dd0-454e-4140-8c22-710f8c0c2a9e	2025-08-01 00:00:00	13:20	Paulinho 	Wallyson	local	2025-07-29 17:49:32.709	Acabamento (Pezinho)
da0d8ba9-a245-4a4f-afeb-e3a03c1d992d	2025-08-26 00:00:00	13:20	Indisponivel	Bruno	Indisponivel	2025-07-29 19:46:51.419	
2811bf80-cd93-49ce-bd96-5091f12ff675	2025-08-26 00:00:00	14:00	Indisponivel	Bruno	Indisponivel	2025-07-29 19:46:51.519	
5fe82358-25b7-4e79-97bb-904034d37757	2025-08-26 00:00:00	14:40	Indisponivel	Bruno	Indisponivel	2025-07-29 19:46:51.547	
340ed4c7-95fd-4347-af59-cc3b0d9d52e4	2025-08-26 00:00:00	15:20	Indisponivel	Bruno	Indisponivel	2025-07-29 19:46:51.576	
2d1c384e-ff45-456c-a2db-3e0a09a58f2f	2025-08-26 00:00:00	16:00	Indisponivel	Bruno	Indisponivel	2025-07-29 19:46:51.605	
cbae40d7-8a3f-41a0-b174-925b3bca8321	2025-08-26 00:00:00	16:40	Indisponivel	Bruno	Indisponivel	2025-07-29 19:46:51.635	
1ae7e034-a4dc-47c9-8d3f-2d22de0f2f47	2025-08-26 00:00:00	17:20	Indisponivel	Bruno	Indisponivel	2025-07-29 19:46:51.663	
6019b6a8-2a8e-4c7f-bb0d-cd60f0faec48	2025-08-26 00:00:00	18:00	Indisponivel	Bruno	Indisponivel	2025-07-29 19:46:51.692	
59622dc2-13d8-4400-ad15-ca2882202cb1	2025-08-26 00:00:00	18:40	Indisponivel	Bruno	Indisponivel	2025-07-29 19:46:51.721	
57d3693d-f2d9-4670-90c6-21b8e1511206	2025-08-26 00:00:00	19:20	Indisponivel	Bruno	Indisponivel	2025-07-29 19:46:51.751	
65510912-f168-40d0-87d5-923b3fc97c65	2025-07-30 00:00:00	10:40	Gerdo	Wallyson	local	2025-07-29 19:48:45.228	Cabelo
24711d47-cde9-48de-a73a-6e4ea3a5b9d9	2025-07-31 00:00:00	18:40	Letícia 	Wallyson	local	2025-07-29 20:15:41.798	Cabelo
381916c0-1a4f-438f-8ad0-8e741e33f1a7	2025-08-01 00:00:00	17:20	neto	Bruno	558189579331@s.whatsapp.net	2025-07-29 00:00:00	Cabelo
ea39c42b-4134-425b-9f64-7f666c6a1186	2025-07-30 00:00:00	15:20	Érika 	Wallyson	local	2025-07-29 20:33:29.366	Cabelo
f070094a-f0b9-4616-9343-4c7a202cf34f	2025-07-30 00:00:00	14:40	vandinho	Wallyson	558197042471@s.whatsapp.net	2025-07-29 00:00:00	Cabelo
769aff9e-af5e-42b1-b0f3-7f2f5187636a	2025-07-30 00:00:00	17:20	davi	Wallyson	558197232916@s.whatsapp.net	2025-07-29 00:00:00	Cabelo
188e6461-23d3-44d0-a818-c187bbc19144	2025-07-30 00:00:00	14:00	gustavo fiel romão da silva	Wallyson	558197822298@s.whatsapp.net	2025-07-29 00:00:00	Cabelo
64bd03a6-20cf-4f1a-9edb-c990b0cb6618	2025-07-31 00:00:00	14:00	felipe silva	Bruno	558196065070@s.whatsapp.net	2025-07-29 00:00:00	Cabelo
ec2ae9ed-681c-4b89-897d-70a1d5ff8f78	2025-08-02 00:00:00	12:00	josé junior	Bruno	558182704048@s.whatsapp.net	2025-07-29 00:00:00	Cabelo
46537406-30dc-47f0-8977-604eb95baa5f	2025-08-01 00:00:00	14:40	emídio	Bruno	558181606802@s.whatsapp.net	2025-07-30 00:00:00	Cabelo
32531f0d-2207-49e6-8d23-1145d897a714	2025-08-04 00:00:00	15:20	maicon	Bruno	558194686969@s.whatsapp.net	2025-07-30 00:00:00	Cabelo
f23300ac-1139-448f-acb5-b6b5b6dadfd3	2025-08-04 00:00:00	09:40	Ocupado	Bruno	local	2025-07-30 10:36:16.057	Cabelo
9572d53a-11ad-4a20-b184-553a546409f8	2025-08-04 00:00:00	10:20	Ocupado	Bruno	local	2025-07-30 10:36:28.307	Cabelo
1a852270-4e38-4c61-9aa0-c17c0eab4ea3	2025-08-04 00:00:00	11:00	Indisponível 	Bruno	local	2025-07-30 10:36:41.944	Cabelo
b1731a80-89a8-4a7e-8a36-9be03917cb89	2025-08-04 00:00:00	11:40	Ocupado	Bruno	local	2025-07-30 10:36:53.848	Cabelo
4fde2fc0-b71e-44f1-a8ac-33da8c19e5f8	2025-08-01 00:00:00	09:40	anderson	Bruno	558198694494@s.whatsapp.net	2025-07-30 00:00:00	Cabelo
77f3d8fc-7cb4-4a41-bbe1-f72df5d0a73e	2025-08-02 00:00:00	08:40	joão guilherme	Wallyson	558192101006@s.whatsapp.net	2025-07-30 00:00:00	Cabelo
3066d52a-5eed-40c7-bd7e-81968d724e65	2025-08-01 00:00:00	14:00	joão marcello	Bruno	558196393507@s.whatsapp.net	2025-07-30 00:00:00	Cabelo+Sobrancelha
56c3e322-e5fa-40cc-ba20-c1079e2da41e	2025-08-07 00:00:00	10:20	Indisponivel	Bruno	Indisponivel	2025-08-06 12:35:18.873	
8ee91031-1dd3-49b5-a3fa-005e0ac35afb	2025-08-07 00:00:00	11:00	Indisponivel	Bruno	Indisponivel	2025-08-06 12:35:18.904	
7b999a46-0d2d-4dd6-8963-a3d4bb525c38	2025-08-07 00:00:00	11:40	Indisponivel	Bruno	Indisponivel	2025-08-06 12:35:18.943	
ea1d9a2d-18bd-4fda-8889-d25dd5b1039b	2025-08-02 00:00:00	14:40	kayke	Wallyson	558197180683@s.whatsapp.net	2025-07-30 00:00:00	Cabelo+Barba
11e2d4c8-c2e6-44c3-bc4e-51bfa5b3e59c	2025-07-31 00:00:00	13:20	pablo	Bruno	558182396657@s.whatsapp.net	2025-07-30 00:00:00	Cabelo
6f66d0bc-3309-4271-ab66-01e362f391f5	2025-08-01 00:00:00	15:20	júlio	Wallyson	558196192233@s.whatsapp.net	2025-07-30 00:00:00	Cabelo
08b08fb1-84d8-4884-b0f8-4bba589d781b	2025-08-02 00:00:00	14:00	Márcia ( Matheus)	Bruno	local	2025-07-30 15:26:17.244	Cabelo
37368319-f625-4c6d-b88f-be236e65f195	2025-08-01 00:00:00	16:40	0	Bruno	558186946707@s.whatsapp.net	2025-07-30 00:00:00	Cabelo
b4ae2c79-f890-48e1-bf89-bb39b7010ba1	2025-08-01 00:00:00	18:40	welliton fonseca	Bruno	558198022472@s.whatsapp.net	2025-07-30 00:00:00	Cabelo
b90fcaa9-2a3d-4140-b5c5-ad7fd28186f2	2025-08-02 00:00:00	13:20	vitor  araújo	Bruno	558186946707@s.whatsapp.net	2025-07-30 00:00:00	Cabelo
a4d563c2-723f-42e4-82b5-8b643050b07a	2025-07-31 00:00:00	10:40	hugo	Wallyson	558197543337@s.whatsapp.net	2025-07-30 00:00:00	Cabelo
3c298e4a-d7e1-46b1-8644-c8cb7d017a18	2025-07-31 00:00:00	09:20	Alan 	Wallyson	local	2025-07-30 16:19:33.125	Cabelo
297f84f1-6b24-423a-b241-32611664d097	2025-08-02 00:00:00	14:40	markinhos lopes	Bruno	108689046417640@lid	2025-07-30 00:00:00	Cabelo+Barba
6a0a4a83-062d-4123-bb33-284375e5df87	2025-08-06 00:00:00	15:20	Luiz 	Wallyson	local	2025-07-30 17:06:13.06	Cabelo
6824c47d-5771-4975-82d7-ce982dc8fb34	2025-07-30 00:00:00	18:00	Paulo	Bruno	local	2025-07-30 17:33:59.153	Cabelo
21a43e7b-01b0-4a90-a4b2-6a8ea3cb0fed	2025-07-31 00:00:00	15:20	Pedro França	Wallyson	local	2025-07-30 17:45:16.985	Cabelo
ebcd0336-0137-4340-a6d0-3662e1f7952a	2025-08-05 00:00:00	11:00	luis	Bruno	558199061615@s.whatsapp.net	2025-07-30 00:00:00	Cabelo+Sobrancelha
4b1a7d77-bde1-4321-9ec6-1e30e13b0bc0	2025-07-31 00:00:00	16:40	lucas gabriel	Wallyson	558199333703@s.whatsapp.net	2025-07-30 00:00:00	Acabamento (Pezinho)
a6511f73-db83-4ec9-809c-86c2e3b6d951	2025-08-02 00:00:00	13:20	Diego 	Wallyson	local	2025-07-30 18:50:17.579	Cabelo
9a65e8ce-7889-4944-a11a-8a0754dbf86d	2025-08-01 00:00:00	19:20	matheus	Bruno	558197941830@s.whatsapp.net	2025-07-30 00:00:00	Cabelo
7e771470-150b-4bbc-a679-f4f61cd22d5d	2025-08-01 00:00:00	20:00	ryan valério	Bruno	558181779060@s.whatsapp.net	2025-07-30 00:00:00	Cabelo+Barba
43742800-38c5-4ac1-86ec-9c3eeb6fa54a	2025-08-01 00:00:00	16:40	kauê	Wallyson	558199937689@s.whatsapp.net	2025-07-30 00:00:00	Cabelo+Sobrancelha
cbad95e7-f95c-4131-95bc-f3c9fe854a61	2025-08-04 00:00:00	18:40	jeferson	Wallyson	558198265483@s.whatsapp.net	2025-07-31 00:00:00	Cabelo+Barba
df55031b-5c2e-40bc-aaf1-4013cea6ba1f	2025-08-01 00:00:00	14:00	pedro	Wallyson	558195071416@s.whatsapp.net	2025-07-31 00:00:00	Cabelo+Sobrancelha
e253fee9-2ef6-4f0a-92e1-02e52751f1b9	2025-08-05 00:00:00	18:40	Jeferson c/bahia	Wallyson	local	2025-07-31 10:29:55.907	Cabelo+Barba
e860a176-43dc-4e30-8df4-2decfa3f4751	2025-08-05 00:00:00	19:20	Jeferson progressiva	Bruno	local	2025-07-31 10:30:46.305	Cabelo
6757055f-ae58-444b-bffa-1307c7a5416b	2025-07-31 00:00:00	17:20	Jaqueline 	Wallyson	local	2025-07-31 10:41:45.336	Cabelo
c94d67cc-e36c-4734-b018-f5c44b5703b3	2025-07-31 00:00:00	13:20	mário areias	Wallyson	558381367304@s.whatsapp.net	2025-07-31 00:00:00	Barba
2e180f8f-418a-4282-ad58-4ecb8b1879c4	2025-08-06 00:00:00	11:40	zaldinho da start	Bruno	558198591039@s.whatsapp.net	2025-07-31 00:00:00	Cabelo
181965d5-bb87-470d-be63-4a168264bf60	2025-07-31 00:00:00	08:40	fernando correia da silva	Wallyson	558199732471@s.whatsapp.net	2025-07-31 00:00:00	Cabelo
9616a8c3-6cd9-4fd5-9f87-5e605d85a3d7	2025-07-31 00:00:00	14:40	Alan	Wallyson	local	2025-07-31 12:42:07.902	Cabelo
7f35d93d-9bc3-4de2-8783-76be680e360c	2025-08-01 00:00:00	17:20	Levino 	Wallyson	local	2025-07-31 13:08:09.923	Cabelo
d06d16b8-a37d-4b99-b678-9bb5f6bc1806	2025-08-01 00:00:00	16:00	ivaldir	Wallyson	558196149252@s.whatsapp.net	2025-07-31 00:00:00	Cabelo+Sobrancelha
6c7b0963-ffa8-4501-9dbc-69346a53e604	2025-07-31 00:00:00	13:20	alan	Wallyson	558199788222@s.whatsapp.net	2025-07-31 00:00:00	Cabelo
d819fb82-e859-46cc-a8df-d94e102c4d19	2025-08-01 00:00:00	14:40	joão pedro ( elma )	Wallyson	558181323380@s.whatsapp.net	2025-07-31 00:00:00	Cabelo
f1888863-7a1c-4b1b-bc23-f505065351d6	2025-08-01 00:00:00	18:40	Vínicos 	Wallyson	local	2025-07-31 15:02:23.989	Cabelo
f3bcd98d-4df2-434b-b399-0cd2b9edbdfd	2025-08-01 00:00:00	09:00	antonio	Bruno	558799676551@s.whatsapp.net	2025-07-31 00:00:00	Barba
bb8e42c8-1a73-4d50-9e33-e04904c94b38	2025-08-05 00:00:00	16:00	Higor 	Wallyson	local	2025-07-31 20:52:26.101	Cabelo+Barba
57c3b8a6-c3fa-41a9-b790-a3a55b8d1c5e	2025-08-02 00:00:00	08:00	samuelferreira	Wallyson	558199862867@s.whatsapp.net	2025-07-31 00:00:00	Cabelo
737df53e-9501-4f91-821b-fac92c948527	2025-08-04 00:00:00	15:20	ryan	Wallyson	5511959620317@s.whatsapp.net	2025-07-31 00:00:00	Cabelo+Sobrancelha
175dccfc-995b-40bf-a7e1-a6b792c47c2e	2025-08-02 00:00:00	10:00	mateus	Wallyson	558196083218@s.whatsapp.net	2025-07-31 00:00:00	Cabelo+Barba
0856688d-5d9a-4dbc-9a67-89c96d7df55e	2025-08-01 00:00:00	11:40	jefferson	Bruno	558196311311@s.whatsapp.net	2025-07-31 00:00:00	Cabelo
5155c8a4-ae4f-4c7f-b1b9-3c5784cf646b	2025-08-05 00:00:00	17:20	bruno	Bruno	558197349442@s.whatsapp.net	2025-07-31 00:00:00	Acabamento (Pezinho)
66621900-de76-4a70-907c-a3f88fc9343a	2025-08-08 00:00:00	14:40	carlos	Bruno	558199353492@s.whatsapp.net	2025-07-31 00:00:00	Cabelo+Sobrancelha
c7cf831b-bdea-4aa6-a3fe-369a9e03ba0f	2025-08-01 00:00:00	11:00	Dorgyl 	Bruno	local	2025-08-01 09:54:46.147	Cabelo
74a0fa77-0999-4021-ba82-6ee25e780833	2025-08-01 00:00:00	10:00	Adriel	Bruno	local	2025-08-01 10:38:27.974	Cabelo
817b6366-cb6f-4f14-8688-c4d094f9fa05	2025-08-01 00:00:00	10:00	Adriel	Wallyson	local	2025-08-01 12:13:06.135	Cabelo
d655b6c7-f209-49b5-9c9b-ddb9daf1c2b5	2025-08-01 00:00:00	19:20	Zé véi 	Wallyson	local	2025-08-01 12:58:55.457	Cabelo
94955f81-45e5-47d6-b295-3eb9a59205e2	2025-08-02 00:00:00	18:00	Jonai 	Wallyson	local	2025-08-01 14:36:57.295	Cabelo
3dc26cc0-deed-407d-baf4-03a5031f31cd	2025-08-01 00:00:00	13:20	Indisponivel	Wallyson	Indisponivel	2025-08-01 16:44:07.718	
be0e86cb-d357-49a1-a73e-14a227add9f8	2025-08-02 00:00:00	10:40	Natan 	Wallyson	local	2025-08-01 16:46:43.948	Cabelo
1dd57eac-8675-44ff-8a59-d5bbdeb4e845	2025-08-08 00:00:00	14:00	Indisponivel	Wallyson	Indisponivel	2025-08-01 16:50:25.293	
d91357af-e632-4c7c-aac5-89fba2ba99a2	2025-08-08 00:00:00	14:40	Indisponivel	Wallyson	Indisponivel	2025-08-01 16:50:25.38	
efe61d9d-5dac-42da-9e7e-db23d464b0ca	2025-08-08 00:00:00	15:20	Indisponivel	Wallyson	Indisponivel	2025-08-01 16:50:25.409	
31b0a75a-d1ff-4e12-bb8b-aa058ee744cb	2025-08-08 00:00:00	16:00	Indisponivel	Wallyson	Indisponivel	2025-08-01 16:50:25.44	
c98cbf3f-1079-4ae5-a240-c221e8f01ddf	2025-08-08 00:00:00	16:40	Indisponivel	Wallyson	Indisponivel	2025-08-01 16:50:25.47	
0378de60-7e9e-4b17-93b6-548134a6f953	2025-08-08 00:00:00	17:20	Indisponivel	Wallyson	Indisponivel	2025-08-01 16:50:25.504	
3423f33b-0549-4a27-a4a4-17603ac8c690	2025-08-08 00:00:00	18:00	Indisponivel	Wallyson	Indisponivel	2025-08-01 16:50:25.534	
4214aa25-a05c-42ad-898d-37dc65f2f413	2025-08-08 00:00:00	18:40	Indisponivel	Wallyson	Indisponivel	2025-08-01 16:50:25.566	
ebc39595-4f10-414f-8e2c-c634ac9ed222	2025-08-08 00:00:00	19:20	Indisponivel	Wallyson	Indisponivel	2025-08-01 16:50:25.598	
e9629d42-8397-4be4-a19e-0660f792eb00	2025-08-08 00:00:00	20:00	Indisponivel	Wallyson	Indisponivel	2025-08-01 16:50:25.63	
2723a08b-040d-4532-a036-d1bcd484f93c	2025-08-09 00:00:00	08:00	Indisponivel	Wallyson	Indisponivel	2025-08-01 16:51:07.637	
5dfafe3d-7370-4701-856c-342602497005	2025-08-09 00:00:00	08:40	Indisponivel	Wallyson	Indisponivel	2025-08-01 16:51:07.748	
e4f40ea6-b190-4d6f-8718-ed2254734c73	2025-08-09 00:00:00	09:20	Indisponivel	Wallyson	Indisponivel	2025-08-01 16:51:07.786	
4047b670-4dd6-432d-8983-c4fbd2aa2da4	2025-08-09 00:00:00	10:00	Indisponivel	Wallyson	Indisponivel	2025-08-01 16:51:07.828	
9b420540-66f9-4dd6-9183-528e1b6b1866	2025-08-09 00:00:00	10:40	Indisponivel	Wallyson	Indisponivel	2025-08-01 16:51:07.859	
42bf2ff3-b579-409b-b488-f9166a3e1c9a	2025-08-09 00:00:00	11:20	Indisponivel	Wallyson	Indisponivel	2025-08-01 16:51:07.935	
9f7d99db-c396-4891-878a-96bde9f1a843	2025-08-09 00:00:00	12:00	Indisponivel	Wallyson	Indisponivel	2025-08-01 16:51:07.966	
d950de87-e7a5-4fa4-9f24-bc44acd2f0ad	2025-08-09 00:00:00	13:20	Indisponivel	Wallyson	Indisponivel	2025-08-01 16:51:07.995	
0430d931-7a4c-450a-a0dc-07db0cd68089	2025-08-09 00:00:00	14:00	Indisponivel	Wallyson	Indisponivel	2025-08-01 16:51:08.027	
d21da287-612b-44da-9cdf-9f5046f501fb	2025-08-09 00:00:00	14:40	Indisponivel	Wallyson	Indisponivel	2025-08-01 16:51:08.057	
a03b679c-25b7-4093-b2c4-7985e528c656	2025-08-09 00:00:00	15:20	Indisponivel	Wallyson	Indisponivel	2025-08-01 16:51:08.088	
8440cbb5-d922-486b-a728-86e8e4d96b46	2025-08-09 00:00:00	16:00	Indisponivel	Wallyson	Indisponivel	2025-08-01 16:51:08.122	
f4d6597b-06c1-4069-a983-584e5fa5d69f	2025-08-09 00:00:00	16:40	Indisponivel	Wallyson	Indisponivel	2025-08-01 16:51:08.153	
369bc3f4-dcc5-4424-b6ee-775cb55d9faa	2025-08-09 00:00:00	17:20	Indisponivel	Wallyson	Indisponivel	2025-08-01 16:51:08.185	
3aa27f9c-f1f9-42fe-abdc-87bb1301c846	2025-08-09 00:00:00	18:00	Indisponivel	Wallyson	Indisponivel	2025-08-01 16:51:08.214	
20918291-38c5-445b-bb82-a879ab449d1d	2025-08-04 00:00:00	16:40	Ivan dor botox( vem de 15:40	Bruno	local	2025-08-01 19:40:42.882	Cabelo
af522ded-8c12-411e-ae3e-25fd0917271d	2025-08-01 00:00:00	20:00	Valério 	Wallyson	local	2025-08-01 20:23:46.563	Cabelo
af11fbb9-453d-43d1-a9e2-98e76bbccfa3	2025-08-06 00:00:00	18:00	dr. marcos araújo	Bruno	558191284429@s.whatsapp.net	2025-08-01 00:00:00	Cabelo
297b1f80-2f46-4660-a2bb-bd9e3a5ed24b	2025-08-04 00:00:00	17:20	keven	Bruno	558189774392@s.whatsapp.net	2025-08-01 00:00:00	Cabelo+Sobrancelha
cb4bce98-4b23-43a7-846e-79893637cfd6	2025-08-02 00:00:00	11:20	Matheus 	Wallyson	local	2025-08-01 23:37:30.782	Barba
3d50fce4-a598-4c81-b451-11d1327994f8	2025-08-02 00:00:00	17:20	ronnye	Wallyson	558198353903@s.whatsapp.net	2025-08-01 00:00:00	Cabelo
856e196c-c41d-48aa-a750-69a85b2aa1f4	2025-08-05 00:00:00	13:20	dubolo	Bruno	558196647899@s.whatsapp.net	2025-08-02 00:00:00	Cabelo
748d48b1-296d-45f8-a8a2-d0f5f4b7c799	2025-08-05 00:00:00	14:00	dubolo2	Bruno	558196647899@s.whatsapp.net	2025-08-02 00:00:00	Cabelo
c589730e-b20d-4d54-aa29-b0af79b1cd77	2025-08-02 00:00:00	16:40	Kayke 	Wallyson	local	2025-08-02 10:09:00.879	Cabelo
a8dc8f63-d6b7-452a-ad4c-a07d1d7a94ce	2025-08-02 00:00:00	12:00	jorge miguel campos de lucena	Wallyson	558197887918@s.whatsapp.net	2025-08-02 00:00:00	Cabelo
a33b8926-7738-4647-8373-3d8f91d231b3	2025-08-08 00:00:00	08:00	Pedro 	Wallyson	local	2025-08-02 12:07:58.666	Cabelo
d6463259-801f-4273-80d8-ace7798d5460	2025-08-09 00:00:00	08:00	Tiago Shels 	Bruno	local	2025-08-02 12:08:16.283	Cabelo
0072921d-ef58-4114-942b-bb410a7b014f	2025-08-09 00:00:00	08:40	Pedro irmão tiago	Bruno	local	2025-08-02 12:10:04.784	Cabelo
2ded1581-2753-4d49-baed-05b6ccf1cb5f	2025-08-02 00:00:00	15:20	wesley	Wallyson	558196817233@s.whatsapp.net	2025-08-02 00:00:00	Cabelo
4dcae757-6349-403d-ad53-cedcc8c513fc	2025-08-04 00:00:00	14:40	matheus lima	Bruno	558199670970@s.whatsapp.net	2025-08-02 00:00:00	Cabelo+Sobrancelha
8b9b24e8-acc7-4e09-b228-009c6bb34222	2025-08-05 00:00:00	09:40	marcos queiroz	Bruno	558181473848@s.whatsapp.net	2025-08-02 00:00:00	Cabelo
dba4a31b-3eb5-499a-9864-1e7891e4f416	2025-08-04 00:00:00	18:40	gustavo	Bruno	558196111653@s.whatsapp.net	2025-08-02 00:00:00	Cabelo+Sobrancelha
70cfd0dc-bbe5-4d37-9906-ea7d41b3be80	2025-08-04 00:00:00	16:00	renan	Bruno	558198296625@s.whatsapp.net	2025-08-02 00:00:00	Cabelo
3c369f17-8034-4be5-8b45-4ffe66847a61	2025-08-16 00:00:00	14:00	tássio moraes	Bruno	558197909383@s.whatsapp.net	2025-08-02 00:00:00	Cabelo+Barba
0a6d6f3b-a837-4043-a2b7-8976a3ee123d	2025-08-11 00:00:00	18:00	Carlos	Bruno	local	2025-08-02 21:54:08.225	Cabelo
267f21a0-48b9-4c21-93d0-528dd99403a8	2025-08-11 00:00:00	11:00	Lucas 	Wallyson	local	2025-08-03 01:23:47.902	Cabelo
e79f2f03-4293-4dac-a6ea-b623b80f1428	2025-08-05 00:00:00	15:20	rafael	Bruno	558188763249@s.whatsapp.net	2025-08-03 00:00:00	Cabelo
73cd3b99-e886-4e69-bd91-3c0587efd2c7	2025-08-08 00:00:00	19:20	italo	Bruno	558198405729@s.whatsapp.net	2025-08-03 00:00:00	Cabelo
55bbe39a-de27-4548-8005-7a5a90c50a19	2025-08-08 00:00:00	20:00	marcos	Bruno	558198405729@s.whatsapp.net	2025-08-03 00:00:00	Cabelo
8a078018-25e0-4853-9e79-f612ff415c72	2025-08-04 00:00:00	18:00	mateus barbosa	Bruno	558197626344@s.whatsapp.net	2025-08-03 00:00:00	Cabelo
123f5383-3c9c-4a39-ad49-57efb835fb9f	2025-08-04 00:00:00	13:20	renan	Wallyson	558195330370@s.whatsapp.net	2025-08-03 00:00:00	Cabelo+Barba
348cd3ef-65e0-46c5-a898-8463cac8706f	2025-08-04 00:00:00	16:00	Lucas 	Wallyson	local	2025-08-04 00:22:35.395	Cabelo
28cfbb5a-47ca-435b-8cde-6993f33b328c	2025-08-06 00:00:00	17:20	everson	Bruno	558179003193@s.whatsapp.net	2025-08-03 00:00:00	Cabelo
b1403192-b02a-4a38-a812-79fecd683b8b	2025-08-04 00:00:00	16:40	yago	Wallyson	558195055274@s.whatsapp.net	2025-08-04 00:00:00	Cabelo+Sobrancelha
0dd83b48-5c54-42d9-ba3b-5819c0bcd9f2	2025-08-05 00:00:00	18:40	matheus	Bruno	558196191710@s.whatsapp.net	2025-08-04 00:00:00	Cabelo+Sobrancelha
87e95d51-dbd9-4737-9f46-513ae12a469a	2025-08-04 00:00:00	18:00	João Henrique 	Wallyson	local	2025-08-04 11:52:26.541	Cabelo
59d25bb6-8250-4011-8907-39dfe599277e	2025-08-08 00:00:00	08:40	wilson	Wallyson	558197148928@s.whatsapp.net	2025-08-04 00:00:00	Cabelo+Sobrancelha
f853041b-875d-4ead-a79f-15e18a299642	2025-08-05 00:00:00	08:40	joão lucas	Wallyson	558198783426@s.whatsapp.net	2025-08-04 00:00:00	Cabelo
a756bdb6-15a9-4ff7-af6f-2b82ff8aaf00	2025-08-05 00:00:00	16:40	geam pedro	Bruno	558179092590@s.whatsapp.net	2025-08-04 00:00:00	Cabelo
7ad13004-b15f-49a4-a73f-902236d7f61e	2025-08-06 00:00:00	14:40	pedro messi	Bruno	558199656200@s.whatsapp.net	2025-08-04 00:00:00	Cabelo+Barba
4b33ced3-2d3d-4a49-8d8a-eafe3d1dee9a	2025-08-04 00:00:00	14:40	Wellington 	Wallyson	local	2025-08-04 14:37:09.445	Cabelo
d667e439-1782-44b9-b45e-54f45ab83158	2025-08-05 00:00:00	10:20	ataliba	Bruno	558182671510@s.whatsapp.net	2025-08-04 00:00:00	Barba
1c6212bc-bb56-45a1-8546-1d859e82085d	2025-08-04 00:00:00	17:20	Fabrício 	Wallyson	local	2025-08-04 15:13:08.561	Cabelo
5ce4a7ba-4ef0-4829-a589-3ce8e3f2c5bf	2025-08-05 00:00:00	15:20	joão	Wallyson	558188763249@s.whatsapp.net	2025-08-04 00:00:00	Cabelo
04a08559-20fb-412f-b0eb-992b23284e50	2025-08-06 00:00:00	16:40	denílson	Bruno	558197084296@s.whatsapp.net	2025-08-04 00:00:00	Barba
c04f205a-f6f0-4ade-9925-c49e1e020708	2025-08-04 00:00:00	14:00	Mercado 	Wallyson	local	2025-08-04 16:48:11.041	Cabelo
10126621-575e-4f1b-87fb-c3fd9914d61b	2025-08-06 00:00:00	11:00	matheus	Bruno	558199843332@s.whatsapp.net	2025-08-04 00:00:00	Cabelo
89e6a573-7530-43a7-85a7-7d318c101b84	2025-08-07 00:00:00	14:00	Nicolas 	Wallyson	local	2025-08-04 17:47:52.183	Cabelo
26712448-5d96-44b1-a2e9-cd48e164bb87	2025-08-06 00:00:00	18:40	samuel tavares	Bruno	558171201693@s.whatsapp.net	2025-08-04 00:00:00	Cabelo
99548bcc-6854-4f03-a444-2d186d0037ef	2025-08-05 00:00:00	11:40	pedro henrique	Bruno	558198446899@s.whatsapp.net	2025-08-04 00:00:00	Cabelo
dc88ffc5-3c3f-43fb-b3b9-927bf07a2a47	2025-08-07 00:00:00	17:20	pedro henrique	Bruno	558199160082@s.whatsapp.net	2025-08-04 00:00:00	Cabelo
2e447bbd-5ead-4d09-90de-4adbf4c671af	2025-08-08 00:00:00	10:00	Leandro 	Wallyson	local	2025-08-04 19:51:14.401	Cabelo
b81b8fed-c88b-499e-aeff-aabc5f2a1ef1	2025-08-16 00:00:00	08:00	márcio	Wallyson	558199069172@s.whatsapp.net	2025-08-04 00:00:00	Cabelo
d8a13662-91a9-48af-947f-b356b1774280	2025-08-05 00:00:00	16:40	Felipe Barbosa 	Wallyson	local	2025-08-04 22:09:08.244	Cabelo
9b15ff44-15b0-4548-bcbc-f859dc13959a	2025-08-11 00:00:00	11:00	andré	Bruno	558198646935@s.whatsapp.net	2025-08-04 00:00:00	Cabelo+Sobrancelha
acdf8c61-944f-4ca3-92ca-82215cfe2084	2025-08-06 00:00:00	14:00	eliel	Bruno	558199867389@s.whatsapp.net	2025-08-04 00:00:00	Cabelo
cc6a9398-9325-4c57-a8a9-0c7a31fdd07f	2025-08-15 00:00:00	18:40	ualesson	Bruno	558199786467@s.whatsapp.net	2025-08-04 00:00:00	Cabelo
f009f7f0-db5b-419e-8bde-6a856546b28b	2025-08-06 00:00:00	16:00	pedro	Bruno	558181416722@s.whatsapp.net	2025-08-04 00:00:00	Cabelo
3d3a528b-c1e1-4077-834f-b8cf457a09f1	2025-08-05 00:00:00	16:00	neto	Bruno	558194759358@s.whatsapp.net	2025-08-04 00:00:00	Cabelo
9b62274c-2ba0-4b52-b83e-8097a2d258a3	2025-08-06 00:00:00	13:20	serginho do arrocha 🫏	Bruno	558195354617@s.whatsapp.net	2025-08-04 00:00:00	Cabelo+Sobrancelha
b0535c27-23e2-4045-bd72-6b7d30ccef27	2025-08-05 00:00:00	14:40	nilton \narthur	Bruno	558199442297@s.whatsapp.net	2025-08-05 00:00:00	Cabelo
e767ecc8-3513-4640-b08f-85ffd2ec60c8	2025-08-09 00:00:00	17:20	leonardo	Bruno	558196987419@s.whatsapp.net	2025-08-05 00:00:00	Cabelo
da8fa29b-fafc-430b-9b16-413d0e9b2f61	2025-08-07 00:00:00	16:40	calebe	Bruno	558196987419@s.whatsapp.net	2025-08-05 00:00:00	Cabelo
8195106c-8a4a-4416-a473-2f4a2c2ad241	2025-08-07 00:00:00	09:00	anderson	Bruno	558197666072@s.whatsapp.net	2025-08-05 00:00:00	Cabelo+Barba
ccfb76f6-0929-45e4-905e-e54c63d5d331	2025-08-05 00:00:00	17:20	Eraldo 	Wallyson	local	2025-08-05 12:30:34.633	Cabelo+Barba
4f96c8ad-0115-4598-931e-7dbb3b097d02	2025-08-07 00:00:00	10:40	gabriel	Wallyson	558196106906@s.whatsapp.net	2025-08-05 00:00:00	Cabelo
04c1863d-f9ab-4a7f-b9a4-d66b7af986dd	2025-08-08 00:00:00	09:00	renan silva	Bruno	558199185971@s.whatsapp.net	2025-08-05 00:00:00	Cabelo
34cecadd-a7ac-4770-873d-6d0110b21386	2025-08-09 00:00:00	10:00	adeilson	Bruno	558182086614@s.whatsapp.net	2025-08-05 00:00:00	Cabelo
0ee8e672-4386-441f-8a0d-e322e90fa51e	2025-08-09 00:00:00	10:40	arthur	Bruno	558182086614@s.whatsapp.net	2025-08-05 00:00:00	Cabelo
61b8d766-d08e-46d1-8e9e-2449fea256c4	2025-08-05 00:00:00	14:00	césar	Wallyson	558197520499@s.whatsapp.net	2025-08-05 00:00:00	Cabelo+Sobrancelha
5a692aa7-7370-4a91-b24d-816d998ffcec	2025-08-07 00:00:00	08:40	thiago vinicius	Wallyson	558199044022@s.whatsapp.net	2025-08-05 00:00:00	Cabelo
cdf454c2-3170-4923-b344-a846bb037112	2025-08-05 00:00:00	13:20	Wilson 	Wallyson	local	2025-08-05 14:57:27.39	Cabelo
eba461e9-460b-4254-ac9e-85a49dc6a9af	2025-08-06 00:00:00	16:00	Carlos 	Wallyson	local	2025-08-05 15:07:10.799	Cabelo
6dcbdbc2-b0bd-461a-a02b-d0a4d67aacd2	2025-08-06 00:00:00	09:00	Levar moto rastreador	Bruno	local	2025-08-05 15:44:01.34	Cabelo
83ff7a7a-4ba2-4dd9-a906-c435a8ab46fa	2025-08-06 00:00:00	09:40	Rastreador moto	Bruno	local	2025-08-05 15:44:21.63	Cabelo
c2e264ba-98b3-4814-8cd2-24298b2e0f09	2025-08-13 00:00:00	14:00	o maior da honda	Bruno	558196680308@s.whatsapp.net	2025-08-05 00:00:00	Cabelo+Barba
a8aabc5d-1940-4948-b48a-8cc7fb2a9c0a	2025-08-05 00:00:00	18:00	john	Wallyson	558196903604@s.whatsapp.net	2025-08-05 00:00:00	Cabelo+Barba
6e1f8ea8-3631-4031-83ef-8f7c9a866aaf	2025-08-06 00:00:00	10:00	matheus	Wallyson	558171157384@s.whatsapp.net	2025-08-05 00:00:00	Cabelo
a687f1df-2e32-4b00-818a-a7324de3356d	2025-08-07 00:00:00	14:40	Uaderson 	Wallyson	local	2025-08-05 18:43:09.364	Cabelo
6222a1d7-23e9-4b18-837d-3ca538968bea	2025-08-07 00:00:00	15:20	Irmão de uaderson 	Wallyson	local	2025-08-05 18:43:25.832	Cabelo
345ffdc1-80e1-4642-a074-0ce521b6e116	2025-08-09 00:00:00	12:00	Neto vem de 11h	Bruno	local	2025-08-05 19:54:17.171	Cabelo
52f25bba-d609-4a85-aab1-2e25d672024d	2025-08-09 00:00:00	11:20	luiz felipe barbosa da silva nunes	Bruno	558197441313@s.whatsapp.net	2025-08-05 00:00:00	Cabelo
f5dcd734-3cbe-4852-b11c-ff72df726649	2025-08-06 00:00:00	15:20	carlos	Bruno	558197823796@s.whatsapp.net	2025-08-05 00:00:00	Cabelo+Sobrancelha
1f36a86d-cf32-40ea-8d81-e5e5796670cf	2025-08-08 00:00:00	17:20	andre	Bruno	558198995821@s.whatsapp.net	2025-08-05 00:00:00	Cabelo+Sobrancelha
80368302-1a85-4399-9c58-d04f9c611699	2025-08-08 00:00:00	14:00	joão da costa cabral	Bruno	558182968875@s.whatsapp.net	2025-08-05 00:00:00	Cabelo
6f3badc3-3949-46d4-b747-5d93063ff629	2025-08-09 00:00:00	14:40	wesley safadão	Bruno	558181016662@s.whatsapp.net	2025-08-05 00:00:00	Cabelo+Sobrancelha
ca5382b8-b1a1-4139-ba9a-662ec0ef81c0	2025-08-08 00:00:00	10:40	henrique	Wallyson	558171101790@s.whatsapp.net	2025-08-05 00:00:00	Cabelo
58cb2892-c6bd-4c9c-b6dd-5b4fad6b0677	2025-08-09 00:00:00	14:00	del	Bruno	558197796167@s.whatsapp.net	2025-08-06 00:00:00	Cabelo+Barba
b7b543ba-4767-4480-8710-c8937cacc9bc	2025-08-06 00:00:00	10:40	natacha	Wallyson	558197947166@s.whatsapp.net	2025-08-06 00:00:00	Cabelo
f99f7fe5-440c-4ec1-8ce7-d73fd6c0d9c5	2025-08-14 00:00:00	11:00	sid	Bruno	558191536718@s.whatsapp.net	2025-08-06 00:00:00	Cabelo+Barba
5e78ce10-b507-4944-a846-c97c14e3450a	2025-08-08 00:00:00	11:20	Cleiton 	Wallyson	local	2025-08-06 12:17:40.647	Cabelo
084a502a-02da-4d1c-9793-62e0726db801	2025-08-06 00:00:00	17:20	Issac 	Wallyson	local	2025-08-06 12:21:01.321	Cabelo
4b07b32a-9e21-4a21-a6a6-651fbe99ba53	2025-08-06 00:00:00	14:00	Allysson 	Wallyson	local	2025-08-06 12:27:44.191	Cabelo
963a9021-5663-44ea-b0cd-7fefcf5978d7	2025-08-07 00:00:00	09:40	Indisponivel	Bruno	Indisponivel	2025-08-06 12:35:18.783	
92948b15-3cea-4180-907c-6be6460a48d4	2025-08-07 00:00:00	13:20	Indisponivel	Bruno	Indisponivel	2025-08-06 12:35:18.988	
c2a27114-0dbc-4223-86e1-4d14b3a8f184	2025-08-07 00:00:00	14:00	Indisponivel	Bruno	Indisponivel	2025-08-06 12:35:19.018	
3b5eb2fe-cd6c-4d43-b2c8-6f42305305bc	2025-08-07 00:00:00	14:40	Indisponivel	Bruno	Indisponivel	2025-08-06 12:35:19.049	
5ef17ceb-9565-49b6-ac25-436060109cc6	2025-08-07 00:00:00	15:20	Indisponivel	Bruno	Indisponivel	2025-08-06 12:35:19.08	
6b09683f-044d-4f10-be43-60cfcc5706d2	2025-08-07 00:00:00	16:40	fernando	Wallyson	558199410150@s.whatsapp.net	2025-08-06 00:00:00	Cabelo+Sobrancelha
9e049746-6b1a-4f5d-b22f-c54f6be3e828	2025-08-06 00:00:00	18:40	john	Wallyson	558196903604@s.whatsapp.net	2025-08-06 00:00:00	Cabelo+Barba
1faf1f9a-fa91-42a7-8e62-07e56a7d30fd	2025-08-08 00:00:00	09:40	miguel josé	Bruno	558196843988@s.whatsapp.net	2025-08-06 00:00:00	Cabelo
1c366102-dbbc-4c6f-952e-05b02fc51ab7	2025-08-06 00:00:00	16:40	João Felipe 	Wallyson	local	2025-08-06 19:03:57.849	Cabelo
d234726b-b9f5-4568-8a0c-3a526118025f	2025-08-11 00:00:00	17:20	laércio barbosa	Wallyson	558196620184@s.whatsapp.net	2025-08-06 00:00:00	Cabelo
a6666550-fd1f-49ff-b8b9-05dbe9add3b4	2025-08-07 00:00:00	18:40	samuel	Wallyson	558196448583@s.whatsapp.net	2025-08-06 00:00:00	Cabelo
9fe9fc78-405a-4ccf-bee0-7e96bbff313a	2025-08-09 00:00:00	16:00	paulo henrique	Bruno	558174004953@s.whatsapp.net	2025-08-06 00:00:00	Cabelo+Sobrancelha
b300c5d9-8d3b-4f55-ab84-d2793b92a3e2	2025-08-09 00:00:00	13:20	luan	Bruno	558185889249@s.whatsapp.net	2025-08-06 00:00:00	Cabelo+Barba
94b3567d-4419-42d0-810e-c8de91767e71	2025-08-08 00:00:00	10:20	paulo césar	Bruno	558195254306@s.whatsapp.net	2025-08-06 00:00:00	Cabelo
d85160a5-dbe7-4451-8e63-ce8ca5f3204e	2025-08-08 00:00:00	15:20	bruno gomes	Bruno	558196522258@s.whatsapp.net	2025-08-06 00:00:00	Cabelo
e4e981b5-9ab2-4187-b358-cbf7fa44dd61	2025-08-08 00:00:00	16:00	antonio	Bruno	558799676551@s.whatsapp.net	2025-08-07 00:00:00	Cabelo+Barba
4b470685-a306-4e01-9cf7-beba49a44c2d	2025-08-08 00:00:00	11:40	paulo henrique	Bruno	558174004953@s.whatsapp.net	2025-08-07 00:00:00	Cabelo+Sobrancelha
14669576-21e1-49c6-bf9c-b501799d11ad	2025-08-08 00:00:00	18:00	joao guilherme	Bruno	558181673375@s.whatsapp.net	2025-08-07 00:00:00	Cabelo
a4a98c26-fbb0-4f46-8915-a9ecab6d6e3a	2025-08-07 00:00:00	13:20	Wilson 	Wallyson	local	2025-08-07 13:11:33.808	Cabelo
f8469839-ca89-49a7-84f1-7364828daf02	2025-08-08 00:00:00	16:40	breno	Bruno	558198437880@s.whatsapp.net	2025-08-07 00:00:00	Cabelo+Sobrancelha
169d129c-675e-4c45-8d6a-c7390fb43441	2025-08-08 00:00:00	18:40	eduardo	Bruno	558194297236@s.whatsapp.net	2025-08-07 00:00:00	Cabelo+Barba
8f51deb8-5575-47b1-bb8e-7046ae5fa359	2025-08-08 00:00:00	11:00	william gabriel	Bruno	558198087356@s.whatsapp.net	2025-08-07 00:00:00	Cabelo
5a81d154-af40-4e7d-9592-88d5f6852625	2025-08-08 00:00:00	13:20	Ivan	Bruno	local	2025-08-07 14:12:33.629	Cabelo
7d4f8155-8c91-458d-8d82-227934457a40	2025-08-11 00:00:00	11:40	ataliba	Bruno	558182671510@s.whatsapp.net	2025-08-07 00:00:00	Barba
75d62bd8-1575-4ebf-8369-87b77ad5c31e	2025-08-11 00:00:00	09:40	Indisponível 	Bruno	local	2025-08-07 14:38:28.309	Cabelo
6a2bd895-494f-4214-b869-cea3314a0484	2025-08-11 00:00:00	10:20	Indisponível 	Bruno	local	2025-08-07 14:38:40.418	Cabelo
382f9d53-61a9-4e07-bb72-9e24158ad44e	2025-08-11 00:00:00	09:00	leandro	Wallyson	558195021216@s.whatsapp.net	2025-08-07 00:00:00	Cabelo
5915b45c-f2c1-43a9-ac48-73458e119998	2025-08-11 00:00:00	14:00	samuel	Wallyson	558197939904@s.whatsapp.net	2025-08-07 00:00:00	Cabelo+Sobrancelha
68f988cd-271d-4382-96b1-5e85469ec848	2025-08-07 00:00:00	16:00	hatus	Bruno	558199706416@s.whatsapp.net	2025-08-07 00:00:00	Cabelo+Barba
83053b93-da61-44f9-9923-d354e916a915	2025-08-13 00:00:00	10:20	matheus ryan	Bruno	558198446732@s.whatsapp.net	2025-08-07 00:00:00	Cabelo
7a2dd567-c95a-4b91-9570-9d2d49edc5f3	2025-08-13 00:00:00	11:00	matheus lima	Bruno	558199670970@s.whatsapp.net	2025-08-07 00:00:00	Cabelo+Sobrancelha
013d8b55-e750-45cf-ac26-78373f27c5e7	2025-08-11 00:00:00	14:40	Matheus 	Bruno	local	2025-08-07 18:49:04.964	Cabelo
8d422493-52c1-4915-845e-53e3852beb07	2025-08-11 00:00:00	09:00	Indisponivel	Wallyson	Indisponivel	2025-08-07 18:50:37.153	
cd41c770-522b-42d4-8515-1171e48baa86	2025-08-11 00:00:00	09:40	Indisponivel	Wallyson	Indisponivel	2025-08-07 18:50:37.212	
069be658-e905-4a8a-a61d-a1d27a73a072	2025-08-11 00:00:00	10:20	Indisponivel	Wallyson	Indisponivel	2025-08-07 18:50:37.256	
b74799e3-eaf5-41c1-90bd-352b97df5d1e	2025-08-11 00:00:00	11:00	Indisponivel	Wallyson	Indisponivel	2025-08-07 18:50:37.288	
4b02ff08-e50a-4621-9544-45995c600f4d	2025-08-11 00:00:00	11:40	Indisponivel	Wallyson	Indisponivel	2025-08-07 18:50:37.323	
c37a95f4-f86a-4cc2-8080-b6c491646824	2025-08-07 00:00:00	18:00	Marcado 	Wallyson	local	2025-08-07 19:15:33.756	Cabelo
12f7c40a-d789-4759-a556-2473b980589b	2025-08-11 00:00:00	15:20	tarcísio	Bruno	558185887456@s.whatsapp.net	2025-08-07 00:00:00	Cabelo
0554de91-56cd-40a3-9721-7338f4b03bab	2025-08-16 00:00:00	15:20	ualesson	Bruno	558199786467@s.whatsapp.net	2025-08-08 00:00:00	Cabelo
457d8f8d-1f41-4525-a7ea-3da6c1209b2e	2025-08-12 00:00:00	14:00	miguel	Wallyson	558181060584@s.whatsapp.net	2025-08-08 00:00:00	Cabelo
eb18d590-a768-4cb3-8293-e6b1f5123c72	2025-08-12 00:00:00	09:40	josé rafaela	Bruno	558197031839@s.whatsapp.net	2025-08-08 00:00:00	Cabelo
d5eb233d-ff63-4625-99a4-19042c703770	2025-08-12 00:00:00	18:00	Paulo 	Wallyson	local	2025-08-08 15:02:33.327	Cabelo
070f155a-5ece-4ed7-91d4-128e0f77eba2	2025-08-11 00:00:00	17:20	lucas	Bruno	558188204134@s.whatsapp.net	2025-08-08 00:00:00	Cabelo
8901fa9c-9f4a-4c77-9ad7-4db981b6cff0	2025-08-11 00:00:00	16:40	joão vitor	Bruno	558192250093@s.whatsapp.net	2025-08-08 00:00:00	Cabelo
80c1b5b4-383b-46f0-b21e-cce744df9361	2025-08-11 00:00:00	14:40	vandro júnior	Wallyson	558196610362@s.whatsapp.net	2025-08-08 00:00:00	Cabelo
c66a4761-aa77-4d36-a87f-3597116adf6d	2025-08-11 00:00:00	14:00	hugo	Bruno	558199154395@s.whatsapp.net	2025-08-09 00:00:00	Cabelo+Sobrancelha
24fc841c-d2d8-4f50-94ec-8f84cd1f2b98	2025-08-11 00:00:00	13:20	felipe silva	Bruno	558179158954@s.whatsapp.net	2025-08-09 00:00:00	Cabelo
b34dafc7-9631-4be6-99fb-d86d6c248bd6	2025-08-11 00:00:00	13:20	felipe	Wallyson	558181451150@s.whatsapp.net	2025-08-09 00:00:00	Cabelo+Sobrancelha
9706aecd-d9e9-46a4-a6c6-010ab4719bb9	2025-08-11 00:00:00	15:20	ruan	Wallyson	558199445445@s.whatsapp.net	2025-08-09 00:00:00	Cabelo
1125b479-bbaa-4e6e-931e-0897209116bb	2025-08-11 00:00:00	16:00	murilo	Wallyson	558199445445@s.whatsapp.net	2025-08-09 00:00:00	Cabelo
baa406db-f174-46e7-9a25-7f2444323513	2025-08-12 00:00:00	13:20	guilherme	Wallyson	558196437778@s.whatsapp.net	2025-08-10 00:00:00	Cabelo
6367eb1c-0088-4651-a707-be578be8ecf7	2025-08-12 00:00:00	16:40	antônio	Bruno	558197083657@s.whatsapp.net	2025-08-10 00:00:00	Cabelo+Sobrancelha
0ba137d3-16a9-4eab-b5ad-8a2904bacb70	2025-08-12 00:00:00	19:20	paulo	Bruno	558199302136@s.whatsapp.net	2025-08-10 00:00:00	Cabelo
94cecc0d-1d6a-4b76-8207-c9ad599c677d	2025-08-12 00:00:00	18:00	rafael melo	Bruno	558199365900@s.whatsapp.net	2025-08-10 00:00:00	Cabelo
0e9fd62f-2889-447c-bc93-b2dfe2654cb5	2025-08-16 00:00:00	14:40	heytor	Bruno	558197714625@s.whatsapp.net	2025-08-10 00:00:00	Cabelo+Barba
cd3f910f-660f-470b-8706-bc2bd68ec379	2025-08-16 00:00:00	12:00	Alex progressiva	Bruno	local	2025-08-10 22:23:02.761	Cabelo
5a1e9aba-902a-4325-ad95-6de426e847b5	2025-08-11 00:00:00	16:00	alysson	Bruno	558195985705@s.whatsapp.net	2025-08-11 00:00:00	Cabelo
a3a798ee-a0c6-4a66-859f-5d786c7f50a8	2025-08-18 00:00:00	16:00	luiz felipe	Bruno	558197800927@s.whatsapp.net	2025-08-11 00:00:00	Cabelo
0d9d5707-3232-4a08-bd4d-348a9bf3cf67	2025-08-11 00:00:00	16:40	Marcílio 	Wallyson	local	2025-08-11 10:48:13.354	Cabelo
86c7439a-1183-4c6d-9904-8fcdececdde1	2025-08-12 00:00:00	09:00	lucas	Bruno	558185469353@s.whatsapp.net	2025-08-11 00:00:00	Cabelo
86908ed2-e708-4677-a07c-b54d300b61e5	2025-08-12 00:00:00	15:20	leandro	Wallyson	558195021216@s.whatsapp.net	2025-08-11 00:00:00	Cabelo
f6200c8a-82c1-4020-88e3-4c57fa0c8c30	2025-08-12 00:00:00	11:00	jan	Bruno	558179136535@s.whatsapp.net	2025-08-11 00:00:00	Cabelo+Sobrancelha
d337980a-f1da-4043-9972-bdbc64417ae2	2025-08-12 00:00:00	10:00	Felipe 	Wallyson	local	2025-08-11 15:46:04.683	Cabelo
620ca6e0-39de-4539-9e1d-2c45feba0e3f	2025-08-12 00:00:00	08:40	Marcado 	Wallyson	local	2025-08-11 15:46:23.135	Cabelo
2d89e817-1871-4f72-9966-6f1e329bebd7	2025-08-13 00:00:00	18:40	Robson 	Wallyson	local	2025-08-11 15:46:56.592	Cabelo
16392814-5edd-4e9d-b4cc-736c971b0757	2025-08-12 00:00:00	11:40	adson	Bruno	558195002521@s.whatsapp.net	2025-08-11 00:00:00	Cabelo
3df3e595-2026-4a92-98a3-c90e06b7c91a	2025-08-11 00:00:00	18:00	Victor	Wallyson	local	2025-08-11 17:13:35.213	Cabelo
dd223715-a01f-425e-8871-771e31110e3a	2025-08-12 00:00:00	14:40	gabriel	Wallyson	558197917932@s.whatsapp.net	2025-08-11 00:00:00	Cabelo
b6ed110f-028b-4bc3-a8a5-cfc880fc1cf0	2025-08-12 00:00:00	16:00	Davi 	Wallyson	local	2025-08-11 18:13:10.491	Cabelo
981a8260-f5d6-4c01-afdb-db96fbf11962	2025-08-12 00:00:00	17:20	Rivaldo 	Wallyson	local	2025-08-11 20:15:15.511	Cabelo
42be53c8-4d64-4fb3-b315-b5c270539ecb	2025-08-13 00:00:00	16:00	Marcílio 	Wallyson	local	2025-08-11 20:16:53.176	Cabelo
63839537-3523-4115-9413-ccb8276bf739	2025-08-13 00:00:00	14:40	Marcílio 	Wallyson	local	2025-08-11 20:28:00.526	Cabelo
ff205754-281c-4885-bdeb-2e09babacc85	2025-08-13 00:00:00	15:20	Davi 	Wallyson	local	2025-08-11 20:28:20.626	Cabelo
19f4e08b-d507-4c3d-a5f3-d01866701234	2025-08-12 00:00:00	14:00	gonzaga	Bruno	558196532675@s.whatsapp.net	2025-08-11 00:00:00	Cabelo
f826d4c7-8cec-4790-9cc2-f738df4496a7	2025-08-15 00:00:00	19:20	bruno	Bruno	558189873832@s.whatsapp.net	2025-08-11 00:00:00	Cabelo+Barba
33f1a2c0-3140-4929-8fb8-d81b0ae4e1c1	2025-08-13 00:00:00	11:40	henrique	Bruno	558196639360@s.whatsapp.net	2025-08-11 00:00:00	Cabelo
6d289854-6622-49d8-b708-0192f87a27e2	2025-08-14 00:00:00	18:40	gustavo farias	Wallyson	558196195368@s.whatsapp.net	2025-08-11 00:00:00	Cabelo+Sobrancelha
d69d3875-c071-40d8-b1e2-6934111406cb	2025-08-12 00:00:00	15:20	manoel neto	Bruno	558195055212@s.whatsapp.net	2025-08-12 00:00:00	Cabelo+Barba
41b8a0b0-36bc-469b-95d0-a33e1ad0cad0	2025-08-16 00:00:00	08:40	victor	Wallyson	558196193892@s.whatsapp.net	2025-08-12 00:00:00	Cabelo
c96b8b2e-ae69-4840-854c-bbc095660802	2025-08-12 00:00:00	14:40	lucas	Bruno	558185469353@s.whatsapp.net	2025-08-12 00:00:00	Cabelo
78482568-7a73-4734-9b9c-e9a46ffa221f	2025-08-13 00:00:00	08:00	Rubens 	Wallyson	local	2025-08-12 12:38:28.56	Cabelo
4e971bb7-b362-4e44-b960-5fda5507279c	2025-08-12 00:00:00	10:40	Wellington 	Wallyson	local	2025-08-12 12:42:43.739	Cabelo
acbc395f-a0bf-406c-be3d-25ed467c5adf	2025-08-13 00:00:00	08:40	joaquim gonçalo	Wallyson	558199504021@s.whatsapp.net	2025-08-12 00:00:00	Cabelo
fb96823e-ab02-49cb-9acf-9bb03d4c8290	2025-08-13 00:00:00	18:40	rennan	Bruno	558196502964@s.whatsapp.net	2025-08-12 00:00:00	Cabelo+Barba
45d5e86c-9068-4d60-aea2-1c1b2136bf36	2025-08-16 00:00:00	10:00	arthur	Bruno	558194115511@s.whatsapp.net	2025-08-12 00:00:00	Cabelo+Barba
09f556f9-fd2d-4d4f-97a9-ae2639acd541	2025-08-14 00:00:00	09:00	breno	Bruno	558198437880@s.whatsapp.net	2025-08-12 00:00:00	Cabelo+Sobrancelha
1b5bad34-f45e-48ec-8158-3b9ca9510b3b	2025-08-14 00:00:00	09:40	junior	Bruno	558198437880@s.whatsapp.net	2025-08-12 00:00:00	Cabelo+Sobrancelha
d76b650e-0d99-4b82-9cb7-f07deddb8c8b	2025-08-15 00:00:00	09:00	robert fernando	Bruno	558187830953@s.whatsapp.net	2025-08-12 00:00:00	Cabelo
3a4e5ee6-44a6-44bc-b873-3e3626138be6	2025-08-12 00:00:00	18:40	Pedro 	Wallyson	local	2025-08-12 16:14:22.96	Cabelo+Barba
4f85a00d-715b-4d16-82c9-402ba51e3c6a	2025-08-12 00:00:00	18:40	João neto	Bruno	local	2025-08-12 16:22:18.142	Cabelo
5b3b7450-4506-4126-a54f-5349354494bf	2025-08-13 00:00:00	16:40	Adaias 	Wallyson	local	2025-08-12 16:26:00.397	Cabelo
2755d746-2f60-4dc8-a412-3e0da9ce7491	2025-08-12 00:00:00	10:20	windney darlan	Bruno	558187774760@s.whatsapp.net	2025-08-12 00:00:00	Cabelo
a01f7863-931b-4157-bc53-d38908db129e	2025-08-13 00:00:00	09:00	windney darlan	Bruno	558187774760@s.whatsapp.net	2025-08-12 00:00:00	Cabelo
b8762836-641e-45da-867b-796c23a03b0b	2025-08-16 00:00:00	08:40	mateus	Bruno	558196083218@s.whatsapp.net	2025-08-12 00:00:00	Cabelo+Barba
2ab3d53d-9af4-439d-a48f-4a38037608d8	2025-08-12 00:00:00	16:40	francisco	Wallyson	558182062970@s.whatsapp.net	2025-08-12 00:00:00	Cabelo
c99359ba-dc88-490e-aff8-42d32dffd6e9	2025-08-13 00:00:00	17:20	Davi 	Wallyson	local	2025-08-12 20:25:03.779	Cabelo
76775720-7bc6-4da4-83b4-d9eaa2e4159a	2025-08-13 00:00:00	17:20	joão neto	Bruno	558197626118@s.whatsapp.net	2025-08-12 00:00:00	Cabelo
55593c77-2cd4-473b-ac26-664e9ad9203f	2025-08-13 00:00:00	13:20	paulo	Bruno	558192692547@s.whatsapp.net	2025-08-12 00:00:00	Cabelo
68439737-8532-4136-a82d-30ac558bc543	2025-08-13 00:00:00	09:20	marcos cipriano	Wallyson	558199770448@s.whatsapp.net	2025-08-12 00:00:00	Cabelo
14a5619a-317e-490f-a7d8-d6e008a3d754	2025-08-13 00:00:00	13:20	Vou no dentista 	Wallyson	local	2025-08-12 21:10:27.167	Cabelo
c2005fdb-5efc-4724-8413-d9c497462c7c	2025-08-15 00:00:00	17:20	Renan flash 	Bruno	local	2025-08-12 21:25:57.96	Cabelo
75f40c45-a0e2-4488-90a5-c65941495542	2025-08-15 00:00:00	15:20	joao lucas	Bruno	558189785404@s.whatsapp.net	2025-08-12 00:00:00	Cabelo+Sobrancelha
2f9029e6-34f2-46d7-87b1-cb8fac7cb6ac	2025-08-14 00:00:00	13:20	itami	Bruno	558197175420@s.whatsapp.net	2025-08-12 00:00:00	Cabelo
9386aae0-77be-4d23-9276-bb2343c4a0a1	2025-08-12 00:00:00	17:20	fabiano	Bruno	558194610556@s.whatsapp.net	2025-08-12 00:00:00	Cabelo+Barba
1b7a82fa-2000-4086-ac4c-d76a89d0a617	2025-08-14 00:00:00	10:20	maurycio	Bruno	558197162890@s.whatsapp.net	2025-08-12 00:00:00	Cabelo+Sobrancelha
37b193db-8a7e-41c5-90c7-26fcc215bae5	2025-08-18 00:00:00	13:20	joão marcello	Bruno	558196393507@s.whatsapp.net	2025-08-12 00:00:00	Cabelo
1c0ff3f3-4ea0-42c0-982c-ba3ba9642429	2025-08-16 00:00:00	16:00	ewerton adryan	Bruno	558198289810@s.whatsapp.net	2025-08-12 00:00:00	Cabelo
5edf36ae-edcb-4579-8677-45862d43d7e9	2025-08-16 00:00:00	08:00	pedro	Bruno	558182599443@s.whatsapp.net	2025-08-13 00:00:00	Cabelo
4608de8d-1ed6-4997-acbb-e4a3ca26bbd9	2025-08-18 00:00:00	14:00	Matheus irmão eduardo	Bruno	local	2025-08-13 09:20:14.208	Cabelo
78fc65f1-3982-4b86-b9e5-a60972df696b	2025-08-18 00:00:00	09:40	Indisponível 	Bruno	local	2025-08-13 09:21:03.602	Cabelo
f5f88b1f-9d67-473e-91d8-a4491e8a1fc1	2025-08-18 00:00:00	10:20	Indisponível 	Bruno	local	2025-08-13 09:21:16.645	Cabelo
bbe0e512-7ee6-43fd-9c33-a7522fb818a8	2025-08-18 00:00:00	11:00	Indisponível 	Bruno	local	2025-08-13 09:21:29.822	Cabelo
81b592f1-fd7b-48a2-a92f-089ea77c1461	2025-08-18 00:00:00	11:40	Indisponível 	Bruno	local	2025-08-13 09:21:43.565	Cabelo
bd62c19c-df7c-46dd-a310-e2fa4086e166	2025-08-13 00:00:00	09:40	Willian 	Bruno	local	2025-08-13 09:25:04.707	Cabelo
861f0c36-765b-4c59-9a36-46d54b434b62	2025-08-16 00:00:00	16:40	leiliane agendamento pra ruan	Wallyson	558198371428@s.whatsapp.net	2025-08-13 00:00:00	Cabelo
8baf12d2-4aaa-4b0a-b9e0-16f85bcd8031	2025-08-13 00:00:00	15:20	Indisponivel	Bruno	Indisponivel	2025-08-13 12:15:07.246	
30e35af4-afb5-4b7d-8cb2-723d37c46483	2025-08-13 00:00:00	16:00	Indisponivel	Bruno	Indisponivel	2025-08-13 12:15:07.338	
a233832e-1cd8-41e1-92e3-d13c84f9ba40	2025-08-13 00:00:00	16:40	Indisponivel	Bruno	Indisponivel	2025-08-13 12:15:07.365	
6249c7d2-9447-4fa8-a239-cc9ae3409658	2025-08-15 00:00:00	17:20	Kaio 	Wallyson	local	2025-08-13 12:54:19.111	Cabelo
2dc28d70-7b87-47ee-b605-3c4ec68ae315	2025-08-15 00:00:00	10:00	Gelson 	Wallyson	local	2025-08-13 12:58:57.981	Cabelo
bd59b470-e6e4-4dad-a0f4-ca07b1e73875	2025-08-14 00:00:00	14:00	Valmir 	Wallyson	local	2025-08-13 12:59:59.567	Cabelo
a4173722-3607-4959-a650-da9a53024e4c	2025-08-14 00:00:00	11:40	maicon	Bruno	558194686969@s.whatsapp.net	2025-08-13 00:00:00	Cabelo
bb9c9b6c-5676-43dc-a552-e0e1f8bf7589	2025-08-19 00:00:00	09:40	Dorgyl ( lembrar ele)	Bruno	local	2025-08-13 13:37:45.221	Cabelo
b7c8183f-8c96-4127-8722-20af684b2006	2025-08-13 00:00:00	16:00	gabriel batista	Bruno	558194907895@s.whatsapp.net	2025-08-13 00:00:00	Cabelo
2daa3b74-6afe-4136-bc2a-35b58a741b7c	2025-08-15 00:00:00	20:00	pedro henrique	Bruno	558185032618@s.whatsapp.net	2025-08-13 00:00:00	Cabelo+Sobrancelha
3086899a-8823-4afd-892e-6995b8f88665	2025-08-14 00:00:00	14:40	marcos elielson	Wallyson	558195356602@s.whatsapp.net	2025-08-13 00:00:00	Cabelo+Barba
beed1a10-e229-4edf-a576-e0312b4588a0	2025-08-18 00:00:00	09:00	Indisponivel	Wallyson	Indisponivel	2025-08-13 16:28:44.526	
ce6bbe5d-29fe-4594-bcf4-b2fd6164000a	2025-08-18 00:00:00	09:40	Indisponivel	Wallyson	Indisponivel	2025-08-13 16:28:44.619	
dee7cf72-13bc-4fc9-8c79-7782651e98bd	2025-08-18 00:00:00	10:20	Indisponivel	Wallyson	Indisponivel	2025-08-13 16:28:44.649	
b96c8198-3a7f-4408-9df1-76903b7f8da0	2025-08-18 00:00:00	11:00	Indisponivel	Wallyson	Indisponivel	2025-08-13 16:28:44.677	
c30854fe-fee7-4d97-9c4f-e6c6e99b9296	2025-08-18 00:00:00	11:40	Indisponivel	Wallyson	Indisponivel	2025-08-13 16:28:44.711	
a7d34ded-a200-4412-a7b8-bda1d59b4d92	2025-08-18 00:00:00	13:20	Indisponivel	Wallyson	Indisponivel	2025-08-13 16:28:44.76	
bf7f9600-2e1e-46f2-93ec-d3c2538edc47	2025-08-18 00:00:00	14:00	Indisponivel	Wallyson	Indisponivel	2025-08-13 16:28:44.797	
53b3d961-252a-4edc-924b-22bdd6ff7940	2025-08-18 00:00:00	14:40	Indisponivel	Wallyson	Indisponivel	2025-08-13 16:28:44.831	
45c527bc-11df-49f5-9c91-367779a1e122	2025-08-18 00:00:00	15:20	Indisponivel	Wallyson	Indisponivel	2025-08-13 16:28:44.862	
9b39554a-2867-4b53-b121-92ca1002258e	2025-08-18 00:00:00	16:00	Indisponivel	Wallyson	Indisponivel	2025-08-13 16:28:44.894	
3114fec6-61ad-464c-9fed-0439b2e53730	2025-08-18 00:00:00	16:40	Indisponivel	Wallyson	Indisponivel	2025-08-13 16:28:44.921	
968dbea5-e222-4ea6-a3fe-97c67e47e426	2025-08-18 00:00:00	17:20	Indisponivel	Wallyson	Indisponivel	2025-08-13 16:28:44.95	
7b4962e8-a187-4e1c-b16b-aa7fbed7d22b	2025-08-18 00:00:00	18:00	Indisponivel	Wallyson	Indisponivel	2025-08-13 16:28:44.982	
b084fad9-72f5-42ee-8437-e1f0ac5286ce	2025-08-18 00:00:00	18:40	Indisponivel	Wallyson	Indisponivel	2025-08-13 16:28:45.011	
8035059d-63c5-4eef-8169-66e75673b6c1	2025-08-13 00:00:00	18:00	eduardo	Bruno	558198079679@s.whatsapp.net	2025-08-13 00:00:00	Cabelo
39420633-9bf5-486e-a511-1206dc910546	2025-08-14 00:00:00	16:40	arthur sales	Bruno	558197065270@s.whatsapp.net	2025-08-13 00:00:00	Cabelo
0e48e09f-dfbc-459c-9a50-61caa59b5a8d	2025-08-14 00:00:00	16:00	eduardo	Bruno	558198079679@s.whatsapp.net	2025-08-13 00:00:00	Cabelo
cdaa817d-f19b-432f-ae28-95e7074fec62	2025-08-15 00:00:00	18:40	Cauã 	Wallyson	local	2025-08-13 21:15:44.826	Cabelo
47d4f9fd-9346-44ec-b070-93a7db36b917	2025-08-14 00:00:00	16:00	alexsander	Wallyson	558199337045@s.whatsapp.net	2025-08-13 00:00:00	Cabelo
95a8f5b9-9dc5-433c-8314-b376f7c2a0d4	2025-08-16 00:00:00	17:20	victor alexandre	Bruno	558197610116@s.whatsapp.net	2025-08-13 00:00:00	Cabelo
4feaef69-dc6c-4c81-8213-e0896f89a989	2025-08-15 00:00:00	14:40	matheus	Bruno	558189785404@s.whatsapp.net	2025-08-13 00:00:00	Cabelo
3c1f2275-052b-4e0b-af69-5e2bcd497374	2025-08-25 00:00:00	18:40	felipe	Wallyson	558198734964@s.whatsapp.net	2025-08-13 00:00:00	Cabelo+Barba
a24d9a87-7286-41fc-88c9-22e8dcd97034	2025-08-15 00:00:00	14:00	genildo	Bruno	558199736143@s.whatsapp.net	2025-08-14 00:00:00	Cabelo
6105756d-b5eb-428d-a0f3-cb5f8e512c9a	2025-08-14 00:00:00	15:20	mathias	Wallyson	558187494403@s.whatsapp.net	2025-08-14 00:00:00	Cabelo+Barba
458a66bd-e3af-4811-94b5-8b827a6b7898	2025-08-14 00:00:00	18:40	Rennan farmácia 	Bruno	local	2025-08-14 09:54:46.241	Cabelo
127bc3d0-470a-45d2-a352-663205e1d519	2025-08-14 00:00:00	17:20	Luiz André 	Wallyson	local	2025-08-14 10:04:47.226	Cabelo
19cedd80-2a1a-4403-ad6e-5f65791c1be5	2025-08-14 00:00:00	18:00	lucas	Bruno	558182451503@s.whatsapp.net	2025-08-14 00:00:00	Cabelo+Sobrancelha
0d7949da-0b81-4021-a28b-8d6aac2b1188	2025-08-23 00:00:00	17:20	zaldinho	Bruno	558198591039@s.whatsapp.net	2025-08-14 00:00:00	Cabelo
c76112ed-10dc-4232-9272-9defb1a0a016	2025-08-30 00:00:00	17:20	zaldinho	Bruno	558198591039@s.whatsapp.net	2025-08-14 00:00:00	Cabelo
165dbec9-e0c4-489b-879c-272b2e5ce64b	2025-08-16 00:00:00	10:40	luiz	Bruno	558181486379@s.whatsapp.net	2025-08-14 00:00:00	Cabelo+Sobrancelha
975ded85-9ed3-40ae-bcf6-e735410c9863	2025-08-15 00:00:00	14:00	kevin	Wallyson	558195204685@s.whatsapp.net	2025-08-14 00:00:00	Cabelo
ee12faa3-88ce-415e-bd3a-f21e8336f622	2025-08-15 00:00:00	09:40	josé rafael	Bruno	558197031839@s.whatsapp.net	2025-08-14 00:00:00	Cabelo
c4cdacf7-e215-44b6-b44d-e3ce3cc8a4de	2025-08-15 00:00:00	11:40	fernando	Bruno	558196035269@s.whatsapp.net	2025-08-14 00:00:00	Cabelo
9288c4f5-cf79-41c8-a0b9-9dfeb19a1a30	2025-08-21 00:00:00	11:20	horlean	Wallyson	558281363560@s.whatsapp.net	2025-08-14 00:00:00	Cabelo+Sobrancelha
56557026-3eab-447e-a4b9-c044e12d0ac7	2025-08-14 00:00:00	14:40	ullisses	Bruno	558182686327@s.whatsapp.net	2025-08-14 00:00:00	Cabelo
fd109c7f-d2c1-4a0f-ac51-e4bdba460570	2025-08-16 00:00:00	11:20	fábio cria	Bruno	5521980058628@s.whatsapp.net	2025-08-14 00:00:00	Cabelo
5f35530d-1746-4144-bc46-8cb7bb6a370d	2025-08-14 00:00:00	11:20	felipe helcias	Wallyson	558197667880@s.whatsapp.net	2025-08-14 00:00:00	Cabelo+Barba
10d1ae3f-524a-4109-95b4-365a3e606bf3	2025-08-14 00:00:00	16:40	mario areias	Wallyson	558381367304@s.whatsapp.net	2025-08-14 00:00:00	Cabelo+Barba
35f6c245-828c-435f-99f6-0fc96933f448	2025-08-15 00:00:00	13:20	marcel aguiar	Bruno	558198490038@s.whatsapp.net	2025-08-14 00:00:00	Cabelo
830737c8-fa92-40f0-9f33-7a11fd2cda07	2025-08-15 00:00:00	16:40	joao vitor	Bruno	558198490038@s.whatsapp.net	2025-08-14 00:00:00	Cabelo
0ec349e4-15a5-465d-8e51-d985c385f0ca	2025-08-15 00:00:00	11:00	deyvson	Bruno	558195479577@s.whatsapp.net	2025-08-14 00:00:00	Cabelo
6c148ef6-3a78-44bb-b597-991ffab8f1f1	2025-08-15 00:00:00	10:20	Paulo cavalcanti	Bruno	local	2025-08-14 16:17:14.579	Cabelo
3e8c2081-ea72-4b43-ba7e-6795597e66ea	2025-08-14 00:00:00	14:00	Vinicius 	Bruno	local	2025-08-14 16:19:30.078	Cabelo
217f906f-961f-4c8a-88d8-b21edbf3a941	2025-08-15 00:00:00	10:40	Paulo 	Wallyson	local	2025-08-14 16:19:43.958	Cabelo
b4f26388-0295-4300-b97c-c0429e2dc6e1	2025-08-14 00:00:00	15:20	Indisponível 	Bruno	local	2025-08-14 17:28:11.316	Cabelo
69efe305-db9c-4ea2-a509-2b219aba5f45	2025-08-15 00:00:00	09:20	joão emanuel	Wallyson	558199715446@s.whatsapp.net	2025-08-14 00:00:00	Cabelo
73572721-2784-4160-bfa0-d8c9078595ef	2025-08-19 00:00:00	19:20	fernando nutri smart	Bruno	558199948217@s.whatsapp.net	2025-08-14 00:00:00	Cabelo
2edbb030-6ec0-41bc-b278-d28df8481822	2025-08-18 00:00:00	15:20	flávio	Bruno	5511992553806@s.whatsapp.net	2025-08-14 00:00:00	Cabelo
709c5d97-f066-4447-ab17-64840131a7f1	2025-08-16 00:00:00	10:00	Josivaldo 	Wallyson	local	2025-08-14 21:28:24.14	Cabelo
ce5a498d-d5e7-4ced-9842-62af8a25aee6	2025-08-16 00:00:00	14:00	isaque	Wallyson	558182470021@s.whatsapp.net	2025-08-14 00:00:00	Cabelo
436ae2e5-71aa-4242-8a49-c632207fc9a6	2025-08-16 00:00:00	14:40	samuel	Wallyson	558182470021@s.whatsapp.net	2025-08-14 00:00:00	Cabelo
e5563e5b-d62d-4d61-a9b3-eaee82ed4d5c	2025-08-15 00:00:00	18:00	wesley	Wallyson	558196817233@s.whatsapp.net	2025-08-14 00:00:00	Cabelo
3dde44f1-2670-49c8-ada7-29adb515c279	2025-08-14 00:00:00	10:40	alan	Wallyson	558199788222@s.whatsapp.net	2025-08-14 00:00:00	Cabelo
8aecb8a9-bf59-49e1-9fb2-4499d936bc1b	2025-08-18 00:00:00	16:40	miguel	Bruno	558195712225@s.whatsapp.net	2025-08-14 00:00:00	Cabelo
ca72d904-95c4-48ad-bbb6-a4781c5ab285	2025-08-16 00:00:00	10:40	júlio césar	Wallyson	558196440108@s.whatsapp.net	2025-08-14 00:00:00	Cabelo
371da15e-f724-431a-a979-9b33384ab732	2025-08-15 00:00:00	19:20	Guilherme 	Wallyson	local	2025-08-15 01:19:50.142	Cabelo
42971758-c1a1-4acc-8502-9a0ef4f57e55	2025-08-16 00:00:00	15:20	kayke	Wallyson	558197180683@s.whatsapp.net	2025-08-14 00:00:00	Cabelo+Barba
60d91aa8-4ee1-4ba4-97c4-5be840c465d1	2025-08-16 00:00:00	12:00	gustavo	Wallyson	558199587573@s.whatsapp.net	2025-08-14 00:00:00	Cabelo+Sobrancelha
d55faa76-f74d-46ed-8289-fbc0af47cb39	2025-08-19 00:00:00	11:00	joão pedro campos	Bruno	558196073970@s.whatsapp.net	2025-08-15 00:00:00	Cabelo+Barba
24a67c3e-f522-490e-b659-0fde30e89902	2025-08-19 00:00:00	18:40	Dirceu 	Bruno	local	2025-08-15 10:37:41.177	Cabelo
f5db2de4-28f0-4986-aecc-c3bd44c20311	2025-08-15 00:00:00	14:40	nando	Wallyson	558181323380@s.whatsapp.net	2025-08-15 00:00:00	Cabelo
b6cd3ff2-275d-4946-8cc3-ee7a881d6772	2025-08-20 00:00:00	16:00	leonardo	Bruno	558174001016@s.whatsapp.net	2025-08-15 00:00:00	Cabelo
71b32e45-66b8-4b55-a4ed-ae45eebd4698	2025-08-15 00:00:00	20:00	Miguel 	Wallyson	local	2025-08-15 14:20:22.462	Cabelo
637fb509-e1f0-4fa2-8887-491b61b64b5d	2025-08-16 00:00:00	18:00	mauricio	Wallyson	558197954525@s.whatsapp.net	2025-08-15 00:00:00	Cabelo
41dbc03c-033f-4cf5-8342-ed96d697f72f	2025-08-16 00:00:00	16:00	lucas	Wallyson	558182524811@s.whatsapp.net	2025-08-15 00:00:00	Cabelo
31f0996c-d59e-4d5e-b2f4-c92e7025c5fa	2025-08-16 00:00:00	11:20	Ademir 	Wallyson	local	2025-08-15 17:01:13.123	Cabelo
a47e9ff5-66d2-4657-a4ef-69536cb8ad05	2025-08-16 00:00:00	13:20	Dafnis 	Wallyson	local	2025-08-15 19:02:26.447	Cabelo
88580f9a-7899-453b-b28b-486ed8fbd849	2025-08-16 00:00:00	17:20	Nando	Wallyson	local	2025-08-15 19:29:08.43	Cabelo
8ebdf254-d5f0-4b45-8576-8a2941d4aa60	2025-08-16 00:00:00	09:20	Júnior 	Wallyson	local	2025-08-15 19:29:25.248	Cabelo
eaa0afb8-f681-4aeb-8e50-146b9dc65992	2025-08-19 00:00:00	17:20	bruno	Bruno	558197349442@s.whatsapp.net	2025-08-15 00:00:00	Cabelo
13a21757-acdf-462d-b633-65ca4bb2c96d	2025-08-19 00:00:00	17:20	mácio	Wallyson	558197222313@s.whatsapp.net	2025-08-15 00:00:00	Cabelo
e1cec4a9-dbc8-47e8-bffa-6742b4b2d2ac	2025-08-20 00:00:00	14:40	edinho	Wallyson	558198615843@s.whatsapp.net	2025-08-15 00:00:00	Cabelo
f75bd793-60ed-42da-b36e-42d04ff6a29a	2025-08-22 00:00:00	16:40	hugo	Wallyson	558197524355@s.whatsapp.net	2025-08-15 00:00:00	Cabelo
87289954-e7e5-48a2-803b-b32cf46a9043	2025-08-16 00:00:00	13:20	Ocupado 	Bruno	local	2025-08-15 23:36:51.13	Cabelo
c395a9a5-f269-48d0-a405-65cc6ac86863	2025-08-18 00:00:00	14:40	markinhos	Bruno	108689046417640@lid	2025-08-16 00:00:00	Cabelo+Barba
3b3e5a38-ea08-430d-9380-f3b5c7b59e7f	2025-08-19 00:00:00	18:40	Gustavo 	Wallyson	local	2025-08-16 13:10:39.441	Cabelo
af700087-de2d-4048-af2c-aa3b390dc8ca	2025-08-18 00:00:00	17:20	ismael	Bruno	558199824318@s.whatsapp.net	2025-08-16 00:00:00	Cabelo
2e720328-16f0-4bf4-977c-ab78841742c5	2025-08-19 00:00:00	14:40	mauricio	Bruno	558182705181@s.whatsapp.net	2025-08-16 00:00:00	Cabelo
48de5c99-266f-42ee-987e-834de797b682	2025-08-18 00:00:00	18:00	nicolas nóbrega de lima	Bruno	558183927968@s.whatsapp.net	2025-08-16 00:00:00	Cabelo
2a5bc031-66a9-41ae-9fed-d2f96edfe73f	2025-09-19 00:00:00	13:20	Emanoel 	Bruno	local	2025-08-16 20:39:42.148	Cabelo+Barba
16758f02-cd0a-431d-bbf2-dba0a7bf7369	2025-09-19 00:00:00	09:00	oi bruno	Bruno	558171201693@s.whatsapp.net	2025-08-16 00:00:00	Cabelo
c254afa2-8929-4143-85a5-3bc312308487	2025-09-19 00:00:00	17:20	eduardo	Bruno	558194297236@s.whatsapp.net	2025-08-16 00:00:00	Cabelo+Barba
ecf2cc65-51f9-470b-9139-e676153d49da	2025-08-18 00:00:00	18:40	sérgio	Bruno	558198288830@s.whatsapp.net	2025-08-16 00:00:00	Cabelo
03e0d730-430b-465b-97b7-73762cbbb49e	2025-09-10 00:00:00	13:20	manoel neto	Bruno	558195055212@s.whatsapp.net	2025-08-17 00:00:00	Cabelo+Barba
d4c0e7e4-600e-4963-8233-e1781b50bc4c	2025-08-19 00:00:00	11:40	arthur	Bruno	558194115511@s.whatsapp.net	2025-08-17 00:00:00	Cabelo+Barba
acaf95af-b0c4-4b16-b004-a973c0c666b4	2025-09-18 00:00:00	11:40	arthur	Bruno	558194115511@s.whatsapp.net	2025-08-17 00:00:00	Cabelo+Barba
bf69f640-d6a4-47f0-96d1-7a861071c680	2025-09-10 00:00:00	11:40	arthur	Bruno	558194115511@s.whatsapp.net	2025-08-17 00:00:00	Cabelo+Barba
5fe86112-7d0f-41f4-8e66-db362786261a	2025-08-19 00:00:00	18:00	mateus barbosa	Bruno	558197626344@s.whatsapp.net	2025-08-17 00:00:00	Cabelo
f71e98b2-ca24-48c8-a049-21d28a43865c	2025-08-23 00:00:00	08:40	alex	Bruno	558198874006@s.whatsapp.net	2025-08-17 00:00:00	Cabelo+Barba
fff226c3-b796-4924-a18c-2918911459ac	2025-08-27 00:00:00	17:20	gláucio	Wallyson	558187255411@s.whatsapp.net	2025-08-17 00:00:00	Cabelo
532be336-7545-4d3e-9b55-764cebacb6e8	2025-08-19 00:00:00	18:00	erick	Wallyson	558199045127@s.whatsapp.net	2025-08-17 00:00:00	Cabelo
375a80ac-6eab-45a4-84ef-d18c28791418	2025-08-23 00:00:00	14:00	marcus	Bruno	558198507164@s.whatsapp.net	2025-08-17 00:00:00	Cabelo
addb0cf2-fa8b-4221-a820-1b1ac4f1400a	2025-08-19 00:00:00	15:20	william gabriel	Bruno	558198087356@s.whatsapp.net	2025-08-17 00:00:00	Cabelo
3fe7cceb-5cb4-4659-8e39-f06414efaf93	2025-08-19 00:00:00	14:00	emanuel	Bruno	558197496524@s.whatsapp.net	2025-08-18 00:00:00	Cabelo+Sobrancelha
2755f9b7-57e5-4532-a933-7ad73f9ed01e	2025-08-19 00:00:00	16:40	fernando	Bruno	558196035269@s.whatsapp.net	2025-08-18 00:00:00	Cabelo
6885d8b8-c5ac-4a0a-8ce5-2a7094187a0b	2025-08-23 00:00:00	13:20	gabriel	Bruno	558192417684@s.whatsapp.net	2025-08-18 00:00:00	Cabelo+Sobrancelha
334ccbe9-153f-4d58-8c4a-9778317f8b75	2025-08-23 00:00:00	10:00	Alex prog	Bruno	local	2025-08-18 09:46:13.016	Cabelo
41aaad08-7fdf-43d6-9493-99bb50763e33	2025-08-23 00:00:00	10:40	Alex prog 	Bruno	local	2025-08-18 09:46:41.972	Cabelo
4f5b7265-8718-42e8-a4fe-335eae0f121d	2025-08-20 00:00:00	14:00	rennan	Bruno	558179005726@s.whatsapp.net	2025-08-18 00:00:00	Cabelo
8a0d551b-e1a5-4da8-9688-4513be3251a9	2025-08-19 00:00:00	10:20	jona	Bruno	558196647899@s.whatsapp.net	2025-08-18 00:00:00	Cabelo
bf191074-0fe9-46e2-8bb4-c0ab89365461	2025-08-22 00:00:00	09:00	cláudio figueiredo	Bruno	202787501646016@lid	2025-08-18 00:00:00	Cabelo+Sobrancelha
d48c30f7-40e2-48f9-ac43-22110f3eb68e	2025-08-21 00:00:00	18:00	joão paulo	Wallyson	558182158768@s.whatsapp.net	2025-08-18 00:00:00	Cabelo
58a64e5d-3dc3-4456-8fe1-6c8100eb1dcf	2025-08-19 00:00:00	08:40	Luiz André 	Wallyson	local	2025-08-18 14:53:10.501	Cabelo
93562185-d72d-4d2b-a1b5-8968c8e02f01	2025-08-19 00:00:00	09:20	Marcelo 	Wallyson	local	2025-08-18 14:55:56.774	Cabelo
ca2006a1-c92f-4284-bc9a-c09d8121eca1	2025-08-20 00:00:00	09:00	Mayrlon	Bruno	local	2025-08-18 18:47:20.645	Cabelo+Sobrancelha
8ceb0164-a6c0-4372-9972-fd129d6691cd	2025-08-20 00:00:00	09:00	blz fera	Bruno	558196600679@s.whatsapp.net	2025-08-18 00:00:00	Cabelo+Sobrancelha
313efea5-2d65-4f48-9b5b-257986a1f1bb	2025-08-20 00:00:00	15:20	Edinho vem de 14:20 progressiva	Bruno	local	2025-08-18 19:03:33.215	Cabelo
03b29ede-7977-49f9-805d-cce0f597f6fd	2025-08-23 00:00:00	08:00	wilson	Wallyson	558197148928@s.whatsapp.net	2025-08-18 00:00:00	Cabelo+Sobrancelha
dd4e7d06-8bd7-4849-b20c-2da32de5f81f	2025-08-23 00:00:00	14:40	dubolo	Bruno	558196647899@s.whatsapp.net	2025-08-18 00:00:00	Cabelo+Sobrancelha
f81ad5c1-f892-4728-bad2-33167bf1770b	2025-09-18 00:00:00	17:20	anderson carlos	Bruno	558196579148@s.whatsapp.net	2025-08-18 00:00:00	Cabelo
7d741eab-fdb0-4c3d-912f-f15c5a5c1a8c	2025-08-19 00:00:00	16:00	Andrezza	Bruno	local	2025-08-18 22:07:55.824	Cabelo
c063bc45-0d7d-40a5-ab52-12cf125bf628	2025-08-19 00:00:00	13:20	guilherme	Bruno	558192973085@s.whatsapp.net	2025-08-18 00:00:00	Cabelo+Sobrancelha
9d4ab7d4-a6c4-4a34-8648-a2e6d3760ad1	2025-08-20 00:00:00	11:00	lucas	Bruno	558197326785@s.whatsapp.net	2025-08-18 00:00:00	Cabelo
dabddf2b-52f3-447f-9f05-37c752dcd499	2025-09-18 00:00:00	14:00	matheus ryan	Bruno	558198446732@s.whatsapp.net	2025-08-18 00:00:00	Cabelo
bba42f5b-6315-4f2d-a4f9-b6c1b3406567	2025-08-23 00:00:00	08:40	wallacy	Wallyson	90104202809537@lid	2025-08-18 00:00:00	Cabelo
1de26b6e-b2b9-4353-8b88-fdb300235374	2025-08-22 00:00:00	17:20	pedro henrique	Bruno	558199160082@s.whatsapp.net	2025-08-19 00:00:00	Cabelo
c0da883f-dd03-4286-80ba-d3ea96320e91	2025-08-19 00:00:00	15:20	João Carmen 	Wallyson	local	2025-08-19 10:30:31.721	Cabelo
3be09796-1d60-4ab9-8dc8-686c63426299	2025-08-22 00:00:00	11:20	Luiz Henrique 	Wallyson	local	2025-08-19 10:40:36.065	Cabelo
5a3328a5-797d-46c5-b68f-ae84f5c70157	2025-08-19 00:00:00	11:20	Marcelo 	Wallyson	local	2025-08-19 12:24:56.823	Cabelo
87050ed9-8d7e-4570-b0ba-544d70c89a43	2025-08-23 00:00:00	13:20	Allysson 	Wallyson	local	2025-08-19 12:27:22.579	Cabelo
004c5f64-437b-4bd6-b475-19a5ddca9619	2025-08-22 00:00:00	18:00	cláudio henrique	Wallyson	558188482085@s.whatsapp.net	2025-08-19 00:00:00	Cabelo
2364c69a-a6f7-41fc-898b-100262c4a79a	2025-08-21 00:00:00	09:00	joão danielson	Bruno	558196702254@s.whatsapp.net	2025-08-19 00:00:00	Cabelo+Barba
4b36405c-155f-4a90-8ac7-d1fd6da13de9	2025-08-19 00:00:00	14:40	nando	Wallyson	558181323380@s.whatsapp.net	2025-08-19 00:00:00	Cabelo
960b7348-feb6-4f61-b832-dedce657b597	2025-08-19 00:00:00	13:20	ryan	Wallyson	5511959620317@s.whatsapp.net	2025-08-19 00:00:00	Cabelo+Sobrancelha
ee3314ee-f00a-410b-97ec-863505dbd047	2025-08-20 00:00:00	16:40	lucas gabriel	Wallyson	558199333703@s.whatsapp.net	2025-08-19 00:00:00	Cabelo+Sobrancelha
36c222d2-aa63-42e5-b381-2520d3ec53c5	2025-08-22 00:00:00	16:00	matheus vinícius	Wallyson	558192338346@s.whatsapp.net	2025-08-19 00:00:00	Cabelo
3354cfb7-cf2f-4ed5-9f5a-e535788fd524	2025-08-20 00:00:00	09:40	fabiano	Bruno	558194610556@s.whatsapp.net	2025-08-19 00:00:00	Cabelo
59b09912-453a-4bd2-a3d0-8ca93fc1b4ef	2025-08-22 00:00:00	14:00	bruno	Bruno	558196522258@s.whatsapp.net	2025-08-19 00:00:00	Cabelo
30ead8ab-afef-414f-87d0-a41ef02f2e35	2025-09-19 00:00:00	18:00	roberto guedes	Bruno	558198028971@s.whatsapp.net	2025-08-19 00:00:00	Cabelo
e1a82cf6-618c-4b2a-ab38-8c674f793f9e	2025-09-18 00:00:00	16:00	william gabriel	Bruno	558198087356@s.whatsapp.net	2025-08-19 00:00:00	Cabelo
feceea98-7bd6-42ca-8ae2-9edd042bbaf0	2025-08-20 00:00:00	13:20	Valmir 	Wallyson	local	2025-08-20 01:02:18.249	Cabelo
779ca4cf-a894-49a8-839c-33d35e994bcf	2025-08-20 00:00:00	11:20	Issac 	Wallyson	local	2025-08-20 01:02:49.362	Cabelo
eff9b5fc-3a83-4157-b0ca-b6e17d385346	2025-08-20 00:00:00	18:40	juininho	Wallyson	558194082765@s.whatsapp.net	2025-08-19 00:00:00	Cabelo
ac72b304-7715-4441-b429-9e9adf8919cc	2025-08-20 00:00:00	17:20	Vínicos 	Wallyson	local	2025-08-20 01:53:55.168	Cabelo
9fc783f4-1136-4d32-8158-c420d9715cda	2025-08-20 00:00:00	11:40	breno	Bruno	558198437880@s.whatsapp.net	2025-08-20 00:00:00	Cabelo+Sobrancelha
c5b01b35-a00c-4123-a61a-2575f917b2a7	2025-08-20 00:00:00	18:00	diego santos da silva	Bruno	558173303801@s.whatsapp.net	2025-08-20 00:00:00	Cabelo
610e2da7-9083-4edf-a292-a1d71a88c9d2	2025-08-20 00:00:00	16:00	Michel 	Wallyson	local	2025-08-20 12:03:05.203	Cabelo
90aeb5de-e441-405f-beea-99632f9b4e03	2025-08-20 00:00:00	10:40	márcio	Wallyson	558199069172@s.whatsapp.net	2025-08-20 00:00:00	Cabelo
fead558c-da73-47e3-a5b4-5ff05975b530	2025-08-21 00:00:00	14:40	higor gustavo	Bruno	558198769095@s.whatsapp.net	2025-08-20 00:00:00	Cabelo
f175bf8e-f214-4f7b-839d-af4ed8c546b4	2025-08-22 00:00:00	15:20	ryan valério	Bruno	69153402691745@lid	2025-08-20 00:00:00	Cabelo+Barba
1db906e8-6be6-4e94-a3a0-06b9cb1811e0	2025-08-21 00:00:00	13:20	gerdo	Wallyson	558196275453@s.whatsapp.net	2025-08-20 00:00:00	Cabelo+Barba
7a63c3e8-5aaa-442e-907a-543c3a339cb3	2025-08-22 00:00:00	16:00	andrew	Bruno	558198694494@s.whatsapp.net	2025-08-20 00:00:00	Cabelo
81144239-123c-435e-8d77-a40f7b5c1257	2025-08-22 00:00:00	16:40	anderson	Bruno	558198694494@s.whatsapp.net	2025-08-20 00:00:00	Cabelo
98f772bf-6c68-4fad-b602-ac0cb4630ae4	2025-08-22 00:00:00	18:00	welliton fonseca	Bruno	558198774580@s.whatsapp.net	2025-08-20 00:00:00	Cabelo
f8cf6147-fda8-4159-a5f4-0fe8b879b9ac	2025-08-20 00:00:00	15:20	Felipe 	Wallyson	local	2025-08-20 17:47:50.284	Cabelo
dbaeefa9-bd8e-472a-b7b5-a304766098c7	2025-08-20 00:00:00	16:40	kleyton	Bruno	558198744016@s.whatsapp.net	2025-08-20 00:00:00	Cabelo
8beb01b5-93ee-4f03-a09e-6ecc7480402c	2025-08-22 00:00:00	15:20	Jorge 	Wallyson	local	2025-08-20 18:55:32.162	Cabelo
b03be953-dbb2-4d18-bd60-440b363449d0	2025-08-23 00:00:00	11:20	denílson	Bruno	558197084296@s.whatsapp.net	2025-08-20 00:00:00	Cabelo+Barba
a3aabebc-a246-4694-8478-b46d3677abd2	2025-08-22 00:00:00	13:20	antonio neto	Bruno	558196049253@s.whatsapp.net	2025-08-20 00:00:00	Cabelo
3ead4dfd-81fe-4325-86b2-f1b2e192e962	2025-08-25 00:00:00	11:00	anderson	Bruno	558197666072@s.whatsapp.net	2025-08-20 00:00:00	Cabelo
2dbcc78d-eb69-43b9-9c62-29085c5511b8	2025-08-21 00:00:00	18:40	Gabriel 	Wallyson	local	2025-08-20 21:13:57.77	Cabelo
e6133355-fe17-4f4c-84cd-84a0d2c5689f	2025-08-21 00:00:00	14:00	henrique	Bruno	558198769095@s.whatsapp.net	2025-08-20 00:00:00	Cabelo
74733407-43fd-4b23-8b9e-1865f844292b	2025-08-21 00:00:00	10:20	ataliba	Bruno	558182671510@s.whatsapp.net	2025-08-20 00:00:00	Barba
8d3a9582-9472-4f3f-85a7-c3c37577fa07	2025-08-23 00:00:00	14:00	Vaninho 	Wallyson	local	2025-08-20 23:29:27.302	Cabelo+Barba
79130d6b-dad0-4ef0-b853-faa25e844a25	2025-08-23 00:00:00	08:00	samuel	Bruno	558171201693@s.whatsapp.net	2025-08-20 00:00:00	Cabelo
6e3c6c3f-7647-4121-b355-d19229b34595	2025-08-22 00:00:00	17:20	Lyaderson 	Wallyson	local	2025-08-21 10:07:47.26	Cabelo
26df37e6-67ed-4630-af5b-5129d7bbb8ad	2025-08-22 00:00:00	19:20	Juninho compadre 	Wallyson	local	2025-08-21 10:22:14.801	Cabelo
770dc83c-de94-454d-b4b7-d7988f223639	2025-08-21 00:00:00	15:20	luis	Bruno	558199061615@s.whatsapp.net	2025-08-21 00:00:00	Cabelo+Sobrancelha
aa73ba9e-75f9-4ee1-b488-9ae34b8ddd56	2025-09-18 00:00:00	18:40	ryan	Bruno	558196680308@s.whatsapp.net	2025-08-21 00:00:00	Cabelo+Barba
8c16d1f7-df31-47cb-852c-22092bd905d0	2025-08-22 00:00:00	09:40	romerio	Bruno	558198627331@s.whatsapp.net	2025-08-21 00:00:00	Cabelo+Barba
3ba5f3f0-1309-44a3-b46b-bfd3bfb9a6ec	2025-08-21 00:00:00	11:40	anthony	Bruno	558197620059@s.whatsapp.net	2025-08-21 00:00:00	Cabelo
d14d12d1-d71c-4d69-ad9b-bc58256a0153	2025-08-21 00:00:00	14:00	Lucas pio 	Wallyson	local	2025-08-21 14:09:27.208	Cabelo
296deaca-270f-4cfc-b0c1-218936946a93	2025-08-21 00:00:00	18:40	Paulo	Bruno	local	2025-08-21 14:38:55.641	Cabelo
1cf283f8-b353-4cc9-b5bd-59bb1ff97ca2	2025-08-21 00:00:00	18:00	lucas santos	Bruno	558198471608@s.whatsapp.net	2025-08-21 00:00:00	Cabelo
d5817830-0146-44fb-b516-58b4de719c79	2025-08-28 00:00:00	11:40	micherlaine	Bruno	558196463146@s.whatsapp.net	2025-08-21 00:00:00	Cabelo
bec98ceb-e8d4-4358-a9b6-23d8cedd478e	2025-08-21 00:00:00	15:20	Lucian 	Wallyson	local	2025-08-21 16:12:49.256	Cabelo
34ff4eff-bda8-4d93-a68e-6698e589c5ec	2025-08-21 00:00:00	17:20	Pedro 	Wallyson	local	2025-08-21 16:15:26.162	Cabelo
35b929bd-44ef-402d-86d9-2460c8829476	2025-08-21 00:00:00	14:40	john	Wallyson	558196903604@s.whatsapp.net	2025-08-21 00:00:00	Cabelo+Barba
7a8a044d-c21e-4a34-890b-b984c7c19b1c	2025-08-23 00:00:00	15:20	marquinhos	Wallyson	558198441841@s.whatsapp.net	2025-08-21 00:00:00	Cabelo
b78403da-8926-4e3a-bfb7-7a7f4cd4d39d	2025-08-21 00:00:00	16:00	Hatus	Bruno	local	2025-08-21 18:26:11.747	Cabelo
0eb6ec64-7522-409a-9981-0cea1bc77360	2025-08-21 00:00:00	16:00	Marcado 	Wallyson	local	2025-08-21 18:39:45.538	Cabelo
06c83615-587c-480e-8c39-941feee7fab0	2025-08-22 00:00:00	18:40	davi e valney	Bruno	558197232916@s.whatsapp.net	2025-08-21 00:00:00	Cabelo
4494622c-a20d-40a5-a1b0-4e33d33f51e8	2025-09-22 00:00:00	16:00	Eraldo 	Wallyson	local	2025-09-21 17:05:30.814	Cabelo
60fb2b33-1f48-40d8-b705-2ec502c88f5c	2025-08-22 00:00:00	11:40	thalison oliveira	Bruno	108689046417640@lid	2025-08-21 00:00:00	Cabelo+Barba
693f4cce-24fe-4b0a-9992-19de113b5daa	2025-08-23 00:00:00	15:20	guilherme	Bruno	558196081518@s.whatsapp.net	2025-08-21 00:00:00	Cabelo
39f44c27-d754-41d2-8636-ab29dacc1f9c	2025-08-25 00:00:00	17:20	Noa 	Wallyson	local	2025-08-21 22:21:10.256	Cabelo
51692765-4d4c-4b4c-b290-f7556f8614c9	2025-08-23 00:00:00	12:00	lucas leal	Bruno	558192687390@s.whatsapp.net	2025-08-21 00:00:00	Cabelo+Sobrancelha
237a3a4f-482a-4937-8502-d0e630077a62	2025-08-22 00:00:00	09:20	pedro sérgio	Wallyson	558197271391@s.whatsapp.net	2025-08-21 00:00:00	Cabelo+Sobrancelha
7a79f927-478d-4b2d-b23d-f57fe79fa463	2025-08-22 00:00:00	14:00	Miguel 	Wallyson	local	2025-08-22 02:18:59.961	Cabelo
4247e7a2-b22a-4085-aa22-d55d2ef414ab	2025-08-22 00:00:00	18:40	Leandro 	Wallyson	local	2025-08-22 02:19:32.491	Cabelo
cbcac863-533d-4757-8f93-f4b684c36a00	2025-08-22 00:00:00	08:00	Marcado 	Wallyson	local	2025-08-22 02:20:15.595	Cabelo
fbf1f482-1ff6-43e8-a967-e10fefc51d88	2025-08-22 00:00:00	10:00	Wellington 	Wallyson	local	2025-08-22 02:20:39.528	Cabelo
4f61e878-467d-4484-b35f-78810b3a4705	2025-08-22 00:00:00	20:00	miguel	Wallyson	558196903604@s.whatsapp.net	2025-08-21 00:00:00	Cabelo
18108dcf-4c6a-4afc-950c-0e6ccf1536f4	2025-08-23 00:00:00	14:40	josé henrique	Wallyson	558182163068@s.whatsapp.net	2025-08-22 00:00:00	Cabelo
74218217-2017-4974-b98e-993be439409c	2025-08-23 00:00:00	16:00	noah	Wallyson	558196533335@s.whatsapp.net	2025-08-22 00:00:00	Cabelo
2ec2e027-c1ed-4650-911f-619a0cd5edb7	2025-08-25 00:00:00	09:40	emanoel	Bruno	558181079674@s.whatsapp.net	2025-08-22 00:00:00	Cabelo
90688c73-8c9d-4b25-a244-54ae58dac562	2025-08-25 00:00:00	10:20	leonardo cabral	Bruno	558197413226@s.whatsapp.net	2025-08-22 00:00:00	Cabelo
ef818c02-12e9-435e-8d28-6361ecaf97e6	2025-08-25 00:00:00	09:40	Indisponivel	Bruno	Indisponivel	2025-08-22 11:44:49.244	
0f59942e-17be-42a8-ade7-c010705fbd9a	2025-08-25 00:00:00	10:20	Indisponivel	Bruno	Indisponivel	2025-08-22 11:44:49.372	
1e4f7981-337b-407d-b9f0-473475b82e8b	2025-08-25 00:00:00	11:00	Indisponivel	Bruno	Indisponivel	2025-08-22 11:44:49.427	
3fe4bf7a-dbe0-4683-acff-eb8d68709f11	2025-08-25 00:00:00	11:40	Indisponivel	Bruno	Indisponivel	2025-08-22 11:44:49.458	
67531965-f141-4395-b305-09dfe4e9a771	2025-08-22 00:00:00	14:40	Wesley rafae	Bruno	local	2025-08-22 11:48:03.471	Cabelo
70ebe0d9-a3ce-4eaf-8917-e29d1f36394c	2025-08-22 00:00:00	19:20	gabriel	Bruno	558187145252@s.whatsapp.net	2025-08-22 00:00:00	Cabelo
d8bc8c1c-5bee-4a48-9c28-08d9d813f286	2025-08-22 00:00:00	20:00	Neto	Bruno	local	2025-08-22 12:54:59.292	Cabelo
1c67ce74-4a5b-4244-912e-c783747787b6	2025-08-23 00:00:00	10:00	pedro robson	Wallyson	558198929820@s.whatsapp.net	2025-08-22 00:00:00	Cabelo
1d6feeab-9cb5-44ee-93f5-6b05484b20e0	2025-09-06 00:00:00	17:20	Arthur	Wallyson	local	2025-08-22 14:24:41.887	Cabelo
d679ca70-957f-4737-ac38-9e643ba8d852	2025-08-26 00:00:00	09:00	Emanoel nel	Bruno	local	2025-08-22 15:04:06.716	Cabelo
c84b056a-5fd7-4bad-b0d8-e7b0d17a6706	2025-08-26 00:00:00	09:40	Emanoel nel	Bruno	local	2025-08-22 15:04:22.897	Cabelo
3e9249dd-fd7a-4df6-b92f-5d13a6168d50	2025-09-18 00:00:00	18:40	João caspa 	Wallyson	local	2025-08-22 15:36:17.303	Cabelo
eee30fcc-b306-4370-ae7d-de3cd556d324	2025-08-25 00:00:00	14:00	gonzaga neto	Bruno	558198514795@s.whatsapp.net	2025-08-22 00:00:00	Cabelo
0326e637-8589-4206-9594-182c33fb043f	2025-09-19 00:00:00	09:40	roberto	Bruno	214198793588964@lid	2025-08-22 00:00:00	Cabelo+Barba
da0de439-49d4-43b8-85a6-5ecea068875b	2025-08-25 00:00:00	16:40	glaucio	Wallyson	558187255411@s.whatsapp.net	2025-08-22 00:00:00	Cabelo
05b18541-e3f3-46d5-bb56-92af5f7bf981	2025-08-23 00:00:00	10:40	paulo césar	Wallyson	558195254306@s.whatsapp.net	2025-08-22 00:00:00	Cabelo
f6e4d05b-a716-48fa-aeb6-95a772f3b6db	2025-08-23 00:00:00	09:20	nilson fonseca	Wallyson	558189252475@s.whatsapp.net	2025-08-22 00:00:00	Cabelo
b03dab62-6c68-4eb4-86ac-7046c34bb2e6	2025-08-23 00:00:00	11:20	wesley	Wallyson	558181016662@s.whatsapp.net	2025-08-22 00:00:00	Cabelo+Sobrancelha
aa39fef3-7f70-48ab-8e0f-b56a416deb73	2025-08-29 00:00:00	14:40	gabriel	Bruno	558197699397@s.whatsapp.net	2025-08-22 00:00:00	Cabelo
f95df473-d843-462f-bc97-15a4029decc9	2025-08-23 00:00:00	12:00	heron	Wallyson	5581920018112@s.whatsapp.net	2025-08-22 00:00:00	Cabelo+Barba
48401520-780b-4773-bd21-ef60b5c264a2	2025-08-23 00:00:00	18:00	Marcado 	Wallyson	local	2025-08-23 09:44:10.474	Cabelo
5737a25d-90d4-4cf5-8275-a129a631bc38	2025-08-23 00:00:00	16:00	Ocupado 	Bruno	local	2025-08-23 10:23:00.614	Cabelo
a43cfb4e-1d8a-48e5-a9fa-1add9bdf23d0	2025-08-23 00:00:00	17:20	Davi 	Wallyson	local	2025-08-23 10:38:54.59	Cabelo
4ea75876-3073-4c2e-a3ea-56f3cce2061e	2025-08-23 00:00:00	16:40	Zé neto 	Wallyson	local	2025-08-23 13:00:07.965	Cabelo
1990471d-5763-4797-babe-a897d9813ed5	2025-08-25 00:00:00	14:40	Gabriel jacinta	Bruno	local	2025-08-23 17:06:04.302	Cabelo+Sobrancelha
3a02c53b-0950-46a6-bdff-95291ded6b03	2025-08-25 00:00:00	13:20	anderson	Bruno	558197666072@s.whatsapp.net	2025-08-23 00:00:00	Cabelo
4ba52264-5b22-43bf-9f24-0735b4e7687d	2025-09-19 00:00:00	10:20	fabiano	Bruno	558194610556@s.whatsapp.net	2025-08-23 00:00:00	Cabelo+Barba
72ea6810-d678-41ac-95a8-5e1df0d1041a	2025-08-25 00:00:00	16:00	felipe silva	Bruno	558179158954@s.whatsapp.net	2025-08-24 00:00:00	Cabelo
88e1f25d-fe0a-4827-b68f-42a6992ce29a	2025-09-06 00:00:00	14:00	george luiz	Bruno	558198592917@s.whatsapp.net	2025-08-24 00:00:00	Cabelo
bb0a3ad2-b555-4479-b25c-a53e09fa58c1	2025-08-29 00:00:00	16:00	Gabriel Pedrosa botox	Bruno	local	2025-08-24 20:02:29.237	Cabelo
2f0aad13-ff8c-4e0e-9ad2-a7c8818bf5b9	2025-08-25 00:00:00	17:20	kauã felix	Bruno	558193501403@s.whatsapp.net	2025-08-24 00:00:00	Cabelo
91c1dce7-ae08-4c64-97c4-7e41b3204346	2025-09-05 00:00:00	14:00	luiz felipe	Bruno	558196969019@s.whatsapp.net	2025-08-24 00:00:00	Cabelo
2e62c0c5-d3c8-4864-9ec8-01bbefae8fac	2025-08-25 00:00:00	16:40	serginho bala	Bruno	558195354617@s.whatsapp.net	2025-08-24 00:00:00	Cabelo+Sobrancelha
13b3ed09-ca3d-4ac0-9443-a2e9a9e552e2	2025-08-25 00:00:00	15:20	João Henrique 	Wallyson	local	2025-08-25 11:36:29.509	Cabelo
4ef22416-898b-47da-80b8-061e531d20bd	2025-08-25 00:00:00	16:00	Victor 	Wallyson	local	2025-08-25 11:36:45.609	Cabelo
ee13d11a-0a41-43c1-9378-3dc5e6fa4ce2	2025-08-25 00:00:00	18:00	Rodrigo 	Wallyson	local	2025-08-25 11:49:45.129	Cabelo
966d85c2-4b7e-455d-b4d4-4ae8d24cba16	2025-08-25 00:00:00	13:20	Rodrigo 	Wallyson	local	2025-08-25 12:10:03.203	Cabelo
dd59b102-593b-42ce-8c10-6d8859db4b8a	2025-08-25 00:00:00	10:20	Indisponivel	Wallyson	Indisponivel	2025-08-25 12:44:50.397	
e49c55d4-d64a-4e56-b7be-a951d410108d	2025-08-25 00:00:00	11:00	Indisponivel	Wallyson	Indisponivel	2025-08-25 12:44:50.477	
10887daa-af33-45b4-a079-ece884d35cde	2025-08-26 00:00:00	10:20	pedro henrique	Bruno	558198446899@s.whatsapp.net	2025-08-25 00:00:00	Cabelo
bf636f05-fee9-45f4-ab84-549e1ff5ad25	2025-08-26 00:00:00	18:00	bruno	Wallyson	558198567818@s.whatsapp.net	2025-08-25 00:00:00	Cabelo
dd7bca55-56d8-45e4-9c14-5b2ed63e1d00	2025-08-26 00:00:00	11:40	sid	Bruno	558191536718@s.whatsapp.net	2025-08-25 00:00:00	Barba
9a8f6043-5d0e-427a-ae25-54129712cc08	2025-08-29 00:00:00	14:00	filipi paixão	Bruno	558196685930@s.whatsapp.net	2025-08-25 00:00:00	Cabelo
6fbbf745-cee8-4e1f-964d-9d594045aec2	2025-08-25 00:00:00	15:20	paulo henrique	Bruno	558174004953@s.whatsapp.net	2025-08-25 00:00:00	Cabelo+Sobrancelha
aada6dfc-8e5a-4dc4-ba77-1ce396532da3	2025-08-30 00:00:00	08:00	tiago	Bruno	40166651633741@lid	2025-08-25 00:00:00	Cabelo
5bb605b2-3a6e-4839-b404-42bc34a180d0	2025-08-26 00:00:00	16:00	Felipe Barbosa 	Wallyson	local	2025-08-25 18:11:22.123	Cabelo
15a547fc-84be-4b66-9b68-b93be7e3400e	2025-08-27 00:00:00	15:20	Gustavo 	Wallyson	local	2025-08-25 18:12:40.706	Cabelo
bbe32fbc-b124-47c8-8cd9-615dfc95c59e	2025-08-27 00:00:00	16:00	Marcado 	Wallyson	local	2025-08-25 18:13:17.05	Cabelo
00ad172b-8610-4d6a-803e-8c3bf25359cb	2025-08-29 00:00:00	14:40	luan victor	Wallyson	558181307345@s.whatsapp.net	2025-08-25 00:00:00	Cabelo+Sobrancelha
84a04777-61bf-49a1-9f67-174351f04542	2025-08-29 00:00:00	16:40	marcos rodrigues	Bruno	558196681292@s.whatsapp.net	2025-08-25 00:00:00	Cabelo
af62b158-89f4-4f15-b0c2-6ebe75e871d6	2025-08-28 00:00:00	16:00	carlos	Wallyson	558192507833@s.whatsapp.net	2025-08-25 00:00:00	Cabelo
0cd8826b-e15d-4ef3-b2f9-7bdf75561da6	2025-08-25 00:00:00	18:00	augusto	Bruno	558199897753@s.whatsapp.net	2025-08-25 00:00:00	Cabelo
a578e7c7-6224-4294-a53a-9bb5aa228bad	2025-08-28 00:00:00	09:00	lucas	Bruno	558182056402@s.whatsapp.net	2025-08-25 00:00:00	Cabelo+Barba
685d5c0f-aa16-42e6-a524-18fd898261ba	2025-08-28 00:00:00	13:20	bernardo	Bruno	558182056402@s.whatsapp.net	2025-08-25 00:00:00	Cabelo
697bf6a4-b0af-49ab-8eeb-c8531fceb179	2025-08-26 00:00:00	11:00	henrique	Bruno	558182601936@s.whatsapp.net	2025-08-25 00:00:00	Cabelo
2a006014-c541-4095-b815-ae09ca4f456d	2025-08-26 00:00:00	14:00	Victor 	Wallyson	local	2025-08-25 19:57:49.848	Cabelo+Barba
845a488d-d842-4a92-b632-8afc5bed2191	2025-08-29 00:00:00	17:20	maykon	Bruno	558199870087@s.whatsapp.net	2025-08-25 00:00:00	Cabelo
136688f5-4012-4d7e-80db-c04cb767f7a8	2025-08-27 00:00:00	15:20	cauã gabriel	Bruno	558199527666@s.whatsapp.net	2025-08-25 00:00:00	Cabelo
a9f40b17-2da4-4d84-bef7-641fce274bbb	2025-08-30 00:00:00	09:20	Cleiton 	Wallyson	local	2025-08-25 22:24:41.021	Cabelo
a454dc22-b06e-47b1-8d0d-4e85364ffcbd	2025-08-27 00:00:00	16:40	antônio	Bruno	558197083657@s.whatsapp.net	2025-08-25 00:00:00	Cabelo+Sobrancelha
b268a3a1-2901-4277-9708-46712ab60b2a	2025-08-30 00:00:00	10:00	mathias	Bruno	558181310245@s.whatsapp.net	2025-08-25 00:00:00	Cabelo+Sobrancelha
8e937b73-21a8-420d-a9e9-097caec5d92f	2025-08-27 00:00:00	09:40	tarcísio	Bruno	558185887456@s.whatsapp.net	2025-08-25 00:00:00	Cabelo
f4961f3d-0ba8-4f08-b59d-3a033c63b394	2025-08-28 00:00:00	15:20	Lucas ( rosa	Bruno	local	2025-08-26 00:29:28.143	Cabelo
1f30a1f9-3814-4e47-a3b8-be923185957b	2025-08-30 00:00:00	14:40	moisés	Bruno	558171076971@s.whatsapp.net	2025-08-26 00:00:00	Cabelo+Barba
e16b0b86-5f82-4278-ac1b-dd29739e3109	2025-08-27 00:00:00	17:20	anderson carlos	Bruno	558196579148@s.whatsapp.net	2025-08-26 00:00:00	Cabelo
dd376e73-52b2-4d43-926b-45ffb20a40ad	2025-08-30 00:00:00	16:00	gabriel	Bruno	558171039700@s.whatsapp.net	2025-08-26 00:00:00	Cabelo+Sobrancelha
f3211d5a-d86d-4231-a359-5f554e0cf600	2025-08-30 00:00:00	13:20	josé júnior	Bruno	558182704048@s.whatsapp.net	2025-08-26 00:00:00	Cabelo
b07d92e7-0545-4eb1-b2ab-37671cb44eea	2025-08-26 00:00:00	16:40	arthur	Wallyson	558196000246@s.whatsapp.net	2025-08-26 00:00:00	Cabelo
36ebb3c3-a004-4b35-92b9-d41383e0693c	2025-08-26 00:00:00	11:20	Lucas 	Wallyson	local	2025-08-26 13:23:11.158	Cabelo
743b7526-b243-4d72-9599-df21f7a1bd5c	2025-08-28 00:00:00	11:20	Lucas 	Wallyson	local	2025-08-26 14:21:24.951	Cabelo
cb86b67e-3f80-4d56-8d9c-913536fd13f5	2025-09-01 00:00:00	11:00	joão miguel	Bruno	558198328109@s.whatsapp.net	2025-08-26 00:00:00	Cabelo
dac376c1-e779-42d6-a9fa-8532cf25923f	2025-08-29 00:00:00	09:20	Matheus 	Wallyson	local	2025-08-26 14:33:30.729	Cabelo
1b675321-80a7-46a3-8670-ba33c1db8ecb	2025-08-26 00:00:00	18:40	Samuel e Daniel 	Wallyson	local	2025-08-26 14:45:44.249	Cabelo
213b5089-1308-4129-b97c-bf00900b31f2	2025-08-27 00:00:00	08:00	fernando correia da silva	Wallyson	558199732471@s.whatsapp.net	2025-08-26 00:00:00	Cabelo
b28e9d79-aeb7-4b26-8b11-d6766da361a9	2025-08-27 00:00:00	16:00	pedro augusto	Bruno	558171185174@s.whatsapp.net	2025-08-26 00:00:00	Cabelo
282860f2-1c1d-46e8-9779-fe7dec8a5f48	2025-08-27 00:00:00	18:00	jefferson	Wallyson	558198266953@s.whatsapp.net	2025-08-26 00:00:00	Cabelo
b49b4f3b-ba44-480d-bda9-c6970b5ba9d7	2025-08-27 00:00:00	11:20	matheus	Wallyson	558189099239@s.whatsapp.net	2025-08-26 00:00:00	Cabelo
d738693f-677f-47e0-84cc-f54af292c6a6	2025-08-29 00:00:00	15:20	joao lucas	Bruno	558189785404@s.whatsapp.net	2025-08-26 00:00:00	Cabelo+Sobrancelha
06f76fd0-e4df-48c5-b739-871ce0694bef	2025-09-19 00:00:00	18:40	matheus	Bruno	558196191710@s.whatsapp.net	2025-08-26 00:00:00	Cabelo+Sobrancelha
b1f98f0a-9688-40da-9c8e-32447bb3f169	2025-08-30 00:00:00	14:00	matheus	Bruno	558196191710@s.whatsapp.net	2025-08-26 00:00:00	Cabelo+Sobrancelha
724aaa6d-7a32-4178-976c-3a572d696c89	2025-08-28 00:00:00	09:40	matheus ryan	Bruno	558198446732@s.whatsapp.net	2025-08-26 00:00:00	Cabelo
4f39dfcc-839f-44be-bd27-4e6604d6b4bd	2025-08-26 00:00:00	17:20	Júnior 	Wallyson	local	2025-08-26 16:14:18.852	Cabelo+Barba
93783a7c-0687-41fd-8720-7671069c580b	2025-08-27 00:00:00	09:00	Carlos 	Bruno	local	2025-08-26 17:59:33.326	Cabelo
5c933ef1-296d-494e-a6bb-40772cda9467	2025-08-27 00:00:00	13:20	Kaio	Bruno	local	2025-08-26 18:00:09.509	Cabelo
6e2fb450-489c-4b12-8e31-7ee7f87a2f94	2025-08-28 00:00:00	14:00	jeferson	Wallyson	558198265483@s.whatsapp.net	2025-08-26 00:00:00	Cabelo+Barba
03873baa-0081-4b85-81de-ca39e82705fc	2025-08-30 00:00:00	10:00	pedro	Wallyson	558196440108@s.whatsapp.net	2025-08-26 00:00:00	Cabelo
27bf0684-f8f8-4f94-a81c-00e6445a33db	2025-08-28 00:00:00	16:00	joão	Bruno	558195216795@s.whatsapp.net	2025-08-26 00:00:00	Cabelo
7583e86f-27db-49cd-9387-2038963f9533	2025-09-05 00:00:00	09:00	roberto	Bruno	214198793588964@lid	2025-08-26 00:00:00	Cabelo+Barba
494347fd-f273-49f2-8739-e9b6f08d0118	2025-08-27 00:00:00	14:40	gabriel	Wallyson	558181774084@s.whatsapp.net	2025-08-26 00:00:00	Cabelo
03d40b94-98f3-4aa4-a00f-5fe90ed2381b	2025-08-30 00:00:00	08:40	douglas wesley	Bruno	558181954284@s.whatsapp.net	2025-08-26 00:00:00	Cabelo
5d7536ab-6619-43aa-bc43-6e3b2fefbeb2	2025-08-29 00:00:00	18:40	joão vitor	Bruno	558192250093@s.whatsapp.net	2025-08-26 00:00:00	Cabelo
3827dfba-5593-4e4b-a5e0-66f6fb64b91f	2025-08-29 00:00:00	18:00	lucas	Bruno	558188204134@s.whatsapp.net	2025-08-26 00:00:00	Cabelo
3952ee2b-d671-4c2a-ba99-490a99c238f8	2025-08-29 00:00:00	19:20	marcos	Bruno	558197149668@s.whatsapp.net	2025-08-26 00:00:00	Cabelo
c8d7ccae-953a-47a2-a999-ededd6c128a9	2025-08-29 00:00:00	20:00	italo	Bruno	558197149668@s.whatsapp.net	2025-08-26 00:00:00	Cabelo+Sobrancelha
7e307f93-87a6-44b7-98da-4e84d613204d	2025-09-18 00:00:00	16:40	leonardo	Bruno	558174001016@s.whatsapp.net	2025-08-26 00:00:00	Cabelo
51e44e07-af90-4bd4-bf18-2dcacab660b4	2025-08-30 00:00:00	12:00	bom dia	Bruno	558195740243@s.whatsapp.net	2025-08-27 00:00:00	Cabelo
14de7cee-c848-4529-813e-fd07edb6eb5d	2025-08-28 00:00:00	18:40	lucas	Bruno	558182451503@s.whatsapp.net	2025-08-27 00:00:00	Cabelo+Sobrancelha
883e589e-51f0-4b13-96de-ad5b64f7ea4a	2025-08-28 00:00:00	11:00	asafe	Bruno	558181619300@s.whatsapp.net	2025-08-27 00:00:00	Cabelo
9f7552db-e899-451f-ad8d-e24fb03cabaa	2025-08-27 00:00:00	10:20	Carlos	Bruno	local	2025-08-27 11:24:59.955	Cabelo
1c0543a5-7690-48b1-b84a-28993e4363d7	2025-09-03 00:00:00	08:00	pyetro	Wallyson	558192334077@s.whatsapp.net	2025-08-27 00:00:00	Cabelo
71e8a1a3-9c9d-48e7-a0d6-81ea66edc316	2025-08-27 00:00:00	14:00	Indisponivel	Bruno	Indisponivel	2025-08-27 14:16:11.979	
7c49a121-fcc8-4854-a399-b1b67cb7d3fd	2025-08-27 00:00:00	14:40	Indisponivel	Bruno	Indisponivel	2025-08-27 14:16:12.068	
2b70fa51-ddfb-41b8-b0db-a1969c0fb4bb	2025-08-28 00:00:00	10:20	Lucas Cauã botox 	Bruno	local	2025-08-27 14:29:45.99	Cabelo
8f71b5bb-58d5-4905-9380-2fac26ae1ef5	2025-08-30 00:00:00	10:40	Juninho( falta)	Bruno	local	2025-08-27 14:38:52.391	Cabelo
06a03754-44b6-45af-8b00-c860473c46e4	2025-08-30 00:00:00	11:20	junior	Bruno	558181192218@s.whatsapp.net	2025-08-27 00:00:00	Cabelo
7d487fbf-ceb9-427e-89d8-9b68b7b1f775	2025-09-19 00:00:00	19:20	ewerton adryan	Bruno	558198289810@s.whatsapp.net	2025-08-27 00:00:00	Cabelo+Sobrancelha
fb693746-c5f5-4098-9478-6bd0723b7728	2025-08-27 00:00:00	18:40	henrique	Bruno	558196639360@s.whatsapp.net	2025-08-27 00:00:00	Cabelo+Barba
1afd52dd-30b3-409f-beca-770bf09f1184	2025-08-27 00:00:00	18:00	fernando	Bruno	558199817133@s.whatsapp.net	2025-08-27 00:00:00	Cabelo
9ab42529-82fe-46aa-b973-daf7c6d5e3f4	2025-08-29 00:00:00	17:20	leonardo	Wallyson	558199658643@s.whatsapp.net	2025-08-27 00:00:00	Cabelo
f12447ea-518e-4889-a0ca-3521896e4d7f	2025-08-28 00:00:00	18:00	luan	Bruno	558196003977@s.whatsapp.net	2025-08-27 00:00:00	Cabelo+Sobrancelha
39ff5726-2efa-4735-883a-4cee09162659	2025-08-28 00:00:00	14:40	josé lucas	Bruno	558187782121@s.whatsapp.net	2025-08-27 00:00:00	Cabelo+Barba
53e14e72-897f-40e4-895d-a23c8b543e5b	2025-09-03 00:00:00	18:00	ryan	Bruno	558196680308@s.whatsapp.net	2025-08-27 00:00:00	Cabelo+Barba
ef6933b7-edde-4efe-89c6-a4b22e91947e	2025-08-28 00:00:00	18:40	Gustavo 	Wallyson	local	2025-08-27 18:08:34.942	Cabelo
34e732c6-301e-4457-8130-b78220bb01c3	2025-08-29 00:00:00	15:20	Kauan Yuri 	Wallyson	local	2025-08-27 19:39:59.827	Cabelo
0b532c35-edbe-4c2b-9b8f-a08a3a54c9df	2025-09-05 00:00:00	17:20	gonzaga neto	Bruno	558198514795@s.whatsapp.net	2025-08-27 00:00:00	Cabelo+Sobrancelha
90e284f4-f16f-4852-a88d-8717c8d7da41	2025-08-29 00:00:00	09:00	joão danielson	Bruno	558196702254@s.whatsapp.net	2025-08-27 00:00:00	Barba
969bf51e-5bf1-4361-ad8a-08a6c6f87eb6	2025-08-30 00:00:00	18:00	Sindolfo	Wallyson	local	2025-08-27 21:27:24.912	Cabelo
ca304e74-d7f0-43be-b03b-5eae655b65df	2025-08-30 00:00:00	17:20	max	Wallyson	558196617265@s.whatsapp.net	2025-08-27 00:00:00	Cabelo
6acddff5-a303-4531-8e6d-1e419c1efc89	2025-08-30 00:00:00	14:00	kayke	Wallyson	558197180683@s.whatsapp.net	2025-08-27 00:00:00	Cabelo+Barba
c73dba64-903f-462c-aca6-8c614e12a323	2025-08-28 00:00:00	14:00	joão vitor	Bruno	558188511046@s.whatsapp.net	2025-08-27 00:00:00	Cabelo
788f695b-e262-4e0c-891d-3b054383dd26	2025-09-01 00:00:00	18:40	eduardo	Wallyson	558194699903@s.whatsapp.net	2025-08-27 00:00:00	Cabelo
aa9a8051-6c69-4c69-8b4c-13f3ebef699e	2025-09-01 00:00:00	10:20	deyvid jhonatan	Bruno	558199201610@s.whatsapp.net	2025-08-28 00:00:00	Cabelo
3ab5f4dd-e592-420d-b374-1947ab24ec62	2025-08-29 00:00:00	16:00	jv	Wallyson	558196049253@s.whatsapp.net	2025-08-28 00:00:00	Cabelo+Sobrancelha
40111785-3845-44e8-a3d2-c64d85b20a15	2025-08-28 00:00:00	16:40	vicente	Bruno	558197192758@s.whatsapp.net	2025-08-28 00:00:00	Cabelo+Sobrancelha
bf0338df-3c93-4eeb-bf78-34422227a61a	2025-08-28 00:00:00	17:20	matheus	Bruno	558197941830@s.whatsapp.net	2025-08-28 00:00:00	Cabelo
bdd9ef32-e54d-4ea4-9021-0f6618d27a55	2025-08-28 00:00:00	10:40	alan elias	Wallyson	558182284289@s.whatsapp.net	2025-08-28 00:00:00	Cabelo
87aaa1ff-723f-4e7f-9002-29f0b94c3e02	2025-08-28 00:00:00	08:40	weliton	Wallyson	70411761017020@lid	2025-08-28 00:00:00	Cabelo
26e5f0d6-40da-4458-9df9-966375881ae5	2025-08-28 00:00:00	15:20	Eraldo 	Wallyson	local	2025-08-28 11:04:48.657	Cabelo+Barba
6aad9c21-61ab-4db9-bb4c-b24e93b0582f	2025-08-29 00:00:00	11:00	rennan	Bruno	558196502964@s.whatsapp.net	2025-08-28 00:00:00	Cabelo+Barba
add8c838-d407-44c0-bd1c-5e6ab45a780e	2025-08-28 00:00:00	14:40	Mathias 	Wallyson	local	2025-08-28 12:12:45.543	Cabelo+Barba
98e25bfe-cfee-4813-8dde-7965ea8701fe	2025-08-28 00:00:00	13:20	marcus	Wallyson	558199349818@s.whatsapp.net	2025-08-28 00:00:00	Cabelo
5b808307-5cf0-4d8a-9092-c9723303616c	2025-08-29 00:00:00	09:40	elysson	Bruno	558199697267@s.whatsapp.net	2025-08-28 00:00:00	Cabelo+Sobrancelha
aa3a03ff-9acd-4a9d-ad2a-25e3ef3c7d6c	2025-08-28 00:00:00	16:40	Alan 	Wallyson	local	2025-08-28 13:00:07.099	Cabelo
e35c89dd-37c6-47c5-a473-593ce6f4539b	2025-08-28 00:00:00	18:00	marcos e filho (joão miguel )	Wallyson	558195363219@s.whatsapp.net	2025-08-28 00:00:00	Cabelo
5a118111-a4f7-45ef-a714-7acb9300c6bd	2025-08-29 00:00:00	14:00	thiago fiel romão da silva	Wallyson	558197822298@s.whatsapp.net	2025-08-28 00:00:00	Cabelo+Barba
27b53d30-ba90-4f56-95ca-777958f6c5dd	2025-08-29 00:00:00	10:20	livio	Bruno	558195436268@s.whatsapp.net	2025-08-28 00:00:00	Cabelo+Barba
f2d165b3-178b-436e-a1ae-d95f1edf01e3	2025-08-29 00:00:00	11:40	mateus	Bruno	558196083218@s.whatsapp.net	2025-08-28 00:00:00	Cabelo+Barba
8ecfca32-7025-48b7-87c5-a927006ae214	2025-09-17 00:00:00	08:00	jeferson	Wallyson	558198265483@s.whatsapp.net	2025-08-28 00:00:00	Cabelo+Barba
4d4b52f1-d7ad-491e-9dc8-d0dd78ef68fc	2025-09-17 00:00:00	09:40	jeferson prog ( vem de 8:40)	Bruno	558198265483@s.whatsapp.net	2025-08-28 00:00:00	Cabelo
49b23d07-a837-40cd-9fab-5c5b88bc6ba8	2025-08-28 00:00:00	17:20	marcus	Wallyson	558199349818@s.whatsapp.net	2025-08-28 00:00:00	Cabelo
5d55f459-59a4-43e2-a209-f37bd17e7d89	2025-08-30 00:00:00	12:00	Gelson	Wallyson	local	2025-08-28 19:32:53.032	Cabelo
7e0b0098-53fb-4f5f-9cbe-a757bd0e192a	2025-08-30 00:00:00	15:20	Kayke 	Wallyson	local	2025-08-28 19:41:20.553	Cabelo
1e86f878-91f5-45f3-a934-fa3e06f457e4	2025-09-05 00:00:00	09:40	davi	Bruno	558197570874@s.whatsapp.net	2025-08-28 00:00:00	Cabelo+Sobrancelha
16f20469-1265-4965-8a32-b5976282cf07	2025-09-09 00:00:00	15:20	manoel neto	Bruno	558195055212@s.whatsapp.net	2025-08-28 00:00:00	Cabelo+Barba
de3ac490-2b57-4368-9564-69f5ceebcc05	2025-08-29 00:00:00	18:00	João Pedro 	Wallyson	local	2025-08-28 20:10:48.585	Cabelo
1b7fb764-f424-4e61-b083-74d022bde4d6	2025-08-29 00:00:00	18:40	Caciudo 	Wallyson	local	2025-08-28 20:11:14.803	Cabelo
becc4837-fd9d-4ec4-8908-eff056298b63	2025-09-01 00:00:00	13:20	joão marcello	Bruno	558196393507@s.whatsapp.net	2025-08-28 00:00:00	Cabelo
52cb20f0-8ee8-44f2-99ed-4369891e961e	2025-08-29 00:00:00	13:20	henrique	Bruno	558182601936@s.whatsapp.net	2025-08-28 00:00:00	Cabelo
980fdfdb-41c3-4a69-b1df-bf86d06ac760	2025-09-01 00:00:00	18:00	andre	Bruno	558198995821@s.whatsapp.net	2025-08-28 00:00:00	Cabelo+Sobrancelha
f3d474c1-b387-49cd-8193-380e434eba25	2025-09-05 00:00:00	15:20	joão da costa cabral	Bruno	558182968875@s.whatsapp.net	2025-08-28 00:00:00	Cabelo
d4300d55-1aa2-43fb-8f6c-8c2122e0e29d	2025-09-02 00:00:00	14:40	Allysson 	Wallyson	local	2025-08-28 22:59:22.725	Cabelo
980f51d9-475d-45ac-bfec-b2689e947fc5	2025-08-29 00:00:00	19:20	João Paulo 	Wallyson	local	2025-08-29 00:18:10.199	Cabelo
116eddd5-1526-4e32-a589-278d33ff8bc8	2025-08-29 00:00:00	16:40	john	Wallyson	558196903604@s.whatsapp.net	2025-08-29 00:00:00	Cabelo+Barba
14253fc4-39bf-4d8c-833c-281959c3db99	2025-09-01 00:00:00	11:40	joão pedro campos	Bruno	558196073970@s.whatsapp.net	2025-08-29 00:00:00	Cabelo+Barba
685601d1-3777-4e1a-b6a2-4b2fdc8116ab	2025-09-10 00:00:00	11:20	horlean	Wallyson	558281363560@s.whatsapp.net	2025-08-29 00:00:00	Cabelo+Sobrancelha
cc024b08-8e7a-41b6-9c64-8f2f77d4bc25	2025-08-29 00:00:00	20:00	david callebe	Wallyson	558191447860@s.whatsapp.net	2025-08-29 00:00:00	Cabelo+Barba
5718014e-b03e-4bfe-8d55-68d0a8bdd4cf	2025-08-29 00:00:00	10:00	breno	Wallyson	558198437880@s.whatsapp.net	2025-08-29 00:00:00	Cabelo+Sobrancelha
827728a9-907a-423c-a563-dd983f0b92fb	2025-08-29 00:00:00	08:40	Eudes 	Wallyson	local	2025-08-29 11:08:58.359	Cabelo
7ac63ade-f211-4168-af49-54b96b36eb0e	2025-09-02 00:00:00	09:00	Heitor ( Ângela) 	Bruno	local	2025-08-29 11:16:57.727	Cabelo
b869a745-e643-4a7b-bbf4-f3106e9cbe2c	2025-09-01 00:00:00	17:20	miguel	Bruno	558199728099@s.whatsapp.net	2025-08-29 00:00:00	Cabelo
aaa032eb-2f0a-4afd-a537-84e21885cf09	2025-08-30 00:00:00	08:00	joão pedro	Wallyson	558196610538@s.whatsapp.net	2025-08-29 00:00:00	Cabelo
56ea01b1-261a-4e06-a644-e98609719b30	2025-08-29 00:00:00	11:20	Jossana 	Wallyson	local	2025-08-29 13:06:38.78	Cabelo
2c8c8854-cfc6-46b6-9836-1f32f4a38e09	2025-09-18 00:00:00	18:00	Matheus 	Wallyson	local	2025-08-29 13:20:08.4	Cabelo+Barba
b4291305-278c-4740-9d20-d532086cdf05	2025-09-05 00:00:00	18:40	Weligton mecânico botox ( vem 17:40	Bruno	local	2025-08-29 13:23:16.243	Cabelo
d4e55096-58ea-4359-9159-97a4d6b7b7db	2025-09-05 00:00:00	18:00	Wellington 	Wallyson	local	2025-08-29 13:24:11.779	Cabelo+Barba
685c8f2a-2e6a-4a8a-abd4-7efd81ddaac2	2025-08-30 00:00:00	10:40	Jeferson 	Wallyson	local	2025-08-29 14:01:58.171	Cabelo
831fb4f7-145f-4228-9009-ad156ca60223	2025-08-30 00:00:00	11:20	Heitor 	Wallyson	local	2025-08-29 14:02:12.927	Cabelo
fe538e0f-e03b-4593-9050-076e9e77ac4b	2025-08-30 00:00:00	08:40	Carlos 	Wallyson	local	2025-08-29 14:14:04.359	Cabelo
8a7b19cc-5e8e-40e9-83af-2d1424ad91ea	2025-08-30 00:00:00	14:40	daniel	Wallyson	558199459046@s.whatsapp.net	2025-08-29 00:00:00	Cabelo
6da32749-1d30-48f4-8631-49ad6c77ef44	2025-08-30 00:00:00	16:00	Breno 	Wallyson	local	2025-08-29 16:06:48.83	Cabelo
b4c1b645-44d1-4fee-a150-88f509b5b4ec	2025-08-30 00:00:00	13:20	Breno 	Wallyson	local	2025-08-29 16:10:18.258	Cabelo
30357133-ae6d-42f3-8ba3-d7548f8e2887	2025-09-06 00:00:00	08:00	rhyan	Bruno	558196672733@s.whatsapp.net	2025-08-29 00:00:00	Cabelo
a26e8ed5-9f37-493b-9553-eab5728fd194	2025-09-06 00:00:00	08:40	rhavi	Bruno	558196672733@s.whatsapp.net	2025-08-29 00:00:00	Cabelo
6cde2fae-c525-425b-bf40-b36a45a9ae02	2025-08-30 00:00:00	16:40	juininho	Wallyson	558194082765@s.whatsapp.net	2025-08-29 00:00:00	Cabelo
1ae7376c-575a-405c-b993-1731758f34bf	2025-09-01 00:00:00	14:00	sam	Bruno	558181726988@s.whatsapp.net	2025-08-29 00:00:00	Cabelo
61c058d7-7ac5-4fde-970f-a4ca86daf19b	2025-09-18 00:00:00	18:00	david callebe	Bruno	558191447860@s.whatsapp.net	2025-08-29 00:00:00	Cabelo+Barba
df5e0030-ebba-4166-b657-c58279a178a8	2025-09-01 00:00:00	18:00	Elias 	Wallyson	local	2025-08-29 23:27:24.208	Cabelo+Sobrancelha
7f5520a7-cf0b-4f96-bcb8-8a8b34156590	2025-09-02 00:00:00	11:00	renan silva	Bruno	558199185971@s.whatsapp.net	2025-08-29 00:00:00	Cabelo
a3022934-1e52-4ec2-af28-022b822cd3da	2025-09-01 00:00:00	15:20	lucas rafael	Bruno	558197593200@s.whatsapp.net	2025-08-29 00:00:00	Cabelo
f74c5c67-c5bc-41ad-b6c0-3cf688b103b2	2025-09-01 00:00:00	14:40	henrique	Bruno	558182601936@s.whatsapp.net	2025-08-30 00:00:00	Cabelo
35d1adc7-6a5c-4cba-85a0-06955a27b099	2025-09-01 00:00:00	16:40	fernando	Bruno	558196035269@s.whatsapp.net	2025-08-30 00:00:00	Cabelo
992fd8a8-853b-4846-a76d-6c6a5a75b025	2025-09-02 00:00:00	16:40	joão pedro	Bruno	558196644122@s.whatsapp.net	2025-08-30 00:00:00	Cabelo
e97420da-2636-4c72-ac65-982848325f00	2025-09-01 00:00:00	09:00	Jhonatan 	Wallyson	local	2025-08-30 14:34:14.773	Cabelo
827df726-8f6f-4230-8041-b7aeafed55c8	2025-09-17 00:00:00	18:40	josé matheus	Bruno	558199411635@s.whatsapp.net	2025-08-30 00:00:00	Cabelo+Sobrancelha
0a1a3954-e362-408e-9ee7-80ef55a49960	2025-09-01 00:00:00	16:00	flávio santos da costa	Bruno	558197559623@s.whatsapp.net	2025-08-30 00:00:00	Cabelo
f64662c8-0505-46f6-b916-c9ff4b1a6344	2025-09-01 00:00:00	16:00	Wendel 	Wallyson	local	2025-08-30 22:57:35.222	Cabelo
2175b54d-2c2a-468b-8088-8a86acf37d8e	2025-09-03 00:00:00	14:00	yago	Bruno	558195055274@s.whatsapp.net	2025-08-31 00:00:00	Cabelo+Sobrancelha
261ee822-1b1b-4d8d-bf01-9f03133f0317	2025-09-01 00:00:00	18:40	rhuan	Bruno	558195251500@s.whatsapp.net	2025-08-31 00:00:00	Cabelo+Sobrancelha
325ca225-0fd7-40f3-919c-004ac4a38492	2025-09-01 00:00:00	14:00	chaparral cléber	Wallyson	558197279446@s.whatsapp.net	2025-08-31 00:00:00	Cabelo+Sobrancelha
2bbb5467-9fff-41f4-8167-a1896c5b3003	2025-09-06 00:00:00	16:00	josé miguel domingos batista	Bruno	558196219587@s.whatsapp.net	2025-08-31 00:00:00	Cabelo+Sobrancelha
cb096705-c02f-4178-a47d-e1f593fedc63	2025-09-02 00:00:00	16:00	jefferson	Bruno	558196311311@s.whatsapp.net	2025-08-31 00:00:00	Cabelo
f1a8c8d8-c675-4a29-88b2-44d8783d7e24	2025-09-05 00:00:00	13:20	bruno	Bruno	558181317634@s.whatsapp.net	2025-08-31 00:00:00	Cabelo+Sobrancelha
f1e47fd3-ad59-4c49-b8ad-0f08d8cc5efc	2025-09-13 00:00:00	08:40	wesley	Bruno	558181016662@s.whatsapp.net	2025-08-31 00:00:00	Cabelo+Sobrancelha
ae2670f2-6f2a-4acb-899d-cceb1f02b421	2025-09-02 00:00:00	10:20	Deyvid Jhonatan 	Bruno	local	2025-08-31 19:46:09.881	Cabelo
8a6dce4a-e104-4dab-a8d9-4ab5e3bec589	2025-09-06 00:00:00	14:40	heytor	Bruno	558197714625@s.whatsapp.net	2025-08-31 00:00:00	Cabelo+Barba
07160dcb-37f4-4884-beae-7c3ca36b0757	2025-09-02 00:00:00	17:20	josé anthony	Wallyson	558189252475@s.whatsapp.net	2025-08-31 00:00:00	Cabelo
307bbd66-a4b2-4b6d-bc3f-62533aa459ba	2025-09-01 00:00:00	13:20	felipe	Wallyson	558181451150@s.whatsapp.net	2025-08-31 00:00:00	Cabelo+Sobrancelha
3e94f84a-5826-4903-9a04-990194b221c7	2025-09-02 00:00:00	18:00	gustavo	Bruno	558198983986@s.whatsapp.net	2025-09-01 00:00:00	Cabelo
b83103fa-a96f-421b-ba9e-6efebe3915da	2025-09-09 00:00:00	14:00	cauê	Bruno	558197796167@s.whatsapp.net	2025-09-01 00:00:00	Cabelo
f4e21e16-0f13-4760-a1ad-9aa597e68aac	2025-09-09 00:00:00	14:40	del	Bruno	558197796167@s.whatsapp.net	2025-09-01 00:00:00	Cabelo+Barba
056a76c3-95e2-482a-ba19-97a4be2da558	2025-09-01 00:00:00	14:40	fredson	Wallyson	558195204685@s.whatsapp.net	2025-09-01 00:00:00	Cabelo
ccdae711-f67b-479f-85f7-af5323ad32b9	2025-09-01 00:00:00	17:20	lucas	Wallyson	558197326785@s.whatsapp.net	2025-09-01 00:00:00	Cabelo
4b20f8ea-5115-4d56-8501-c8b6ef903ac1	2025-09-01 00:00:00	13:20	césar	Wallyson	558197520499@s.whatsapp.net	2025-09-01 00:00:00	Cabelo+Sobrancelha
2e6c4861-32f0-4f5d-9986-7df427cf0503	2025-09-02 00:00:00	13:20	Henrique primo Gustavo 	Bruno	local	2025-09-01 12:00:37.135	Cabelo+Sobrancelha
b02c775d-6f02-4114-8983-7140e1773965	2025-09-02 00:00:00	14:40	Henrique botox	Bruno	local	2025-09-01 12:00:53.828	Cabelo
92e1d0c8-9140-4d49-9b4d-f70934e97ff9	2025-09-05 00:00:00	18:00	wesley	Bruno	558196817233@s.whatsapp.net	2025-09-01 00:00:00	Cabelo
7ad68bcf-a0a7-4ed2-a469-c7e10a32304d	2025-09-05 00:00:00	16:00	Hiago 	Wallyson	local	2025-09-01 14:15:45.044	Cabelo
63eb1b2a-f2ec-4153-ac69-3a4af8ebac86	2025-09-04 00:00:00	10:20	hatus	Bruno	558199706416@s.whatsapp.net	2025-09-01 00:00:00	Cabelo+Barba
3ce5c04e-34e2-403e-9243-dab08f20a7f0	2025-09-17 00:00:00	16:00	ivaldir barbosa	Bruno	558196149252@s.whatsapp.net	2025-09-01 00:00:00	Cabelo+Sobrancelha
ca07f4fa-eef9-45ef-976c-7050c4a6fbfa	2025-09-06 00:00:00	12:00	ruan andré gomes da silva	Bruno	558199765809@s.whatsapp.net	2025-09-01 00:00:00	Cabelo
21cfad71-0dbf-46b0-95c8-517c7aff1428	2025-09-02 00:00:00	17:20	Pedro brotou ( 16:30	Bruno	local	2025-09-01 16:53:56.92	Cabelo
d538ef02-6e74-4f20-9aa2-c95e630bba11	2025-09-02 00:00:00	16:40	Pedro 	Wallyson	local	2025-09-01 17:10:30.746	Cabelo+Sobrancelha
fbcf74fe-3365-4ae6-979f-24ef44e1698e	2025-09-01 00:00:00	16:40	francisco	Wallyson	558182062970@s.whatsapp.net	2025-09-01 00:00:00	Cabelo
9b08e65a-59ef-42ad-a236-0a96f3a24a07	2025-09-02 00:00:00	18:40	victor	Bruno	558197610116@s.whatsapp.net	2025-09-01 00:00:00	Cabelo+Sobrancelha
b0874fd5-3cf7-49f5-88e0-993dfd708135	2025-09-02 00:00:00	14:00	joão rommel	Bruno	558182224217@s.whatsapp.net	2025-09-01 00:00:00	Cabelo
eab2bb4e-5f4d-4744-92fa-2be9a5ecabc7	2025-09-05 00:00:00	16:40	kauê	Wallyson	558199937689@s.whatsapp.net	2025-09-01 00:00:00	Cabelo+Sobrancelha
026820e1-db6a-4c7e-ba68-a527c75b0279	2025-09-03 00:00:00	17:20	vinicius	Bruno	558195743981@s.whatsapp.net	2025-09-01 00:00:00	Cabelo+Barba
9c1b7301-9fe2-44eb-8f29-88c9c973cda9	2025-09-03 00:00:00	15:20	rafael	Bruno	558188763249@s.whatsapp.net	2025-09-01 00:00:00	Cabelo
d0d8da9d-d5ad-4b95-a7fc-421a0e02fdd7	2025-09-02 00:00:00	15:20	joão guilherme	Bruno	558192101006@s.whatsapp.net	2025-09-01 00:00:00	Cabelo
6befe0b4-f11a-4142-9b60-78193202fa5d	2025-09-19 00:00:00	16:40	andre	Bruno	558198995821@s.whatsapp.net	2025-09-01 00:00:00	Cabelo+Sobrancelha
bd9546fc-e880-4c97-b53a-82aa0fca7d88	2025-09-02 00:00:00	09:20	Bruninho 	Wallyson	local	2025-09-01 22:04:39.151	Cabelo
7a44ecde-1e34-4622-993f-f5e2532c97f0	2025-09-02 00:00:00	19:20	ataliba	Bruno	558182671510@s.whatsapp.net	2025-09-01 00:00:00	Barba
9b564d78-6ec8-42b4-a1b7-e02e478a8060	2025-09-03 00:00:00	18:40	manocarlos	Bruno	558195555220@s.whatsapp.net	2025-09-01 00:00:00	Cabelo
fc7e2cc1-292c-44bf-afe1-7f13085b4cb6	2025-09-03 00:00:00	09:40	boa noite	Bruno	558195479577@s.whatsapp.net	2025-09-01 00:00:00	Cabelo
3d5ff66f-fa91-4fc5-b0f7-380b62aec124	2025-09-04 00:00:00	09:00	luan	Bruno	204788453126391@lid	2025-09-02 00:00:00	Cabelo
2c64db50-2a63-42dc-86ed-985a21ae11f5	2025-09-02 00:00:00	09:40	edvar	Bruno	558181296531@s.whatsapp.net	2025-09-02 00:00:00	Cabelo
bab05171-07fd-4808-9141-ed979b300904	2025-09-02 00:00:00	13:20	João Carmen 	Wallyson	local	2025-09-02 10:25:57.501	Cabelo
452a4f82-a732-4ac2-aa4b-8a558835715f	2025-09-02 00:00:00	11:40	cláudio figueiredo	Bruno	202787501646016@lid	2025-09-02 00:00:00	Cabelo
92701f48-0dff-42d1-805b-edb4a96b4de5	2025-09-02 00:00:00	10:00	felipe helcias	Wallyson	558197667880@s.whatsapp.net	2025-09-02 00:00:00	Cabelo+Barba
c8a9ce7b-3551-4a0a-893b-c449c9d23772	2025-09-03 00:00:00	13:20	miguel	Bruno	558198627331@s.whatsapp.net	2025-09-02 00:00:00	Cabelo
5b763c2a-b14b-4a78-997a-267734c7f571	2025-09-03 00:00:00	14:40	gabriel	Bruno	558198627331@s.whatsapp.net	2025-09-02 00:00:00	Cabelo
164571a5-2780-4dc2-bc91-e2ca5f10b0d7	2025-09-02 00:00:00	11:20	Felipe 	Wallyson	local	2025-09-02 11:52:01.048	Cabelo
6546253d-4275-480b-a2ab-3e932f08a37b	2025-09-03 00:00:00	16:40	romerio	Bruno	558198627331@s.whatsapp.net	2025-09-02 00:00:00	Barba
bff73dce-95f7-4345-abf9-8a6481dfd3b4	2025-09-02 00:00:00	15:20	Nicolas 	Wallyson	local	2025-09-02 12:26:31.727	Cabelo
de919c8d-f139-438e-89a8-cfbb10c0d01f	2025-09-09 00:00:00	09:40	Dorgyl ( lembrar ele) 	Bruno	local	2025-09-02 12:42:30.483	Cabelo+Barba
e733d853-8e96-4ac2-905a-d730b5d3ef4a	2025-09-03 00:00:00	09:00	Lúcio mudo 	Bruno	local	2025-09-02 12:55:12.066	Cabelo
77d356ee-80ad-4f0b-876e-2e227bf8165d	2025-09-02 00:00:00	14:00	Renan 	Wallyson	local	2025-09-02 13:18:59.944	Cabelo
db5859b7-6724-4a09-a350-2aba1230ffeb	2025-09-06 00:00:00	10:40	Josivaldo 	Bruno	local	2025-09-02 13:57:28.359	Cabelo
a3b2fee0-2d72-4c43-8bea-6243a87f4c9b	2025-09-04 00:00:00	17:20	keven	Bruno	558189774392@s.whatsapp.net	2025-09-02 00:00:00	Cabelo+Sobrancelha
161be038-537f-4950-bbfb-22c8aa1b2e06	2025-09-03 00:00:00	11:40	eduardo	Bruno	558198079679@s.whatsapp.net	2025-09-02 00:00:00	Cabelo
d7db804d-7911-4b95-80d1-20ad8f16583b	2025-09-10 00:00:00	16:00	andrew	Bruno	558198694494@s.whatsapp.net	2025-09-02 00:00:00	Cabelo
f5c5e8e4-85e2-4000-8579-2caa0aa7f36f	2025-09-10 00:00:00	16:40	anderson	Bruno	558198694494@s.whatsapp.net	2025-09-02 00:00:00	Cabelo
897d7903-43d2-4975-b7b3-37ce10eb90fa	2025-09-02 00:00:00	18:00	Wellington 	Wallyson	local	2025-09-02 15:02:07.62	Cabelo
8944952d-41fd-497c-aa67-07ab6a5d88be	2025-09-02 00:00:00	16:00	Lucas 	Wallyson	local	2025-09-02 15:02:39.396	Cabelo
fe7a889e-bdb8-48cf-bf41-de8d715f4f92	2025-09-02 00:00:00	18:40	kevin	Wallyson	558195204685@s.whatsapp.net	2025-09-02 00:00:00	Cabelo
ef8bba20-b480-425e-b2c3-dcc67f33f4a4	2025-09-03 00:00:00	16:40	fernando	Wallyson	558197789968@s.whatsapp.net	2025-09-02 00:00:00	Cabelo
f6205837-ed8a-4a1d-b351-bddb8a5482f0	2025-09-10 00:00:00	18:40	erick vinícius	Bruno	558195786256@s.whatsapp.net	2025-09-02 00:00:00	Cabelo+Sobrancelha
de674c58-0fa6-423f-b56d-ca4d9ae85e02	2025-09-03 00:00:00	10:20	Jeferson Magalhães 	Bruno	local	2025-09-02 18:14:49.474	Barba
8bdcd588-50bc-4c19-b6fd-798d73ab359a	2025-09-08 00:00:00	18:40	gustavo	Bruno	558196111653@s.whatsapp.net	2025-09-02 00:00:00	Cabelo+Sobrancelha
afe8d73a-9c74-4ef3-b007-43110f789f33	2025-09-05 00:00:00	19:20	ryan valério	Bruno	69153402691745@lid	2025-09-02 00:00:00	Cabelo+Barba
f492a13e-cca1-4987-aece-43aa746caa8e	2025-09-03 00:00:00	15:20	enzo alexandre lima	Wallyson	558184998670@s.whatsapp.net	2025-09-02 00:00:00	Cabelo+Sobrancelha
8aa046cb-4389-471c-ae26-8607920780c8	2025-09-04 00:00:00	18:40	Wellington 	Wallyson	local	2025-09-02 19:41:45.403	Cabelo
430d2640-707a-4403-a80a-294416f3a8ef	2025-09-05 00:00:00	10:20	josivaldo gomes de arruda	Bruno	558196887942@s.whatsapp.net	2025-09-02 00:00:00	Acabamento (Pezinho)
2f470618-f3e5-4624-923a-ac8f50a34aaf	2025-09-13 00:00:00	15:20	matheus vinicius	Bruno	558197894492@s.whatsapp.net	2025-09-02 00:00:00	Cabelo
d7d53920-710f-4477-9c64-b4d0ae3e47b3	2025-09-03 00:00:00	16:00	Fernando 	Bruno	local	2025-09-02 20:25:06.441	Cabelo
70c9f531-38e3-4e6b-ac8e-20b80c47d082	2025-09-03 00:00:00	18:00	mayrlon	Wallyson	558196600679@s.whatsapp.net	2025-09-02 00:00:00	Cabelo+Sobrancelha
5b4bc670-e6ca-4c49-924c-4e6d30a6eab5	2025-09-05 00:00:00	16:00	marlon	Bruno	558185124815@s.whatsapp.net	2025-09-02 00:00:00	Cabelo
f80bf270-899f-401e-8ffa-40dd522559f7	2025-09-04 00:00:00	11:00	Weliton prog ( vem de 10h 	Bruno	local	2025-09-02 22:01:45.231	Cabelo
c96c3261-637c-458c-ad73-1207cfb66d0a	2025-09-04 00:00:00	11:40	Weliton prog	Bruno	local	2025-09-02 22:02:01.069	Cabelo
9f3fa150-512a-4755-9393-3dc5da53bfeb	2025-09-06 00:00:00	08:00	wilson	Wallyson	558197148928@s.whatsapp.net	2025-09-02 00:00:00	Cabelo+Sobrancelha
38edf82f-e565-4aa0-9243-7068bd6151a7	2025-09-18 00:00:00	15:20	flávio	Bruno	5511992553806@s.whatsapp.net	2025-09-02 00:00:00	Cabelo
6f489f02-20fd-4b7c-acef-0682fa42e842	2025-09-05 00:00:00	16:40	joão guilherme	Bruno	558181673375@s.whatsapp.net	2025-09-02 00:00:00	Cabelo
ce0c0591-6cef-4550-acbf-de5ba5c4b927	2025-09-03 00:00:00	17:20	samuel ferreira	Wallyson	558199862867@s.whatsapp.net	2025-09-03 00:00:00	Cabelo
5f2026e1-0ec4-46fc-b386-ca89faf52425	2025-09-03 00:00:00	14:00	miguel	Wallyson	558198435034@s.whatsapp.net	2025-09-03 00:00:00	Cabelo
4de26243-b69d-44db-9e98-01c0dde7baaf	2025-09-05 00:00:00	11:40	Zaldinho	Bruno	local	2025-09-03 10:22:26.905	Cabelo
b1af3fb4-2f9d-4b5b-9865-ba9237fc588e	2025-09-03 00:00:00	08:40	fernando correia da silva	Wallyson	558199732471@s.whatsapp.net	2025-09-03 00:00:00	Cabelo
04bf1c63-2ce2-4571-8e66-6708d42ae01a	2025-09-04 00:00:00	15:20	ryan	Wallyson	5511959620317@s.whatsapp.net	2025-09-03 00:00:00	Cabelo+Sobrancelha
5b1657b9-6b33-4306-916e-77db92670338	2025-09-05 00:00:00	14:40	arthur miguel	Bruno	27268881617131@lid	2025-09-03 00:00:00	Cabelo
4523e940-c086-479a-aae8-f36e11c7791e	2025-09-06 00:00:00	16:40	moisés	Wallyson	558171076971@s.whatsapp.net	2025-09-03 00:00:00	Cabelo+Barba
7f6637f0-d3b5-4797-9869-184ba261922f	2025-09-04 00:00:00	16:00	markinhos	Bruno	108689046417640@lid	2025-09-03 00:00:00	Cabelo+Barba
a4c0b394-7654-4e61-a197-f006baad8c52	2025-09-06 00:00:00	15:20	júnior bezerra	Bruno	83799190802676@lid	2025-09-03 00:00:00	Cabelo+Barba
0defb19e-4096-4a34-9ef2-6e5c8bf6e2e4	2025-09-03 00:00:00	13:20	renan	Wallyson	558195330370@s.whatsapp.net	2025-09-03 00:00:00	Cabelo+Barba
189ae423-5708-4804-a672-c6d645c26b06	2025-09-04 00:00:00	18:00	denílson	Bruno	558197084296@s.whatsapp.net	2025-09-03 00:00:00	Barba
fc50a5fa-053d-437b-acda-7c077d1d5b67	2025-09-04 00:00:00	09:40	heitor felipe	Bruno	558196988755@s.whatsapp.net	2025-09-03 00:00:00	Cabelo
b4a05118-e6a0-4c57-98cd-7ef06ed413b8	2025-09-04 00:00:00	16:40	pedro henrique	Bruno	558199160082@s.whatsapp.net	2025-09-03 00:00:00	Cabelo
f2a3848d-dbb0-441a-aed1-666bd78f9148	2025-09-09 00:00:00	09:00	josé ivânio!	Bruno	558198526452@s.whatsapp.net	2025-09-03 00:00:00	Cabelo
3cda35f2-403b-4fcb-8cd9-94e563e57ea1	2025-09-06 00:00:00	11:20	carlos	Bruno	558199700555@s.whatsapp.net	2025-09-03 00:00:00	Cabelo
2760ca81-b2a9-4a79-af64-80ca7a2b02fd	2025-09-06 00:00:00	11:20	nicolas	Wallyson	558199700555@s.whatsapp.net	2025-09-03 00:00:00	Cabelo
f493da50-d4aa-4ff8-827e-be1a8dbd75e4	2025-09-04 00:00:00	18:40	Vitor pereira	Bruno	local	2025-09-03 13:58:39.757	Cabelo
595ee919-ee60-4126-ba32-c3e811182942	2025-09-06 00:00:00	08:40	aline	Wallyson	558182535973@s.whatsapp.net	2025-09-03 00:00:00	Cabelo
ad548798-a2f5-48ec-b1ba-b49d38ff5c5a	2025-09-04 00:00:00	14:00	matheus	Bruno	558199843332@s.whatsapp.net	2025-09-03 00:00:00	Cabelo
bb618391-9928-4844-b628-9ad35a7d9ae9	2025-09-03 00:00:00	16:00	Fernando 	Wallyson	local	2025-09-03 14:07:22.38	Cabelo
14382812-8ec1-4767-9921-599508accfca	2025-09-05 00:00:00	20:00	Alyson free shopping 20:20	Bruno	local	2025-09-03 14:16:09.53	Cabelo
b7cbbb16-a85e-4600-9aa5-3e19223a7f0f	2025-09-03 00:00:00	14:40	Heitor 	Wallyson	local	2025-09-03 14:50:26.698	Cabelo
4a646d31-4970-4471-bd38-956b05013cee	2025-09-05 00:00:00	11:00	fabiano	Bruno	558194610556@s.whatsapp.net	2025-09-03 00:00:00	Cabelo
938a2e30-53a4-4157-86c1-450e69f70092	2025-09-04 00:00:00	13:20	Marcado 	Wallyson	local	2025-09-03 16:33:24.575	Cabelo
19734411-dce3-4397-a34e-e4eb885d6159	2025-09-04 00:00:00	14:00	Marcado 	Wallyson	local	2025-09-03 16:33:37.927	Cabelo
f83465ee-047e-4ce9-85c6-a387fc0e4535	2025-09-08 00:00:00	15:20	Mateus Bruna 	Bruno	local	2025-09-03 17:07:39.135	Cabelo
03fc1fd4-03a9-4a17-991f-e204faf6d5ef	2025-09-04 00:00:00	18:00	Pedro 	Wallyson	local	2025-09-03 17:54:45.557	Cabelo+Barba
e5d1533d-54b8-4c5c-b87f-f4b30f59e616	2025-09-08 00:00:00	14:40	p. messi	Bruno	558199656200@s.whatsapp.net	2025-09-03 00:00:00	Cabelo+Barba
58cefea9-0ccc-44fd-9757-42050be89b16	2025-09-04 00:00:00	15:20	miguel josé	Bruno	558196843988@s.whatsapp.net	2025-09-03 00:00:00	Cabelo
e033a150-a514-4ddc-b64b-197062ede5eb	2025-09-04 00:00:00	17:20	erick	Wallyson	558199045127@s.whatsapp.net	2025-09-03 00:00:00	Cabelo
5ad94ec5-9493-4e8b-894f-ad5953d56f40	2025-09-18 00:00:00	17:20	Luiz 	Wallyson	local	2025-09-03 20:29:15.21	Cabelo
9552729f-5a47-43db-b794-98970e86a30d	2025-09-04 00:00:00	14:40	Alex 	Wallyson	local	2025-09-03 20:31:32.925	Cabelo
294cb6d6-5099-4a33-814f-6c80e06f4076	2025-09-06 00:00:00	13:20	ian de arcoverde	Bruno	558196739228@s.whatsapp.net	2025-09-03 00:00:00	Cabelo
b24ca093-23ae-4dd7-8d8f-a5c94090dd05	2025-09-04 00:00:00	16:00	leandro	Wallyson	558195021216@s.whatsapp.net	2025-09-03 00:00:00	Cabelo
5e2eebd8-6c65-4b7b-9461-6c8e4435831d	2025-09-04 00:00:00	16:40	júlio	Wallyson	558196192233@s.whatsapp.net	2025-09-03 00:00:00	Cabelo
b4fdc5b8-b8b1-4933-94b5-3ff57c7ff405	2025-09-03 00:00:00	11:00	oi	Bruno	558198646935@s.whatsapp.net	2025-09-03 00:00:00	Cabelo+Sobrancelha
9c3479ba-7e18-463d-841c-6b84530666f4	2025-09-10 00:00:00	17:20	arthur	Bruno	558182086614@s.whatsapp.net	2025-09-03 00:00:00	Cabelo
5dc8f8a0-c421-46fb-bbc9-0bab781c525c	2025-09-10 00:00:00	18:00	adeilson	Bruno	558182086614@s.whatsapp.net	2025-09-03 00:00:00	Cabelo
3fdd5ce2-3249-47d3-9a1c-3de526e4349e	2025-09-06 00:00:00	09:20	pedro lucas	Wallyson	558197832195@s.whatsapp.net	2025-09-03 00:00:00	Cabelo
963751ce-ac67-4cab-922b-791cf2a8fd80	2025-09-05 00:00:00	17:20	Fernando 	Wallyson	local	2025-09-03 22:25:44.667	Cabelo
7656c0bb-6e33-4176-8f1f-675f02c1c45b	2025-09-06 00:00:00	10:00	Matheus 	Wallyson	local	2025-09-04 00:13:27.663	Cabelo
4bd0e3a5-27d0-4db9-ac91-210713e21b34	2025-09-06 00:00:00	10:40	Francelino 	Wallyson	local	2025-09-04 00:13:44.69	Cabelo
0214ebae-e5f0-4a8c-8d48-c38126b92147	2025-09-04 00:00:00	11:20	vandinho	Wallyson	558197042471@s.whatsapp.net	2025-09-03 00:00:00	Cabelo+Sobrancelha
363f4677-671a-42f3-bfdb-0e49e7cd6133	2025-09-19 00:00:00	10:00	Kaio 	Wallyson	local	2025-09-04 00:15:54.21	Cabelo
41ee9726-c81c-4a89-8f1b-61c011aa9235	2025-09-04 00:00:00	10:00	Wanderson 	Wallyson	local	2025-09-04 00:18:41.063	Cabelo
b3b58713-cb9a-4bd7-ada3-aad1396124cf	2025-09-05 00:00:00	15:20	ivaldir barbosa	Wallyson	558196149252@s.whatsapp.net	2025-09-03 00:00:00	Cabelo
fa8c30e0-96dc-45cf-99c5-e94694aff21c	2025-09-04 00:00:00	08:00	heron	Wallyson	5581920018112@s.whatsapp.net	2025-09-03 00:00:00	Cabelo+Barba
32c0636b-44dc-4738-bfe3-388f6d47aa72	2025-09-09 00:00:00	18:40	Robson 	Wallyson	local	2025-09-04 11:34:14.492	Cabelo
eb513bff-8c9f-45cd-b6c8-005343a7598c	2025-09-09 00:00:00	11:00	dubolo	Bruno	558196647899@s.whatsapp.net	2025-09-04 00:00:00	Cabelo
bd5d89d1-0c8a-468a-ab61-825d190878c4	2025-09-09 00:00:00	11:40	dubolo	Bruno	558196647899@s.whatsapp.net	2025-09-04 00:00:00	Cabelo
f1a5157f-f287-4cd6-9e1b-0dd585c3dd70	2025-09-04 00:00:00	13:20	Indisponivel	Bruno	Indisponivel	2025-09-04 13:00:25.013	
1b59f93d-bdf9-43d3-8349-83e8ddf281d6	2025-09-04 00:00:00	14:40	Indisponivel	Bruno	Indisponivel	2025-09-04 13:00:25.456	
2fd3fefb-6f61-4b8a-acff-05544e8e1c20	2025-09-06 00:00:00	16:00	thiago souza	Wallyson	23691073212494@lid	2025-09-04 00:00:00	Cabelo
c8de0e78-c450-4ca9-b839-6be190efc59e	2025-09-06 00:00:00	12:00	Ruan 	Wallyson	local	2025-09-04 14:52:06.858	Cabelo
9697ab9f-eb51-414a-86fa-1005cf1abd1f	2025-09-05 00:00:00	18:40	carlos	Wallyson	558198314747@s.whatsapp.net	2025-09-04 00:00:00	Cabelo+Barba
8c68572e-baed-4505-94fd-61ad65a8a0ca	2025-09-05 00:00:00	10:00	lucas	Wallyson	558198659687@s.whatsapp.net	2025-09-04 00:00:00	Cabelo+Sobrancelha
74da7117-29a6-4111-a1b2-3585412b1c7c	2025-09-09 00:00:00	10:20	anderson	Bruno	558197666072@s.whatsapp.net	2025-09-04 00:00:00	Cabelo+Barba
0a241587-341a-4be4-995e-777c896c4d03	2025-09-05 00:00:00	14:00	andré leal	Wallyson	558197273032@s.whatsapp.net	2025-09-04 00:00:00	Cabelo
83da70cb-f078-4cc9-8a83-13e69cc14220	2025-09-08 00:00:00	13:20	matheus lima	Bruno	272150653051023@lid	2025-09-04 00:00:00	Cabelo+Sobrancelha
ec2123de-987d-4223-9d3f-5de4e096daa1	2025-09-09 00:00:00	16:00	luiz felipe	Bruno	558197800927@s.whatsapp.net	2025-09-04 00:00:00	Cabelo
41e997f8-947c-4238-96db-bf4521b3f16d	2025-09-18 00:00:00	14:40	lucas	Bruno	558182451503@s.whatsapp.net	2025-09-04 00:00:00	Cabelo+Sobrancelha
ddb595ac-1648-4a61-930c-1fa3b26dbfae	2025-09-17 00:00:00	18:00	vitor	Bruno	558181643618@s.whatsapp.net	2025-09-04 00:00:00	Cabelo
9ae95aac-5dea-4551-9fa1-99adeda71a72	2025-09-20 00:00:00	14:40	Pedrão	Wallyson	local	2025-09-04 22:01:55.734	Cabelo+Barba
efaca576-d8e2-4db4-898f-d202e81cedf2	2025-09-06 00:00:00	18:00	Levino 	Wallyson	local	2025-09-04 23:00:05.909	Cabelo+Barba
fe9a6e10-39c5-4a03-8a38-116184b80b6b	2025-09-06 00:00:00	13:20	Gustavo 	Wallyson	local	2025-09-04 23:01:05.731	Cabelo
a8dd974e-bb03-4c5c-a8a8-bfae22f23f93	2025-09-06 00:00:00	14:40	fábio cria	Wallyson	5521980058628@s.whatsapp.net	2025-09-04 00:00:00	Cabelo
5d394f13-c67b-49fd-ab07-577492f7dbe1	2025-09-06 00:00:00	14:00	Levino 	Wallyson	local	2025-09-05 00:57:57.034	Cabelo+Barba
c4d1c6c0-ceb0-43ea-8bc5-5b87683749cf	2025-09-10 00:00:00	15:20	joão neto	Bruno	558197626118@s.whatsapp.net	2025-09-04 00:00:00	Cabelo
94b3c50d-1655-4a4c-be5a-8b0cec25a941	2025-09-08 00:00:00	16:40	renan	Bruno	558198296625@s.whatsapp.net	2025-09-05 00:00:00	Cabelo
d4b0563c-fe4e-4827-8f94-2c0c6145c796	2025-09-05 00:00:00	14:40	osmar	Wallyson	558196267018@s.whatsapp.net	2025-09-05 00:00:00	Cabelo
ef756db3-b079-4e3d-a465-50ca979789a7	2025-09-10 00:00:00	10:20	joao lucas	Bruno	558189785404@s.whatsapp.net	2025-09-05 00:00:00	Cabelo+Sobrancelha
6ce0158e-3331-48b4-9f15-91bb0a440ad0	2025-09-19 00:00:00	15:20	joao lucas	Bruno	558189785404@s.whatsapp.net	2025-09-05 00:00:00	Cabelo+Sobrancelha
6938ec6a-2278-4875-af90-aad6722c00f0	2025-09-05 00:00:00	19:20	mario areias	Wallyson	558381367304@s.whatsapp.net	2025-09-05 00:00:00	Cabelo+Barba
0e6c2b2b-57a6-4ab1-be36-1786038d5bbd	2025-09-05 00:00:00	08:40	Leva Anthony no hospital de novo 	Wallyson	local	2025-09-05 11:05:02.563	Cabelo
e55273ec-ecab-41e8-8086-53f3cb0621de	2025-09-05 00:00:00	09:20	.	Wallyson	local	2025-09-05 11:05:30.729	Cabelo
89622c3d-d475-4908-8479-7f519ed2c028	2025-09-05 00:00:00	11:20	carlos	Wallyson	558199700555@s.whatsapp.net	2025-09-05 00:00:00	Cabelo
3a509845-44af-4fa5-87bd-01c3ef2c7a4e	2025-09-05 00:00:00	10:40	natacha	Wallyson	558197947166@s.whatsapp.net	2025-09-05 00:00:00	Cabelo
39316697-ad00-4906-a6cf-6838358016f5	2025-09-05 00:00:00	20:00	marcos elielson	Wallyson	558195356602@s.whatsapp.net	2025-09-05 00:00:00	Cabelo+Barba
254a2ecf-fc76-4120-80f6-589b1594f2ae	2025-09-06 00:00:00	15:20	paulo césar	Wallyson	558195254306@s.whatsapp.net	2025-09-05 00:00:00	Cabelo
2dd953c5-eab3-4ff7-b6e1-5191e72f1aab	2025-09-09 00:00:00	15:20	adriel	Wallyson	558196649167@s.whatsapp.net	2025-09-05 00:00:00	Cabelo+Barba
a883646d-4a66-4634-bfad-9f571ee3c8ad	2025-09-08 00:00:00	18:00	guilherme	Bruno	82476391231711@lid	2025-09-05 00:00:00	Cabelo
39c66f71-824a-4d60-818d-034350388d3c	2025-09-19 00:00:00	14:00	kayke	Wallyson	558197180683@s.whatsapp.net	2025-09-05 00:00:00	Cabelo+Barba
0e17ec6a-9ca6-478f-932a-a8f389f2ce27	2025-09-09 00:00:00	19:20	carlos augusto	Bruno	558195555220@s.whatsapp.net	2025-09-05 00:00:00	Cabelo
c2e95a48-c516-49ce-85e3-39cfd7429d9f	2025-09-18 00:00:00	16:00	Pedro irmão de neto 	Wallyson	local	2025-09-05 18:23:38.452	Cabelo
c0a17e18-e4e3-4f27-8a78-4fb42c24e746	2025-09-08 00:00:00	17:20	lázaro de assis	Bruno	558195988560@s.whatsapp.net	2025-09-05 00:00:00	Cabelo
0f0cd6aa-c20e-490d-8dfe-dd05e8c40868	2025-09-25 00:00:00	18:00	henrique gomes	Bruno	558199224958@s.whatsapp.net	2025-09-05 00:00:00	Cabelo
9dd0e0af-47b9-4ed2-a842-7869a768b799	2025-09-08 00:00:00	09:00	Indisponivel	Wallyson	Indisponivel	2025-09-06 10:30:30.346	
89e569ac-046c-464e-9f87-920acea4a908	2025-09-08 00:00:00	09:40	Indisponivel	Wallyson	Indisponivel	2025-09-06 10:30:30.692	
6da5d06a-fc19-449e-8f8b-fcbd7b664124	2025-09-08 00:00:00	10:20	Indisponivel	Wallyson	Indisponivel	2025-09-06 10:30:30.739	
3a816a3a-fd58-402a-b671-0f859a53d075	2025-09-08 00:00:00	11:00	Indisponivel	Wallyson	Indisponivel	2025-09-06 10:30:30.792	
5b789c83-52e8-4aa0-a982-c37a08fa7bf3	2025-09-08 00:00:00	11:40	Indisponivel	Wallyson	Indisponivel	2025-09-06 10:30:30.831	
c26f1670-4eff-4d69-9a74-353517fd471c	2025-09-09 00:00:00	16:40	anderson	Bruno	558199072414@s.whatsapp.net	2025-09-06 00:00:00	Cabelo
d8515d97-c0d5-4df8-843d-a0b08dbf3cc8	2025-09-09 00:00:00	18:00	Deyvison galego 	Bruno	local	2025-09-06 14:09:25.264	Cabelo
8938acc4-ea0b-476a-8252-3305c8671389	2025-09-06 00:00:00	10:00	Indisponivel	Bruno	Indisponivel	2025-09-06 14:10:05.616	
5d471464-f9d3-43d4-8d2c-bee6d68cb1d6	2025-09-18 00:00:00	13:20	neto	Bruno	558194759358@s.whatsapp.net	2025-09-06 00:00:00	Cabelo+Sobrancelha
94f2c5c9-ebd8-47c6-9350-beb14a811771	2025-09-08 00:00:00	18:40	samuel	Wallyson	558196448583@s.whatsapp.net	2025-09-06 00:00:00	Cabelo+Sobrancelha
cf3fc027-24fa-4228-b777-172ef3fd2576	2025-09-08 00:00:00	14:00	john	Wallyson	558196903604@s.whatsapp.net	2025-09-06 00:00:00	Cabelo+Barba
af576f81-29b3-4f33-8fc9-5afe30099dad	2025-09-12 00:00:00	16:40	Leonardo botox ( vem de 15:40) 	Bruno	local	2025-09-07 01:08:38.896	Cabelo
1b5ee56a-e3b8-443c-85de-db356471e945	2025-09-08 00:00:00	14:00	mateus b	Bruno	558197626344@s.whatsapp.net	2025-09-07 00:00:00	Cabelo
b3095236-9353-4e03-af6d-82dd4cbf7bff	2025-09-09 00:00:00	08:40	windney darlan	Wallyson	558187774760@s.whatsapp.net	2025-09-07 00:00:00	Cabelo
9f8ed8d0-f541-41a4-88a7-4d7c5bd94fcb	2025-09-11 00:00:00	11:00	davi	Bruno	558182118061@s.whatsapp.net	2025-09-07 00:00:00	Cabelo
414e4f85-cb1e-46d2-a6ba-97295b1486b7	2025-09-08 00:00:00	18:00	Marcado 	Wallyson	local	2025-09-07 17:07:13.584	Cabelo
bb50bf8f-c0c6-48bc-9b2f-ed6ea919faf0	2025-09-08 00:00:00	17:20	ricardo nunes	Wallyson	10969648508995@lid	2025-09-07 00:00:00	Cabelo
a34f0991-c26f-41f0-a316-f4b75877206d	2025-10-09 00:00:00	16:40	lucas	Bruno	558188204134@s.whatsapp.net	2025-09-07 00:00:00	Cabelo
b9fc4fe6-54a3-47d1-bbe9-085576d56560	2025-09-08 00:00:00	16:00	felipe silva	Bruno	558179158954@s.whatsapp.net	2025-09-07 00:00:00	Cabelo
ec8c6270-1708-4a2c-83f8-1b888c7e73d5	2025-09-09 00:00:00	13:20	ítalo	Bruno	70411761017020@lid	2025-09-08 00:00:00	Cabelo
9f321ec5-f46d-4a96-aa14-505b666dd2a5	2025-09-10 00:00:00	17:20	adriel	Wallyson	558196649167@s.whatsapp.net	2025-09-08 00:00:00	Cabelo+Barba
dc8c35f3-d861-434e-9792-a435b7431818	2025-09-08 00:00:00	13:20	gabriel	Wallyson	558185827719@s.whatsapp.net	2025-09-08 00:00:00	Cabelo
b058016c-4d50-4211-abe7-f190986af352	2025-09-08 00:00:00	16:40	gildevan	Wallyson	558182508046@s.whatsapp.net	2025-09-08 00:00:00	Cabelo
f3dc5678-15c3-46d9-a44d-377a2dcdb31e	2025-09-08 00:00:00	16:00	Paulo 	Wallyson	local	2025-09-08 14:20:57.785	Cabelo
0a57cd60-51d4-49b9-a2d0-54889f869509	2025-09-18 00:00:00	11:00	sid	Bruno	558191536718@s.whatsapp.net	2025-09-08 00:00:00	Cabelo+Barba
28cbefd5-c00e-4618-bf0d-63ef696fafcb	2025-09-10 00:00:00	14:40	gabriel henrique	Bruno	558185537298@s.whatsapp.net	2025-09-08 00:00:00	Cabelo
e1f21424-7304-4290-b293-2f0ea9b41fb3	2025-09-09 00:00:00	17:20	davi	Bruno	558173448482@s.whatsapp.net	2025-09-08 00:00:00	Cabelo
6608e02f-0003-4d69-82f0-8db8644a33f9	2025-09-08 00:00:00	14:40	Robson 	Wallyson	local	2025-09-08 15:56:45.011	Cabelo
ae9fbde6-a257-4114-8b05-de006799c9fb	2025-09-08 00:00:00	15:20	João Pedro 	Wallyson	local	2025-09-08 15:57:13.659	Cabelo
101dce58-8b8f-4429-ae26-6c6431979c1f	2025-09-12 00:00:00	09:40	matheus	Bruno	558199219447@s.whatsapp.net	2025-09-08 00:00:00	Cabelo
be9b7b2c-2854-4b89-9789-0af89fa7781b	2025-09-09 00:00:00	14:00	Wendel 	Wallyson	local	2025-09-08 17:07:41.12	Cabelo
f62da0ab-92c7-4c68-85de-d6dc95d56ca8	2025-09-09 00:00:00	16:00	mathias	Wallyson	558187494403@s.whatsapp.net	2025-09-08 00:00:00	Cabelo+Barba
131f09a3-55aa-4037-a782-d17ac44b1171	2025-09-10 00:00:00	09:40	tarcísio	Bruno	558185887456@s.whatsapp.net	2025-09-08 00:00:00	Cabelo
8b22427a-5913-4a70-8190-4f649a716283	2025-09-10 00:00:00	14:00	vinicius	Bruno	558196496652@s.whatsapp.net	2025-09-08 00:00:00	Cabelo
e3251fc0-2221-4b6a-aea6-eda0c895d6b4	2025-09-13 00:00:00	13:20	João Pedro 	Wallyson	local	2025-09-08 18:19:02.681	Cabelo
3c0ed021-6899-4199-b918-3a80e7f0bbd2	2025-09-09 00:00:00	18:40	paulo henrique	Bruno	558174004953@s.whatsapp.net	2025-09-08 00:00:00	Cabelo+Sobrancelha
a9886612-13df-471f-9c46-0487ded3e4ed	2025-09-11 00:00:00	18:40	maykon	Bruno	558199870087@s.whatsapp.net	2025-09-08 00:00:00	Cabelo
7603f2e8-d9a3-4823-8580-e033b0d67c27	2025-09-10 00:00:00	09:00	anthony	Bruno	558197620059@s.whatsapp.net	2025-09-08 00:00:00	Cabelo
253a4fe5-4d7d-41fc-9fb5-d5f554ba2327	2025-09-13 00:00:00	10:00	pedro arthur	Bruno	558182599443@s.whatsapp.net	2025-09-08 00:00:00	Cabelo
badfd08f-cd97-4223-a568-6a1028a9d237	2025-09-10 00:00:00	11:00	mauricio	Bruno	558182705181@s.whatsapp.net	2025-09-08 00:00:00	Cabelo
c1d7f117-2b8f-4ff7-8fd2-9e5c51b6f288	2025-09-18 00:00:00	10:20	pablo	Bruno	558182396657@s.whatsapp.net	2025-09-08 00:00:00	Cabelo
3ffa96d2-6c09-409f-89af-2ca9effba84d	2025-09-09 00:00:00	09:20	caio césar	Wallyson	558197520499@s.whatsapp.net	2025-09-08 00:00:00	Cabelo
f07695e3-fe36-48a7-8bd5-c1b28b71d4ac	2025-09-18 00:00:00	09:00	Pablo botox 	Bruno	local	2025-09-08 23:54:09.741	Cabelo
8c3be3f7-47ce-4aa4-a06a-cb3c5d9b0774	2025-09-13 00:00:00	09:20	cláudio henrique	Wallyson	558188482085@s.whatsapp.net	2025-09-08 00:00:00	Cabelo
27155149-829b-4599-b645-50b76fc3eaa8	2025-09-13 00:00:00	08:00	allef ryan	Bruno	558195740243@s.whatsapp.net	2025-09-09 00:00:00	Cabelo
60212bde-be44-43d4-81a3-a9f57a05464b	2025-09-09 00:00:00	13:20	erik	Wallyson	558191948830@s.whatsapp.net	2025-09-09 00:00:00	Cabelo
42b61e64-4796-42c5-bd80-5177405f0025	2025-09-11 00:00:00	11:40	maicon	Bruno	558194686969@s.whatsapp.net	2025-09-09 00:00:00	Cabelo
7771b0be-b180-47a1-a830-dae0e8b396ac	2025-09-11 00:00:00	10:20	arthur	Bruno	558197087531@s.whatsapp.net	2025-09-09 00:00:00	Cabelo
0f9a2f33-6b90-43ab-8e58-82f4c8acab90	2025-09-11 00:00:00	14:40	Indisponivel	Bruno	Indisponivel	2025-09-09 11:02:05.671	
6d494e9b-5625-4e19-a834-5902d2049d7c	2025-09-11 00:00:00	15:20	Indisponivel	Bruno	Indisponivel	2025-09-09 11:02:05.769	
021ad1d5-f5dd-46e3-8ed4-6307bd70cb55	2025-09-11 00:00:00	16:00	Indisponivel	Bruno	Indisponivel	2025-09-09 11:02:05.796	
3520cd98-8ec1-4c88-9d40-ecb9f5da9e9e	2025-09-11 00:00:00	16:40	Indisponivel	Bruno	Indisponivel	2025-09-09 11:02:05.824	
fe77ad07-a51b-46b1-9f84-333a7ecf9c30	2025-09-11 00:00:00	17:20	Indisponivel	Bruno	Indisponivel	2025-09-09 11:02:05.852	
751deda4-29b3-4de7-bf72-0f2da77d737d	2025-09-11 00:00:00	18:00	Indisponivel	Bruno	Indisponivel	2025-09-09 11:02:05.88	
41490300-96f1-421a-bb7f-3db2cdc29a65	2025-09-11 00:00:00	18:40	Indisponivel	Bruno	Indisponivel	2025-09-09 11:02:05.907	
ea04db7d-a8a2-45fe-9576-888075e8fab9	2025-09-12 00:00:00	19:20	fernando nutri smart	Bruno	558199948217@s.whatsapp.net	2025-09-09 00:00:00	Cabelo
85528972-c5d2-402e-b51b-b29d885414ee	2025-09-09 00:00:00	14:40	emanuel	Wallyson	558197496524@s.whatsapp.net	2025-09-09 00:00:00	Cabelo
5b3263bd-dc8d-47d9-bec1-fd58e063b93f	2025-09-11 00:00:00	09:00	Ivanio corte e luzes 	Bruno	local	2025-09-09 12:13:46.027	Cabelo
516f6fb1-3983-4ca3-a9db-0b249e947b5c	2025-09-11 00:00:00	14:00	Indisponivel	Bruno	Indisponivel	2025-09-09 12:21:19.829	
19fd363f-1c03-42f4-9e0f-992703634b19	2025-09-09 00:00:00	18:00	Wellington 	Wallyson	local	2025-09-09 13:09:52.956	Cabelo
32f55afc-b7d8-41ac-9f7b-62e2fc562c68	2025-09-10 00:00:00	09:20	Paulo 	Wallyson	local	2025-09-09 13:16:29.286	Cabelo
d22e34c9-5a1c-43d9-b5b3-bee512a2c61a	2025-09-10 00:00:00	18:40	Vínicos 	Wallyson	local	2025-09-09 13:17:00.49	Cabelo
cbf77610-a437-4231-b5ad-7807da0a8b8b	2025-10-09 00:00:00	11:00	lucas	Bruno	558188204134@s.whatsapp.net	2025-09-09 00:00:00	Cabelo
633de52c-55c1-4207-96fe-0f144f7e9b66	2025-09-09 00:00:00	11:20	gerdo	Wallyson	558196275453@s.whatsapp.net	2025-09-09 00:00:00	Cabelo
aca1d74d-aa6c-49bf-9e91-4e122da38463	2025-10-09 00:00:00	13:20	lucas	Bruno	558188204134@s.whatsapp.net	2025-09-09 00:00:00	Cabelo
5535a062-d02b-46a7-920b-524f19e08118	2025-09-10 00:00:00	08:40	elysson	Wallyson	558199697267@s.whatsapp.net	2025-09-09 00:00:00	Cabelo+Sobrancelha
af95ff46-6f59-49cf-93c4-a44023c88770	2025-09-10 00:00:00	15:20	vandro júnior	Wallyson	558196610362@s.whatsapp.net	2025-09-09 00:00:00	Cabelo
d0b4ca5e-bc0f-43b0-8fd3-1f0e897dc9a5	2025-09-11 00:00:00	09:20	Adaias 	Wallyson	local	2025-09-09 15:25:33.451	Cabelo
765884d5-88f7-403f-a202-8d9281aed941	2025-09-10 00:00:00	08:00	Marcado 	Wallyson	local	2025-09-09 15:26:31.186	Cabelo
ae382eac-8f4a-4b40-a783-5ce260d69d42	2025-09-09 00:00:00	16:40	lucas	Wallyson	558188204134@s.whatsapp.net	2025-09-09 00:00:00	Cabelo
6843a06e-463b-4e66-a5c8-7fa31c8ecb2d	2025-09-12 00:00:00	20:00	geam pedro	Bruno	558179092590@s.whatsapp.net	2025-09-09 00:00:00	Cabelo
c1d4e745-a093-47e7-aa6d-786dd4662925	2025-09-10 00:00:00	10:00	matheus	Wallyson	558171157384@s.whatsapp.net	2025-09-09 00:00:00	Cabelo
c11c0114-966d-4125-a43d-568f8a79b6b4	2025-09-10 00:00:00	10:40	Luiz André 	Wallyson	local	2025-09-09 17:46:35.226	Cabelo
b09b7366-b099-4a29-9f05-090d927f759a	2025-09-12 00:00:00	18:00	bruno	Bruno	558189873832@s.whatsapp.net	2025-09-09 00:00:00	Cabelo+Barba
f19bd377-f547-4df4-820a-c777a6be8c70	2025-09-10 00:00:00	13:20	gabriel	Wallyson	558181774084@s.whatsapp.net	2025-09-09 00:00:00	Acabamento (Pezinho)
2ac1b969-8995-47f7-8c2c-5d458dcd68c4	2025-09-10 00:00:00	16:00	Higor 	Wallyson	local	2025-09-09 19:48:43.559	Cabelo+Barba
1c37a2a2-0ab8-4231-8763-86f697f095e1	2025-09-12 00:00:00	11:00	andré	Bruno	558198646935@s.whatsapp.net	2025-09-09 00:00:00	Cabelo+Sobrancelha
18af57f2-ef62-4288-af60-46f61279adaa	2025-09-10 00:00:00	14:00	Matheus 	Wallyson	local	2025-09-09 21:19:30.903	Cabelo
43800c25-5f66-44e1-9506-fbaee1728812	2025-09-15 00:00:00	14:00	nilton e arthur	Bruno	558199442297@s.whatsapp.net	2025-09-09 00:00:00	Cabelo
93ecbcb1-b9fd-44d2-b64c-7ddfe200e9bf	2025-09-11 00:00:00	09:40	arthur vinicius	Bruno	206395106451692@lid	2025-09-09 00:00:00	Cabelo
9b3fffd5-edda-4aee-be4f-c953b9aaa6a7	2025-09-12 00:00:00	09:20	joão lucas	Wallyson	558198783426@s.whatsapp.net	2025-09-09 00:00:00	Cabelo
2570d51f-8b0f-40ce-a85c-24831760ca3d	2025-09-10 00:00:00	16:40	jorge	Wallyson	558199658478@s.whatsapp.net	2025-09-09 00:00:00	Cabelo+Sobrancelha
c39aba2d-4c25-4ce3-88a7-0d6f83bd321f	2025-09-12 00:00:00	18:40	fillipe	Bruno	558192151856@s.whatsapp.net	2025-09-09 00:00:00	Cabelo+Sobrancelha
5c6135f2-538b-46b0-bfb2-d19b00c8daab	2025-09-10 00:00:00	14:40	rafael	Wallyson	558188763249@s.whatsapp.net	2025-09-10 00:00:00	Cabelo
3492f531-f61d-45d8-8a4f-0cf9de7a113f	2025-09-11 00:00:00	18:40	Wellington 	Wallyson	local	2025-09-10 11:19:01.73	Cabelo
549f0132-e47a-42ac-a790-a496d8a99d2a	2025-09-11 00:00:00	08:00	luan	Wallyson	558196537045@s.whatsapp.net	2025-09-10 00:00:00	Cabelo
f4bb5ed6-8b05-44a1-8a3b-bd91dad507e1	2025-09-17 00:00:00	14:00	alan elias	Wallyson	558182284289@s.whatsapp.net	2025-09-10 00:00:00	Cabelo
f3d0b472-a5ac-40aa-82e1-406acb8f682e	2025-09-11 00:00:00	13:20	guilherme	Wallyson	558199450573@s.whatsapp.net	2025-09-10 00:00:00	Cabelo
7a233e58-1db0-4e0a-92a8-5733f09e5db6	2025-09-12 00:00:00	09:00	hatus	Bruno	558199706416@s.whatsapp.net	2025-09-10 00:00:00	Barba
5c1c54a3-e9ba-408c-87f4-0bfec9d4a012	2025-09-13 00:00:00	11:20	cláudio figueiredo	Bruno	202787501646016@lid	2025-09-10 00:00:00	Cabelo
41599155-e367-459a-b8c1-c061c23dd70c	2025-09-16 00:00:00	10:00	joaquim	Wallyson	558181603996@s.whatsapp.net	2025-09-10 00:00:00	Cabelo
b79c08aa-5780-4919-a9d7-af8794bed7b7	2025-09-11 00:00:00	10:00	emanuel	Wallyson	558196314532@s.whatsapp.net	2025-09-10 00:00:00	Cabelo
bbe70e54-372e-4dd6-8560-555bbd0121f8	2025-09-20 00:00:00	12:00	ualesson	Bruno	558199786467@s.whatsapp.net	2025-09-10 00:00:00	Cabelo
a264f94f-6975-4f8f-a7a7-8a86469299f1	2025-09-13 00:00:00	14:00	robert fernando	Bruno	558187830953@s.whatsapp.net	2025-09-10 00:00:00	Cabelo
b3f7fbc9-c8af-4052-9063-c570f488923c	2025-09-12 00:00:00	10:20	Ivan 	Bruno	local	2025-09-10 21:29:52.611	Cabelo
0eb98dbc-7eb3-4320-9316-17f244cfe281	2025-09-12 00:00:00	13:20	Maykon	Bruno	local	2025-09-10 21:53:20.706	Cabelo
7fbd11ce-d100-4cd7-9945-4d8773b447b9	2025-09-11 00:00:00	18:00	Marcado 	Wallyson	local	2025-09-10 22:27:17.886	Cabelo
2a6e54f3-5f09-4cbf-95ce-bdbc4d76d4a0	2025-09-11 00:00:00	08:40	Marcado 	Wallyson	local	2025-09-10 22:28:33.244	Cabelo
420ceb25-ae7a-436a-a65c-2e06b35f6440	2025-09-11 00:00:00	10:40	joão	Wallyson	558196647899@s.whatsapp.net	2025-09-10 00:00:00	Cabelo
64eabadd-80d1-4bad-ab19-dfa06d38b2f6	2025-09-11 00:00:00	15:20	Indisponivel	Wallyson	Indisponivel	2025-09-11 00:42:07.448	
20a4e559-d604-4915-9dd8-8a57b01bcccb	2025-09-11 00:00:00	16:00	Indisponivel	Wallyson	Indisponivel	2025-09-11 00:42:07.533	
538f334b-8fe7-4efc-8e2b-19f1791b7393	2025-09-11 00:00:00	16:40	Indisponivel	Wallyson	Indisponivel	2025-09-11 00:42:07.563	
0f58af8b-f350-46e4-94ad-21bfb1f8770f	2025-09-11 00:00:00	17:20	Indisponivel	Wallyson	Indisponivel	2025-09-11 00:42:07.592	
08263552-9634-45b9-8d2a-e2053ac5fce7	2025-09-11 00:00:00	14:00	Issac 	Wallyson	local	2025-09-11 01:34:43.298	Cabelo
5b248d15-dded-450b-9fd7-21d18fc96a77	2025-09-11 00:00:00	14:40	Wellington 	Wallyson	local	2025-09-11 01:39:05.038	Cabelo
f89f4df8-3def-479c-b2bd-568d580ede55	2025-09-13 00:00:00	08:40	victor	Wallyson	558196193892@s.whatsapp.net	2025-09-11 00:00:00	Cabelo
034e5860-8182-4e23-b9a3-e10eb4cd31c3	2025-09-11 00:00:00	13:20	Matheus 	Bruno	local	2025-09-11 11:44:50.434	Cabelo
ff8aae1b-0a31-4088-902a-5d848781dae6	2025-09-19 00:00:00	11:00	lucas xoxa 10 camisa 10	Bruno	558198659687@s.whatsapp.net	2025-09-11 00:00:00	Cabelo+Sobrancelha
06d50c00-49f7-4730-80c7-3d97e59bbc44	2025-09-19 00:00:00	11:40	luís bola 9	Bruno	558198659687@s.whatsapp.net	2025-09-11 00:00:00	Cabelo+Sobrancelha
1a2fc0dd-0aea-49c8-9e31-b9149ce71d27	2025-09-11 00:00:00	11:20	junio	Wallyson	558198659687@s.whatsapp.net	2025-09-11 00:00:00	Cabelo+Sobrancelha
37cb6f58-48d6-4d34-bfe4-ce6632a51bf3	2025-09-15 00:00:00	18:00	rafael melo	Bruno	558199365900@s.whatsapp.net	2025-09-11 00:00:00	Cabelo
3e380ce1-48d6-469f-8f00-d2307ade4539	2025-09-15 00:00:00	16:40	antônio	Bruno	558197083657@s.whatsapp.net	2025-09-11 00:00:00	Cabelo+Sobrancelha
83a7c347-ed41-4fc1-9100-d9700d259b4a	2025-09-19 00:00:00	14:40	joão victor	Bruno	558196049253@s.whatsapp.net	2025-09-11 00:00:00	Cabelo+Sobrancelha
001edbc2-5677-4bc6-87fd-a7a1bb06927f	2025-09-12 00:00:00	17:20	Dejoe	Wallyson	local	2025-09-11 21:20:36.339	Cabelo
0484f0c9-73d7-4b52-b025-39369c1cade9	2025-09-12 00:00:00	20:00	Davi Efraim 	Wallyson	local	2025-09-11 23:43:05.199	Cabelo
0160b5a1-bd2c-422e-84ae-5189daa25cf0	2025-09-12 00:00:00	18:00	Lyaderson 	Wallyson	local	2025-09-11 23:44:31.651	Cabelo
2558c17f-cb88-4ff9-ad46-ac8b50a4f12c	2025-09-12 00:00:00	08:00	Marcado 	Wallyson	local	2025-09-12 10:13:08.276	Cabelo
72bb76ad-1dbc-42ba-8936-db3ad91ca38a	2025-09-12 00:00:00	08:40	Luiz André 	Wallyson	local	2025-09-12 10:13:40.629	Cabelo
ab8677f4-bbd4-4898-9480-b180da37cbb2	2025-09-12 00:00:00	14:40	iann lucas	Bruno	558196612255@s.whatsapp.net	2025-09-12 00:00:00	Cabelo+Sobrancelha
f355a39f-f54f-4061-a7cc-f35552bd10a4	2025-09-23 00:00:00	14:40	Indisponivel	Bruno	Indisponivel	2025-09-12 12:43:57.791	
3799350e-fa92-4def-ad1a-307839210cdc	2025-09-23 00:00:00	15:20	Indisponivel	Bruno	Indisponivel	2025-09-12 12:43:57.895	
43e348b2-c871-4057-a9e6-7c47f6e0fc90	2025-09-23 00:00:00	16:00	Indisponivel	Bruno	Indisponivel	2025-09-12 12:43:57.927	
b959f035-85bb-4d6b-af75-6ddd94242a07	2025-09-23 00:00:00	16:40	Indisponivel	Bruno	Indisponivel	2025-09-12 12:43:57.965	
34514399-11a8-4866-863f-1a1612c9c7ec	2025-09-23 00:00:00	17:20	Indisponivel	Bruno	Indisponivel	2025-09-12 12:43:57.996	
e3dafd88-d7f6-4883-82ae-ac4f52aa3415	2025-09-23 00:00:00	18:00	Indisponivel	Bruno	Indisponivel	2025-09-12 12:43:58.025	
6d203ec5-639b-4c2e-8b0d-9e0b7160531b	2025-09-23 00:00:00	18:40	Indisponivel	Bruno	Indisponivel	2025-09-12 12:43:58.065	
f1423cf3-25e7-4d40-b04a-97c333328354	2025-09-23 00:00:00	19:20	Indisponivel	Bruno	Indisponivel	2025-09-12 12:43:58.096	
b3007052-d3f3-47ab-9b2e-91d58febeaba	2025-09-15 00:00:00	13:20	rennan	Bruno	558179005726@s.whatsapp.net	2025-09-12 00:00:00	Cabelo
49917150-fb9d-42bd-a722-70c553272a79	2025-09-16 00:00:00	18:40	joão nycolas	Wallyson	558195129087@s.whatsapp.net	2025-09-12 00:00:00	Cabelo
640b2c85-751a-4814-818f-bc1393a254f4	2025-09-13 00:00:00	12:00	Matheus 	Wallyson	local	2025-09-12 14:13:57.421	Cabelo
8c07000f-d966-480b-ad20-f572118a9b8b	2025-09-15 00:00:00	14:00	Dafnis	Wallyson	local	2025-09-12 14:14:36.996	Cabelo
5ad75008-27c7-4673-b08e-8f660d15b2ae	2025-09-12 00:00:00	14:00	felipe helcias	Wallyson	558197667880@s.whatsapp.net	2025-09-12 00:00:00	Barba
32f4c13c-223e-4cc1-adde-e4d358c462c2	2025-09-12 00:00:00	14:00	Ian	Bruno	local	2025-09-12 16:08:22.138	Cabelo
dc59bbcf-a342-4091-b79c-61bb408df990	2025-09-12 00:00:00	16:00	Ivan	Bruno	local	2025-09-12 16:08:33.321	Cabelo
1ecfbd4d-02b3-44db-aeef-5ccf80b311e3	2025-09-12 00:00:00	15:20	Leonardo aplicar botox	Bruno	local	2025-09-12 16:09:04.864	Cabelo
85ab0001-3b19-4a90-b1a4-8f0aa8382a3a	2025-09-12 00:00:00	14:40	gabriel	Wallyson	558197917932@s.whatsapp.net	2025-09-12 00:00:00	Cabelo
3058b453-323b-4f10-8f50-c0a4ad4a716c	2025-09-12 00:00:00	15:20	eduardo	Wallyson	558181806550@s.whatsapp.net	2025-09-12 00:00:00	Cabelo
e98df8fd-a743-4fc0-993b-2aed1f7bf9ff	2025-09-13 00:00:00	16:00	kallebe	Wallyson	46712165003493@lid	2025-09-12 00:00:00	Cabelo
cf5e0eff-c466-4aef-9ff2-b068e87af791	2025-09-16 00:00:00	08:40	Felipe 	Wallyson	local	2025-09-12 17:40:54.637	Cabelo+Barba
aa8a8091-17ea-4b1c-b170-b7c1cf5cf1b9	2025-09-13 00:00:00	17:20	João Henrique 	Wallyson	local	2025-09-12 20:55:08.905	Cabelo
bd832346-7ffb-42f5-b2ad-85b2ef4b7815	2025-09-13 00:00:00	18:00	Victor 	Wallyson	local	2025-09-12 20:55:27.769	Barba
38074c07-d0a4-4f99-9589-37a3090e766e	2025-09-13 00:00:00	12:00	renan	Bruno	558199282002@s.whatsapp.net	2025-09-12 00:00:00	Cabelo
4507d39c-e361-42b4-81ae-7398647dc538	2025-09-15 00:00:00	15:20	rafael	Bruno	558188763249@s.whatsapp.net	2025-09-12 00:00:00	Cabelo
962c61e4-0bf1-4e89-9313-2c4409f02891	2025-09-13 00:00:00	13:20	carlos	Bruno	558199864566@s.whatsapp.net	2025-09-13 00:00:00	Cabelo
d1e94a7c-16d2-4c6d-a40f-8122c17c8054	2025-09-13 00:00:00	10:40	Renan 	Bruno	local	2025-09-13 10:36:55.944	Cabelo
1e23e339-1983-47f2-ade2-d94a955b7407	2025-09-19 00:00:00	18:00	eudes fera	Wallyson	558184793136@s.whatsapp.net	2025-09-13 00:00:00	Cabelo
e7793524-75ce-426f-820e-c104d89eb55c	2025-09-15 00:00:00	17:20	fernando	Bruno	558196035269@s.whatsapp.net	2025-09-13 00:00:00	Cabelo
0a02cdb1-0c6b-4c3a-95fc-ec977b4c0f98	2025-09-13 00:00:00	14:40	ravi	Bruno	558195156041@s.whatsapp.net	2025-09-13 00:00:00	Cabelo
47810b23-7eaf-4fa4-b0e6-4b2f13e24bf7	2025-09-13 00:00:00	14:40	Ravi	Wallyson	local	2025-09-13 16:18:53.379	Cabelo
b812e775-37c7-4463-be7a-57a65fd8c26a	2025-09-13 00:00:00	16:00	Mateus Vinicius 	Bruno	local	2025-09-13 16:20:22.398	Cabelo
8f3a7114-97b6-4386-ac6c-7878cfd29467	2025-09-19 00:00:00	15:20	ryan	Wallyson	5511959620317@s.whatsapp.net	2025-09-13 00:00:00	Cabelo+Sobrancelha
0b639ae8-81da-4b70-891e-4e0823238626	2025-09-15 00:00:00	18:40	Pelada 	Wallyson	local	2025-09-13 20:58:11.427	Cabelo
7b0451af-0d6a-4e8e-a908-0d05cfef3e3a	2025-09-16 00:00:00	09:00	emanoel	Bruno	558181079674@s.whatsapp.net	2025-09-13 00:00:00	Cabelo
caf7e82b-60a8-4e46-8c01-d88c0340084a	2025-09-16 00:00:00	09:40	leonardo cabral	Bruno	558197413226@s.whatsapp.net	2025-09-13 00:00:00	Cabelo
dd5d4412-0c5d-4070-a4a2-c6fcfcb2053c	2025-09-17 00:00:00	16:40	italo	Bruno	558197149668@s.whatsapp.net	2025-09-13 00:00:00	Cabelo
1b35bb62-5d2a-48c7-a2b6-0a9421cdd25a	2025-09-17 00:00:00	17:20	marcos	Bruno	558197149668@s.whatsapp.net	2025-09-13 00:00:00	Cabelo
4372ed8a-fdb4-4ee1-95ed-093fe9642c50	2025-09-15 00:00:00	14:40	joão marcello	Bruno	558196393507@s.whatsapp.net	2025-09-13 00:00:00	Cabelo
a4acc2aa-c755-4806-b5e9-6b474bda6c4b	2025-09-17 00:00:00	17:20	samuel ferreira	Wallyson	558199862867@s.whatsapp.net	2025-09-13 00:00:00	Cabelo
62e730d2-f579-4608-b79c-06267af3a31d	2025-09-15 00:00:00	09:00	joaquim da xstation	Wallyson	558199504021@s.whatsapp.net	2025-09-13 00:00:00	Cabelo+Barba
99424fb5-5727-4d14-b840-570e367f263b	2025-09-23 00:00:00	14:00	lukas lial	Bruno	558192687390@s.whatsapp.net	2025-09-14 00:00:00	Cabelo+Sobrancelha
97ac88e9-bbf8-4031-836d-a8a449c7d4b5	2025-09-23 00:00:00	13:20	Indisponivel	Bruno	Indisponivel	2025-09-14 17:30:40.217	
3e59e406-1515-4cef-bc43-571a7373a0b2	2025-09-23 00:00:00	14:00	Indisponivel	Bruno	Indisponivel	2025-09-14 17:30:40.529	
b721ffeb-71e1-408f-9319-343dd30b18d1	2025-09-23 00:00:00	14:40	Indisponivel	Bruno	Indisponivel	2025-09-14 17:30:40.56	
1e081fc1-1f9b-4065-a6d0-b7a8f23f0574	2025-09-23 00:00:00	15:20	Indisponivel	Bruno	Indisponivel	2025-09-14 17:30:40.596	
8419ea69-67de-41b5-8f39-b4b7737b04e1	2025-09-23 00:00:00	16:00	Indisponivel	Bruno	Indisponivel	2025-09-14 17:30:40.63	
ceb6a597-e9e3-4ad0-9107-81fb19d6c4ad	2025-09-23 00:00:00	16:40	Indisponivel	Bruno	Indisponivel	2025-09-14 17:30:40.663	
75588906-e746-4ccd-886c-60a793f1e874	2025-09-23 00:00:00	17:20	Indisponivel	Bruno	Indisponivel	2025-09-14 17:30:40.755	
18535f76-6e2c-48a2-abcd-9761e56203f5	2025-09-23 00:00:00	18:00	Indisponivel	Bruno	Indisponivel	2025-09-14 17:30:40.85	
4cf2abe4-8df2-40a7-965e-e8eefaf025ae	2025-09-23 00:00:00	18:40	Indisponivel	Bruno	Indisponivel	2025-09-14 17:30:40.9	
b707d4bf-33cc-4e3e-bc54-ecb723a620e5	2025-09-23 00:00:00	19:20	Indisponivel	Bruno	Indisponivel	2025-09-14 17:30:40.939	
c0c63914-b115-412d-bdfa-8b7ba68f0942	2025-09-15 00:00:00	16:00	gonzaga neto	Bruno	558198514795@s.whatsapp.net	2025-09-14 00:00:00	Cabelo+Sobrancelha
5e12e117-4b1d-4e5b-91f1-c2adfe336f6c	2025-09-23 00:00:00	11:40	lucas alfredo de barbosa lisboa junior	Bruno	558192687390@s.whatsapp.net	2025-09-14 00:00:00	Cabelo+Sobrancelha
0ff61cbf-e413-4a34-b54a-8ed1b9cb53eb	2025-09-15 00:00:00	18:40	genildo	Bruno	558199736143@s.whatsapp.net	2025-09-14 00:00:00	Cabelo
e6d31c0b-b526-476f-8a06-b95dd7487754	2025-09-18 00:00:00	09:40	0	Bruno	558182705181@s.whatsapp.net	2025-09-14 00:00:00	Cabelo
913bde85-0ddd-4fe3-9039-ad9d5e9c05be	2025-09-27 00:00:00	10:40	mathias	Bruno	558181310245@s.whatsapp.net	2025-09-14 00:00:00	Cabelo+Sobrancelha
810beb88-a2bf-4032-aa1b-9cd379cbc279	2025-09-18 00:00:00	16:40	yago	Wallyson	558195055274@s.whatsapp.net	2025-09-14 00:00:00	Cabelo
cac0fe0a-7be9-4de0-8b90-eb0da39cd00e	2025-09-16 00:00:00	14:00	lucas pio nunes	Wallyson	558181213267@s.whatsapp.net	2025-09-15 00:00:00	Cabelo
ce3e24a9-16bb-413e-bf62-d59fcdd74dcf	2025-09-16 00:00:00	15:20	João, Carmen 	Wallyson	local	2025-09-15 10:14:13.642	Cabelo
09b78e78-bbc1-4938-8872-4522e4987c4f	2025-09-15 00:00:00	11:00	Wellington 	Wallyson	local	2025-09-15 10:17:32.021	Cabelo
009e7ce0-d548-46c6-86f5-6f7905981f74	2025-09-15 00:00:00	14:40	breno	Wallyson	558198437880@s.whatsapp.net	2025-09-15 00:00:00	Cabelo+Sobrancelha
fa0bb95d-a29d-4275-9cc1-e57bfb1c442d	2025-09-20 00:00:00	10:00	luiz	Bruno	558181486379@s.whatsapp.net	2025-09-15 00:00:00	Cabelo+Sobrancelha
073fa25f-ca5d-4527-8418-90fa93a6945b	2025-09-18 00:00:00	08:40	thiago	Wallyson	558199044022@s.whatsapp.net	2025-09-15 00:00:00	Cabelo
2e1f7e87-3323-4510-be88-fdc28f97be98	2025-09-16 00:00:00	11:00	ataliba	Bruno	558182671510@s.whatsapp.net	2025-09-15 00:00:00	Barba
c045437a-4a5a-46db-abdb-abe365b0c435	2025-09-17 00:00:00	15:20	maurycio	Bruno	558197162890@s.whatsapp.net	2025-09-15 00:00:00	Cabelo+Sobrancelha
0f9955cd-e9e4-404e-bd34-3da597b3422c	2025-09-19 00:00:00	18:40	Levino 	Wallyson	local	2025-09-15 12:58:11.21	Cabelo+Barba
43d241a7-0d77-4a57-826b-6f3c5a6dc784	2025-09-15 00:00:00	11:40	Marcelo 	Wallyson	local	2025-09-15 13:00:47.929	Cabelo
9e020171-2816-4dcb-837e-71293be78433	2025-09-18 00:00:00	14:00	Wesely 	Wallyson	local	2025-09-15 13:07:20.967	Cabelo+Barba
add94dd6-cf18-4b51-a8bf-0fc72239df50	2025-09-17 00:00:00	14:40	miguel cabral	Bruno	558196537955@s.whatsapp.net	2025-09-15 00:00:00	Cabelo
8c8b8cf8-b95a-41da-bf3f-fcbb278530a7	2025-09-18 00:00:00	13:20	daniel	Wallyson	558199459046@s.whatsapp.net	2025-09-15 00:00:00	Cabelo
afa3ac22-6259-45ee-b42d-e25ec040ad65	2025-09-15 00:00:00	18:00	Pedro França 	Wallyson	local	2025-09-15 13:25:45.748	Cabelo
a222eb33-732b-4151-94fa-0c92c78c3146	2025-09-16 00:00:00	09:20	Ruan 	Wallyson	local	2025-09-15 14:29:16.523	Cabelo
22db1d6d-555b-41dc-9232-a93aeaa0fa20	2025-09-16 00:00:00	10:20	Henrique 	Bruno	local	2025-09-15 14:37:56.798	Cabelo
4fbc2c8a-bc11-4b30-96ae-7e601f770493	2025-09-18 00:00:00	10:00	gabriel	Wallyson	558195699749@s.whatsapp.net	2025-09-15 00:00:00	Cabelo+Barba
03785d01-cff5-477f-a608-c857b4620f51	2025-09-15 00:00:00	15:20	Duda	Wallyson	local	2025-09-15 16:02:20.261	Cabelo
2e31d384-3be6-422a-94cf-efc56330242b	2025-09-17 00:00:00	10:20	bruno	Bruno	558197349442@s.whatsapp.net	2025-09-15 00:00:00	Cabelo
1b36798e-28fd-4dfb-a305-c0c4ec775c0a	2025-09-22 00:00:00	15:20	breno	Bruno	558197349442@s.whatsapp.net	2025-09-15 00:00:00	Cabelo
926deddd-862c-4446-98f0-133a3b390c75	2025-09-20 00:00:00	14:00	mateus	Bruno	558196083218@s.whatsapp.net	2025-09-15 00:00:00	Cabelo+Barba
e42767db-759a-4cea-8f52-c4e06e1fca13	2025-09-25 00:00:00	17:20	everson	Bruno	558179003193@s.whatsapp.net	2025-09-15 00:00:00	Cabelo
4dff6f4a-01f3-4f59-9ebc-5d82f12c04ff	2025-09-25 00:00:00	09:00	joão vitor	Bruno	558192250093@s.whatsapp.net	2025-09-15 00:00:00	Cabelo
c5c6069f-cc59-4b54-86f3-01e2cdd8a08c	2025-09-17 00:00:00	14:00	joao guilherme	Bruno	558181673375@s.whatsapp.net	2025-09-15 00:00:00	Cabelo
9c05e724-6520-4ae7-be82-66ca367289d6	2025-09-20 00:00:00	13:20	matheus	Bruno	558197941830@s.whatsapp.net	2025-09-15 00:00:00	Cabelo
4c0c95ce-3c1c-485c-ae31-4b2fa138500d	2025-09-15 00:00:00	16:00	francisco	Wallyson	558182062970@s.whatsapp.net	2025-09-15 00:00:00	Cabelo
eaa938dc-7146-46e1-81b2-10371eef3310	2025-09-24 00:00:00	18:40	heitor batista	Bruno	558197535746@s.whatsapp.net	2025-09-15 00:00:00	Cabelo
3d303912-0708-438e-8419-e41c5e05d71b	2025-09-15 00:00:00	17:20	Alan	Wallyson	local	2025-09-15 19:20:58.782	Cabelo
23b5e9bc-47c0-4615-95f8-45dddb6193c1	2025-09-16 00:00:00	17:20	fernando	Bruno	558196035269@s.whatsapp.net	2025-09-15 00:00:00	Cabelo
9e3d7c49-7078-48ea-8114-9d79183282a4	2025-09-16 00:00:00	18:40	Gonzaga	Bruno	local	2025-09-15 20:19:00.364	Cabelo
91b5df06-1afd-4586-a3df-946f8f8a55c0	2025-09-16 00:00:00	18:00	Rafael 	Bruno	local	2025-09-15 20:19:15.2	Cabelo
fb8113ac-08ac-4ac3-a7cb-f5fd45594282	2025-09-16 00:00:00	19:20	Genildo	Bruno	local	2025-09-15 20:27:17.522	Cabelo
7d621f92-88a1-4f67-8ec0-120564e1725e	2025-09-16 00:00:00	17:20	Leandro	Wallyson	local	2025-09-15 20:48:50.426	Cabelo
eff2ab10-86ce-409d-ac24-a8c89fbcbdc0	2025-09-16 00:00:00	18:00	diego santos	Wallyson	558173303801@s.whatsapp.net	2025-09-15 00:00:00	Cabelo
7269b8b7-adb5-4bd5-b1b0-87540ef12ab5	2025-09-16 00:00:00	10:40	windney darlan	Wallyson	558187774760@s.whatsapp.net	2025-09-15 00:00:00	Cabelo
fc4c1a54-7532-4af3-b593-bca5164159b9	2025-09-17 00:00:00	11:00	renan silva	Bruno	558199185971@s.whatsapp.net	2025-09-15 00:00:00	Cabelo
5198d5b5-731d-4cf7-9b87-1e449ff43d1e	2025-09-16 00:00:00	14:00	joão lucas	Bruno	558182601936@s.whatsapp.net	2025-09-15 00:00:00	Cabelo
77be1c85-e0d4-4ed5-a373-4b25558fbecc	2025-09-16 00:00:00	14:40	heitor	Bruno	558182601936@s.whatsapp.net	2025-09-15 00:00:00	Cabelo
7d68edcc-b00d-46e9-b767-d2bd872e3af5	2025-09-20 00:00:00	11:20	bruno	Bruno	558189873832@s.whatsapp.net	2025-09-15 00:00:00	Barba
7a2f9410-1f7a-4879-b28c-9095c87f3cb3	2025-09-17 00:00:00	09:00	joão danielson	Bruno	558196702254@s.whatsapp.net	2025-09-15 00:00:00	Cabelo+Barba
063425f7-7bfa-4102-8e8e-189e4256f670	2025-09-19 00:00:00	09:20	fabio cria	Wallyson	5521980058628@s.whatsapp.net	2025-09-15 00:00:00	Cabelo
6509171c-5ba7-41a2-b6de-0cf1777addbc	2025-09-16 00:00:00	16:00	fernando correia da silva	Wallyson	558199732471@s.whatsapp.net	2025-09-16 00:00:00	Cabelo
2fa4f751-0359-4142-a06c-82b1b60ab224	2025-09-19 00:00:00	14:40	dubolo	Wallyson	558196647899@s.whatsapp.net	2025-09-16 00:00:00	Cabelo+Sobrancelha
1bf76828-893e-4e39-8e9c-5b9dc83b89f0	2025-09-17 00:00:00	18:40	carlos henrique	Wallyson	558197954525@s.whatsapp.net	2025-09-16 00:00:00	Cabelo
05a486f3-c24b-40aa-aa14-6214106bbf2f	2025-09-17 00:00:00	16:00	mauricio	Wallyson	558197954525@s.whatsapp.net	2025-09-16 00:00:00	Cabelo
467e747c-46b9-44ac-a93b-33e50a2ad823	2025-09-19 00:00:00	19:20	Fabrício 	Wallyson	local	2025-09-16 10:39:10.788	Cabelo
d6c6698d-f79a-4bcb-acad-0bb5239ed57e	2025-09-16 00:00:00	13:20	Wilson 	Wallyson	local	2025-09-16 10:40:08.752	Cabelo
5539570c-af3f-40d6-bfdb-cc4fd74203a1	2025-09-17 00:00:00	13:20	paulo césar	Bruno	558182758461@s.whatsapp.net	2025-09-16 00:00:00	Cabelo
4ae9178b-da8c-423c-ade1-7d460b92db3c	2025-09-19 00:00:00	08:00	elysson	Wallyson	558199697267@s.whatsapp.net	2025-09-16 00:00:00	Cabelo+Sobrancelha
7bb7b71a-6c5b-4b28-9336-8993ac847949	2025-09-16 00:00:00	11:20	henrique	Wallyson	558171101790@s.whatsapp.net	2025-09-16 00:00:00	Cabelo
8a0cfbba-f191-4685-a7bb-a26c9fa262df	2025-09-16 00:00:00	16:00	guilherme	Bruno	558192973085@s.whatsapp.net	2025-09-16 00:00:00	Cabelo+Sobrancelha
e37382a4-ee60-47e7-9423-3829b6b35bed	2025-09-22 00:00:00	18:00	pedro augusto	Bruno	558171185174@s.whatsapp.net	2025-09-16 00:00:00	Cabelo
293cf7b5-30c5-4fbb-aa7b-2a8e81d29585	2025-09-22 00:00:00	16:40	gláucio	Wallyson	558187255411@s.whatsapp.net	2025-09-16 00:00:00	Cabelo
fcf10aa2-64fc-4639-9f91-ef5c1a35c08e	2025-09-22 00:00:00	13:20	joão pedro campos	Bruno	558196073970@s.whatsapp.net	2025-09-16 00:00:00	Cabelo+Barba
78a1fb09-eab5-4759-8dcd-5cae98589720	2025-09-16 00:00:00	13:20	Indisponivel	Bruno	Indisponivel	2025-09-16 15:48:50.411	
a64df239-7da1-4315-966c-a1074547b15d	2025-09-16 00:00:00	14:40	heron	Wallyson	5581920018112@s.whatsapp.net	2025-09-16 00:00:00	Cabelo+Barba
85c3e5a8-7eb9-4646-bddd-3f5b3e7d761d	2025-09-17 00:00:00	11:40	hatus	Bruno	558199706416@s.whatsapp.net	2025-09-16 00:00:00	Cabelo+Barba
168b9cae-0322-497d-a05c-b54f1714dc39	2025-09-19 00:00:00	17:20	thiago souza	Wallyson	23691073212494@lid	2025-09-16 00:00:00	Cabelo+Barba
3b469dd5-705d-4015-8ffb-388bcdcc3bac	2025-09-17 00:00:00	16:40	mateus oliveira	Wallyson	558186880205@s.whatsapp.net	2025-09-16 00:00:00	Cabelo+Barba
0284808c-b179-41f6-9e4f-21ccfc6af982	2025-09-20 00:00:00	08:00	Cleiton 	Wallyson	local	2025-09-16 18:17:22.596	Cabelo
d06276fe-7084-4ef1-b9b8-786f5af0c05d	2025-09-19 00:00:00	20:00	Júnior 	Wallyson	local	2025-09-16 18:18:35.354	Cabelo
b3cc48ae-3767-439a-89e8-36c6010f168b	2025-09-20 00:00:00	09:20	márcio	Wallyson	558199069172@s.whatsapp.net	2025-09-16 00:00:00	Cabelo
f0111c39-db57-4d85-a854-6c1825f74e54	2025-09-23 00:00:00	11:00	jan	Bruno	558179136535@s.whatsapp.net	2025-09-16 00:00:00	Cabelo+Sobrancelha
1628eb23-860b-4c9a-a6b8-abf547285868	2025-09-16 00:00:00	16:40	jorge miguel	Wallyson	558197887918@s.whatsapp.net	2025-09-16 00:00:00	Cabelo
edc7b457-dc69-4491-9d5a-304d423daab4	2025-09-20 00:00:00	11:20	Júnior 	Wallyson	local	2025-09-16 19:03:03.169	Cabelo
4d2ef14e-8036-4f5e-9863-731dded55d58	2025-09-20 00:00:00	12:00	Gabriel 	Wallyson	local	2025-09-16 19:03:15.787	Cabelo
1bf2a3b9-4b9c-410a-aa79-e8b29f608009	2025-09-22 00:00:00	17:20	denilson	Bruno	558197084296@s.whatsapp.net	2025-09-16 00:00:00	Cabelo+Barba
84f15d1c-ff17-48e7-bf82-087979d362d2	2025-09-17 00:00:00	15:20	paulo césar	Wallyson	558195254306@s.whatsapp.net	2025-09-16 00:00:00	Cabelo
67f9c050-f05f-4ca3-a602-9c2783d59b41	2025-09-18 00:00:00	15:20	Juninho compadre 	Wallyson	local	2025-09-16 23:52:50.353	Cabelo+Barba
2e7c0971-137c-4285-a201-bcd479429a76	2025-09-25 00:00:00	10:20	mácio	Bruno	88394822631444@lid	2025-09-16 00:00:00	Cabelo
b1d304c7-3f8b-44dd-8ca1-f799408459b6	2025-09-20 00:00:00	14:00	Allysson 	Wallyson	local	2025-09-17 10:20:10.95	Cabelo
74dca88d-6428-408e-8f38-f8f9af65d53b	2025-09-19 00:00:00	10:40	Lucas fotógrafo 	Wallyson	local	2025-09-17 10:22:11.973	Cabelo
86b2455b-9ae3-4d0e-8d9e-094761ae083a	2025-09-18 00:00:00	14:40	Érika 	Wallyson	local	2025-09-17 11:06:19.06	Cabelo
5d737221-8181-48dd-86bf-5ff2c62a6afe	2025-09-19 00:00:00	16:40	ryan valério	Wallyson	69153402691745@lid	2025-09-17 00:00:00	Barba
023a4dad-3105-45cd-b9a7-8365b7357640	2025-09-17 00:00:00	08:40	Marcado 	Wallyson	local	2025-09-17 11:29:58.478	Cabelo
15d48eb7-b168-4453-a4a4-de189499fa50	2025-09-19 00:00:00	16:00	Zé neto 	Wallyson	local	2025-09-17 11:36:00.96	Cabelo
b52eeca4-e601-44a7-9ef7-e55cb53d2e98	2025-09-17 00:00:00	09:20	Marcado 	Wallyson	local	2025-09-17 11:51:05.769	Cabelo
d8689168-c4c9-4ebe-9294-4086a1919d06	2025-09-17 00:00:00	14:40	samuel	Wallyson	558196448583@s.whatsapp.net	2025-09-17 00:00:00	Cabelo
e77f7dd2-dd86-4fcd-8fd0-b6796955b1fa	2025-09-20 00:00:00	10:40	elivalter (luan)	Bruno	558196631822@s.whatsapp.net	2025-09-17 00:00:00	Cabelo
3e2dab2a-86c0-437d-bf67-068c34ebcbab	2025-09-20 00:00:00	15:20	mateus guerra	Bruno	558199987381@s.whatsapp.net	2025-09-17 00:00:00	Cabelo
25c5028f-9b4a-4491-b25c-6750b690a1bd	2025-09-20 00:00:00	08:40	daniel queiroz	Bruno	558181473848@s.whatsapp.net	2025-09-17 00:00:00	Cabelo
9d7da075-b821-4da2-b992-36e5dd3397e7	2025-09-18 00:00:00	10:40	josé henrique	Wallyson	558182163068@s.whatsapp.net	2025-09-17 00:00:00	Cabelo
03718e26-2fa7-48ab-98b3-c4faaec87507	2025-09-22 00:00:00	18:40	josé rafael	Bruno	558197031839@s.whatsapp.net	2025-09-17 00:00:00	Cabelo
5217568c-0cf6-48ff-b3f7-85e3071cba97	2025-09-27 00:00:00	08:00	pedro	Wallyson	40166651633741@lid	2025-09-21 00:00:00	Cabelo
5d31f6c2-bd13-41b0-b28c-5c92a04c5a96	2025-09-23 00:00:00	18:00	Mayrlon	Wallyson	local	2025-09-22 12:24:36.029	Cabelo
72c48cac-60cd-4a1a-b368-668a221ad48a	2025-09-20 00:00:00	18:00	gustavo	Wallyson	558196111653@s.whatsapp.net	2025-09-17 00:00:00	Cabelo+Sobrancelha
436a9f6d-b74f-4224-8b11-61da792f27c9	2025-09-22 00:00:00	14:40	caio henrique	Bruno	558181410909@s.whatsapp.net	2025-09-18 00:00:00	Cabelo
2d170f9a-1f2b-49e9-a1f0-b6fdc9b36a65	2025-09-18 00:00:00	11:20	Lucas 	Wallyson	local	2025-09-18 10:22:27.749	Cabelo
84d7af3e-e2b8-44af-94be-495fc0b67a94	2025-09-23 00:00:00	17:20	Wendel 	Wallyson	local	2025-09-18 10:23:43.413	Cabelo
c4a99bc9-2c80-4ba5-b5ca-569333e1a8bb	2025-09-18 00:00:00	09:20	lucas	Wallyson	558197326785@s.whatsapp.net	2025-09-18 00:00:00	Cabelo
646feb87-caa6-4c14-b9b4-e3e383e643e2	2025-09-20 00:00:00	08:00	breno	Bruno	558198437880@s.whatsapp.net	2025-09-18 00:00:00	Cabelo+Sobrancelha
eaedb17a-7fe2-4be8-983f-3dc083f502f4	2025-09-19 00:00:00	08:40	Marcado 	Wallyson	local	2025-09-18 14:20:35.439	Cabelo
fdf05da2-99d7-44ce-a695-dad2a326906b	2025-09-20 00:00:00	08:40	claudio figueiredo	Wallyson	202787501646016@lid	2025-09-18 00:00:00	Cabelo+Sobrancelha
71e598eb-1e4b-47af-a32d-0b3c2d51a5ac	2025-09-22 00:00:00	16:40	josé kaio	Bruno	558197806738@s.whatsapp.net	2025-09-18 00:00:00	Cabelo+Sobrancelha
510614b3-9897-4737-82e5-7180bae033eb	2025-09-19 00:00:00	20:00	Valney e Davi 	Bruno	local	2025-09-18 18:10:08.583	Cabelo
aff28ffd-76c2-4597-97fc-edd32ab6fc61	2025-09-19 00:00:00	11:20	rafael fernandes	Wallyson	246037218353305@lid	2025-09-18 00:00:00	Cabelo+Barba
0bd45af3-35c1-47c0-8c46-44d9b0ad4460	2025-09-20 00:00:00	10:40	Miguel 	Wallyson	local	2025-09-18 19:55:57.072	Cabelo
4cdb1018-e0a2-4fa9-9ab3-bea4cee53d88	2025-09-22 00:00:00	17:20	Noa 	Wallyson	local	2025-09-18 22:06:54.752	Cabelo
d1533b51-d448-41b0-af0f-bf65e7914b5d	2025-10-03 00:00:00	18:40	Matheus 	Wallyson	local	2025-09-18 22:43:42.177	Cabelo+Barba
959d7a91-a563-4a4a-bc9e-680aa11c9177	2025-09-19 00:00:00	14:00	Ocupado	Bruno	local	2025-09-18 23:54:30.296	Cabelo
53c9598c-a6e5-4101-91c7-c55e46d78dfa	2025-09-19 00:00:00	16:00	Ocupado	Bruno	local	2025-09-18 23:54:43.905	Cabelo
658a0042-bdc9-4ca7-b998-2e37b3da91a6	2025-09-26 00:00:00	13:20	bruno	Bruno	558181317634@s.whatsapp.net	2025-09-19 00:00:00	Cabelo+Sobrancelha
4be20b0b-33a2-46ad-84dc-092be4d721fa	2025-09-20 00:00:00	10:00	Gelson 	Wallyson	local	2025-09-19 11:01:16.686	Cabelo
75e6b769-2127-46f5-9a24-429210c378f8	2025-09-23 00:00:00	09:00	pedro emanuel gomes da silva	Bruno	558198721730@s.whatsapp.net	2025-09-19 00:00:00	Cabelo
e391a0af-5dca-4569-8d88-b1cf971aa928	2025-09-20 00:00:00	13:20	edinho	Wallyson	558198615843@s.whatsapp.net	2025-09-19 00:00:00	Cabelo
183d2831-2839-425f-9139-975a61bc5d48	2025-09-22 00:00:00	16:00	td bem com vc?	Bruno	558198296294@s.whatsapp.net	2025-09-19 00:00:00	Cabelo
c1f58003-4986-436d-8e99-3a2572fdab9a	2025-09-27 00:00:00	14:40	luan	Bruno	558196003977@s.whatsapp.net	2025-09-19 00:00:00	Cabelo+Sobrancelha
566f784f-04bb-4116-b883-cf6c332d8156	2025-09-23 00:00:00	08:40	wallacy	Wallyson	90104202809537@lid	2025-09-19 00:00:00	Cabelo
f12250d4-c648-4380-b912-fa1d9d10b14b	2025-09-20 00:00:00	16:00	Italo 	Wallyson	local	2025-09-19 18:46:21.189	Cabelo
a980d886-404d-4002-8dcf-08c7b8ce2fa7	2025-09-23 00:00:00	10:20	andrey	Bruno	558195342893@s.whatsapp.net	2025-09-19 00:00:00	Cabelo
aa555862-5f51-4b59-8711-35718faa7928	2025-09-22 00:00:00	13:20	felipe	Wallyson	558181451150@s.whatsapp.net	2025-09-19 00:00:00	Cabelo+Sobrancelha
ca7c3718-714b-4afd-965a-ed44ad38962f	2025-09-20 00:00:00	17:20	Marcílio 	Wallyson	local	2025-09-20 02:12:42.04	Cabelo
aa30ef8c-d1c2-4072-bf78-f1347d123599	2025-09-20 00:00:00	15:20	Robertinho 	Wallyson	local	2025-09-20 02:13:55.676	Cabelo
2b7f6e6a-139c-4a5b-9e57-c556fc4d823c	2025-09-20 00:00:00	16:40	calebe	Wallyson	558196987419@s.whatsapp.net	2025-09-20 00:00:00	Cabelo
5db0aca1-0fb7-4629-9ee4-291be71e51ff	2025-09-23 00:00:00	09:40	carlos daniel do carmo santos	Bruno	558198034222@s.whatsapp.net	2025-09-20 00:00:00	Cabelo+Barba
ee1dc817-afe5-4c34-b908-936e5527ba26	2025-09-27 00:00:00	08:00	tiago	Bruno	40166651633741@lid	2025-09-20 00:00:00	Cabelo
44d99a9c-6779-4a8f-ad3c-018c4caea229	2025-09-24 00:00:00	11:40	joão	Bruno	558195216795@s.whatsapp.net	2025-09-20 00:00:00	Cabelo
7b044618-6086-455f-8ba9-2b3757559616	2025-09-26 00:00:00	08:00	wilson	Wallyson	558197148928@s.whatsapp.net	2025-09-20 00:00:00	Cabelo+Sobrancelha
93f4aeb6-797f-4d3f-9c80-06082d6aa552	2025-09-22 00:00:00	09:00	arthur	Wallyson	558194257577@s.whatsapp.net	2025-09-20 00:00:00	Cabelo
3e1c913a-fd40-4df0-8853-815f1cdf2165	2025-09-26 00:00:00	15:20	weslley	Bruno	558197215641@s.whatsapp.net	2025-09-20 00:00:00	Cabelo
0ed4feb3-efcf-4070-9460-ff6796b108c8	2025-09-23 00:00:00	11:20	horlean	Wallyson	558281363560@s.whatsapp.net	2025-09-20 00:00:00	Cabelo+Sobrancelha
194d8bbb-7baa-4f45-9837-fef853e885c2	2025-09-20 00:00:00	14:40	Ocupado 	Bruno	local	2025-09-20 15:04:27.811	Cabelo
1a1e274d-1a02-4e8a-89e6-27c5903c9f1e	2025-09-24 00:00:00	14:00	vicentw	Bruno	558197192758@s.whatsapp.net	2025-09-20 00:00:00	Cabelo+Sobrancelha
4786f2be-9f7d-466f-9637-d87a1640c2c0	2025-10-03 00:00:00	18:00	Pedrão 	Wallyson	local	2025-09-20 18:20:35.519	Cabelo+Barba
a2111cb9-944b-4c47-9a63-06c1dfacf441	2025-09-26 00:00:00	19:20	jônata davi	Bruno	558199773748@s.whatsapp.net	2025-09-20 00:00:00	Cabelo
c34f1d2f-dab6-4122-8387-21219b6587c0	2025-09-22 00:00:00	18:00	shérgyo	Wallyson	558189870188@s.whatsapp.net	2025-09-20 00:00:00	Cabelo
726ff982-a89c-476b-99a0-010bd250689e	2025-09-22 00:00:00	09:40	paulo	Wallyson	558197947166@s.whatsapp.net	2025-09-21 00:00:00	Cabelo
2f03f82a-276a-4702-81ec-19a3062b7ae7	2025-09-22 00:00:00	10:20	natacha	Wallyson	558197947166@s.whatsapp.net	2025-09-21 00:00:00	Cabelo
840820eb-5c92-44e8-86cf-e70cd96e2304	2025-09-22 00:00:00	14:00	mário sergio	Bruno	558199201610@s.whatsapp.net	2025-09-21 00:00:00	Cabelo
b75ae808-bf64-4c17-b7ab-0b2ee0585836	2025-09-26 00:00:00	16:00	paulo henrique	Bruno	558174004953@s.whatsapp.net	2025-09-21 00:00:00	Cabelo+Sobrancelha
7133f06c-9e90-4853-afa0-9be887cbbefb	2025-09-23 00:00:00	16:40	lucas gabriel	Wallyson	558199333703@s.whatsapp.net	2025-09-21 00:00:00	Cabelo+Sobrancelha
bb157939-8b9d-46f1-9cf1-7f96911d7df4	2025-09-27 00:00:00	13:20	anthony rodrigues	Bruno	558199046289@s.whatsapp.net	2025-09-22 00:00:00	Cabelo+Sobrancelha
062ba27a-53e8-4114-ac32-a5dd65e394b3	2025-09-27 00:00:00	14:00	Anthony botox 	Bruno	local	2025-09-22 12:25:33.52	Cabelo
8880cfbf-2b75-4a52-971c-c6345e0aa360	2025-09-27 00:00:00	10:00	wesley	Bruno	558181016662@s.whatsapp.net	2025-09-22 00:00:00	Cabelo+Sobrancelha
f6dbb308-635f-4001-8d37-d1232455f6d3	2025-09-26 00:00:00	15:20	Heitor 	Wallyson	local	2025-09-22 14:03:46.684	Cabelo
9a8bdc31-811b-4c6b-8843-30312dda5b82	2025-09-26 00:00:00	16:40	Caio ( reforço) pago	Bruno	local	2025-09-22 15:36:36.622	Cabelo
4cb9f1df-78c3-4fcb-a3ae-1ae92c3cac1b	2025-09-23 00:00:00	13:20	Allysson 	Wallyson	local	2025-09-22 16:04:19.042	Cabelo
13be3b5b-2c16-483d-9ec3-9e32eac82959	2025-09-27 00:00:00	11:20	gabriel nascimento	Bruno	558181670651@s.whatsapp.net	2025-09-22 00:00:00	Cabelo
1816293a-075a-4b15-bf0d-6432c7e87f38	2025-09-27 00:00:00	12:00	joão pedro	Bruno	558181670651@s.whatsapp.net	2025-09-22 00:00:00	Cabelo
89143bd6-8657-4f5a-9901-da307f09a1b8	2025-09-26 00:00:00	16:40	fernando	Wallyson	558199410150@s.whatsapp.net	2025-09-22 00:00:00	Cabelo+Sobrancelha
d3fe412b-f8e2-4a9c-85c3-f3857bb2e932	2025-09-25 00:00:00	11:00	pedro henrique	Bruno	558198446899@s.whatsapp.net	2025-09-22 00:00:00	Cabelo
a75ae847-c4f9-4aee-9cae-634a30800196	2025-10-18 00:00:00	15:20	Wellington adv	Bruno	local	2025-09-22 20:03:08.746	Cabelo
4154739c-7d19-4c70-8253-f6efe5a145b2	2025-10-18 00:00:00	16:00	Wellington adv	Bruno	local	2025-09-22 20:03:25.586	Cabelo
4ff96c1a-f612-4f0d-8d66-a6595083f27f	2025-09-27 00:00:00	08:40	fabiano	Bruno	558194610556@s.whatsapp.net	2025-09-22 00:00:00	Cabelo+Barba
6476e27f-d155-4170-b80b-6f440f2d345a	2025-09-23 00:00:00	09:20	marcos cipriano	Wallyson	558199770448@s.whatsapp.net	2025-09-22 00:00:00	Cabelo
bf305df2-55f1-4597-98ca-07a2fbf19345	2025-09-24 00:00:00	09:40	sérgio	Bruno	558198288830@s.whatsapp.net	2025-09-22 00:00:00	Barba
6fa31876-d6ac-4629-9b37-2fa36f1eed6a	2025-09-23 00:00:00	14:00	dembele	Wallyson	558197279446@s.whatsapp.net	2025-09-22 00:00:00	Cabelo+Sobrancelha
a5d0b61c-b139-40b3-927b-09ac870a33a7	2025-09-25 00:00:00	09:40	marcos rodrigues	Bruno	558196681292@s.whatsapp.net	2025-09-22 00:00:00	Cabelo
43a9f4eb-2270-4fe9-ad68-49b3b283697b	2025-09-24 00:00:00	18:00	emídio arruda	Bruno	558181606802@s.whatsapp.net	2025-09-22 00:00:00	Cabelo
5a7ade14-fc2f-4bbe-87da-0c6090d21c1b	2025-09-24 00:00:00	11:00	rennan	Bruno	558196502964@s.whatsapp.net	2025-09-22 00:00:00	Cabelo+Barba
71624377-b6fa-409d-87c0-ee92d7c3855b	2025-09-23 00:00:00	18:40	jorge	Wallyson	558199658478@s.whatsapp.net	2025-09-22 00:00:00	Cabelo+Sobrancelha
dffecc62-3953-4a76-b797-59a070203cd0	2025-09-25 00:00:00	16:40	miguel	Bruno	558195712225@s.whatsapp.net	2025-09-23 00:00:00	Cabelo
6d2069c5-04a7-4e84-a113-ef6fa2d2828a	2025-09-24 00:00:00	13:20	manoel neto	Bruno	558195055212@s.whatsapp.net	2025-09-23 00:00:00	Cabelo+Barba
49420e18-387d-4aae-9ae7-182ce87dd6af	2025-09-26 00:00:00	16:00	mathias	Wallyson	558187494403@s.whatsapp.net	2025-09-23 00:00:00	Cabelo+Barba
3c8430fb-8f93-4d9c-ad15-6217bf7a157a	2025-09-23 00:00:00	10:40	laércio	Wallyson	558196620184@s.whatsapp.net	2025-09-23 00:00:00	Cabelo
53db03a2-6a38-4744-8eeb-8d86e40bbed2	2025-09-24 00:00:00	17:20	25/09/2025	Wallyson	558196936841@s.whatsapp.net	2025-09-23 00:00:00	Cabelo
0493720b-dc81-4525-b092-9e0121aa20f4	2025-09-25 00:00:00	17:20	eduarda	Wallyson	558196936841@s.whatsapp.net	2025-09-23 00:00:00	Cabelo
403b2fbb-44b7-4770-a377-6576b6668504	2025-09-24 00:00:00	17:20	pedro	Bruno	558192919702@s.whatsapp.net	2025-09-23 00:00:00	Cabelo
85f85053-4eca-4207-ad39-b333d7d642c7	2025-09-23 00:00:00	16:00	Michel 	Wallyson	local	2025-09-23 13:03:17.045	Cabelo
52dc2e71-e72b-4d69-a0ba-ca49adb99173	2025-09-26 00:00:00	14:00	Heitor 	Wallyson	local	2025-09-23 13:44:23.209	Cabelo
0d8a81ea-8973-40f2-af83-dac040c774a4	2025-09-26 00:00:00	18:00	letícia	Wallyson	558182158768@s.whatsapp.net	2025-09-23 00:00:00	Cabelo
423e03e5-8dad-43d9-a18d-b2b4295673f3	2025-09-27 00:00:00	15:20	josé júnior de souza	Bruno	558182704048@s.whatsapp.net	2025-09-23 00:00:00	Cabelo
07c50879-89fa-4b9a-85aa-7f1021829605	2025-09-24 00:00:00	14:40	esdras gabriel	Bruno	558198526844@s.whatsapp.net	2025-09-23 00:00:00	Cabelo+Barba
c8e4b1fc-d66b-4211-81c6-56e6f00b31d7	2025-09-24 00:00:00	16:40	arthur sales	Bruno	558197065270@s.whatsapp.net	2025-09-23 00:00:00	Cabelo
c2cfc640-2090-4171-9f7f-897b003f1298	2025-09-23 00:00:00	15:20	Marcado 	Wallyson	local	2025-09-23 18:10:43.099	Cabelo
69b9561f-73cf-485a-b71e-34fc0a3126a0	2025-09-24 00:00:00	13:20	gerdo	Wallyson	558196275453@s.whatsapp.net	2025-09-23 00:00:00	Cabelo
7c11d48b-a2aa-4fe5-8df6-4e7a5b65d26d	2025-09-25 00:00:00	18:40	pedro henrique	Bruno	558199160082@s.whatsapp.net	2025-09-23 00:00:00	Cabelo
763018d0-4947-4cb4-940d-5b5cf8887f5b	2025-09-25 00:00:00	11:40	Ítalo 	Bruno	local	2025-09-23 19:53:36.202	Cabelo
8599e102-b3d1-4254-b5d1-5b9360194ed2	2025-09-27 00:00:00	16:00	gabriel pedrosa	Bruno	558197699397@s.whatsapp.net	2025-09-23 00:00:00	Cabelo
2fc05488-2090-47e8-ba28-3fe53bdd971a	2025-09-24 00:00:00	15:20	Leandro luzes 	Bruno	local	2025-09-23 21:23:51.47	Cabelo
ff7c6690-f779-461f-ac7a-91999d6232a9	2025-09-24 00:00:00	16:00	Leandro corte 	Bruno	local	2025-09-23 21:24:06.853	Cabelo
cd4b3b71-9bdf-4588-8c73-5e87d2c8026e	2025-09-24 00:00:00	15:20	Mateus 	Wallyson	local	2025-09-23 21:25:01.708	Cabelo+Barba
399888d1-bcaa-4fcb-8ce2-3ca7150b6c73	2025-09-24 00:00:00	16:00	Bruno ( Fernanda ) 	Wallyson	local	2025-09-23 21:36:59.425	Cabelo
0b672abb-bea0-41e8-bf18-00dddc0aa785	2025-09-24 00:00:00	10:20	kaio carvalho	Bruno	558197839047@s.whatsapp.net	2025-09-23 00:00:00	Cabelo+Sobrancelha
738477e1-f167-4fdc-90f5-b5bc6a1a07c7	2025-10-01 00:00:00	18:40	victor	Bruno	558197610116@s.whatsapp.net	2025-09-23 00:00:00	Cabelo
5bdd0fe2-f883-4b54-a7e5-92b0189640e7	2025-09-26 00:00:00	17:20	renan	Bruno	558199282002@s.whatsapp.net	2025-09-23 00:00:00	Cabelo
09e2f3f1-b9c1-4583-83f4-15624bf1d5c3	2025-09-26 00:00:00	14:40	Hyuri 	Wallyson	local	2025-09-24 01:31:39.89	Cabelo
560c54d4-7849-4539-b3de-b4a68d7f8ee2	2025-10-01 00:00:00	16:00	felipe silva	Bruno	558179158954@s.whatsapp.net	2025-09-23 00:00:00	Cabelo
b10c53f5-461a-44b5-9ad8-b0eb32cc1a31	2025-09-24 00:00:00	09:00	Gabriel 	Bruno	local	2025-09-24 03:39:07.037	Cabelo
a76098e8-3129-4480-86ba-e1377f976572	2025-09-26 00:00:00	09:00	joão danielson	Bruno	558196702254@s.whatsapp.net	2025-09-24 00:00:00	Barba
d2cd2b88-e674-4e94-95b1-4b444ef3b05b	2025-09-25 00:00:00	16:00	romerio	Bruno	558198627331@s.whatsapp.net	2025-09-24 00:00:00	Cabelo+Barba
20c75a17-64cd-40c3-9b66-28916133f870	2025-09-26 00:00:00	09:40	erick apolloni	Bruno	558197051743@s.whatsapp.net	2025-09-24 00:00:00	Cabelo
293470e5-3276-4a40-987e-4d4bd2d9d1c8	2025-09-24 00:00:00	14:00	Marcílio 	Wallyson	local	2025-09-24 12:16:38.25	Cabelo
68990dbf-65c2-466e-bd8f-4ba9dbd93cdd	2025-09-25 00:00:00	18:00	Jaciel 	Wallyson	local	2025-09-24 12:18:45.928	Cabelo
3c438659-54f5-4df9-8506-f0f5e26999d1	2025-09-25 00:00:00	16:40	Wellington 	Wallyson	local	2025-09-24 12:24:22.882	Cabelo
3654aea8-1a25-4a5c-be58-f74a5646cb0e	2025-09-24 00:00:00	11:20	jefferson	Wallyson	558198266953@s.whatsapp.net	2025-09-24 00:00:00	Cabelo
47629213-c4ca-44e9-98ec-c96039df885d	2025-09-25 00:00:00	13:20	breno	Bruno	558198437880@s.whatsapp.net	2025-09-24 00:00:00	Cabelo+Sobrancelha
f3d31f68-a817-4b6b-b6ec-35e2e08b2474	2025-09-25 00:00:00	14:00	lucas	Bruno	558185469353@s.whatsapp.net	2025-09-24 00:00:00	Cabelo+Barba
bb8dfd03-0a68-4fbb-9a88-02198ceca249	2025-09-25 00:00:00	15:20	Cauã botox	Bruno	local	2025-09-24 14:31:44.15	Cabelo
7df5215b-9ee6-4cab-b868-981b2661d1b7	2025-09-24 00:00:00	18:40	Marcílio 	Wallyson	local	2025-09-24 14:54:55.481	Cabelo
24497c7c-bbb1-459e-889d-fad880bda35d	2025-09-26 00:00:00	11:20	vandro júnior	Wallyson	558196610362@s.whatsapp.net	2025-09-24 00:00:00	Cabelo
d16879ef-e3f1-42ee-b9a5-ef0e940b46cb	2025-09-26 00:00:00	10:20	tarcísio	Bruno	558185887456@s.whatsapp.net	2025-09-24 00:00:00	Cabelo
3571fbb6-0538-469f-a553-06a22f0c8520	2025-09-24 00:00:00	16:40	Jhon 	Wallyson	local	2025-09-24 17:22:59.892	Cabelo
fafb6bf6-fa8e-42f8-a8e6-88d6a6931019	2025-09-25 00:00:00	14:40	joão rommel	Bruno	558182224217@s.whatsapp.net	2025-09-24 00:00:00	Cabelo
7e6652fc-7a00-4cb5-9bd3-3d70ba5b1f75	2025-09-26 00:00:00	18:00	hatus	Bruno	558199706416@s.whatsapp.net	2025-09-24 00:00:00	Barba
7d413f5b-ff5c-4d3c-8c82-2f5816e9e86f	2025-09-26 00:00:00	14:40	pedro sérgio	Bruno	558197271391@s.whatsapp.net	2025-09-24 00:00:00	Cabelo
650b3d59-4b1c-4310-ae19-649e2a00416f	2025-09-26 00:00:00	20:00	luan victor	Wallyson	558181307345@s.whatsapp.net	2025-09-24 00:00:00	Cabelo+Sobrancelha
6a081029-5d23-46fe-8db3-df5ec844735f	2025-09-26 00:00:00	14:00	rafael melo	Bruno	558199365900@s.whatsapp.net	2025-09-24 00:00:00	Cabelo
77f751aa-4696-4e4d-a35c-0f8aae3fcbc3	2025-09-25 00:00:00	10:00	Adegilson 	Wallyson	local	2025-09-24 20:38:01.234	Cabelo
758e49af-7696-46c2-8042-bd930c053dae	2025-10-04 00:00:00	13:20	João caspa 	Wallyson	local	2025-09-24 20:40:26.977	Cabelo
3bde2b7a-b13d-4738-9fd2-8035f72ba28e	2025-09-26 00:00:00	18:40	allef ryan	Bruno	558195740243@s.whatsapp.net	2025-09-24 00:00:00	Cabelo
38c64310-5b5a-45a9-b80f-1a386a0c474a	2025-09-26 00:00:00	11:40	arthur	Bruno	558194115511@s.whatsapp.net	2025-09-24 00:00:00	Cabelo+Barba
509507ca-2b66-437c-911a-e6942ba117f9	2025-09-26 00:00:00	20:00	lucas josé	Bruno	558199311183@s.whatsapp.net	2025-09-24 00:00:00	Cabelo+Sobrancelha
58434dff-2b3e-4a4a-adbe-dd3ea4ec5496	2025-09-27 00:00:00	10:00	gabriel	Wallyson	558196236188@s.whatsapp.net	2025-09-24 00:00:00	Cabelo
9e3a1482-6e87-4879-bfd7-4def10759c1c	2025-09-29 00:00:00	14:00	joão marcello	Bruno	558196393507@s.whatsapp.net	2025-09-24 00:00:00	Cabelo
a2b4cffa-d44e-4507-ad18-06438a7a37e1	2025-09-25 00:00:00	08:00	fernando correia da silva	Wallyson	558199732471@s.whatsapp.net	2025-09-25 00:00:00	Cabelo
fd690d06-8915-47a2-acd9-63940612fa11	2025-09-25 00:00:00	18:40	marcos	Wallyson	558197806162@s.whatsapp.net	2025-09-25 00:00:00	Cabelo+Sobrancelha
6a87c224-bc45-4a90-ad5c-cb0e8eec2064	2025-09-25 00:00:00	08:40	Jhonata 	Wallyson	local	2025-09-25 10:57:34.22	Cabelo
2c2ca8f8-887b-4d79-8336-9e1b2403edc4	2025-09-27 00:00:00	14:00	carlos	Wallyson	558199700555@s.whatsapp.net	2025-09-25 00:00:00	Cabelo
5d0132e2-fc98-4805-9b44-291369ad8b0a	2025-09-25 00:00:00	11:20	caio	Wallyson	234939056451608@lid	2025-09-25 00:00:00	Cabelo+Barba
a2743f8f-e40b-4510-a9bb-ba48609068c5	2025-09-26 00:00:00	09:20	miguel	Wallyson	558181524707@s.whatsapp.net	2025-09-25 00:00:00	Cabelo
db2af530-a386-4b02-955d-e9c4c4c08cb9	2025-09-25 00:00:00	13:20	Marcado 	Wallyson	local	2025-09-25 13:31:08.453	Cabelo
89758051-e359-4a02-9966-c0db5b56a7d1	2025-09-25 00:00:00	14:00	Breno 	Wallyson	local	2025-09-25 14:03:01.36	Cabelo
dbbda63e-2a2c-4da3-a89c-1254771e7c3c	2025-09-25 00:00:00	14:40	bruno	Wallyson	558198567818@s.whatsapp.net	2025-09-25 00:00:00	Cabelo
39432e52-1a25-4aa1-bc0c-ebe7b7b29c1e	2025-09-25 00:00:00	15:20	heron	Wallyson	5581920018112@s.whatsapp.net	2025-09-25 00:00:00	Cabelo+Barba
6262600a-0618-4fce-8695-a4603b4e5a14	2025-09-26 00:00:00	11:00	Dorgyl 	Bruno	local	2025-09-25 15:37:14.847	Cabelo+Barba
f15bd7e5-e9a9-4674-941a-2314900bcf86	2025-09-29 00:00:00	15:20	cauã gabriel	Bruno	558199527666@s.whatsapp.net	2025-09-25 00:00:00	Cabelo
d7d7466f-343c-461d-b296-398e3325140e	2025-09-29 00:00:00	13:20	carlos	Bruno	558199353492@s.whatsapp.net	2025-09-25 00:00:00	Cabelo
46d75839-98a5-4e10-b976-8771682aa974	2025-09-26 00:00:00	08:40	césar	Wallyson	558197520499@s.whatsapp.net	2025-09-25 00:00:00	Cabelo+Sobrancelha
b709cbef-d9d2-42e4-b91c-026abaccc7cf	2025-09-26 00:00:00	10:00	miguel josé	Wallyson	558196843988@s.whatsapp.net	2025-09-25 00:00:00	Cabelo
2e712767-0576-4286-a55a-356d68aee334	2025-10-01 00:00:00	08:00	gabriel	Wallyson	42619296051334@lid	2025-09-26 00:00:00	Cabelo
2a937a4a-060c-4a29-b3d5-cefdd9958b8c	2025-09-27 00:00:00	11:20	levi gabriel	Wallyson	558199292453@s.whatsapp.net	2025-09-26 00:00:00	Cabelo
fb718a39-a081-4032-a23b-10961b57967a	2025-09-29 00:00:00	09:00	joão guilherme	Wallyson	558192101006@s.whatsapp.net	2025-09-26 00:00:00	Cabelo
50662146-03d2-459b-89c6-4da514d40ff0	2025-09-29 00:00:00	16:00	gabriel	Bruno	558192417684@s.whatsapp.net	2025-09-26 00:00:00	Cabelo+Sobrancelha
5afc1f2d-2221-4081-bf2c-c7485da686ee	2025-09-27 00:00:00	16:00	Vaninho 	Wallyson	local	2025-09-26 13:44:26.899	Cabelo+Barba
43dae45e-4e18-4780-b64f-948891b7b33c	2025-09-29 00:00:00	14:00	Carlos 	Wallyson	local	2025-09-26 14:08:31.349	Cabelo
ac80901f-381d-4122-9b71-a45757ba7b2b	2025-09-27 00:00:00	18:00	samuel	Wallyson	558196448583@s.whatsapp.net	2025-09-26 00:00:00	Cabelo
5135b347-966c-4d51-8abc-52b71095714f	2025-09-29 00:00:00	09:40	cláudio henrique	Wallyson	558188482085@s.whatsapp.net	2025-09-26 00:00:00	Cabelo
a60ed933-afc9-4151-a9b1-583e158d3e9c	2025-09-26 00:00:00	17:20	antonio medeiros frança lins	Wallyson	558171024799@s.whatsapp.net	2025-09-26 00:00:00	Cabelo+Sobrancelha
b4e7c0ac-9836-4034-918b-a3e24e9fc954	2025-09-30 00:00:00	19:20	fernando nutri smart	Bruno	558199948217@s.whatsapp.net	2025-09-26 00:00:00	Cabelo
8dbf2225-1a35-430a-9016-30ed7ad28ad7	2025-09-26 00:00:00	18:40	david callebe	Wallyson	558191447860@s.whatsapp.net	2025-09-26 00:00:00	Cabelo+Barba
251f8d41-c3ea-4c0e-8706-aec6ff272f16	2025-09-26 00:00:00	19:20	Maciel 	Wallyson	local	2025-09-26 19:53:38.732	Cabelo
07a91025-ede7-4954-923f-4c288511fce8	2025-09-27 00:00:00	16:40	luiz miguel	Wallyson	558198929820@s.whatsapp.net	2025-09-26 00:00:00	Cabelo
5e308bc9-60ef-477c-8bc2-9b0619a38afb	2025-09-27 00:00:00	13:20	gustavo	Wallyson	558198983986@s.whatsapp.net	2025-09-26 00:00:00	Cabelo
33e23eca-0faa-4b86-aff0-3e5cf1eb288c	2025-09-27 00:00:00	09:20	pedro lima	Wallyson	558196440108@s.whatsapp.net	2025-09-26 00:00:00	Cabelo
e070727a-0aa6-4f2f-91a3-4e7ee2bb4cf6	2025-09-27 00:00:00	10:40	júlio césar	Wallyson	558196440108@s.whatsapp.net	2025-09-26 00:00:00	Cabelo+Sobrancelha
d2631298-070e-4348-8098-46ad25a39c4b	2025-09-27 00:00:00	08:40	carlos	Wallyson	558192507833@s.whatsapp.net	2025-09-26 00:00:00	Cabelo
f6b3c9d8-08ce-425c-808c-95013b3cd046	2025-09-27 00:00:00	17:20	Davi 	Wallyson	local	2025-09-26 22:45:27.48	Cabelo
0680e242-e994-4269-a410-62d1f1616be4	2025-09-29 00:00:00	17:20	fernando	Bruno	558196035269@s.whatsapp.net	2025-09-26 00:00:00	Cabelo
23c45dbb-6c0d-425c-bf31-4a097a153a3b	2025-10-01 00:00:00	14:00	luiz felipe	Bruno	558196969019@s.whatsapp.net	2025-09-26 00:00:00	Cabelo+Sobrancelha
7a04634b-a6bc-4e7f-b683-6cb4a409be7d	2025-09-27 00:00:00	14:40	Natan 	Wallyson	local	2025-09-27 01:39:19.114	Cabelo+Barba
feccd032-6932-4b91-be69-20e7e808ac7d	2025-09-29 00:00:00	13:20	samuel barbosa	Wallyson	558197939904@s.whatsapp.net	2025-09-26 00:00:00	Cabelo+Sobrancelha
1c579f34-1360-4836-9dd3-eb73496ecfdd	2025-09-27 00:00:00	12:00	Marcado 	Wallyson	local	2025-09-27 11:00:49.801	Cabelo
e2894cdf-57cc-47be-91e1-833854017c8b	2025-09-27 00:00:00	15:20	alysson	Wallyson	558195985705@s.whatsapp.net	2025-09-27 00:00:00	Cabelo
f13d77dc-237d-46ef-af20-b244d516778c	2025-09-29 00:00:00	18:00	Emerson ( cunhado Maurício ) 	Bruno	local	2025-09-27 14:40:39.576	Cabelo
e0a9f1ef-f6f5-4b96-a260-db34415e113e	2025-09-29 00:00:00	17:20	alexsander	Wallyson	558199337045@s.whatsapp.net	2025-09-27 00:00:00	Cabelo
74cfd4e6-a0e0-49f6-804f-9429fda92018	2025-09-29 00:00:00	14:40	Elias 	Wallyson	local	2025-09-27 21:44:15.265	Cabelo+Sobrancelha
e6a504dd-abaf-4450-9791-1dabe461c14c	2025-09-29 00:00:00	14:40	josé junior de souza	Bruno	558182704048@s.whatsapp.net	2025-09-28 00:00:00	Cabelo
a469001c-db9a-4f2c-9008-49d46558c12d	2025-10-03 00:00:00	17:20	lucas josé	Bruno	558199311183@s.whatsapp.net	2025-09-28 00:00:00	Cabelo+Sobrancelha
a5d61268-8ff6-4d6d-8966-96cc842cb188	2025-09-29 00:00:00	18:40	gonzaga neto	Bruno	558198514795@s.whatsapp.net	2025-09-28 00:00:00	Cabelo+Sobrancelha
7a7bee56-7907-4e50-8ea8-2f2d8e14d694	2025-09-29 00:00:00	16:40	Ulisses 	Bruno	local	2025-09-28 19:46:12.875	Cabelo
5c28a467-0861-4428-8ae2-975f5bfd3a49	2025-10-01 00:00:00	13:20	paulo	Bruno	558192692547@s.whatsapp.net	2025-09-28 00:00:00	Cabelo
f8c053d9-7df0-489b-9b09-c4ad112ff7ec	2025-10-04 00:00:00	15:20	heytor	Bruno	558197714625@s.whatsapp.net	2025-09-28 00:00:00	Cabelo+Barba
a0bfc645-9715-4dc9-ab20-c383156c8915	2025-10-01 00:00:00	16:40	antonio neto	Bruno	558196049253@s.whatsapp.net	2025-09-28 00:00:00	Cabelo+Sobrancelha
04aac74d-c819-47b3-8b2e-3f1a749833f7	2025-10-01 00:00:00	17:20	joão da costa cabral	Bruno	558182968875@s.whatsapp.net	2025-09-29 00:00:00	Cabelo
342f396b-daf6-4725-ad3f-ae223de3b452	2025-09-29 00:00:00	15:20	pedro sérgio	Wallyson	558197271391@s.whatsapp.net	2025-09-29 00:00:00	Cabelo
b2a01ebb-26c5-4539-a650-9b892296a165	2025-10-03 00:00:00	18:40	maicon	Bruno	558194686969@s.whatsapp.net	2025-09-29 00:00:00	Cabelo
a6b18c84-9005-46b5-9ac1-2827a2f332fd	2025-09-29 00:00:00	18:00	Leandro 	Wallyson	local	2025-09-29 12:02:53.204	Cabelo+Barba
5b700a7f-0f11-433e-bca9-832418ad5d77	2025-09-30 00:00:00	16:00	lucas	Bruno	558188204134@s.whatsapp.net	2025-09-29 00:00:00	Cabelo
7d290c1a-5804-42b0-84f5-99d2acc30c8a	2025-09-30 00:00:00	13:20	gustavo nascimento	Bruno	558181670651@s.whatsapp.net	2025-09-29 00:00:00	Cabelo
34211390-7245-46c8-adc5-da3128c9cdb9	2025-09-29 00:00:00	10:20	jonas	Wallyson	558196647899@s.whatsapp.net	2025-09-29 00:00:00	Cabelo
29119d6e-0539-415f-b8e1-0c12066b37ef	2025-09-29 00:00:00	16:00	nilson fonseca	Wallyson	558189252475@s.whatsapp.net	2025-09-29 00:00:00	Cabelo
080c6b35-9b4d-4a69-a94e-14dded285147	2025-10-03 00:00:00	14:40	joao vitor	Bruno	558198490038@s.whatsapp.net	2025-09-29 00:00:00	Cabelo
453d67e2-d11d-4e34-a4ca-999cf7cd038b	2025-10-03 00:00:00	14:00	marcel	Bruno	558198490038@s.whatsapp.net	2025-09-29 00:00:00	Cabelo
1aa63288-7139-4cea-816d-1f41534226c7	2025-10-01 00:00:00	15:20	joao lucas	Bruno	558196372803@s.whatsapp.net	2025-09-29 00:00:00	Cabelo+Sobrancelha
c2404cb1-139b-41d6-bb9f-7a133265fbb6	2025-10-01 00:00:00	14:40	caio lopes	Bruno	558192669921@s.whatsapp.net	2025-09-29 00:00:00	Cabelo+Sobrancelha
81a3491f-af90-40d0-8241-8d75d29a1e3e	2025-09-29 00:00:00	16:40	Marcado 	Wallyson	local	2025-09-29 17:22:32.171	Cabelo
ec2ae72d-5ef4-4ccb-b2df-047521e39e00	2025-09-30 00:00:00	16:40	kaue	Wallyson	558199937689@s.whatsapp.net	2025-09-29 00:00:00	Cabelo+Sobrancelha
02955cb2-62cd-4784-97d4-b781d81283c5	2025-09-30 00:00:00	18:40	Dorgyl	Bruno	local	2025-09-29 18:57:23.936	Cabelo+Barba
884a5147-d36c-402d-9753-50ab8efb3198	2025-09-30 00:00:00	14:40	flávio santos da costa.	Bruno	558197559623@s.whatsapp.net	2025-09-29 00:00:00	Cabelo
a58b9b7f-20f3-4401-b6d9-8f19b4def0ad	2025-09-30 00:00:00	16:00	ruan	Wallyson	558199445445@s.whatsapp.net	2025-09-29 00:00:00	Cabelo
8bbf9487-4cb5-4464-ad16-cdc3e829e35c	2025-10-03 00:00:00	09:00	jefferson	Bruno	558196311311@s.whatsapp.net	2025-09-29 00:00:00	Cabelo
dc536318-f485-436d-8981-225c88e99f2c	2025-10-06 00:00:00	15:20	joao lucas	Bruno	558189785404@s.whatsapp.net	2025-09-30 00:00:00	Cabelo+Sobrancelha
6430df0d-0d31-4394-866a-654e744fa949	2025-10-02 00:00:00	14:40	joão pedro ( elma )	Wallyson	558181323380@s.whatsapp.net	2025-09-30 00:00:00	Cabelo
1eeb1f74-af15-4a1d-a216-f839de9ea9e2	2025-10-02 00:00:00	17:20	keven	Bruno	558189774392@s.whatsapp.net	2025-09-30 00:00:00	Cabelo
fefbee04-3d61-407a-847e-58a1cfb2d5e4	2025-09-30 00:00:00	18:00	Vínicos 	Wallyson	local	2025-09-30 11:05:49.015	Cabelo
125a9f4a-ad3d-43a4-91ea-e5ef622cf9f9	2025-10-04 00:00:00	11:20	Zé neto 	Wallyson	local	2025-09-30 11:14:06.323	Cabelo
16694e23-45ad-4c0b-91f8-ecee9b565aef	2025-09-30 00:00:00	11:40	eduardo	Bruno	558198079679@s.whatsapp.net	2025-09-30 00:00:00	Cabelo
26d3be69-a5e2-42bc-9fd5-cc0b1cb95b14	2025-10-03 00:00:00	20:00	carlos	Bruno	558195555220@s.whatsapp.net	2025-09-30 00:00:00	Cabelo+Sobrancelha
9957705d-5d43-407f-bcd4-1fda501a4448	2025-09-30 00:00:00	14:00	serginho humilha bruno	Bruno	558195354617@s.whatsapp.net	2025-09-30 00:00:00	Cabelo+Sobrancelha
a586dd88-63ba-4f67-9b42-053fd1a44b0d	2025-09-30 00:00:00	18:00	nicolas nóbrega de lima	Bruno	558183927968@s.whatsapp.net	2025-09-30 00:00:00	Cabelo
d85598e0-d33a-4bd9-a1d9-28ce6de4acc3	2025-09-30 00:00:00	10:40	jona	Wallyson	558196647899@s.whatsapp.net	2025-09-30 00:00:00	Cabelo
696274ad-429d-450e-9354-5ae34527c0e3	2025-09-30 00:00:00	11:00	dubolo	Bruno	558196647899@s.whatsapp.net	2025-09-30 00:00:00	Cabelo
ef1d338e-ca64-4424-a8dd-d89bcf8d1daa	2025-09-30 00:00:00	14:00	Rubens 	Wallyson	local	2025-09-30 14:10:22.013	Cabelo
b54557d3-ad3c-4b49-b5be-e3b6b92e8416	2025-09-30 00:00:00	17:20	Robson 	Wallyson	local	2025-09-30 14:17:36.596	Cabelo+Barba
8e34a70b-4a2b-4a5b-a188-4e2b385e8373	2025-10-01 00:00:00	09:00	breno	Bruno	558198437880@s.whatsapp.net	2025-09-30 00:00:00	Cabelo+Sobrancelha
9dbf8291-a477-4a0d-b4a3-02c8b4ced2da	2025-09-30 00:00:00	18:40	Davi Efraim 	Wallyson	local	2025-09-30 15:39:27.167	Cabelo+Barba
e15f29fb-8d05-4d57-8eda-e69999e743e2	2025-10-02 00:00:00	18:00	erick	Wallyson	558199045127@s.whatsapp.net	2025-09-30 00:00:00	Cabelo
2788c615-84ce-4434-8ffa-bbb095ba0c1a	2025-10-04 00:00:00	14:40	ismael	Bruno	558199824318@s.whatsapp.net	2025-09-30 00:00:00	Cabelo
cfc4fa76-674f-49ae-983e-d2e120891195	2025-10-02 00:00:00	18:00	fernando	Bruno	558199817133@s.whatsapp.net	2025-09-30 00:00:00	Cabelo
57109141-6243-42fa-ad94-afe72be16d66	2025-10-02 00:00:00	15:20	joão vitor	Bruno	558194297236@s.whatsapp.net	2025-09-30 00:00:00	Cabelo+Barba
98e10305-6215-46b2-a109-af488425c48e	2025-10-02 00:00:00	09:00	itami	Bruno	558197175420@s.whatsapp.net	2025-09-30 00:00:00	Cabelo
384cff52-daf0-465c-bc0b-0afd483865b3	2025-09-30 00:00:00	16:40	Matheus 	Bruno	local	2025-09-30 19:17:03.04	Cabelo
998ada08-41d8-475a-9435-03e33d5501b0	2025-10-06 00:00:00	16:00	matheus	Bruno	558197941830@s.whatsapp.net	2025-09-30 00:00:00	Cabelo
c1759d11-5830-4a51-a9c3-9bbf205743a0	2025-10-03 00:00:00	19:20	marcos	Bruno	558197149668@s.whatsapp.net	2025-09-30 00:00:00	Cabelo
54a34e81-b6c1-47b5-8928-9824b6650315	2025-10-01 00:00:00	10:00	felipe	Wallyson	558181451150@s.whatsapp.net	2025-09-30 00:00:00	Cabelo+Sobrancelha
27b64687-2b5f-463d-b7f2-92817a13370e	2025-10-11 00:00:00	14:00	willian anselmo oliveira da silva	Bruno	558197347035@s.whatsapp.net	2025-09-30 00:00:00	Cabelo
6e57f573-ec0f-401b-8640-9ba931f39252	2025-10-03 00:00:00	13:20	bruno	Bruno	558198983986@s.whatsapp.net	2025-09-30 00:00:00	Cabelo
95e10870-d6b7-464d-943a-71c4a5311651	2025-10-01 00:00:00	16:00	josé fernando	Wallyson	558197543337@s.whatsapp.net	2025-09-30 00:00:00	Cabelo
342b9689-e7d0-492f-b040-68c730d87534	2025-10-01 00:00:00	16:40	hugo saraiva	Wallyson	558197543337@s.whatsapp.net	2025-09-30 00:00:00	Cabelo
b4f4f364-c588-48de-8968-67b70f2b19a3	2025-10-02 00:00:00	18:40	rhuan	Bruno	558195251500@s.whatsapp.net	2025-10-01 00:00:00	Cabelo+Sobrancelha
0cec140b-9970-4958-a05a-fd35ab879b90	2025-10-03 00:00:00	11:40	joão pedro campos	Bruno	558196073970@s.whatsapp.net	2025-10-01 00:00:00	Cabelo+Barba
98259ea4-90db-4124-8f4d-3094e2ed4a22	2025-10-03 00:00:00	18:00	alyson	Bruno	558181638572@s.whatsapp.net	2025-10-01 00:00:00	Cabelo+Barba
c298f0a4-7f88-4be4-9070-bafac662934b	2025-10-01 00:00:00	09:40	Indisponivel	Bruno	Indisponivel	2025-10-01 12:16:58.286	
88fe9818-85bb-4f45-b55e-cf36a5b46b10	2025-10-01 00:00:00	10:20	Indisponivel	Bruno	Indisponivel	2025-10-01 12:16:58.436	
78d3b74e-c4a5-44bb-a5f3-c825316047b5	2025-10-01 00:00:00	11:00	Indisponivel	Bruno	Indisponivel	2025-10-01 12:16:58.481	
4dd837ea-3b75-4fcc-912b-3b39f3e5da26	2025-10-01 00:00:00	11:40	Indisponivel	Bruno	Indisponivel	2025-10-01 12:16:58.546	
9a478d56-7bea-4af1-b941-fd64726d4839	2025-10-04 00:00:00	08:00	Cleiton 	Wallyson	local	2025-10-01 12:23:06.636	Cabelo
e4561e0e-382e-4ade-930f-d55ba4cfcc97	2025-10-02 00:00:00	10:00	Nicolas 	Wallyson	local	2025-10-01 12:50:49.17	Cabelo
4695d21d-7227-40e6-9a81-4d262795a7ca	2025-10-03 00:00:00	11:00	joão miguel	Bruno	558198328109@s.whatsapp.net	2025-10-01 00:00:00	Cabelo
3114198a-064c-401f-9b1c-dbdb5245e0cb	2025-10-03 00:00:00	19:20	gustavo	Wallyson	558199587573@s.whatsapp.net	2025-10-01 00:00:00	Cabelo+Sobrancelha
a62c1770-86a4-4340-8a27-48d6b1055515	2025-10-02 00:00:00	09:40	Carlos	Bruno	local	2025-10-01 14:28:51.464	Cabelo
9cbe10ac-f8a9-4874-809a-4be0f582f398	2025-10-02 00:00:00	14:00	Ocupado	Bruno	local	2025-10-01 14:29:44.753	Cabelo
afd92d23-d488-4f84-b7a6-6f7161a1788f	2025-10-02 00:00:00	14:40	Ocupado	Bruno	local	2025-10-01 14:29:59.319	Cabelo
b9aade30-d8e7-45d6-9318-5bc7bdff095c	2025-10-01 00:00:00	18:00	livio	Bruno	558195436268@s.whatsapp.net	2025-10-01 00:00:00	Cabelo+Barba
d566115c-d1da-4fa1-82de-49f8f85809b5	2025-10-02 00:00:00	16:40	lucas rafael	Bruno	558197593200@s.whatsapp.net	2025-10-01 00:00:00	Cabelo
0e586ace-4d24-4c84-8aff-1823637f85d2	2025-10-01 00:00:00	17:20	Luiz André 	Wallyson	local	2025-10-01 15:51:27.954	Cabelo
c7431c6f-3ff7-4d53-aff9-8d3a39435032	2025-10-01 00:00:00	15:20	Yuri 	Wallyson	local	2025-10-01 15:52:07.423	Cabelo
89e49884-3dc7-4ea0-94c8-77d150bff074	2025-10-01 00:00:00	18:40	Rivaldo 	Wallyson	local	2025-10-01 17:14:19.536	Cabelo
70601b20-b48d-4d19-a406-9108f9d198cb	2025-10-02 00:00:00	14:00	Léo 	Wallyson	local	2025-10-01 17:21:46.197	Cabelo
2afb17ce-b032-4691-b155-02613d6137c8	2025-10-10 00:00:00	17:20	del alumínio	Bruno	558197796167@s.whatsapp.net	2025-10-01 00:00:00	Cabelo+Barba
96517846-c1a9-4417-8aa1-66ef1880575b	2025-10-10 00:00:00	18:00	cauê	Bruno	558197796167@s.whatsapp.net	2025-10-01 00:00:00	Cabelo
b106364f-c2f7-43e7-b45f-b4b9d7e04885	2025-10-03 00:00:00	16:00	vinicius	Bruno	558196496652@s.whatsapp.net	2025-10-01 00:00:00	Cabelo
eeb5925a-04e9-4453-9a90-e93c4183ef47	2025-10-03 00:00:00	09:40	emanoel	Bruno	51329288405185@lid	2025-10-01 00:00:00	Cabelo+Barba
c24726f8-ad37-4a3e-91c6-774d4c7527d6	2025-10-03 00:00:00	10:20	leonardo cabral	Bruno	558197413226@s.whatsapp.net	2025-10-01 00:00:00	Cabelo
335dba34-aaef-4f29-b12d-aa9ecce127b7	2025-10-02 00:00:00	08:00	Marcado 	Wallyson	local	2025-10-01 21:25:38.969	Cabelo
801b093f-6306-42e2-a5c4-c30fa5d4217d	2025-10-02 00:00:00	09:20	Tierry 	Wallyson	local	2025-10-01 21:26:07.864	Cabelo
567117ff-1d1f-49d9-ba2a-1b119f7e6fd8	2025-10-02 00:00:00	18:40	iago silva	Wallyson	5511986812843@s.whatsapp.net	2025-10-01 00:00:00	Cabelo+Sobrancelha
d5e2085c-14df-44b7-9e3c-fe8da825b471	2025-10-03 00:00:00	15:20	andré	Bruno	558197273032@s.whatsapp.net	2025-10-01 00:00:00	Cabelo
de4b7804-f510-4a4d-a909-eb5c9f12bb89	2025-10-03 00:00:00	16:40	ryan valério	Bruno	69153402691745@lid	2025-10-01 00:00:00	Cabelo+Barba
165fe6ea-49a9-445a-ba7d-7048eeac3c97	2025-10-02 00:00:00	16:00	Lucas ( Bruna) 	Bruno	local	2025-10-02 00:24:42.299	Cabelo
a5984807-4adb-4878-9baf-3d3634b4b2a2	2025-10-04 00:00:00	17:20	lucas gabriel	Wallyson	558199333703@s.whatsapp.net	2025-10-01 00:00:00	Acabamento (Pezinho)
60df6a29-f2bb-4cc1-9714-38a7f4b40161	2025-10-02 00:00:00	10:40	gustavo farias	Wallyson	558196195368@s.whatsapp.net	2025-10-01 00:00:00	Cabelo
fc5cdc9f-2dc2-4023-b436-d71fc602ee3f	2025-10-04 00:00:00	10:00	vitor araújo	Bruno	558186946707@s.whatsapp.net	2025-10-02 00:00:00	Cabelo
a8bd41e3-2ab9-4552-a9f4-39679eafd2d7	2025-10-02 00:00:00	16:00	vandinho	Wallyson	558197042471@s.whatsapp.net	2025-10-02 00:00:00	Cabelo
eb94e138-a21a-439a-9688-294a3fb29a94	2025-10-03 00:00:00	17:20	juininho	Wallyson	558194082765@s.whatsapp.net	2025-10-02 00:00:00	Cabelo
35f4078e-830a-4d70-a98c-e6c1de6231e1	2025-10-11 00:00:00	08:00	Luiz felipe de bom jardim 	Bruno	local	2025-10-02 10:09:35.944	Cabelo
cb6392a7-fa30-48ff-9e09-2ff56a15e8a2	2025-10-02 00:00:00	10:20	oi	Bruno	558197620059@s.whatsapp.net	2025-10-02 00:00:00	Cabelo
d5140025-6703-43ca-a9f5-13a5bd9355ad	2025-10-02 00:00:00	08:40	fernando correia da silva	Wallyson	558199732471@s.whatsapp.net	2025-10-02 00:00:00	Cabelo
a8649e39-4ab4-4eb2-b1a9-c4d4fe7d7f15	2025-10-04 00:00:00	14:00	joão paulo	Bruno	558179098531@s.whatsapp.net	2025-10-02 00:00:00	Cabelo+Barba
036d3131-bf9b-41b0-ae74-565c95041503	2025-10-15 00:00:00	08:00	fernando correia da silva	Wallyson	558199732471@s.whatsapp.net	2025-10-02 00:00:00	Cabelo
9e677781-7576-466a-ad47-fced11b3476c	2025-10-04 00:00:00	14:00	kayke	Wallyson	558197180683@s.whatsapp.net	2025-10-02 00:00:00	Cabelo+Barba
acaeab7b-998b-48b4-bd4d-6447614a6c62	2025-10-09 00:00:00	09:40	Fernando ( vem de 08:40	Bruno	local	2025-10-02 12:58:51.655	Cabelo
f5653e1c-0221-4aa2-8ffd-e9500d634f01	2025-10-09 00:00:00	08:00	fernando correia da silva	Wallyson	558199732471@s.whatsapp.net	2025-10-02 00:00:00	Cabelo
618b36f5-8c4e-4cdf-96dd-97d86d27923c	2025-10-03 00:00:00	10:00	paulo césar	Wallyson	558195254306@s.whatsapp.net	2025-10-02 00:00:00	Cabelo
f0f948bf-8631-4212-9382-b6b697e73ad6	2025-10-02 00:00:00	17:20	kevin	Wallyson	558195204685@s.whatsapp.net	2025-10-02 00:00:00	Cabelo
782bc3ee-3c54-4735-888f-c176650af099	2025-10-03 00:00:00	16:40	Wellington 	Wallyson	local	2025-10-02 14:26:17.348	Cabelo
51c39977-1098-4b94-877b-63b6e144f65a	2025-10-02 00:00:00	13:20	Indisponivel	Bruno	Indisponivel	2025-10-02 15:48:01.636	
93aa884f-7903-4da7-81ef-1cb4fb65ccbf	2025-10-06 00:00:00	18:40	joão gabriel sales de lima	Bruno	558197819965@s.whatsapp.net	2025-10-02 00:00:00	Cabelo
7803729e-c81a-421b-ac53-1bc044097e08	2025-10-02 00:00:00	13:20	fabrício	Bruno	558195768849@s.whatsapp.net	2025-10-02 00:00:00	Cabelo
449a591f-058e-4fb5-a81d-dd369acd968b	2025-10-04 00:00:00	08:40	Matheus 	Wallyson	local	2025-10-02 17:07:36.124	Barba
d11916e4-a8cf-429a-be8a-ad5910053813	2025-10-03 00:00:00	09:20	Pedro França 	Wallyson	local	2025-10-02 17:11:08.032	Cabelo
856b136a-8a59-4ddf-bb1a-2ed39da3a124	2025-10-02 00:00:00	16:40	João Felipe 	Wallyson	local	2025-10-02 17:12:21.232	Cabelo
219bda23-4934-4f48-89aa-57f653d307d7	2025-10-03 00:00:00	08:00	Marcado 	Wallyson	local	2025-10-02 17:13:09.44	Cabelo
01d1703b-dcf0-4d1e-8918-19042ff1819e	2025-10-03 00:00:00	08:40	Jhonatta 	Wallyson	local	2025-10-02 17:13:27.4	Cabelo
15243356-27c6-4f14-a756-689d9e8eb782	2025-10-04 00:00:00	09:20	Gelson 	Wallyson	local	2025-10-02 17:16:23.003	Cabelo
5ab51f4d-ea74-4a73-b167-54ca54ce1f4d	2025-10-03 00:00:00	16:00	Gustavo 	Wallyson	local	2025-10-02 17:17:34.257	Cabelo
dd29274a-8d28-43a9-b476-d4e55c87db6b	2025-10-04 00:00:00	12:00	Pedro 	Wallyson	local	2025-10-02 17:22:23.845	Cabelo
9c3aacad-00d6-4a7e-8e42-abe1bd84a6e1	2025-10-03 00:00:00	14:40	Nando 	Wallyson	local	2025-10-02 17:54:50.881	Cabelo
7d89809e-7ddd-43b0-80b0-17f6060d778b	2025-10-04 00:00:00	08:40	paulo	Bruno	558181346216@s.whatsapp.net	2025-10-02 00:00:00	Cabelo
88455ec5-8ea1-4999-999e-3120c8a56e1f	2025-10-04 00:00:00	10:40	Bruno gomes	Bruno	local	2025-10-02 20:16:43.375	Cabelo
055f58a8-2fc3-4c96-9b19-dcd3ff7038bb	2025-10-04 00:00:00	11:20	Bruno Gomes botox	Bruno	local	2025-10-02 20:17:08.917	Cabelo
58ecb33b-c395-40a9-8f74-9b705b041a4c	2025-10-07 00:00:00	18:00	wellington	Wallyson	558196852620@s.whatsapp.net	2025-10-02 00:00:00	Cabelo+Barba
cbf39583-3209-4a33-9795-3d4c22d02bdc	2025-10-06 00:00:00	18:00	hugo	Wallyson	558197524355@s.whatsapp.net	2025-10-02 00:00:00	Cabelo
f7ca0d03-409c-4701-ab7c-82eaff861239	2025-10-06 00:00:00	17:20	hugo pai	Wallyson	558197524355@s.whatsapp.net	2025-10-02 00:00:00	Cabelo
dd9ce2dc-e7e0-4418-b24a-26f2204938e5	2025-10-04 00:00:00	08:00	anderson	Bruno	558198694494@s.whatsapp.net	2025-10-02 00:00:00	Cabelo
e1e8da6c-c382-406f-9088-c0192fe94907	2025-10-09 00:00:00	17:20	george luiz	Bruno	558198592917@s.whatsapp.net	2025-10-02 00:00:00	Cabelo
876ad6c1-a81d-4e05-9f96-8dd7f0760646	2025-10-04 00:00:00	13:20	deyvid jhonatan	Bruno	558199201610@s.whatsapp.net	2025-10-02 00:00:00	Cabelo
fb918e64-7982-4e2d-9ba0-288f84c30ea4	2025-10-06 00:00:00	14:40	joão breno	Bruno	558197349442@s.whatsapp.net	2025-10-03 00:00:00	Cabelo
1267415d-a422-4698-a35c-bfb9d0a1ac7e	2025-10-03 00:00:00	10:40	kleyton	Wallyson	558198744016@s.whatsapp.net	2025-10-03 00:00:00	Cabelo
8c07a152-c530-4e68-91a7-1af85ac2155a	2025-10-03 00:00:00	11:20	cláudio figueiredo	Wallyson	202787501646016@lid	2025-10-03 00:00:00	Cabelo+Sobrancelha
a6c8d571-0c3a-4579-ba55-a20a0d51419e	2025-10-03 00:00:00	14:00	Valmir 	Wallyson	local	2025-10-03 12:28:26.169	Cabelo+Barba
1ee3cc53-d55c-47af-bb8c-d325fe580b78	2025-10-04 00:00:00	10:00	Valmir 	Wallyson	local	2025-10-03 12:34:06.211	Cabelo+Barba
74a84dc5-7e66-447d-9a66-86f1ed8e80c7	2025-10-04 00:00:00	10:00	Valmir 	Wallyson	local	2025-10-03 12:34:08.956	Cabelo+Barba
5a659d45-cffb-4c30-afd4-6f8082e7ea67	2025-10-03 00:00:00	15:20	Weli	Wallyson	local	2025-10-03 12:50:38.188	Cabelo
c3292ec9-13fa-4601-90f7-a43335b7f56e	2025-10-03 00:00:00	20:00	Mateus 	Wallyson	local	2025-10-03 13:47:21.313	Barba
928b62fe-e64f-4438-86e4-6ca429977d64	2025-10-06 00:00:00	14:00	andre	Bruno	558198995821@s.whatsapp.net	2025-10-03 00:00:00	Cabelo+Sobrancelha
8605314c-79c3-4005-88f6-f19023834c11	2025-10-07 00:00:00	09:40	pedro messi goat	Bruno	558199656200@s.whatsapp.net	2025-10-03 00:00:00	Cabelo+Barba
2fdf49d3-49e5-4cf7-bebd-98fdce0c63ff	2025-10-10 00:00:00	14:40	neto	Bruno	558194759358@s.whatsapp.net	2025-10-03 00:00:00	Cabelo+Sobrancelha
0c53125f-dc59-4a9a-94e3-2bf9c611d23e	2025-10-04 00:00:00	18:00	Lyaderson 	Wallyson	local	2025-10-03 18:21:14.897	Cabelo
79c83cd3-4676-439f-a91e-622b061b181c	2025-10-04 00:00:00	16:40	Kayke 	Wallyson	local	2025-10-03 18:22:53.896	Cabelo
2edaeba6-618b-46ea-b336-36b58526c077	2025-10-04 00:00:00	16:00	Juinin 	Wallyson	local	2025-10-03 18:24:45.707	Cabelo
80b73f62-97e8-4721-aa1d-bb87838756cb	2025-10-21 00:00:00	09:00	Davi	Bruno	local	2025-10-03 19:39:21.419	Cabelo
71433547-1913-419d-8c5c-13cc76cec70a	2025-10-21 00:00:00	13:20	Indisponivel	Bruno	Indisponivel	2025-10-03 19:39:56.417	
918e2cef-d046-49ad-a91d-75781cf9fdc5	2025-10-21 00:00:00	14:00	Indisponivel	Bruno	Indisponivel	2025-10-03 19:39:56.474	
cfc4b637-0971-4769-81a4-d79b17319985	2025-10-21 00:00:00	14:40	Indisponivel	Bruno	Indisponivel	2025-10-03 19:39:56.503	
5afc8887-7c5a-4936-8536-08111a41ce96	2025-10-21 00:00:00	15:20	Indisponivel	Bruno	Indisponivel	2025-10-03 19:39:56.536	
b72fddfb-5cf3-4343-88e7-d0df0bf9f6b7	2025-10-21 00:00:00	16:00	Indisponivel	Bruno	Indisponivel	2025-10-03 19:39:56.565	
28b7e40b-2d1d-483d-863f-0776fb7d04a8	2025-10-21 00:00:00	16:40	Indisponivel	Bruno	Indisponivel	2025-10-03 19:39:56.594	
f18f47d2-739a-416d-8285-311687a84a3b	2025-10-21 00:00:00	17:20	Indisponivel	Bruno	Indisponivel	2025-10-03 19:39:56.623	
562c0f0e-5dab-4a7f-b58a-6bd81dda86c0	2025-10-21 00:00:00	18:00	Indisponivel	Bruno	Indisponivel	2025-10-03 19:39:56.651	
ee713e1d-97aa-4630-b6c1-f89e380f6b9c	2025-10-21 00:00:00	18:40	Indisponivel	Bruno	Indisponivel	2025-10-03 19:39:56.68	
9bbb3c30-5275-4ed7-9205-143e31afd0d8	2025-10-21 00:00:00	19:20	Indisponivel	Bruno	Indisponivel	2025-10-03 19:39:56.712	
f8f385c5-c27f-46fc-a448-dc4d3d894648	2025-10-04 00:00:00	15:20	Hiago 	Wallyson	local	2025-10-03 20:19:42.293	Cabelo
f5523e14-90ad-4dab-8114-1c9e36eaacf6	2025-10-04 00:00:00	10:40	Rhian 	Wallyson	local	2025-10-03 20:25:42.699	Cabelo
2517ee9d-7830-4825-a38c-eef14b73b82a	2025-10-06 00:00:00	16:40	Pedro prog vem de 15:40	Bruno	local	2025-10-03 20:30:37.494	Cabelo
9c7f1aea-6789-4043-8e68-d147ecb59c9b	2025-10-04 00:00:00	14:40	erick	Wallyson	558199045127@s.whatsapp.net	2025-10-03 00:00:00	Cabelo
39357393-4307-426f-967b-071d80ee5302	2025-10-15 00:00:00	18:00	Pedrão 	Wallyson	local	2025-10-03 22:03:17.41	Cabelo+Barba
bf9eada3-1c67-4e56-bf7f-479b5de82799	2025-10-06 00:00:00	18:00	dr. marcos araújo	Bruno	558191284429@s.whatsapp.net	2025-10-03 00:00:00	Cabelo
5f75a3f2-0913-47a4-b232-29f145ac384f	2025-10-06 00:00:00	13:20	mauricio	Bruno	558182705181@s.whatsapp.net	2025-10-03 00:00:00	Cabelo
4e9918d1-aa7a-4730-9d5b-7a5e190cc399	2025-10-06 00:00:00	17:20	josé miguel	Bruno	558196219587@s.whatsapp.net	2025-10-03 00:00:00	Cabelo+Sobrancelha
7a2baee9-f7a7-4f8c-9199-ad6e9e02344f	2025-10-07 00:00:00	14:00	pedro henrique	Bruno	558185032618@s.whatsapp.net	2025-10-04 00:00:00	Cabelo+Sobrancelha
d06e32b5-1a9d-4ae8-97a2-f61ae35501f9	2025-10-09 00:00:00	14:00	italo	Bruno	70411761017020@lid	2025-10-04 00:00:00	Cabelo
715790ca-7480-4d85-ac1c-1ac44e6d97ba	2025-10-08 00:00:00	17:20	brunno	Bruno	558197349442@s.whatsapp.net	2025-10-04 00:00:00	Cabelo
31d8a4bd-f47e-45a1-8433-ebed271e5f25	2025-10-07 00:00:00	16:40	antônio	Bruno	558197083657@s.whatsapp.net	2025-10-04 00:00:00	Cabelo+Sobrancelha
c4bf02f8-ec18-4229-b7ea-d5f24d9e0480	2025-10-11 00:00:00	13:20	joao progresiva	Bruno	558196050355@s.whatsapp.net	2025-10-04 00:00:00	Cabelo
395cb074-deea-4803-b89c-4d23e520ffe3	2025-10-08 00:00:00	17:20	matheus	Wallyson	558197349442@s.whatsapp.net	2025-10-04 00:00:00	Cabelo
88d9209d-b736-4397-9684-157c2fd74014	2025-10-08 00:00:00	18:00	mácio	Bruno	558197349442@s.whatsapp.net	2025-10-04 00:00:00	Cabelo
98c29aa2-8b0d-439c-91a7-0db8d620621c	2025-10-06 00:00:00	14:00	Wendel 	Wallyson	local	2025-10-04 21:44:08.694	Cabelo
0ee00592-3e77-4c15-b867-5cb582fc8e9f	2025-10-06 00:00:00	13:20	luan victor	Wallyson	558181307345@s.whatsapp.net	2025-10-05 00:00:00	Acabamento (Pezinho)
e5135bec-6438-4f0c-af79-7804a637fe36	2025-10-06 00:00:00	16:00	gabriel pires da silva	Wallyson	5511986812843@s.whatsapp.net	2025-10-05 00:00:00	Cabelo
fc0d59e2-3821-4c22-a0a7-932df9722873	2025-10-17 00:00:00	16:00	gustavo farias	Wallyson	558196195368@s.whatsapp.net	2025-10-05 00:00:00	Cabelo
a9443eca-3da5-4644-b23f-cb65977533d4	2025-10-10 00:00:00	19:20	carlos	Bruno	558197823796@s.whatsapp.net	2025-10-05 00:00:00	Cabelo+Sobrancelha
f4014363-24e3-4bb9-a94a-5f69f5638093	2025-10-15 00:00:00	11:40	Indisponivel	Bruno	Indisponivel	2025-10-05 19:22:01.222	
84c588db-bbbc-4642-8474-c19d4af79a47	2025-10-15 00:00:00	13:20	Indisponivel	Bruno	Indisponivel	2025-10-05 19:22:01.465	
7580e5fa-3196-4c1c-bab4-e38c2c3f54b7	2025-10-15 00:00:00	14:00	Indisponivel	Bruno	Indisponivel	2025-10-05 19:22:01.548	
e0977f4c-36f9-46af-9d33-fe80d852ce0f	2025-10-15 00:00:00	14:40	Indisponivel	Bruno	Indisponivel	2025-10-05 19:22:01.67	
76313c54-6a5d-43f6-9e4e-f8bf2f2d3c1b	2025-10-15 00:00:00	15:20	Indisponivel	Bruno	Indisponivel	2025-10-05 19:22:01.866	
effb724c-7438-4cb4-9c0d-9dc1dca30400	2025-10-15 00:00:00	16:00	Indisponivel	Bruno	Indisponivel	2025-10-05 19:22:02.002	
e6ca941c-575c-43b0-b2e2-1970c2157cab	2025-10-15 00:00:00	16:40	Indisponivel	Bruno	Indisponivel	2025-10-05 19:22:02.157	
5a6495a3-e143-4b0d-a003-b6383577b78e	2025-10-15 00:00:00	17:20	Indisponivel	Bruno	Indisponivel	2025-10-05 19:22:02.219	
d527a20e-0f3f-4d19-b2fa-ef1e620af2f3	2025-10-15 00:00:00	18:00	Indisponivel	Bruno	Indisponivel	2025-10-05 19:22:02.334	
3442c588-18a0-485f-94fd-78bc41db127e	2025-10-15 00:00:00	18:40	Indisponivel	Bruno	Indisponivel	2025-10-05 19:22:02.381	
59cc1fde-9163-416c-9dba-e9787e5ed7dc	2025-10-10 00:00:00	18:00	Indisponivel	Bruno	Indisponivel	2025-10-05 19:22:21.521	
aad060f5-9e74-47d2-b06c-1dc581ab7038	2025-10-10 00:00:00	18:40	Indisponivel	Bruno	Indisponivel	2025-10-05 19:22:21.58	
8aa2c804-fba6-4c55-a82e-c06a01d06fac	2025-10-10 00:00:00	19:20	Indisponivel	Bruno	Indisponivel	2025-10-05 19:22:21.613	
c2a3b18a-292e-4c4c-be36-660b67578016	2025-10-10 00:00:00	20:00	Indisponivel	Bruno	Indisponivel	2025-10-05 19:22:21.685	
d76c875b-5676-4210-8833-78992030ec84	2025-10-22 00:00:00	18:40	Fernando arruda 	Bruno	local	2025-10-20 15:54:52.669	Cabelo
d2d73848-e617-424d-a5fa-ea8eaacac1bd	2025-10-07 00:00:00	17:20	fernando	Bruno	558196035269@s.whatsapp.net	2025-10-05 00:00:00	Cabelo
1a209a32-6777-4bc1-a4db-7b7b3c0efa3a	2025-10-06 00:00:00	11:00	wellington	Wallyson	558193204777@s.whatsapp.net	2025-10-05 00:00:00	Cabelo
96aa51da-3e41-4f40-9a74-54dd9301d386	2025-10-10 00:00:00	09:00	Carlos	Bruno	local	2025-10-05 19:45:22.245	Cabelo
14da80ad-bf7f-4b7c-9e99-9867811294a6	2025-10-06 00:00:00	16:40	yago	Wallyson	558195055274@s.whatsapp.net	2025-10-05 00:00:00	Cabelo
9fc8ca01-9e22-4e54-b9bc-274f4cf369f8	2025-10-11 00:00:00	14:40	allef ryan	Bruno	558195740243@s.whatsapp.net	2025-10-05 00:00:00	Cabelo
21552540-45f4-47fb-855c-2122cc81659d	2025-10-07 00:00:00	16:40	henrique	Wallyson	558195637127@s.whatsapp.net	2025-10-05 00:00:00	Cabelo
b1796450-8e26-4c15-803c-32e9e4a24140	2025-10-06 00:00:00	09:00	Marcado 	Wallyson	local	2025-10-05 22:03:46.012	Cabelo
2fd34c13-6ea4-4170-acef-a59b16706107	2025-10-06 00:00:00	14:40	windney	Wallyson	558187774760@s.whatsapp.net	2025-10-06 00:00:00	Cabelo
14d79e58-e9a4-4a41-83d4-32ef914f8082	2025-10-07 00:00:00	18:00	valney e davi	Bruno	558197232916@s.whatsapp.net	2025-10-06 00:00:00	Cabelo
d9d811fd-d8dd-4934-9a61-c5d1fd826575	2025-10-07 00:00:00	18:40	Valney	Bruno	local	2025-10-06 11:01:42.203	Cabelo
ec0e12af-b961-4940-8933-f1ed161a54f6	2025-10-06 00:00:00	11:40	jorge	Wallyson	558199658478@s.whatsapp.net	2025-10-06 00:00:00	Cabelo+Sobrancelha
10bc2321-cd0c-4e80-86d3-aa4f097fef66	2025-10-06 00:00:00	10:20	Alan 	Wallyson	local	2025-10-06 12:37:53.17	Cabelo
872adf00-9f5a-47a5-af62-bc68ae9b38bd	2025-10-07 00:00:00	11:40	micherlaine	Bruno	558196463146@s.whatsapp.net	2025-10-06 00:00:00	Cabelo
7c9d285d-e11f-4aa2-9d66-0055167591fc	2025-10-08 00:00:00	18:00	Juninho compadre 	Wallyson	local	2025-10-06 12:43:21.568	Cabelo+Barba
1d16d59b-d868-4903-9c48-5e47c17faf98	2025-10-07 00:00:00	10:40	Emanuel 	Wallyson	local	2025-10-06 12:45:50.135	Cabelo
e5b73ef2-5a56-4620-9500-4fce5fb884b3	2025-10-07 00:00:00	11:20	Galdino	Wallyson	local	2025-10-06 12:53:06.506	Cabelo
fcd3039e-6cfd-4660-bca5-85136574a9c8	2025-10-07 00:00:00	10:00	gabriel	Wallyson	558196106906@s.whatsapp.net	2025-10-06 00:00:00	Cabelo
ffcaa4d9-302b-44db-9707-e16a1015c6e2	2025-10-11 00:00:00	14:00	Luiz 	Wallyson	local	2025-10-06 14:49:35.747	Cabelo
d40e301e-c492-4c5e-b089-6807375032fb	2025-10-07 00:00:00	08:40	Mercado	Wallyson	local	2025-10-06 14:50:45.004	Cabelo
7fed0f26-c4fc-4baf-b785-cab406a84183	2025-10-07 00:00:00	13:20	Paulinho 	Wallyson	local	2025-10-06 14:58:34.279	Cabelo
de4e18b1-8035-43e2-a2b0-7689894211cf	2025-10-07 00:00:00	11:00	sid	Bruno	558191536718@s.whatsapp.net	2025-10-06 00:00:00	Barba
73775b37-4ca7-44ed-a835-6f9815af3ec3	2025-10-07 00:00:00	15:20	João Carmen 	Wallyson	local	2025-10-06 16:07:54.957	Cabelo
a2c5db7f-1b08-49b6-b307-1b893b7db22a	2025-10-08 00:00:00	16:40	renan	Bruno	558198296625@s.whatsapp.net	2025-10-06 00:00:00	Cabelo
528d53d6-7356-4868-87c2-68fcd63f5c58	2025-10-08 00:00:00	09:20	Pedro França 	Wallyson	local	2025-10-06 16:56:43.672	Cabelo
20418e4e-c1dd-4248-b3b9-b1bced221743	2025-10-08 00:00:00	13:20	ataliba	Bruno	558182671510@s.whatsapp.net	2025-10-06 00:00:00	Barba
dbf4175a-53e5-4b0d-b93d-86357648fb65	2025-10-07 00:00:00	13:20	Lucas ( Bruna) 	Bruno	local	2025-10-06 18:33:10.59	Cabelo
2ea2da65-2699-473e-ae35-8615da9135ab	2025-10-08 00:00:00	18:40	gonzaga neto	Bruno	558198514795@s.whatsapp.net	2025-10-06 00:00:00	Cabelo+Sobrancelha
8344ea50-bcd1-4460-ad97-814907eba9e3	2025-10-10 00:00:00	11:00	Lucian	Bruno	local	2025-10-06 20:05:52.385	Cabelo
e3acd65a-97db-47a2-968b-f125183c3390	2025-10-09 00:00:00	18:00	keven	Bruno	558189774392@s.whatsapp.net	2025-10-06 00:00:00	Cabelo+Sobrancelha
8ead7482-cb0b-4dd0-9193-c1a807b3dc26	2025-10-07 00:00:00	09:20	natacha	Wallyson	558197947166@s.whatsapp.net	2025-10-06 00:00:00	Cabelo
bff965d6-8d4b-4fec-8a1a-df2e5c90e899	2025-10-07 00:00:00	18:40	diego santos	Wallyson	558173303801@s.whatsapp.net	2025-10-06 00:00:00	Cabelo
3e111557-a908-41e2-8990-b793cf7fad7b	2025-10-09 00:00:00	18:40	denílson	Bruno	558197084296@s.whatsapp.net	2025-10-06 00:00:00	Barba
b9621868-7cb5-4780-9483-fa12e39acabe	2025-10-07 00:00:00	09:00	miguel	Bruno	558199728099@s.whatsapp.net	2025-10-06 00:00:00	Cabelo
f1b5383f-2038-4bf3-8ffb-d83140828998	2025-10-08 00:00:00	11:00	anderson	Bruno	558197666072@s.whatsapp.net	2025-10-06 00:00:00	Cabelo+Barba
705b7139-e79d-40ac-b09f-264c774134d3	2025-10-11 00:00:00	08:40	lucas	Bruno	558182451503@s.whatsapp.net	2025-10-07 00:00:00	Cabelo+Sobrancelha
8e4da7d9-c2b8-4b20-bcb7-047590cdb348	2025-10-07 00:00:00	19:20	Indisponivel	Bruno	Indisponivel	2025-10-07 10:55:27.639	
e4c965f9-5703-4199-8e6a-0037398655e4	2025-10-08 00:00:00	14:40	miguel	Wallyson	558181060584@s.whatsapp.net	2025-10-07 00:00:00	Cabelo
21ebb979-eb37-480f-a67d-942bcc91cfd7	2025-10-09 00:00:00	18:00	leonardo	Wallyson	558199658643@s.whatsapp.net	2025-10-07 00:00:00	Cabelo
81ecc2a0-57bc-4a1d-9950-cd0b4c2d3e77	2025-10-07 00:00:00	14:40	fernanda emilly	Bruno	558198525524@s.whatsapp.net	2025-10-07 00:00:00	Cabelo
1aa70f06-8bf8-4e5b-897f-b725a1362e0c	2025-10-07 00:00:00	17:20	Júlio 	Wallyson	local	2025-10-07 14:31:18.951	Cabelo
672b4978-f31b-439d-b0d0-9e4c296721f3	2025-10-07 00:00:00	14:00	Matheus 	Wallyson	local	2025-10-07 14:32:36.006	Cabelo
9bdabe32-a13b-4eee-89d2-3ece461ba4f3	2025-10-07 00:00:00	14:40	Francelino 	Wallyson	local	2025-10-07 14:32:53.984	Cabelo
d260ca40-eaa7-4ff1-9adb-e166c3e964ba	2025-10-07 00:00:00	16:00	heron	Wallyson	5581920018112@s.whatsapp.net	2025-10-07 00:00:00	Cabelo+Barba
b9698ddb-4e62-4f25-aea6-c5a8a307d9ae	2025-10-07 00:00:00	15:20	Indisponivel	Bruno	Indisponivel	2025-10-07 15:15:55.367	
bae42f96-1534-475f-8494-ca2990fc1ced	2025-10-07 00:00:00	16:00	Indisponivel	Bruno	Indisponivel	2025-10-07 15:15:55.474	
7bb06ff1-d19f-40b6-81a8-de68ea9c80a8	2025-10-09 00:00:00	09:00	fábio cria	Bruno	5521980058628@s.whatsapp.net	2025-10-07 00:00:00	Cabelo
5a2873a5-522b-455a-8d77-1a2381af7754	2025-10-08 00:00:00	16:40	Adaias 	Wallyson	local	2025-10-07 18:21:17.978	Cabelo
59c9406e-65c0-41db-ba0a-d4ac1f8766ec	2025-10-11 00:00:00	08:00	wilson	Wallyson	558197148928@s.whatsapp.net	2025-10-07 00:00:00	Cabelo+Sobrancelha
8279c224-ae26-4e53-849b-21c8bf70b35f	2025-10-11 00:00:00	16:00	matheus vinícius	Wallyson	558198244443@s.whatsapp.net	2025-10-07 00:00:00	Cabelo
73edd417-12cf-4895-95f0-6a99e2232e46	2025-10-11 00:00:00	15:20	robert	Bruno	558187830953@s.whatsapp.net	2025-10-07 00:00:00	Cabelo
9c7efde6-985a-41be-912b-0d0c69cad455	2025-10-09 00:00:00	14:40	Bruno botox tbm	Bruno	local	2025-10-07 19:37:15.656	Cabelo+Barba
4b40f744-9882-4380-9b52-cfce856a78f1	2025-10-09 00:00:00	15:20	Bruno botox	Bruno	local	2025-10-07 19:37:48.547	Cabelo
1b409a2f-ba09-4477-a61a-cc1959cbfd42	2025-10-09 00:00:00	16:00	Bruno botox	Bruno	local	2025-10-07 19:38:14.197	Cabelo
9640bb82-c78e-4377-ab99-7d8ab7068047	2025-10-09 00:00:00	10:20	maurycio	Bruno	558197162890@s.whatsapp.net	2025-10-07 00:00:00	Cabelo+Sobrancelha
27a7c06d-2219-468d-89e0-e8440634d791	2025-10-08 00:00:00	09:40	livio	Bruno	558195436268@s.whatsapp.net	2025-10-07 00:00:00	Barba
d03a5e35-a192-4891-8b1f-25264048310c	2025-10-13 00:00:00	14:00	joão marcello	Bruno	558196393507@s.whatsapp.net	2025-10-07 00:00:00	Cabelo
9a38f6c2-9879-4d2b-ba43-f0748c3e1cc5	2025-10-11 00:00:00	10:00	Kauan 	Wallyson	local	2025-10-07 23:29:09.594	Cabelo
612e837f-66bc-4fea-8f6f-bfd11cf1886d	2025-10-09 00:00:00	13:20	Allysson 	Wallyson	local	2025-10-07 23:30:26.035	Cabelo
4a066a02-c16a-496b-ba6b-6f366b10e9d9	2025-10-11 00:00:00	08:40	Normando luzes 	Wallyson	local	2025-10-07 23:31:04.252	Cabelo
42d2c479-2677-44f4-a4c4-82caef745189	2025-10-08 00:00:00	16:00	rafael	Bruno	558198296625@s.whatsapp.net	2025-10-07 00:00:00	Cabelo
346e6a66-b7bd-4495-b860-1d4f5617d341	2025-10-10 00:00:00	13:20	mateus barbosa	Bruno	558197626344@s.whatsapp.net	2025-10-07 00:00:00	Cabelo
80df5b70-2b7a-42f5-bc04-4d4ffde3bf6d	2025-10-10 00:00:00	08:40	cláudio figueiredo	Wallyson	202787501646016@lid	2025-10-08 00:00:00	Cabelo
aa3acc0d-5f33-45da-93ff-cb0164010642	2025-10-08 00:00:00	16:00	João guilherme 	Wallyson	local	2025-10-08 10:19:30.421	Cabelo
d33aa841-a25a-41a9-9ccc-b35a998bf43d	2025-10-11 00:00:00	16:40	moisés	Wallyson	558171076971@s.whatsapp.net	2025-10-08 00:00:00	Cabelo+Barba
c3ec57ab-3094-4c6f-a444-87fd61831162	2025-10-08 00:00:00	11:40	Leonardo 	Bruno	local	2025-10-08 11:07:42.381	Cabelo
d5b1a31b-075b-4f81-963d-7211f099892b	2025-10-08 00:00:00	14:00	Fabiano	Bruno	local	2025-10-08 14:00:36.643	Cabelo
919fb669-2757-4dbb-81ff-8262942b66d6	2025-10-08 00:00:00	14:40	Henrique	Bruno	local	2025-10-08 14:00:49.22	Cabelo
8b2b9e93-761f-41b8-8573-d56e477330ae	2025-10-08 00:00:00	13:20	Matheus 	Wallyson	local	2025-10-08 14:33:05.962	Cabelo
7b0a48bf-9d76-489f-9a96-6ab064b5af01	2025-10-08 00:00:00	14:00	Francelino 	Wallyson	local	2025-10-08 14:33:18.519	Cabelo
dbab8bef-80a3-4be2-b7f4-900c96be9b3e	2025-10-11 00:00:00	09:20	pedro lucas	Wallyson	558197832195@s.whatsapp.net	2025-10-08 00:00:00	Cabelo
10c815b5-081d-4f1d-afca-dc86675d1303	2025-10-11 00:00:00	15:20	Lucas 	Wallyson	local	2025-10-08 14:46:36.111	Cabelo
474d54b0-5963-48c6-8829-c6a2395b729b	2025-10-08 00:00:00	15:20	Felipe 	Wallyson	local	2025-10-08 15:06:05.696	Cabelo
94e82049-0345-4f7c-b218-d553a621c09b	2025-10-08 00:00:00	15:20	kleyton	Bruno	558198744016@s.whatsapp.net	2025-10-08 00:00:00	Cabelo
817cd19a-2bd1-4f52-b181-ae86ce5302a9	2025-10-14 00:00:00	09:40	lucas ravi	Bruno	558183245719@s.whatsapp.net	2025-10-08 00:00:00	Cabelo
b742901f-fc73-468b-bcea-3efd71bdaf05	2025-10-18 00:00:00	10:00	andy	Bruno	558189785404@s.whatsapp.net	2025-10-08 00:00:00	Cabelo+Sobrancelha
ed5dd896-b48b-40b4-9e2e-662575bee649	2025-10-18 00:00:00	10:40	joão lucas	Bruno	558189785404@s.whatsapp.net	2025-10-08 00:00:00	Cabelo+Sobrancelha
97195f99-eb55-4742-87b2-2f1ca2deb2d7	2025-10-11 00:00:00	12:00	Ataliba 	Bruno	local	2025-10-08 16:52:07.77	Barba
ff0886ee-1f7c-4fb8-93c0-f4ddcc4d719d	2025-10-09 00:00:00	17:20	Lyardson	Wallyson	local	2025-10-08 16:54:20.389	Cabelo
de3a833a-b0b5-41e9-8f92-78725cdf6e17	2025-10-09 00:00:00	14:40	lucas pio	Wallyson	558181213267@s.whatsapp.net	2025-10-08 00:00:00	Cabelo
1da0a55a-1f5f-4427-aad2-7bfbded84f22	2025-10-09 00:00:00	16:40	Roberto 	Wallyson	local	2025-10-08 18:48:24.331	Cabelo
da03a671-8d73-4df3-b371-5767e90e35f0	2025-10-11 00:00:00	10:40	mathias	Bruno	558181310245@s.whatsapp.net	2025-10-08 00:00:00	Cabelo+Sobrancelha
9cdde5bc-38bb-4523-ac88-4d59df35e770	2025-10-10 00:00:00	17:20	Indisponivel	Wallyson	Indisponivel	2025-10-08 19:36:27.805	
11d1df00-aca9-44dc-81a9-4817c269b17f	2025-10-10 00:00:00	18:00	Indisponivel	Wallyson	Indisponivel	2025-10-08 19:36:27.887	
40f6314c-6123-4e08-aed7-adcd5400e6a9	2025-10-10 00:00:00	18:40	Indisponivel	Wallyson	Indisponivel	2025-10-08 19:36:27.915	
532c8aa6-7cb1-4cca-b54b-0e3cd3bc10cf	2025-10-10 00:00:00	19:20	Indisponivel	Wallyson	Indisponivel	2025-10-08 19:36:27.942	
dfdaa36a-b112-49f5-9b51-9006690c5672	2025-10-10 00:00:00	20:00	Indisponivel	Wallyson	Indisponivel	2025-10-08 19:36:27.971	
a9282bd0-f2f2-4e59-8d86-0dec6b9287ee	2025-10-13 00:00:00	09:00	Indisponivel	Wallyson	Indisponivel	2025-10-08 19:37:13.305	
db03909d-01f8-42cc-bfaa-59b1c853d204	2025-10-13 00:00:00	09:40	Indisponivel	Wallyson	Indisponivel	2025-10-08 19:37:13.358	
ad367b36-476f-4a62-a0cd-cc6cbe8737ea	2025-10-13 00:00:00	10:20	Indisponivel	Wallyson	Indisponivel	2025-10-08 19:37:13.388	
d0300f72-dfcf-4bbd-aaf5-9178cb68f587	2025-10-13 00:00:00	11:00	Indisponivel	Wallyson	Indisponivel	2025-10-08 19:37:13.417	
d8146b1f-c628-4e2e-90e2-5ea31c033bbf	2025-10-13 00:00:00	11:40	Indisponivel	Wallyson	Indisponivel	2025-10-08 19:37:13.445	
3c677f52-d13f-4bb9-9ea9-1af4c3e80a26	2025-10-13 00:00:00	13:20	Indisponivel	Wallyson	Indisponivel	2025-10-08 19:37:13.473	
5e447fa6-9bd3-4245-87a2-b9fdca57fdd8	2025-10-11 00:00:00	10:00	josivaldo gomes	Bruno	558196887942@s.whatsapp.net	2025-10-08 00:00:00	Cabelo
0388201c-a232-49a5-82b3-624cdc12f896	2025-10-16 00:00:00	16:40	Adaias 	Wallyson	local	2025-10-08 20:19:13.943	Cabelo
07942c5f-4e8b-4804-9be3-17387383919a	2025-10-11 00:00:00	11:20	lucas josé	Bruno	558199311183@s.whatsapp.net	2025-10-08 00:00:00	Cabelo+Sobrancelha
ef9c5074-4bad-428a-a6cd-2377911058c0	2025-10-10 00:00:00	10:20	joão vitor	Bruno	558192250093@s.whatsapp.net	2025-10-08 00:00:00	Cabelo
5852aa4b-82cc-4b0d-a090-f98df4615e76	2025-10-10 00:00:00	14:00	Emanoel 	Bruno	local	2025-10-08 23:34:33.231	Cabelo
429260a8-a4e3-488a-a2dc-6a5ba2c0c141	2025-10-11 00:00:00	16:00	william gabriel	Bruno	558198087356@s.whatsapp.net	2025-10-08 00:00:00	Cabelo
a5ccd951-2035-43db-b432-b33ddf0cefa1	2025-10-09 00:00:00	11:20	josé henrique	Wallyson	558182163068@s.whatsapp.net	2025-10-08 00:00:00	Cabelo
f67419ba-d356-4743-bf59-7fa4f52548df	2025-10-09 00:00:00	11:40	joão pedro	Bruno	558171033590@s.whatsapp.net	2025-10-08 00:00:00	Cabelo
34fe41e4-640d-41e0-9a26-a68f558abcfd	2025-10-10 00:00:00	15:20	rafael	Bruno	558188763249@s.whatsapp.net	2025-10-08 00:00:00	Cabelo
d1669004-bb4f-47a3-a9c3-b709c6e127e4	2025-10-10 00:00:00	16:40	Rennan	Bruno	local	2025-10-09 09:27:57.566	Cabelo
09969dbd-fa9f-4ee7-b044-0027b421777a	2025-10-10 00:00:00	16:00	joão vitor	Bruno	558188511046@s.whatsapp.net	2025-10-09 00:00:00	Cabelo
c8bc28f2-ce4b-4982-a897-8eb56152550b	2025-10-09 00:00:00	18:40	Cauan 	Wallyson	local	2025-10-09 11:42:20.891	Cabelo
9692006a-7df3-494c-9b6b-6908ac7a9bfe	2025-10-10 00:00:00	11:40	breno	Bruno	558198437880@s.whatsapp.net	2025-10-09 00:00:00	Cabelo+Sobrancelha
3fcc5983-01bd-4ba5-97f0-a1d8466b2603	2025-10-13 00:00:00	18:00	renan	Bruno	558196502964@s.whatsapp.net	2025-10-09 00:00:00	Cabelo
3e479d27-f664-4790-b97b-968b56016ae8	2025-10-10 00:00:00	15:20	francisco	Wallyson	558182062970@s.whatsapp.net	2025-10-09 00:00:00	Cabelo
7ca0c68b-e96d-4ff7-ab88-938241664180	2025-10-10 00:00:00	09:20	Gelson 	Wallyson	local	2025-10-09 17:30:58.034	Cabelo
f9501ac4-bdd5-4e73-a1f6-61c0286af7f4	2025-10-09 00:00:00	16:00	Levino 	Wallyson	local	2025-10-09 17:32:29.208	Cabelo
34cec8a5-cd95-46f1-87e9-bf9e7387ff6e	2025-10-11 00:00:00	18:00	Marcado 	Wallyson	local	2025-10-09 17:43:21.611	Cabelo
810e2bf2-95cc-40f1-b470-4d50c2d30877	2025-10-11 00:00:00	17:20	Wellington 	Wallyson	local	2025-10-09 17:43:52.351	Cabelo
a6c0400c-9665-4b09-843e-33f7e169e65f	2025-10-11 00:00:00	14:40	edinho	Wallyson	558198615843@s.whatsapp.net	2025-10-09 00:00:00	Cabelo
1de287f8-976b-4a65-823a-7b31ac561b77	2025-10-10 00:00:00	08:00	Júlio 	Wallyson	local	2025-10-09 21:28:12.213	Cabelo
42fe0105-8eff-4685-a865-d2278dfd41a7	2025-10-10 00:00:00	10:00	Marcelo 	Wallyson	local	2025-10-09 21:28:27.927	Cabelo
756b6b56-c7f0-4f0a-a575-4a1185c144b0	2025-10-10 00:00:00	09:40	joão danielson	Bruno	558196702254@s.whatsapp.net	2025-10-09 00:00:00	Cabelo+Barba
42af7209-e231-4e64-bc12-c3e0f5b578c9	2025-10-10 00:00:00	16:00	joaquim medeiros	Wallyson	558196049780@s.whatsapp.net	2025-10-10 00:00:00	Cabelo
f67a0285-d8d0-4020-8b07-b21e58bdbc58	2025-10-13 00:00:00	17:20	anderson carlos	Bruno	558196579148@s.whatsapp.net	2025-10-10 00:00:00	Cabelo
97f12524-5863-4710-91fc-6acd038a3f66	2025-10-10 00:00:00	10:40	gabriel	Wallyson	558197917932@s.whatsapp.net	2025-10-10 00:00:00	Cabelo
c0a51851-eb6e-4e5e-8454-d27bf6aeff50	2025-10-10 00:00:00	16:40	miguel	Wallyson	558199728099@s.whatsapp.net	2025-10-10 00:00:00	Cabelo
22607cc5-7d20-4254-9556-dbb262001731	2025-10-11 00:00:00	13:20	júlio	Wallyson	558196192233@s.whatsapp.net	2025-10-10 00:00:00	Cabelo
20b22c61-9004-412d-830e-4e410c0eb487	2025-10-13 00:00:00	14:40	dafnis	Bruno	558199287999@s.whatsapp.net	2025-10-10 00:00:00	Cabelo
91da5499-e459-4c31-9fec-8660abe4b6f1	2025-10-13 00:00:00	13:20	tarcísio	Bruno	558185887456@s.whatsapp.net	2025-10-10 00:00:00	Cabelo
e7763a3e-2e78-41c2-81c5-d3ec3a20f37b	2025-10-13 00:00:00	18:40	gabriel	Bruno	558187145252@s.whatsapp.net	2025-10-10 00:00:00	Cabelo
778d5613-7ead-4a49-97c2-dc9323c069a8	2025-10-13 00:00:00	09:00	Indisponivel	Wallyson	Indisponivel	2025-10-10 18:35:04.659	
f8bac245-1adf-42ac-b169-61e34908655d	2025-10-13 00:00:00	09:40	Indisponivel	Wallyson	Indisponivel	2025-10-10 18:35:04.758	
67c18f1b-2b78-4c7f-b2c8-49efd4abc2bf	2025-10-13 00:00:00	10:20	Indisponivel	Wallyson	Indisponivel	2025-10-10 18:35:04.786	
c802e7eb-abed-44c7-81f7-689e8736bbda	2025-10-13 00:00:00	11:00	Indisponivel	Wallyson	Indisponivel	2025-10-10 18:35:04.817	
82656238-f90d-432d-80d4-48cd7ec176f0	2025-10-13 00:00:00	11:40	Indisponivel	Wallyson	Indisponivel	2025-10-10 18:35:04.85	
d28df1f1-3ae3-42fe-9ef2-a86b163f7d31	2025-10-13 00:00:00	13:20	Indisponivel	Wallyson	Indisponivel	2025-10-10 18:35:04.88	
9f7e9923-a6b0-44fa-95e4-ca2c70eae1aa	2025-10-13 00:00:00	14:00	Indisponivel	Wallyson	Indisponivel	2025-10-10 18:35:04.91	
b38430ae-763e-4f41-a6fc-cf45dcd8b09a	2025-10-13 00:00:00	14:40	Indisponivel	Wallyson	Indisponivel	2025-10-10 18:35:04.941	
e19ee038-374e-4559-a1c9-57488882b079	2025-10-13 00:00:00	15:20	Indisponivel	Wallyson	Indisponivel	2025-10-10 18:35:04.973	
3c55e935-6bdb-4a71-bc7f-bd2b4ebe0317	2025-10-13 00:00:00	16:00	Indisponivel	Wallyson	Indisponivel	2025-10-10 18:35:05.007	
dec625a1-77f7-4e36-9dfb-61fefacd16c6	2025-10-13 00:00:00	16:40	Indisponivel	Wallyson	Indisponivel	2025-10-10 18:35:05.038	
787c51af-ed9d-40cf-8664-a5fff0695ba0	2025-10-13 00:00:00	17:20	Indisponivel	Wallyson	Indisponivel	2025-10-10 18:35:05.069	
1952444a-f29f-44da-bf4d-2619332f17de	2025-10-13 00:00:00	18:00	Indisponivel	Wallyson	Indisponivel	2025-10-10 18:35:05.097	
539b420f-4090-4bd1-81eb-3c3c094422b9	2025-10-11 00:00:00	11:20	wesley	Wallyson	558196817233@s.whatsapp.net	2025-10-10 00:00:00	Cabelo
7e02e845-6a2b-4ee8-a7f0-d186daa58159	2025-10-11 00:00:00	10:40	mathias	Wallyson	558187494403@s.whatsapp.net	2025-10-10 00:00:00	Cabelo+Barba
e1cc5767-672d-43e5-ab4e-dc68292d79f7	2025-10-13 00:00:00	15:20	Mateus Bruna 	Bruno	local	2025-10-10 21:07:49.273	Cabelo
df3441a8-af57-4965-8ea6-b0615eb7f576	2025-10-20 00:00:00	16:00	afonso	Bruno	558199786467@s.whatsapp.net	2025-10-10 00:00:00	Cabelo
50f839df-9cc5-4708-a3fd-4a60737bb72c	2025-10-14 00:00:00	10:20	Du bolo	Bruno	local	2025-10-11 10:36:09.192	Cabelo
0af4b962-12f1-47bd-81c8-0e6c99590f4b	2025-10-14 00:00:00	11:40	Du bolo	Bruno	local	2025-10-11 10:36:27.289	Cabelo
732e2909-1be1-4e59-81cd-04119f6ae4fc	2025-10-11 00:00:00	12:00	Marcelo falta	Wallyson	local	2025-10-11 10:59:53.267	Cabelo
c0dc1f0f-5605-440d-a8a8-cee33a1677a3	2025-10-14 00:00:00	16:40	Ivonaldo	Wallyson	local	2025-10-11 12:23:00.697	Cabelo
e21674ec-c7a3-49a1-944d-451bb9fdfcac	2025-10-14 00:00:00	19:20	maykon	Bruno	558199870087@s.whatsapp.net	2025-10-11 00:00:00	Cabelo
c84c12a6-c54f-4972-b9bc-e0a6e475f392	2025-10-13 00:00:00	16:40	fabiano	Bruno	558194610556@s.whatsapp.net	2025-10-11 00:00:00	Cabelo
e0a17bc2-b939-438b-bcef-173d8d2428db	2025-10-14 00:00:00	14:40	jeferson	Wallyson	558198265483@s.whatsapp.net	2025-10-11 00:00:00	Cabelo+Barba
aa99ad9f-f981-47d5-9c4a-5f7c22f6e645	2025-10-15 00:00:00	09:00	alex	Bruno	558198874006@s.whatsapp.net	2025-10-11 00:00:00	Cabelo+Barba
627fb0e7-18cf-4e92-95c0-eda0b9078723	2025-10-15 00:00:00	11:00	leonardo	Bruno	558174001016@s.whatsapp.net	2025-10-12 00:00:00	Cabelo
fc49edb9-1279-4b01-a16a-c4555c053128	2025-10-15 00:00:00	09:40	Alex prog 	Bruno	local	2025-10-12 15:32:29.293	Cabelo
b8ca0cae-cff8-4dce-9a1f-ed412d5d2feb	2025-10-18 00:00:00	08:00	tiago	Bruno	40166651633741@lid	2025-10-12 00:00:00	Cabelo
92894989-eaa9-419e-b075-ed6aba48b9e5	2025-10-14 00:00:00	08:40	victor	Wallyson	558196193892@s.whatsapp.net	2025-10-12 00:00:00	Cabelo
9a80dac7-e56e-40d3-8fac-bb316063ff2e	2025-10-18 00:00:00	15:20	Lucas 	Wallyson	local	2025-10-12 20:56:24.037	Cabelo
16a064f4-163d-4b6b-8b08-ee60a8bd0e69	2025-10-14 00:00:00	18:40	Erick França 	Bruno	local	2025-10-12 23:36:20.771	Cabelo
adc5327f-6f20-4623-8ed2-aeded97db4bd	2025-10-14 00:00:00	11:00	pedro henrique	Bruno	558198446899@s.whatsapp.net	2025-10-12 00:00:00	Cabelo
1f3d1392-89c3-45cb-89d9-b7af885f1f59	2025-10-15 00:00:00	10:20	adson	Bruno	558195002521@s.whatsapp.net	2025-10-13 00:00:00	Cabelo
10251723-d8d3-4c46-811f-ef12d2bb57fd	2025-10-14 00:00:00	18:40	marcos floro e filho joão miguel	Wallyson	558195363219@s.whatsapp.net	2025-10-13 00:00:00	Cabelo
91109080-e6a8-4990-9898-f3d08c048bbd	2025-10-16 00:00:00	14:00	mário sergio	Bruno	558199201610@s.whatsapp.net	2025-10-13 00:00:00	Cabelo
3f38848b-d2ca-4257-b17a-61871a53a195	2025-10-18 00:00:00	09:20	cláudio henrique	Wallyson	558188482085@s.whatsapp.net	2025-10-13 00:00:00	Cabelo
b40434fd-56a4-4ca1-92f0-1fccc162a1dc	2025-12-15 00:00:00	14:40	felipe	Bruno	558195274374@s.whatsapp.net	2025-10-13 00:00:00	Cabelo
d15f319b-0892-4f32-859b-8f826cbdb159	2025-10-16 00:00:00	14:40	miguel	Bruno	558195274374@s.whatsapp.net	2025-10-13 00:00:00	Cabelo
bed506f2-41c3-403f-8ed9-be21cfbde771	2025-10-16 00:00:00	10:20	lucas victor	Bruno	558196941962@s.whatsapp.net	2025-10-13 00:00:00	Cabelo+Barba
f1db63ba-2250-4161-a66a-3cd9ca683819	2025-10-18 00:00:00	08:40	pedro arthur	Bruno	558182599443@s.whatsapp.net	2025-10-13 00:00:00	Barba
4af49007-cfb4-415c-9597-bf1185e2f639	2025-10-16 00:00:00	13:20	henrique	Bruno	558182601936@s.whatsapp.net	2025-10-13 00:00:00	Cabelo
56d8f5f6-fcfe-4285-8bd9-6e4968f6fbd5	2025-10-16 00:00:00	09:40	lucas leal	Bruno	558199505792@s.whatsapp.net	2025-10-13 00:00:00	Cabelo
b0cd74c3-e4a8-4415-b350-51011acb0f12	2025-10-14 00:00:00	14:40	breno	Bruno	558197349442@s.whatsapp.net	2025-10-13 00:00:00	Cabelo
d9d729c5-39cd-4055-b8c6-1f239169e6e3	2025-10-16 00:00:00	18:00	paulo henrique	Bruno	558174004953@s.whatsapp.net	2025-10-13 00:00:00	Cabelo+Sobrancelha
a3ff0b77-68ff-4eb4-a10f-17159a2bba06	2025-10-14 00:00:00	18:00	15/10/2025	Bruno	558199411635@s.whatsapp.net	2025-10-13 00:00:00	Cabelo+Sobrancelha
2ccd0a32-2791-4f6f-a22a-b98b9b17f8ca	2025-10-16 00:00:00	11:40	arthur	Bruno	558194115511@s.whatsapp.net	2025-10-13 00:00:00	Cabelo+Barba
7b79b3c3-1dd4-4f81-8469-55ffb5815a86	2025-10-14 00:00:00	17:20	lucas	Bruno	558197326785@s.whatsapp.net	2025-10-13 00:00:00	Cabelo
db5ff72f-58c4-43f6-99ed-985f0ee5e8a6	2025-10-14 00:00:00	17:20	lucas filho	Wallyson	558197326785@s.whatsapp.net	2025-10-13 00:00:00	Cabelo
ff1cbe75-ff45-4d1c-bd86-748c54a20e60	2025-10-15 00:00:00	11:20	horlean	Wallyson	558281363560@s.whatsapp.net	2025-10-13 00:00:00	Cabelo+Sobrancelha
71df01c7-cccd-4e32-abda-b4c7acde4fdb	2025-10-13 00:00:00	16:00	Ocupado	Bruno	local	2025-10-13 15:46:42.232	Cabelo
91dd228a-8c3e-410c-927a-ff00b7554349	2025-10-14 00:00:00	15:20	joão	Bruno	558195216795@s.whatsapp.net	2025-10-13 00:00:00	Cabelo
2c69c5d0-5e21-423a-a0f5-5640d1fbd61b	2025-10-14 00:00:00	16:40	pedro henrique	Bruno	558199160082@s.whatsapp.net	2025-10-13 00:00:00	Cabelo
20abdc43-7f13-4f85-a12c-8a6f1309b99f	2025-10-16 00:00:00	18:40	denílson	Bruno	558197084296@s.whatsapp.net	2025-10-13 00:00:00	Barba
89157d97-ed27-47d2-a19b-fa5c42896a77	2025-10-14 00:00:00	13:20	esdras gabriel	Bruno	558198526844@s.whatsapp.net	2025-10-13 00:00:00	Cabelo+Barba
f5b9c2dd-78fa-4822-b414-a8f9f6d5b7a3	2025-10-14 00:00:00	14:00	Breno	Bruno	local	2025-10-14 00:06:02.427	Cabelo+Sobrancelha
9b45c1e3-06fe-45ed-8beb-7845c329fd5a	2025-10-16 00:00:00	14:40	Miguel ( felipe simas Casas Bahia)	Wallyson	local	2025-10-14 00:07:43.282	Cabelo
3b9a7431-c714-4cd8-b845-c96b93b05a12	2025-10-17 00:00:00	17:20	deyvson	Bruno	558195479577@s.whatsapp.net	2025-10-13 00:00:00	Cabelo
373680e1-ddaa-4436-b078-bdc5c93179d5	2025-10-18 00:00:00	11:20	matheus	Bruno	558199219447@s.whatsapp.net	2025-10-13 00:00:00	Cabelo
7aae0180-7c68-4019-84af-dfa608171dd0	2025-10-17 00:00:00	16:40	lukinha pressao	Bruno	558188204134@s.whatsapp.net	2025-10-13 00:00:00	Cabelo
f494e25b-7da4-498a-a553-e1b3c9d1d7a7	2025-10-18 00:00:00	12:00	flávio	Bruno	5511992553806@s.whatsapp.net	2025-10-14 00:00:00	Cabelo
b64e881c-a300-4349-9b63-1d6e3cc51bcc	2025-10-14 00:00:00	16:00	paulo césar	Bruno	558182758461@s.whatsapp.net	2025-10-14 00:00:00	Cabelo
5797156d-76a5-4e56-b250-cc537dc24b8d	2025-10-15 00:00:00	15:20	noah	Wallyson	558196533335@s.whatsapp.net	2025-10-14 00:00:00	Cabelo
90526002-5a9c-4e2c-9fde-2135dc0754d8	2025-10-14 00:00:00	15:20	marcus	Wallyson	558199349818@s.whatsapp.net	2025-10-14 00:00:00	Cabelo
955eb1d4-8b49-47e4-8758-059534a22c1e	2025-10-14 00:00:00	09:20	Victor	Wallyson	local	2025-10-14 11:13:32.434	Cabelo
1a8650db-ae85-4022-b503-8e9501423467	2025-10-15 00:00:00	08:40	leonardo	Wallyson	558199658643@s.whatsapp.net	2025-10-14 00:00:00	Cabelo
8ba1c471-7e16-45b3-a15b-e9b7de8f202e	2025-10-14 00:00:00	18:00	Leandro 	Wallyson	local	2025-10-14 12:38:46.303	Cabelo
ebb0b3aa-cbd6-4cef-b161-98fd64ff95bd	2025-10-14 00:00:00	10:40	Marcelo 	Wallyson	local	2025-10-14 12:39:57.014	Cabelo
093612c6-b4e7-4c61-a7e5-c3b64141bf1d	2025-10-14 00:00:00	11:20	Tierry	Wallyson	local	2025-10-14 12:41:06.908	Cabelo
7a38db18-72e2-4a36-ae41-bc31b9366afa	2025-10-14 00:00:00	16:00	Alberto 	Wallyson	local	2025-10-14 12:42:32.975	Cabelo
9f6f3026-2503-4946-8710-0c1615d428df	2025-10-14 00:00:00	13:20	Marcado 	Wallyson	local	2025-10-14 12:42:49.4	Cabelo
ec7eb133-67c3-46ae-8e2c-f75035319160	2025-10-15 00:00:00	17:20	João Marcos 	Wallyson	local	2025-10-14 12:45:40.291	Cabelo+Barba
d1c551d6-9159-49de-b596-19ffc4634090	2025-10-16 00:00:00	11:00	matheus ryan	Bruno	558198446732@s.whatsapp.net	2025-10-14 00:00:00	Cabelo
5ca18c68-36e3-4172-8abe-2163f35c27a4	2025-10-14 00:00:00	09:00	ataliba	Bruno	558182671510@s.whatsapp.net	2025-10-14 00:00:00	Barba
f970db11-1884-4b99-adef-55b77052e8c3	2025-10-15 00:00:00	10:40	Matheus 	Wallyson	local	2025-10-14 13:57:02.251	Cabelo
351fe73b-4fc7-4123-a694-51fe923e5bd5	2025-10-18 00:00:00	18:00	gustavo	Wallyson	558196111653@s.whatsapp.net	2025-10-14 00:00:00	Cabelo+Sobrancelha
4f49452a-65cc-4045-a1b5-7d916cda1c35	2025-10-16 00:00:00	17:20	luiz felipe	Bruno	558197800927@s.whatsapp.net	2025-10-14 00:00:00	Cabelo
e8fc6511-5b81-4000-aa61-ff6574970043	2025-10-15 00:00:00	14:40	Mateus Lucas 	Wallyson	local	2025-10-14 16:35:55.723	Barba
a9d0debd-85f3-443c-a8cf-6a7b76ebf86c	2025-10-17 00:00:00	11:40	joão pedro campos	Bruno	558196073970@s.whatsapp.net	2025-10-14 00:00:00	Cabelo+Barba
e5786a84-8332-4c68-a0fd-734312ada908	2025-10-18 00:00:00	14:00	adeilson	Bruno	558182086614@s.whatsapp.net	2025-10-14 00:00:00	Cabelo
d272d430-fb68-4a51-b253-e1e6652fc151	2025-10-18 00:00:00	14:40	arthur	Bruno	558182086614@s.whatsapp.net	2025-10-14 00:00:00	Cabelo
e0e95594-1af2-4a44-bc25-8cffb309957d	2025-10-16 00:00:00	16:00	Igor 	Wallyson	local	2025-10-14 17:54:06.946	Cabelo+Barba
816abe89-ad52-4d27-ac62-9fecd5abdfe7	2025-10-16 00:00:00	14:00	Victor 	Wallyson	local	2025-10-14 18:00:44.059	Cabelo
a017d6d5-573d-4acb-9f6a-eae5bd82db4b	2025-10-15 00:00:00	10:00	josé matheus	Wallyson	558171157384@s.whatsapp.net	2025-10-14 00:00:00	Cabelo
52fcecba-8a11-43f7-9e47-f9cdb6497bcf	2025-10-18 00:00:00	13:20	luiz	Bruno	558181486379@s.whatsapp.net	2025-10-14 00:00:00	Cabelo+Sobrancelha
28e25b30-c1ea-4ed0-9985-9d922909c1a1	2025-10-17 00:00:00	18:40	ualesson	Bruno	558199786467@s.whatsapp.net	2025-10-14 00:00:00	Cabelo
13b77190-bcee-48da-b9a2-e0920ca94f27	2025-10-15 00:00:00	16:00	Gustavo 	Wallyson	local	2025-10-14 21:20:11.808	Cabelo
2f4fde9c-13c6-447b-a770-572fda4a7f45	2025-10-15 00:00:00	16:40	Jonai 	Wallyson	local	2025-10-14 21:20:29.385	Cabelo
d30b55bc-73a7-4aa0-a43f-761ddffdc6be	2025-10-17 00:00:00	14:40	joão victor ferreira	Bruno	558196049253@s.whatsapp.net	2025-10-14 00:00:00	Cabelo+Sobrancelha
e583a2a0-fd60-446b-a1c5-f3362373016b	2025-10-15 00:00:00	14:00	Michel 	Wallyson	local	2025-10-15 00:20:03.39	Cabelo
a5f3db27-e164-4fca-a409-8892a9a23e96	2025-10-14 00:00:00	10:00	erik	Wallyson	558191948830@s.whatsapp.net	2025-10-14 00:00:00	Cabelo
69d35436-e81a-46c8-972a-f3d1f44bac68	2025-10-16 00:00:00	17:20	Michel 	Wallyson	local	2025-10-15 09:15:38.377	Cabelo
6848c500-ad25-4b66-9d2f-0f8c560c39ba	2025-10-16 00:00:00	16:40	nilton e arthur	Bruno	558199442297@s.whatsapp.net	2025-10-15 00:00:00	Cabelo
591b180c-6a31-441c-838b-8fdfd7f159c7	2025-10-17 00:00:00	19:20	josé júnior de souza	Bruno	558182704048@s.whatsapp.net	2025-10-15 00:00:00	Cabelo
eb7c89c2-d894-4c42-9c83-21fc33cd905f	2025-10-17 00:00:00	20:00	ewerton adryan	Bruno	558198289810@s.whatsapp.net	2025-10-15 00:00:00	Cabelo
de1e5ba8-9852-4ff4-a587-fbadde6522c9	2025-10-17 00:00:00	16:00	carlos	Bruno	558182668501@s.whatsapp.net	2025-10-15 00:00:00	Cabelo+Barba
be1a384f-9836-4233-9821-3100eec88b9c	2025-10-17 00:00:00	18:00	victor	Bruno	558197610116@s.whatsapp.net	2025-10-15 00:00:00	Cabelo
78b3f1b4-74e1-496c-8799-eaa11091c747	2025-10-15 00:00:00	09:20	horlean	Wallyson	558281363560@s.whatsapp.net	2025-10-15 00:00:00	Cabelo+Sobrancelha
b0e34892-b721-4db2-a61a-18d3a8648f8b	2025-11-07 00:00:00	18:40	Mateus	Wallyson	local	2025-10-15 13:30:11.776	Cabelo+Barba
90192527-77de-4962-bd83-37e626e93768	2025-10-15 00:00:00	13:20	gerdo	Wallyson	558196275453@s.whatsapp.net	2025-10-15 00:00:00	Cabelo
050a01a5-7657-4613-aaed-52f857860f7e	2025-10-17 00:00:00	11:00	matheus	Bruno	558199843332@s.whatsapp.net	2025-10-15 00:00:00	Cabelo
10dfe73d-6e2f-473a-b55f-344c9de7a2ab	2025-10-17 00:00:00	15:20	joão guilherme	Bruno	558181673375@s.whatsapp.net	2025-10-15 00:00:00	Cabelo
0d087e1b-7f43-4baf-9f2f-def42f155a8b	2025-10-17 00:00:00	14:00	matheus	Bruno	558197941830@s.whatsapp.net	2025-10-15 00:00:00	Cabelo
c4b0a4d2-d7ff-42dd-a3b3-6379379551e0	2025-10-16 00:00:00	18:00	Fabrício 	Wallyson	local	2025-10-15 15:59:20.912	Cabelo
456045ac-659a-4519-9001-462d4ce5e429	2025-10-17 00:00:00	18:40	Issac 	Wallyson	local	2025-10-15 16:02:56.625	Cabelo
1909054a-438e-476f-87df-62732ec7d363	2025-10-20 00:00:00	18:40	gonzaga neto	Bruno	558198514795@s.whatsapp.net	2025-10-15 00:00:00	Cabelo+Sobrancelha
7c76d453-0425-4af2-8883-b7773e770416	2025-10-16 00:00:00	09:00	Dorgyl	Bruno	local	2025-10-15 17:16:05.773	Cabelo+Barba
e4ef8889-6c84-40ef-9d9c-3972558f5403	2025-10-16 00:00:00	15:20	Wesely 	Wallyson	local	2025-10-15 17:16:46.853	Cabelo
633effe3-346e-48eb-8640-aa7ef5a17bc6	2025-10-16 00:00:00	10:00	josé matheus	Wallyson	558171157384@s.whatsapp.net	2025-10-15 00:00:00	Cabelo
2ef8f9e2-44c5-494d-9010-98d5705c75df	2025-10-16 00:00:00	16:00	davi da silva ribeiro	Bruno	558197249897@s.whatsapp.net	2025-10-15 00:00:00	Cabelo+Barba
7eec2623-7403-433e-a72d-186862cfbf33	2025-10-17 00:00:00	16:40	fernando	Wallyson	558197789968@s.whatsapp.net	2025-10-15 00:00:00	Cabelo
b0c46845-e0a3-4f8d-8a1e-9b20e2af9957	2025-10-22 00:00:00	18:00	vitor	Bruno	558181643618@s.whatsapp.net	2025-10-15 00:00:00	Cabelo+Sobrancelha
9c690b22-3105-4317-b68b-fed38a80a8cf	2025-10-22 00:00:00	17:20	vinicius	Bruno	558181643618@s.whatsapp.net	2025-10-15 00:00:00	Cabelo+Sobrancelha
39e57e4e-a018-484d-898a-d2ca44912a78	2025-10-18 00:00:00	16:00	andrew	Wallyson	558198694494@s.whatsapp.net	2025-10-15 00:00:00	Cabelo
da86d452-868a-4b2f-a245-8f1d6679e5ba	2025-10-17 00:00:00	08:40	claudio figueiredo	Wallyson	202787501646016@lid	2025-10-15 00:00:00	Cabelo+Sobrancelha
9b244cae-e635-4ddd-9e9e-1805fefead90	2025-10-17 00:00:00	10:20	anderson	Bruno	558198694494@s.whatsapp.net	2025-10-15 00:00:00	Cabelo
3c600718-6952-40e2-931e-233e92f26aaf	2025-10-16 00:00:00	13:20	césar	Wallyson	558197520499@s.whatsapp.net	2025-10-15 00:00:00	Cabelo+Sobrancelha
9bcab57b-2e5b-42e3-9821-0d4d839e4543	2025-10-18 00:00:00	08:00	márcio	Wallyson	558199069172@s.whatsapp.net	2025-10-15 00:00:00	Cabelo
b695f6b7-2844-4999-8d36-a282b263d26d	2025-10-18 00:00:00	08:40	wesley 🫡	Wallyson	558181016662@s.whatsapp.net	2025-10-15 00:00:00	Cabelo+Sobrancelha
d710d199-5d97-4230-80b8-fd7bc7f43a02	2025-10-17 00:00:00	14:00	Davi 	Wallyson	local	2025-10-16 14:05:55.242	Cabelo
70b83747-397c-433a-a253-91ae993d9a2e	2025-10-17 00:00:00	20:00	Pedro 	Wallyson	local	2025-10-16 14:08:41.589	Cabelo+Barba
f5eb0647-f8c1-43b3-8978-f6e99210ac85	2025-10-17 00:00:00	09:00	mateus	Bruno	558196083218@s.whatsapp.net	2025-10-16 00:00:00	Cabelo+Barba
01a27e67-9818-45c0-91e3-067f4ad0d1f0	2025-10-18 00:00:00	10:00	Cícero 	Wallyson	local	2025-10-16 14:22:10.385	Cabelo
10fd36e2-b09a-495a-a143-200aa089123d	2025-10-17 00:00:00	13:20	mauricio	Bruno	558182705181@s.whatsapp.net	2025-10-16 00:00:00	Cabelo
e807b0bc-a1a0-4974-b0e4-e4037b55c99f	2025-10-16 00:00:00	15:20	matheus	Bruno	558196073942@s.whatsapp.net	2025-10-16 00:00:00	Cabelo+Barba
4de8beb0-c478-45cd-b5a0-5712933947c9	2025-10-17 00:00:00	09:40	thomas	Bruno	558181391720@s.whatsapp.net	2025-10-16 00:00:00	Cabelo
07efbb1f-c899-48cc-bdbe-5c3a650e33eb	2025-10-18 00:00:00	16:40	Mariano 	Wallyson	local	2025-10-16 20:17:08.328	Cabelo+Barba
674172b8-d7bf-4f2f-a904-fd7596d1c840	2025-10-17 00:00:00	08:00	Eudes 	Wallyson	local	2025-10-16 20:19:10.028	Cabelo
65aafeee-21af-4d83-9f8d-5f2548ac2767	2025-10-20 00:00:00	17:20	manoel neto	Bruno	558195055212@s.whatsapp.net	2025-10-16 00:00:00	Cabelo+Barba
5666be67-86fe-45a7-828d-a774b994a0c0	2025-10-23 00:00:00	09:00	david callebe	Bruno	558191447860@s.whatsapp.net	2025-10-16 00:00:00	Cabelo+Barba
53ef9daf-75a5-4feb-9257-7cd44d579229	2025-10-18 00:00:00	14:40	Robson 	Wallyson	local	2025-10-16 22:22:54.863	Cabelo+Barba
64adc051-7baf-4bad-b55f-fcd4992712b4	2025-10-21 00:00:00	13:20	Indisponivel	Wallyson	Indisponivel	2025-10-16 23:21:17.596	
8904e4fa-86c1-475a-a6d2-684957cb4f46	2025-10-21 00:00:00	14:00	Indisponivel	Wallyson	Indisponivel	2025-10-16 23:21:17.673	
a4799cce-97b7-4b61-aca3-07965d51f465	2025-10-21 00:00:00	14:40	Indisponivel	Wallyson	Indisponivel	2025-10-16 23:21:17.699	
bfb0467d-474b-4994-a8d7-67e561f290d5	2025-10-21 00:00:00	15:20	Indisponivel	Wallyson	Indisponivel	2025-10-16 23:21:17.726	
e54d4fb7-2c06-4a79-914c-6cc50836ad0f	2025-10-21 00:00:00	16:00	Indisponivel	Wallyson	Indisponivel	2025-10-16 23:21:17.752	
57568dc0-99db-4648-9caa-59e5896c9a29	2025-10-21 00:00:00	16:40	Indisponivel	Wallyson	Indisponivel	2025-10-16 23:21:17.779	
ad5ef878-f631-4232-9c0f-1d2d321fc7dd	2025-10-21 00:00:00	17:20	Indisponivel	Wallyson	Indisponivel	2025-10-16 23:21:17.807	
54fe1568-8cd9-4398-8bbf-7d492dcbc875	2025-10-21 00:00:00	18:00	Indisponivel	Wallyson	Indisponivel	2025-10-16 23:21:17.836	
14013a79-e8c2-4143-9386-2cb1bfe8b701	2025-10-21 00:00:00	18:40	Indisponivel	Wallyson	Indisponivel	2025-10-16 23:21:17.863	
b1d3994d-e189-42a6-8a1c-9b61823aa2c6	2025-10-24 00:00:00	19:20	lucas leal	Bruno	558182605271@s.whatsapp.net	2025-10-16 00:00:00	Cabelo+Sobrancelha
afe723d4-be18-4221-a063-1a4b8471bba6	2025-10-17 00:00:00	14:40	elysson	Wallyson	558199697267@s.whatsapp.net	2025-10-17 00:00:00	Cabelo+Sobrancelha
6ef98135-c829-4354-b150-2422e7a79066	2025-10-18 00:00:00	13:20	isaque	Wallyson	558182470021@s.whatsapp.net	2025-10-17 00:00:00	Cabelo
5cfb1d0a-6dc9-4920-b944-8e324fd208db	2025-10-18 00:00:00	14:00	samuel	Wallyson	558182470021@s.whatsapp.net	2025-10-17 00:00:00	Cabelo
70b088c2-57c6-450c-aaaa-ef613220190e	2025-10-18 00:00:00	10:40	Matheus 	Wallyson	local	2025-10-17 12:25:59.718	Cabelo
59ebde99-242c-446e-9bdf-824497a5a95c	2025-10-17 00:00:00	15:20	Cláudio amigo de Zé neto 	Wallyson	local	2025-10-17 13:57:14.337	Cabelo
873f701c-f687-4725-9eab-ba8bb9775cbf	2025-10-21 00:00:00	09:40	matheus	Bruno	558196191710@s.whatsapp.net	2025-10-17 00:00:00	Cabelo+Sobrancelha
154af3bb-def4-4d4b-a24a-a8e3cd86531b	2025-10-24 00:00:00	18:00	ryan valério	Bruno	69153402691745@lid	2025-10-17 00:00:00	Cabelo+Barba
8ed12ca9-4de7-4d08-ba5f-05f11fb3ab99	2025-10-20 00:00:00	13:20	asafe	Bruno	558171076971@s.whatsapp.net	2025-10-17 00:00:00	Cabelo
cf551c25-110f-429b-9fb2-034275ae74ea	2025-10-18 00:00:00	11:20	júlio césar	Wallyson	558196440108@s.whatsapp.net	2025-10-17 00:00:00	Cabelo+Sobrancelha
9f5c1668-69b1-43af-853f-fcf80e463de0	2025-10-24 00:00:00	13:20	bruno	Bruno	558181317634@s.whatsapp.net	2025-10-17 00:00:00	Cabelo+Sobrancelha
a6aa19d8-cf9e-4793-8f5b-941ebc2e4a3b	2025-10-18 00:00:00	12:00	arthur	Wallyson	558196000246@s.whatsapp.net	2025-10-17 00:00:00	Cabelo
5ef3d763-af1f-4ea3-8ceb-f42f70b109f8	2025-10-17 00:00:00	17:20	Felipe 	Wallyson	local	2025-10-17 17:28:23.221	Cabelo
d98f8a97-f173-4897-8a94-b666b5b4e659	2025-10-17 00:00:00	18:00	Laudo 	Wallyson	local	2025-10-17 19:14:19.236	Cabelo
a9a3c65b-c9b7-43b2-a147-293513455de7	2025-10-17 00:00:00	19:20	Adegilson 	Wallyson	local	2025-10-17 19:49:01.537	Cabelo
71822c88-6a74-4ec1-b05f-20d9aa994eea	2025-10-20 00:00:00	17:20	glaucio	Wallyson	558187255411@s.whatsapp.net	2025-10-17 00:00:00	Cabelo
c319b5cb-7ae9-43dd-80b6-6aa8fce4c77e	2025-10-31 00:00:00	18:00	Pedrão 	Wallyson	local	2025-10-18 00:00:47.62	Cabelo+Barba
b56861df-6cd2-4904-b565-574dc3e15045	2025-10-20 00:00:00	16:40	felipe silva	Bruno	558179158954@s.whatsapp.net	2025-10-17 00:00:00	Cabelo
e0145744-5e59-488a-9273-2bb6860b8624	2025-10-20 00:00:00	14:00	luan	Bruno	558196003977@s.whatsapp.net	2025-10-18 00:00:00	Cabelo+Sobrancelha
d8f709ce-b293-4045-94fe-39b538ad1329	2025-10-20 00:00:00	15:20	gustavo	Bruno	558198983986@s.whatsapp.net	2025-10-18 00:00:00	Cabelo
e42b446b-3648-4f36-86ff-971e12296aa1	2025-10-20 00:00:00	18:00	joão paulo	Wallyson	558182158768@s.whatsapp.net	2025-10-18 00:00:00	Cabelo
70fdfe75-7482-4af4-a093-37462c1c8ff6	2025-10-25 00:00:00	16:00	Thiago	Wallyson	local	2025-10-18 16:34:31.055	Cabelo+Barba
81878985-1c23-4f63-8f77-fd4615995fb5	2025-10-20 00:00:00	14:40	pedro augusto	Bruno	558171185174@s.whatsapp.net	2025-10-18 00:00:00	Cabelo
c72e42fa-7cf9-42e0-8cc4-76835e140b20	2025-10-20 00:00:00	16:00	kayke	Wallyson	558197180683@s.whatsapp.net	2025-10-18 00:00:00	Cabelo+Barba
049ea222-08d1-435b-b099-7248a0f233c2	2025-10-31 00:00:00	18:40	joão	Wallyson	558196050355@s.whatsapp.net	2025-10-18 00:00:00	Cabelo+Barba
b6ef15c0-217e-4d72-80b1-f8e445432b2b	2025-10-20 00:00:00	18:00	enzo	Bruno	73302307541108@lid	2025-10-19 00:00:00	Cabelo
e8951c62-e63a-4f74-9c3c-ceba15026940	2025-10-25 00:00:00	15:20	heytor	Bruno	558197714625@s.whatsapp.net	2025-10-19 00:00:00	Cabelo+Barba
9b02758a-7378-4dc1-b259-8b4875ba473a	2025-10-20 00:00:00	10:20	Jesus Miguel 	Wallyson	local	2025-10-19 14:23:14.774	Cabelo
e1296f48-c0db-456f-917a-a8122d86e0ef	2025-10-22 00:00:00	09:00	matheus lima	Bruno	272150653051023@lid	2025-10-19 00:00:00	Cabelo+Sobrancelha
710efda9-2291-4deb-9338-ae2f4c678d28	2025-10-20 00:00:00	15:20	lucas gabriel	Wallyson	558199333703@s.whatsapp.net	2025-10-19 00:00:00	Cabelo+Sobrancelha
67966113-89ba-4f72-b651-0404d4218983	2025-10-23 00:00:00	18:40	Júnior e Gabriel 	Wallyson	local	2025-10-19 20:08:44.008	Cabelo+Barba
6ab02777-5d48-4ee1-a8a1-aeeb9f7ebf6e	2025-10-20 00:00:00	09:00	Marcado	Wallyson	local	2025-10-19 20:09:47.224	Cabelo
d9cf1396-a1ce-4292-9773-3d28ccf5daf5	2025-10-25 00:00:00	10:00	marcus	Bruno	558198507164@s.whatsapp.net	2025-10-19 00:00:00	Cabelo
d6c1a50f-dc45-4c44-a02a-51f48d774087	2025-10-21 00:00:00	11:00	marcos rodrigues	Bruno	558196681292@s.whatsapp.net	2025-10-19 00:00:00	Cabelo
7d92ce34-b674-4374-bbe3-c50a76ae42e7	2025-10-21 00:00:00	11:40	sid	Bruno	558191536718@s.whatsapp.net	2025-10-20 00:00:00	Cabelo+Barba
bee2f001-3687-448f-869c-f3e19d0c3228	2025-10-20 00:00:00	13:20	jorge	Wallyson	558199658478@s.whatsapp.net	2025-10-20 00:00:00	Cabelo+Sobrancelha
978ece56-4c9a-4e22-915e-e52d58583a45	2025-10-21 00:00:00	10:20	fernando	Bruno	558196035269@s.whatsapp.net	2025-10-20 00:00:00	Cabelo
899bdf25-b5e9-49e2-8537-3d97351a5f27	2025-11-01 00:00:00	16:00	kaique	Bruno	558194270364@s.whatsapp.net	2025-10-20 00:00:00	Cabelo
93c3b541-2856-4b1a-991b-d8705eca9f81	2025-11-01 00:00:00	16:00	lucas	Wallyson	558194270364@s.whatsapp.net	2025-10-20 00:00:00	Cabelo
e0a6c542-41c8-4f79-8245-60dd68d63f5d	2025-10-20 00:00:00	14:40	gabriel	Wallyson	558185827719@s.whatsapp.net	2025-10-20 00:00:00	Cabelo
b2d2617d-31b7-4cb5-935e-ad4f9d3e7a46	2025-10-21 00:00:00	10:00	kallebe	Wallyson	46712165003493@lid	2025-10-20 00:00:00	Cabelo
e958edef-6c35-4962-bd8f-639d6fa2504d	2025-10-22 00:00:00	09:40	anthony	Bruno	558197620059@s.whatsapp.net	2025-10-20 00:00:00	Cabelo
ab26526c-2eec-4198-8b68-d22c167bc2af	2025-10-25 00:00:00	08:40	douglas wesley	Bruno	558181954284@s.whatsapp.net	2025-10-20 00:00:00	Cabelo+Barba
ecacf49d-3e57-495e-90b8-316334adaacb	2025-10-24 00:00:00	16:00	fabiano	Bruno	558194610556@s.whatsapp.net	2025-10-20 00:00:00	Cabelo+Barba
edd49221-888e-4856-b294-714603551e66	2025-10-21 00:00:00	08:40	Indisponivel	Wallyson	Indisponivel	2025-10-20 13:58:41.792	
0f10472d-0c85-4e67-b046-0180270b7673	2025-10-21 00:00:00	09:20	Indisponivel	Wallyson	Indisponivel	2025-10-20 13:58:41.878	
17cbf66a-94c8-4dd3-a777-c57206bee891	2025-10-21 00:00:00	10:00	Indisponivel	Wallyson	Indisponivel	2025-10-20 13:58:41.907	
0b3e1e10-90ca-46cb-867a-6959c8557683	2025-10-21 00:00:00	10:40	Indisponivel	Wallyson	Indisponivel	2025-10-20 13:58:41.935	
b4cb5d97-ae97-4614-bed3-dd9d63388234	2025-10-21 00:00:00	11:20	Indisponivel	Wallyson	Indisponivel	2025-10-20 13:58:41.964	
2974c337-d5fc-4b32-be8e-7884c86649a2	2025-10-23 00:00:00	11:40	Sidney 	Bruno	local	2025-10-20 16:02:25.254	Cabelo+Barba
dbac5e38-4cbf-496e-8b6d-ec1ef1cf7e8b	2025-10-22 00:00:00	16:00	romerio	Bruno	558198627331@s.whatsapp.net	2025-10-20 00:00:00	Cabelo+Barba
e18d16b6-6e74-46f2-94b9-5fee05c9a566	2025-10-20 00:00:00	16:40	Miguel	Wallyson	local	2025-10-20 16:39:01.007	Cabelo
ae8c360b-687b-4636-958c-8154387dae58	2025-10-22 00:00:00	08:40	Wellington 	Wallyson	local	2025-10-20 18:22:37.985	Cabelo
bec9b6b2-f40d-4cc6-976c-6def849a6d72	2025-10-22 00:00:00	14:00	kaio	Bruno	558197806738@s.whatsapp.net	2025-10-20 00:00:00	Cabelo+Sobrancelha
f0fd9dac-e05b-4d6e-9f90-413265fa9f3a	2025-10-22 00:00:00	16:00	gabriel	Wallyson	558196236188@s.whatsapp.net	2025-10-20 00:00:00	Cabelo
559d8ba3-eb86-4d17-bf9e-59434a6ae8ed	2025-10-23 00:00:00	18:00	livio	Bruno	31447800889387@lid	2025-10-20 00:00:00	Barba
fee8e668-66cc-4a33-b3a2-2a294db97523	2025-10-25 00:00:00	11:20	kayke	Wallyson	558197180683@s.whatsapp.net	2025-10-20 00:00:00	Cabelo+Barba
ee557cb1-4f41-46b8-acc4-ffa143821931	2025-11-10 00:00:00	17:20	Glaucio 	Wallyson	local	2025-10-20 21:07:41.268	Cabelo+Sobrancelha
3a4e08f1-e13e-487b-8689-d2d99620af9f	2025-10-22 00:00:00	16:40	Noah	Wallyson	local	2025-10-20 22:19:20.25	Cabelo
7ffff357-f2f2-4500-9c0a-49fea080b767	2025-10-22 00:00:00	18:00	diego	Wallyson	558173303801@s.whatsapp.net	2025-10-20 00:00:00	Cabelo
389c8494-0ba5-4fcb-9ea3-2075cd40301c	2025-10-25 00:00:00	12:00	ryan	Bruno	558196680308@s.whatsapp.net	2025-10-20 00:00:00	Cabelo+Barba
af5074b5-4b10-4f4a-9df0-ba93d494d1af	2025-10-25 00:00:00	13:20	allef ryan	Bruno	558195740243@s.whatsapp.net	2025-10-21 00:00:00	Cabelo
090b206e-e46b-47c4-a74c-03e90976baf0	2025-10-22 00:00:00	14:40	henrique	Bruno	558182601936@s.whatsapp.net	2025-10-21 00:00:00	Cabelo
50a2db33-c974-458f-b2f3-d921747b8a9c	2025-10-22 00:00:00	13:20	heitor	Bruno	558182601936@s.whatsapp.net	2025-10-21 00:00:00	Cabelo
b77a659c-d793-4a72-8ca9-7cfa08470f4a	2025-10-22 00:00:00	15:20	joão lucas	Bruno	558182601936@s.whatsapp.net	2025-10-21 00:00:00	Cabelo
03cbb701-ea34-4ad0-a009-01b072216ebd	2025-10-22 00:00:00	10:20	Ivan	Bruno	local	2025-10-21 10:55:55.254	Cabelo
c4257c78-41c9-4b7a-8718-ed46d1a40d6f	2025-10-24 00:00:00	09:40	arthur	Bruno	558197087531@s.whatsapp.net	2025-10-21 00:00:00	Cabelo
ad92323c-11c6-4d0e-9d64-14fd9a921013	2025-10-24 00:00:00	08:00	wilson	Wallyson	558197148928@s.whatsapp.net	2025-10-21 00:00:00	Cabelo+Sobrancelha
b60a22b9-2b4d-43d1-8503-068eaa679084	2025-10-24 00:00:00	20:00	mago guilherme	Bruno	558188551828@s.whatsapp.net	2025-10-21 00:00:00	Cabelo+Barba
3742ac23-3c7c-4bc2-8917-d1ab29cda652	2025-10-24 00:00:00	17:20	nicolas	Bruno	558189554545@s.whatsapp.net	2025-10-21 00:00:00	Cabelo
fb65d893-e7ec-4301-974a-c4b44d438eb8	2025-10-23 00:00:00	18:00	Lyaderson 	Wallyson	local	2025-10-21 13:08:31.789	Cabelo
46cd3ad2-252a-4ba4-9bc1-3989f21135d8	2025-10-22 00:00:00	09:20	Paulo 	Wallyson	local	2025-10-21 13:10:09.746	Cabelo
b1de0a26-8266-4608-868f-0ae7a53efbe4	2025-10-22 00:00:00	11:00	marcos queiroz	Bruno	558181473848@s.whatsapp.net	2025-10-21 00:00:00	Cabelo
fd3d8f34-aaba-4796-b1dc-12353d2920f3	2025-10-29 00:00:00	10:20	markinhos lopes	Bruno	108689046417640@lid	2025-10-21 00:00:00	Cabelo+Barba
8262a52b-f32a-4cc9-946f-20526b6a50b9	2025-10-22 00:00:00	08:00	heron	Wallyson	5581920018112@s.whatsapp.net	2025-10-21 00:00:00	Cabelo+Barba
80ed6b4d-736b-414a-8d0e-82a0e360f096	2025-10-24 00:00:00	16:40	mário areias	Wallyson	558381367304@s.whatsapp.net	2025-10-21 00:00:00	Cabelo+Barba
b5370a24-c884-4bf2-be72-dbf2daca7e15	2025-10-23 00:00:00	18:40	denílson	Bruno	558197084296@s.whatsapp.net	2025-10-21 00:00:00	Cabelo+Barba
1f6aa611-2a16-4893-af76-8e7072772f87	2025-10-24 00:00:00	16:00	marcos elielson	Wallyson	558195356602@s.whatsapp.net	2025-10-21 00:00:00	Cabelo+Barba
eaef0a0d-a74b-43ab-8a5f-1131a812e53d	2025-10-25 00:00:00	10:40	gustavo nascimento	Bruno	558181670651@s.whatsapp.net	2025-10-21 00:00:00	Cabelo
b182eede-f532-4cae-8890-7346364fe4c7	2025-10-25 00:00:00	08:00	cláudio figueiredo	Wallyson	202787501646016@lid	2025-10-21 00:00:00	Cabelo+Sobrancelha
6df91aba-d3d9-474f-ad69-3e8b50bca1d9	2025-10-24 00:00:00	11:00	já.	Bruno	558179136535@s.whatsapp.net	2025-10-21 00:00:00	Cabelo+Sobrancelha
44de55ff-121c-4601-9e57-041fc3dbf72c	2025-10-25 00:00:00	17:20	leiliane agendamento pra ruan	Wallyson	558198371428@s.whatsapp.net	2025-10-21 00:00:00	Cabelo
2ff1c4a7-3a23-4bd6-9b33-a47e9976cdf0	2025-10-23 00:00:00	14:00	filipi paixão	Bruno	558196685930@s.whatsapp.net	2025-10-21 00:00:00	Cabelo
550f9db8-2f18-4589-9746-e197f208272b	2025-10-24 00:00:00	18:40	édson gomes	Bruno	558197279446@s.whatsapp.net	2025-10-21 00:00:00	Cabelo+Sobrancelha
6c1f34e6-aa00-4377-8593-04a2af15938a	2025-10-24 00:00:00	16:40	andré	Bruno	558197273032@s.whatsapp.net	2025-10-21 00:00:00	Cabelo
1ee84e1b-bf92-4f93-ad85-609cf3817b4c	2025-10-24 00:00:00	15:20	vinicius	Bruno	558196496652@s.whatsapp.net	2025-10-21 00:00:00	Cabelo
efb30e96-f7dd-4241-9d8a-a42ae1a4c581	2025-10-22 00:00:00	10:00	Natan 	Wallyson	local	2025-10-21 21:18:00.728	Cabelo
2a74f556-974c-40b3-a22c-0a5cf529b074	2025-10-22 00:00:00	16:40	miguel	Bruno	558198627331@s.whatsapp.net	2025-10-21 00:00:00	Cabelo
d9d3ad89-6007-4b0e-b94a-4ab46f5b145e	2025-10-22 00:00:00	17:20	gildevan	Wallyson	558182508046@s.whatsapp.net	2025-10-21 00:00:00	Cabelo
0b2dac26-8bec-46c6-bac1-3b14d97bac60	2025-10-22 00:00:00	11:40	emídio arruda	Bruno	558181606802@s.whatsapp.net	2025-10-21 00:00:00	Cabelo
87a9cb8f-e880-470e-9fe1-6c0dd512cb00	2025-10-24 00:00:00	14:40	paulo	Bruno	558199302136@s.whatsapp.net	2025-10-21 00:00:00	Cabelo
45ab63e3-f29a-4dd9-82cb-99a92b20ab42	2025-10-23 00:00:00	17:20	weslley	Bruno	558197215641@s.whatsapp.net	2025-10-22 00:00:00	Cabelo
d7b1de46-c762-40a7-ab6c-1dfaebbacd4a	2025-10-23 00:00:00	16:00	gonzaga	Bruno	2735927730191@lid	2025-10-22 00:00:00	Cabelo
c94e46d0-d7e4-48ca-83ee-39ee04fe83b4	2025-10-22 00:00:00	14:00	Fernando 	Wallyson	local	2025-10-22 09:32:01.552	Cabelo
8a6b9962-1389-473f-8dc3-87758d33cadd	2025-10-22 00:00:00	14:40	eduardo	Wallyson	558194699903@s.whatsapp.net	2025-10-22 00:00:00	Cabelo
75be6fe5-0e67-42d8-a99a-8f297a98939e	2025-10-25 00:00:00	14:40	dubolo	Bruno	558196647899@s.whatsapp.net	2025-10-22 00:00:00	Cabelo
9bb8c92b-f25e-493a-a232-76a41c4a153b	2025-10-22 00:00:00	10:40	Marcado 	Wallyson	local	2025-10-22 11:53:19.827	Cabelo
0abeb0bf-dd07-429e-ac0c-e1ac971044a4	2025-10-22 00:00:00	13:20	Jorsino 	Wallyson	local	2025-10-22 11:53:55.525	Cabelo
ca0b3f80-bc52-4c92-a42d-96acddb29a99	2025-10-23 00:00:00	11:00	ataliba	Bruno	558182671510@s.whatsapp.net	2025-10-22 00:00:00	Barba
719a7083-7f2a-4036-a175-2d058d8ac867	2025-10-25 00:00:00	08:40	Cleiton 	Wallyson	local	2025-10-22 14:11:50.723	Cabelo
401f486e-4afc-4ecc-a735-a96335561800	2025-10-23 00:00:00	09:20	paulo césar	Wallyson	558195254306@s.whatsapp.net	2025-10-22 00:00:00	Cabelo
a348c598-e390-4118-a18c-ec24c2352f01	2025-10-24 00:00:00	17:20	Heitor 	Wallyson	local	2025-10-22 16:11:05.224	Cabelo
d1d9aa8e-6dcd-40ef-a3b0-cf6aeca72e2c	2025-10-25 00:00:00	13:20	daniel	Wallyson	558199459046@s.whatsapp.net	2025-10-22 00:00:00	Cabelo
ddbab03b-6a78-4beb-83b6-4fde75c2d837	2025-10-23 00:00:00	16:40	rennan	Bruno	558179005726@s.whatsapp.net	2025-10-22 00:00:00	Cabelo
9e448309-6e90-4445-842a-c4e4f77bd26c	2025-10-24 00:00:00	15:20	Heitor 	Wallyson	local	2025-10-22 16:48:26.522	Cabelo
ce49f61f-0e43-4477-ae27-85807207a99e	2025-10-25 00:00:00	14:00	deyvid jhonatan	Bruno	558199201610@s.whatsapp.net	2025-10-22 00:00:00	Cabelo+Sobrancelha
db103cfe-7e7a-442a-8d25-2f88a2bdf4ce	2025-10-25 00:00:00	10:40	Carlos 	Wallyson	local	2025-10-22 20:40:30.898	Cabelo
17945f2b-643e-495d-820d-1fdd6da1d405	2025-10-27 00:00:00	14:00	rhyan	Bruno	558196672733@s.whatsapp.net	2025-10-22 00:00:00	Cabelo
52ed60c1-7deb-481b-b81c-b20377a6758f	2025-10-27 00:00:00	14:40	rhavi	Bruno	558196672733@s.whatsapp.net	2025-10-22 00:00:00	Cabelo
4569d70f-7ebf-414e-a417-03834f4c45de	2025-11-18 00:00:00	14:00	Gabriel 	Wallyson	local	2025-10-22 23:12:26.852	Cabelo
8ae05aeb-e2f7-4fed-bb4b-322bdea83008	2025-10-25 00:00:00	08:00	joão guilherme	Bruno	558192101006@s.whatsapp.net	2025-10-22 00:00:00	Cabelo
cd5cd4a5-92e5-4502-bd40-3d8311a6f1d6	2025-10-24 00:00:00	10:20	marcos rodrigues	Bruno	558196681292@s.whatsapp.net	2025-10-22 00:00:00	Cabelo
b2af432e-ae89-4bb3-9644-4709af8251be	2025-10-24 00:00:00	11:40	thomas	Bruno	558181391720@s.whatsapp.net	2025-10-22 00:00:00	Cabelo
e875dd28-2cf4-450c-bb7d-11bab4ea06be	2025-10-23 00:00:00	13:20	eduardo	Bruno	558198079679@s.whatsapp.net	2025-10-22 00:00:00	Cabelo
6eac565a-163e-4ccb-a547-236d31a5bdd3	2025-10-23 00:00:00	14:40	heitor \ne\nrafael	Bruno	558185611507@s.whatsapp.net	2025-10-23 00:00:00	Cabelo
70779788-e30a-44d5-aee4-5841d8ca7ee2	2025-10-23 00:00:00	08:00	Marcado 	Wallyson	local	2025-10-23 10:11:06.939	Cabelo
c9a93098-e666-4bac-8dbb-9682b8a09aa2	2025-10-23 00:00:00	11:20	Lucas 	Wallyson	local	2025-10-23 10:17:43.345	Cabelo
f60b0c1e-fb69-443f-a836-be6e71c79cb0	2025-10-23 00:00:00	13:20	renan	Wallyson	558195330370@s.whatsapp.net	2025-10-23 00:00:00	Cabelo+Barba
43e45f97-23f4-4f1a-acd6-84f4a49f7394	2025-10-23 00:00:00	14:40	Rafael criança ruiva 	Wallyson	local	2025-10-23 11:20:21.178	Cabelo
45d6345f-5e5f-4ef3-a731-32affafea794	2025-10-23 00:00:00	10:40	adriel	Wallyson	558196649167@s.whatsapp.net	2025-10-23 00:00:00	Cabelo+Barba
c1612c90-0d7e-48a1-b74e-0c96108a18d2	2025-10-23 00:00:00	10:20	lucas	Bruno	558185469353@s.whatsapp.net	2025-10-23 00:00:00	Cabelo
4b61e9de-3fcb-4dba-aec2-c797eb8b0779	2025-10-23 00:00:00	14:00	vandro júnior	Wallyson	558196610362@s.whatsapp.net	2025-10-23 00:00:00	Cabelo
56f86db3-9099-436d-886b-9e299b8510b7	2025-10-23 00:00:00	15:20	breno	Bruno	558198437880@s.whatsapp.net	2025-10-23 00:00:00	Cabelo+Sobrancelha
84d7f867-6320-409e-9406-97edf5036e36	2025-10-30 00:00:00	16:40	fernando	Wallyson	558199410150@s.whatsapp.net	2025-10-23 00:00:00	Cabelo+Sobrancelha
79e8f5e0-9aad-4d35-8acc-56cf9804ee79	2025-10-27 00:00:00	13:20	vicente	Bruno	558197192758@s.whatsapp.net	2025-10-23 00:00:00	Cabelo+Sobrancelha
869a613b-eb2d-4c8d-a2f5-fa132c1ba19e	2025-10-24 00:00:00	09:00	anderson	Bruno	558197666072@s.whatsapp.net	2025-10-23 00:00:00	Cabelo
b1e11bb5-aae7-4b0d-8581-5952613947ca	2025-10-23 00:00:00	15:20	mathias	Wallyson	558187494403@s.whatsapp.net	2025-10-23 00:00:00	Cabelo+Barba
ba4bbf8c-d49a-4bb5-bd21-c8a4adfc5890	2025-10-28 00:00:00	19:20	fernando nutri smart	Bruno	558199948217@s.whatsapp.net	2025-10-23 00:00:00	Cabelo
5916f484-d967-4434-b759-af70a42cc9a1	2025-10-27 00:00:00	09:00	joão lucas	Wallyson	558198783426@s.whatsapp.net	2025-10-23 00:00:00	Cabelo
b6e16865-834d-4174-bb12-ef645278563d	2025-10-25 00:00:00	11:20	carlos	Bruno	558182668501@s.whatsapp.net	2025-10-23 00:00:00	Cabelo+Barba
a193572b-18f2-4b73-a0b2-fe04c16d6810	2025-10-31 00:00:00	19:20	leonardo	Bruno	558196987419@s.whatsapp.net	2025-10-23 00:00:00	Cabelo
8a76b6f5-da9b-4a8b-8519-9c52f56b9431	2025-10-31 00:00:00	20:00	leonardo	Bruno	558196987419@s.whatsapp.net	2025-10-23 00:00:00	Cabelo
e87bb62d-0111-4f53-8998-e31c3167d50e	2025-10-24 00:00:00	14:00	genildo	Bruno	558199736143@s.whatsapp.net	2025-10-23 00:00:00	Cabelo
8a19f6d7-87b3-4e38-a902-933efd3bcccc	2025-10-24 00:00:00	14:00	Wilson 	Wallyson	local	2025-10-23 18:53:25.353	Cabelo
468c5d8b-602c-48d8-b7e6-3436470d1128	2025-10-25 00:00:00	16:40	kallebe	Wallyson	46712165003493@lid	2025-10-23 00:00:00	Cabelo
ee48f863-1a51-4d2c-817f-3122588cb48f	2025-10-24 00:00:00	14:40	Kauan 	Wallyson	local	2025-10-23 20:18:13.015	Cabelo
c77b37d5-8bff-47cc-8962-d307f0239481	2025-10-24 00:00:00	18:40	luan victor	Wallyson	558181307345@s.whatsapp.net	2025-10-23 00:00:00	Cabelo+Sobrancelha
7826406c-8357-49ff-a36a-e565b120ca5d	2025-10-27 00:00:00	18:00	andre	Bruno	558198995821@s.whatsapp.net	2025-10-23 00:00:00	Cabelo+Sobrancelha
ee2255cc-f829-4d35-8060-4116a2e90ce8	2025-10-24 00:00:00	10:00	marcel	Wallyson	558198490038@s.whatsapp.net	2025-10-23 00:00:00	Barba
94f3742b-8cd6-4400-af2d-0733fda83861	2025-10-24 00:00:00	11:20	bruno gomes	Wallyson	558196522258@s.whatsapp.net	2025-10-24 00:00:00	Barba
2111d39b-c409-486c-bcba-972e6a81a129	2025-10-24 00:00:00	09:20	kleyton	Wallyson	558198744016@s.whatsapp.net	2025-10-24 00:00:00	Cabelo
20d2f889-4a0e-4dcd-ab92-6088618cad49	2025-10-24 00:00:00	10:40	ryan	Wallyson	5511959620317@s.whatsapp.net	2025-10-24 00:00:00	Cabelo+Sobrancelha
ede3d079-e057-4ba7-9564-1d280489c03d	2025-11-08 00:00:00	14:40	matheus vinicius	Bruno	558197894492@s.whatsapp.net	2025-10-24 00:00:00	Cabelo
d8bd3916-7a38-43ce-afec-05153ecb92f9	2025-10-24 00:00:00	19:20	marcos	Wallyson	558197806162@s.whatsapp.net	2025-10-24 00:00:00	Cabelo+Sobrancelha
69bdd467-835f-44a1-a572-5d5a19581c26	2025-10-25 00:00:00	10:00	Marcado 	Wallyson	local	2025-10-24 14:38:08.746	Barba
c33d1225-9db7-41ca-8772-1ea473b4f0a4	2025-10-27 00:00:00	17:20	iann	Bruno	558196612255@s.whatsapp.net	2025-10-24 00:00:00	Cabelo+Sobrancelha
42387fcd-20b3-41db-bd90-9a724e983b9e	2025-10-25 00:00:00	15:20	carlos	Wallyson	558199700555@s.whatsapp.net	2025-10-24 00:00:00	Cabelo
f0b68f90-c5ca-4c81-8c2c-f98ce514ee7d	2025-10-29 00:00:00	14:00	joão marcello	Bruno	558196393507@s.whatsapp.net	2025-10-24 00:00:00	Cabelo
36913799-032a-484c-82e1-267f46a3d6be	2025-10-25 00:00:00	09:20	Sobrinho de Aline 	Wallyson	local	2025-10-24 17:38:10.845	Cabelo
53e04cba-083f-454a-b07c-95aeed9710eb	2025-10-24 00:00:00	20:00	roberto	Wallyson	214198793588964@lid	2025-10-24 00:00:00	Cabelo+Barba
996e3f4b-8169-42ea-a291-165dd473c72f	2025-10-27 00:00:00	17:20	enzo lima	Wallyson	558184998670@s.whatsapp.net	2025-10-24 00:00:00	Cabelo+Sobrancelha
c69cbc25-cbc7-4517-81b9-2276d73939fd	2025-10-25 00:00:00	14:40	alexsander	Wallyson	558199337045@s.whatsapp.net	2025-10-24 00:00:00	Cabelo
2614caf4-a34e-4566-970a-ba7efd1463b7	2025-10-25 00:00:00	12:00	Zé neto 	Wallyson	local	2025-10-24 21:30:37.933	Cabelo
b5c848f5-2ef2-4e0d-a7e6-08950237df0f	2025-10-25 00:00:00	14:00	Zé neto	Wallyson	local	2025-10-24 21:31:28.557	Cabelo
9fd66f88-c3bc-4140-aafb-a4de981415df	2025-10-27 00:00:00	18:40	samuel	Bruno	558196448583@s.whatsapp.net	2025-10-24 00:00:00	Cabelo
c40614dd-6cba-4f37-9ed3-a959f23fcf90	2025-10-27 00:00:00	14:00	samuel barbosa da silva	Wallyson	558197939904@s.whatsapp.net	2025-10-24 00:00:00	Cabelo+Sobrancelha
0e6122b7-f2d6-44f3-94de-c85f2f68a985	2025-10-25 00:00:00	18:00	neto	Wallyson	558194759358@s.whatsapp.net	2025-10-24 00:00:00	Acabamento (Pezinho)
8077b54e-12cf-46ff-ba60-60d0e833813c	2025-11-01 00:00:00	08:00	gustavo	Bruno	558196111653@s.whatsapp.net	2025-10-24 00:00:00	Cabelo+Sobrancelha
2a1cd38d-5cd8-4355-8ff6-5c70531f044e	2025-11-14 00:00:00	19:20	bruno	Bruno	558189873832@s.whatsapp.net	2025-10-25 00:00:00	Cabelo+Barba
add318a0-8e08-4eed-8d00-ac3e8c54d028	2025-10-27 00:00:00	16:00	cauê	Bruno	558197796167@s.whatsapp.net	2025-10-25 00:00:00	Cabelo
6b4a3e27-aee2-4229-97a2-93d458a5ae74	2025-10-27 00:00:00	16:40	del alumínio	Bruno	558197796167@s.whatsapp.net	2025-10-25 00:00:00	Cabelo+Barba
2749a1e4-1ae1-48f1-a251-5dfeb5aebb99	2025-11-01 00:00:00	17:20	calebe	Wallyson	558196987419@s.whatsapp.net	2025-10-25 00:00:00	Cabelo
f71668de-28fd-4482-a5d0-a96c5a9bc34c	2025-10-28 00:00:00	15:20	aryel emanoel	Bruno	558199124476@s.whatsapp.net	2025-10-25 00:00:00	Cabelo
14bc8d26-7d26-4d47-af74-9e83020cb8a0	2025-10-28 00:00:00	16:00	manoel josé	Bruno	558199124476@s.whatsapp.net	2025-10-25 00:00:00	Cabelo
253698fb-a5b9-4b64-903b-1e85b7b96f72	2025-10-27 00:00:00	09:40	emanuel	Wallyson	558196314532@s.whatsapp.net	2025-10-25 00:00:00	Cabelo
0b7df8f9-b311-470a-8979-557935ee1f95	2025-10-31 00:00:00	14:40	gabriel	Bruno	558197699397@s.whatsapp.net	2025-10-25 00:00:00	Cabelo
e76007e7-bd93-435f-930b-8388a08a4fef	2025-11-01 00:00:00	08:40	roberto guedes	Bruno	558198028971@s.whatsapp.net	2025-10-25 00:00:00	Cabelo
cada8aee-10ee-4bda-a6a3-514c2f1f4b83	2025-11-01 00:00:00	10:40	mathias	Bruno	558181310245@s.whatsapp.net	2025-10-25 00:00:00	Cabelo+Sobrancelha
b247df41-cc4f-4e24-b7e4-52295e62fe1c	2025-10-31 00:00:00	13:20	Emanoel	Bruno	local	2025-10-25 20:28:54.021	Cabelo+Barba
f0cee077-dd2f-4ad7-a578-801fae484cd5	2025-11-03 00:00:00	16:40	antônio	Bruno	558197083657@s.whatsapp.net	2025-10-25 00:00:00	Cabelo+Sobrancelha
a837fa55-1dd1-4696-a9df-def0ddbd05af	2025-10-28 00:00:00	18:00	gonzaga neto	Bruno	558198514795@s.whatsapp.net	2025-10-25 00:00:00	Cabelo+Sobrancelha
e5b0978b-c90a-4e95-a156-4ead1adc4964	2025-10-28 00:00:00	11:20	horlean	Wallyson	558281363560@s.whatsapp.net	2025-10-26 00:00:00	Cabelo+Sobrancelha
5043efa0-b50a-42b2-9b24-6ea768338a83	2025-10-26 00:00:00	08:00	Marcado 	Wallyson	local	2025-10-26 18:13:45.923	Cabelo
2c74bd44-7c00-4135-b937-4430f419a3df	2025-10-26 00:00:00	08:40	Eudes 	Wallyson	local	2025-10-26 18:13:59.954	Cabelo
9eac064d-b2e1-4e11-ac2e-a7e3f75847b0	2025-10-27 00:00:00	13:20	Eudes 	Wallyson	local	2025-10-26 18:36:32.868	Cabelo
922c4a70-26ed-4e95-aae1-45a17f144b2f	2025-10-29 00:00:00	08:00	gabriel	Wallyson	42619296051334@lid	2025-10-26 00:00:00	Cabelo
30eb9db9-c1ce-4a99-b93e-3b045427544b	2025-10-27 00:00:00	15:20	Dorgyl 	Bruno	local	2025-10-27 01:05:07.834	Barba
dde7d3c0-a358-4916-8eb9-0b8e9ec97aec	2025-10-28 00:00:00	15:20	jefferson	Wallyson	558198266953@s.whatsapp.net	2025-10-27 00:00:00	Cabelo
636ccf2f-0445-4bf7-a24b-8345441ff913	2025-10-28 00:00:00	13:20	Allyson	Wallyson	local	2025-10-27 10:11:45.281	Cabelo
0596e6a9-ceda-465b-8061-2b43de1f07ba	2025-10-27 00:00:00	15:20	João Carmen 	Wallyson	local	2025-10-27 10:14:16.793	Cabelo
74559f22-fc4f-4067-ab04-3acbaf59503c	2025-10-30 00:00:00	16:40	mateus de melo guerra	Bruno	558199987381@s.whatsapp.net	2025-10-27 00:00:00	Cabelo
ee7c3369-46ee-4af9-a566-4fc0095ddc3a	2025-10-27 00:00:00	10:20	Douglas 	Wallyson	local	2025-10-27 11:39:11.393	Barba
0bcd453c-b6ca-4853-859d-f47bb80f2ab2	2025-10-27 00:00:00	11:40	Lucas 	Wallyson	local	2025-10-27 12:30:38.512	Cabelo
16dd27f4-12ae-4832-a220-122e5a3b6954	2025-10-29 00:00:00	09:00	miguel	Bruno	558195712225@s.whatsapp.net	2025-10-27 00:00:00	Cabelo
acd109b3-1d6f-4f6d-b729-beb3a4a44926	2025-10-28 00:00:00	14:00	matheus	Bruno	558196073942@s.whatsapp.net	2025-10-27 00:00:00	Cabelo+Barba
217b301f-083b-4bf3-bb0d-25d9c362fac9	2025-10-28 00:00:00	10:20	pedro henrique	Bruno	558198446899@s.whatsapp.net	2025-10-27 00:00:00	Cabelo
f171ae56-4aa8-4a50-88d6-5ab1ff759ffd	2025-10-28 00:00:00	17:20	cauã gabriel	Bruno	558199527666@s.whatsapp.net	2025-10-27 00:00:00	Cabelo
a511952b-dfcd-46b6-9337-0ec2a1556db9	2025-10-27 00:00:00	18:00	francisco	Wallyson	558182062970@s.whatsapp.net	2025-10-27 00:00:00	Cabelo
fb3481cd-149f-4b72-8488-679f4cd7bb71	2025-10-30 00:00:00	11:40	arthur	Bruno	558194115511@s.whatsapp.net	2025-10-27 00:00:00	Cabelo+Barba
3ca43987-f1c7-4ecc-90a1-55116879f813	2025-10-28 00:00:00	16:40	josé miguel	Bruno	558196219587@s.whatsapp.net	2025-10-27 00:00:00	Cabelo+Sobrancelha
edb6f518-05be-4dee-9a83-80822b59860c	2025-10-28 00:00:00	11:00	andré	Bruno	558198646935@s.whatsapp.net	2025-10-27 00:00:00	Cabelo+Sobrancelha
7efe4f1f-c002-44f0-a372-ad1def81bd82	2025-10-28 00:00:00	09:00	luan	Bruno	204788453126391@lid	2025-10-27 00:00:00	Cabelo
f2986f3c-e11d-4cd8-aa78-3f3e28661a9d	2025-10-31 00:00:00	18:00	marcos	Bruno	558198405729@s.whatsapp.net	2025-10-27 00:00:00	Cabelo
b413b726-df0a-416f-a4fb-c97a7c3e8a14	2025-10-31 00:00:00	18:40	italo	Bruno	558198405729@s.whatsapp.net	2025-10-27 00:00:00	Cabelo
fbbd9363-5e6e-4e8b-b39a-ea67880ac4e4	2025-11-01 00:00:00	10:00	erick apolloni	Bruno	558197051743@s.whatsapp.net	2025-10-27 00:00:00	Cabelo
57af4126-dce9-4150-b9bb-7f1b745fc3d3	2025-10-29 00:00:00	13:20	Rafael botox 	Bruno	local	2025-10-27 19:39:29.634	Cabelo
e1dfa413-da7c-44a3-a90f-4375c217331d	2025-10-29 00:00:00	14:40	Rafael 	Wallyson	local	2025-10-27 19:39:48.029	Cabelo
a15d5c5f-b476-4567-80d4-769a92eed696	2025-10-28 00:00:00	18:00	Eudes 	Wallyson	local	2025-10-27 19:41:36.14	Cabelo+Barba
63a8c4ac-c735-4345-aa2b-193ce180dbc1	2025-10-29 00:00:00	14:40	Rafael botox 	Bruno	local	2025-10-27 19:46:25.404	Cabelo
9b35a884-fc03-4879-8211-1a886ff2707f	2025-10-29 00:00:00	15:20	Botox 	Bruno	local	2025-10-27 19:46:51.306	Cabelo
aa6a32bf-6a96-4f11-a9ee-ef6ecf7b74b9	2025-10-29 00:00:00	16:00	Daniel 	Wallyson	local	2025-10-27 19:49:57.065	Cabelo
3274c722-0106-4f47-b290-3a10652cd15c	2025-10-28 00:00:00	16:00	João Pedro 	Wallyson	local	2025-10-27 20:08:48.188	Cabelo
8459f2e1-6699-4943-9787-50e40ff5d7b0	2025-10-29 00:00:00	16:00	joao lucas	Bruno	558189785404@s.whatsapp.net	2025-10-27 00:00:00	Cabelo+Sobrancelha
c44b3b43-02d1-404c-b090-b5ccb92a3686	2025-10-27 00:00:00	14:40	jorginho	Wallyson	558199658478@s.whatsapp.net	2025-10-27 00:00:00	Cabelo+Sobrancelha
abb493b8-fa48-458e-b7a7-8b28e9ac5ad9	2025-10-31 00:00:00	16:40	joão pedro	Bruno	558196644122@s.whatsapp.net	2025-10-27 00:00:00	Cabelo
a66a2edc-3536-43bc-ba68-e3c68d4afc5d	2025-10-30 00:00:00	18:00	pedro henrique	Bruno	558199160082@s.whatsapp.net	2025-10-27 00:00:00	Cabelo
0d92895d-b86e-487f-8dff-eeec4e9d0e86	2025-10-28 00:00:00	14:40	fredson	Wallyson	558198396655@s.whatsapp.net	2025-10-27 00:00:00	Cabelo
7f589d91-53fa-4daf-9ed6-827e39517523	2025-10-28 00:00:00	18:40	emerson	Bruno	558196319116@s.whatsapp.net	2025-10-27 00:00:00	Cabelo+Barba
7d13ee72-3584-402e-ac92-54f6b24d3a07	2025-10-29 00:00:00	16:40	luiz felipe	Bruno	558196969019@s.whatsapp.net	2025-10-28 00:00:00	Cabelo
5fc89c1e-ea0a-4412-91b8-fa5194ae1f3e	2025-10-28 00:00:00	13:20	flávio s.	Bruno	558197559623@s.whatsapp.net	2025-10-28 00:00:00	Cabelo
9520a770-58c9-4f42-9f9a-988d3edbd167	2025-10-28 00:00:00	18:40	kevin	Wallyson	558195204685@s.whatsapp.net	2025-10-28 00:00:00	Cabelo
2ae7964d-ad81-4147-9f0e-66e527c7fb26	2025-10-28 00:00:00	17:20	bruno	Wallyson	558198567818@s.whatsapp.net	2025-10-28 00:00:00	Cabelo
41985918-6e89-4b8d-83b4-33d59f1e99d8	2025-10-28 00:00:00	14:40	breno	Bruno	558198437880@s.whatsapp.net	2025-10-28 00:00:00	Cabelo+Sobrancelha
81dcb0b4-f897-4d36-8fd0-5a5c9e9aec58	2025-10-28 00:00:00	11:40	Kevin	Bruno	local	2025-10-28 13:12:12.92	Cabelo
161431d8-db89-47fe-b81a-bd79b075421d	2025-10-30 00:00:00	17:20	fernando	Bruno	558196817233@s.whatsapp.net	2025-10-28 00:00:00	Cabelo
8b11e223-6edf-4f1e-81c4-1ed265a02994	2025-10-28 00:00:00	16:40	Pedro 	Wallyson	local	2025-10-28 14:12:24.335	Cabelo
c3458330-4886-45fd-8bae-a6a01cb1bae6	2025-10-29 00:00:00	13:20	Vínicos 	Wallyson	local	2025-10-28 14:13:16.458	Cabelo
8e5f1112-ffba-4e6f-a21f-4ad64119df67	2025-10-29 00:00:00	09:40	Leonardo	Bruno	local	2025-10-28 15:00:30.496	Cabelo
0129082f-5850-4064-87e0-b826f6f390ac	2025-10-29 00:00:00	18:00	eduardo	Bruno	558199688064@s.whatsapp.net	2025-10-28 00:00:00	Cabelo
48c176ae-b595-4512-8279-b90d6d3cfa50	2025-10-29 00:00:00	16:40	Marcílio 	Wallyson	local	2025-10-28 16:00:05.147	Cabelo
78557525-0b46-4483-8e87-adde52dd5c97	2025-10-29 00:00:00	11:00	joão rommel	Bruno	558182224217@s.whatsapp.net	2025-10-28 00:00:00	Cabelo
024cc94c-fd5d-4053-bcff-b1a3da30d90d	2025-10-31 00:00:00	11:00	joão vitor	Bruno	558192250093@s.whatsapp.net	2025-10-28 00:00:00	Cabelo
52705338-aa4f-45e3-8468-34083c1fbc41	2025-10-30 00:00:00	18:40	denílson	Bruno	558197084296@s.whatsapp.net	2025-10-28 00:00:00	Barba
ff00b5d3-f3b6-4bc2-9679-37567ba09eb9	2025-11-01 00:00:00	11:20	davi	Bruno	558182118061@s.whatsapp.net	2025-10-28 00:00:00	Cabelo
56e1e1bb-aa14-4855-929b-d04e661f646d	2025-10-29 00:00:00	11:40	jefferson	Bruno	558196311311@s.whatsapp.net	2025-10-28 00:00:00	Cabelo
e6b516b5-d1e0-4574-b667-19a89baa6af5	2025-10-31 00:00:00	15:20	matheus	Bruno	558197941830@s.whatsapp.net	2025-10-28 00:00:00	Cabelo
5ba80806-a274-49b2-9d2e-4a32fc619639	2025-10-29 00:00:00	17:20	arthur sales	Bruno	558197065270@s.whatsapp.net	2025-10-28 00:00:00	Cabelo
84f24518-f441-4d4e-b929-356616478546	2025-10-31 00:00:00	14:00	kaiky	Bruno	558197121684@s.whatsapp.net	2025-10-28 00:00:00	Cabelo
ce880311-afac-42b1-a5f9-a99f16d0ba8a	2025-10-29 00:00:00	11:20	ruan	Wallyson	558199445445@s.whatsapp.net	2025-10-28 00:00:00	Cabelo
d6595e81-f99b-442e-a8ad-74d36ce9271d	2025-10-31 00:00:00	09:00	windney	Bruno	558187774760@s.whatsapp.net	2025-10-28 00:00:00	Cabelo
f7f9e3f1-0378-4def-9ace-d88972a15b50	2025-11-01 00:00:00	14:00	josé anthony	Wallyson	558189252475@s.whatsapp.net	2025-10-28 00:00:00	Cabelo
15348f44-222f-4bbf-b580-9e8ad891a828	2025-11-01 00:00:00	13:20	nilson fonseca	Wallyson	558191189831@s.whatsapp.net	2025-10-28 00:00:00	Cabelo
b618eeeb-7889-477f-b9eb-6843d524452e	2025-10-31 00:00:00	16:00	mateus b	Bruno	558197626344@s.whatsapp.net	2025-10-28 00:00:00	Cabelo
eaf294b8-6dc4-4225-aa2b-7e242d885a9a	2025-10-29 00:00:00	15:20	felipe	Wallyson	558181451150@s.whatsapp.net	2025-10-28 00:00:00	Cabelo+Sobrancelha
fffd01be-053c-45d6-a286-b294b474c2ce	2025-11-01 00:00:00	12:00	josé guilherme	Bruno	558196081518@s.whatsapp.net	2025-10-29 00:00:00	Cabelo
ecf040d2-f066-4128-b142-1302d392675e	2025-10-29 00:00:00	17:20	Gelson	Wallyson	local	2025-10-29 09:38:00.341	Cabelo
2b5f814f-2652-4f49-ab64-a5f91bc776c0	2025-10-30 00:00:00	09:00	Indisponivel	Bruno	Indisponivel	2025-10-29 09:39:54.576	
ef5251f1-90a7-4685-994b-fdf8e6cc50f4	2025-10-30 00:00:00	09:40	Indisponivel	Bruno	Indisponivel	2025-10-29 09:39:54.636	
865ef824-ce84-4689-9560-014dabcf8893	2025-10-30 00:00:00	10:20	Indisponivel	Bruno	Indisponivel	2025-10-29 09:39:54.667	
f52d6bb0-d729-488f-80f9-546c72ca1842	2025-10-31 00:00:00	11:40	henrique	Bruno	558196639360@s.whatsapp.net	2025-10-29 00:00:00	Cabelo
30f84e78-bbcd-4f5b-8a1d-e94fbff09152	2025-11-01 00:00:00	08:40	josué	Wallyson	558192532850@s.whatsapp.net	2025-10-29 00:00:00	Cabelo+Sobrancelha
bc52807a-c5ac-407a-b2dc-75567b7d30d9	2025-11-01 00:00:00	08:00	claudio figueiredo	Wallyson	202787501646016@lid	2025-10-29 00:00:00	Cabelo
52abd5ca-2ceb-4700-936e-0e329f80e9eb	2025-11-01 00:00:00	13:20	daniel queiroz	Bruno	558181473848@s.whatsapp.net	2025-10-29 00:00:00	Cabelo
ba51bb98-53bd-4686-8e42-74cdf5ba535c	2025-10-29 00:00:00	10:40	júlio césar	Wallyson	558196440108@s.whatsapp.net	2025-10-29 00:00:00	Cabelo+Sobrancelha
0531f212-0f73-4783-b9ae-7da1ab74947d	2025-11-26 00:00:00	10:20	markinhos lopes	Bruno	108689046417640@lid	2025-10-29 00:00:00	Cabelo+Barba
ab8dfdee-959a-4dba-b263-1d9126a60611	2025-12-20 00:00:00	10:40	markinhos lopes	Bruno	108689046417640@lid	2025-10-29 00:00:00	Cabelo+Barba
5474c26d-e74b-4f37-a09d-e2402f1cb178	2025-10-29 00:00:00	18:40	welliton fonseca	Bruno	558198022472@s.whatsapp.net	2025-10-29 00:00:00	Cabelo
ac75d6da-9d8f-453c-97fc-ed3830473231	2025-11-01 00:00:00	15:20	carlos p/ yan	Bruno	558199700555@s.whatsapp.net	2025-10-29 00:00:00	Cabelo
a460cb7a-d868-45ac-92c8-977a57cb937f	2025-11-01 00:00:00	15:20	carlos p/ nicolas	Wallyson	558199700555@s.whatsapp.net	2025-10-29 00:00:00	Cabelo
43191f09-e03d-4ccc-9c2c-b06f0dfe42c1	2025-10-30 00:00:00	09:20	matheus	Wallyson	102976488227011@lid	2025-10-29 00:00:00	Cabelo
ccdb80b2-bf98-4d10-b727-009ad493de6a	2025-11-07 00:00:00	16:00	caio	Bruno	558192669921@s.whatsapp.net	2025-10-29 00:00:00	Cabelo+Sobrancelha
4b8a6137-00e5-405a-b9de-aed02df8ab79	2025-10-30 00:00:00	14:40	Ivaldir botox 	Bruno	local	2025-10-29 17:07:21.865	Cabelo
003b23b2-77de-4176-8a65-0b3654a626e4	2025-10-30 00:00:00	15:20	Botox	Bruno	local	2025-10-29 17:07:36.579	Cabelo
c0da05b0-222a-4443-9fe7-980a56b67e73	2025-10-30 00:00:00	16:00	Ivaldir 	Bruno	local	2025-10-29 17:07:52.736	Cabelo
abf2e4c3-43ba-4fef-b5ce-5f48f0d75b57	2025-10-30 00:00:00	13:20	geam	Bruno	558179092590@s.whatsapp.net	2025-10-29 00:00:00	Cabelo
9f0555ad-91be-4e94-b044-f1de86c8aaed	2025-11-07 00:00:00	16:40	joão lucas	Bruno	558196372803@s.whatsapp.net	2025-10-29 00:00:00	Cabelo+Sobrancelha
5d857997-13f9-4ebc-809d-5f844c22eccd	2025-10-30 00:00:00	18:00	erick	Wallyson	558199045127@s.whatsapp.net	2025-10-29 00:00:00	Cabelo
e012dd98-82dc-4c78-9912-c5c5f3e4724a	2025-10-31 00:00:00	08:00	Marcado 	Wallyson	local	2025-10-29 21:02:15.722	Cabelo
a2ce820e-98e8-40ce-8eac-471378fa7298	2025-10-31 00:00:00	15:20	Hiago 	Wallyson	local	2025-10-29 21:04:00.132	Cabelo
c278fd98-0f13-4dd3-a5e8-2fbfac52b3a0	2025-10-31 00:00:00	17:20	João Guilherme 	Bruno	local	2025-10-29 21:17:25.975	Cabelo
1fa476fb-4824-4230-8c33-f0dde9cd87ca	2025-11-01 00:00:00	14:00	yan	Bruno	558199168954@s.whatsapp.net	2025-10-29 00:00:00	Cabelo+Sobrancelha
9501eb96-f5e5-4f14-b7ee-f47822ff20b4	2025-10-31 00:00:00	14:00	Wendel 	Wallyson	local	2025-10-29 22:17:54.265	Cabelo
3848113e-720b-495b-8fdd-f4635b0227f3	2025-10-31 00:00:00	10:20	lucas	Bruno	558188204134@s.whatsapp.net	2025-10-29 00:00:00	Cabelo
1326f0de-fcc0-4e5e-9227-5a625fb0e4ba	2025-10-30 00:00:00	10:00	Marcelo 	Wallyson	local	2025-10-30 10:26:24.139	Cabelo
31574127-5492-4a2a-82d1-d77b28225044	2025-10-30 00:00:00	13:20	Luiz André 	Wallyson	local	2025-10-30 12:17:48.137	Cabelo
feaa1e8f-2968-4b2b-9917-413706dad779	2025-10-31 00:00:00	09:40	joão campos	Bruno	558196073970@s.whatsapp.net	2025-10-30 00:00:00	Cabelo+Barba
e95fa47f-1777-4c8a-a93e-ce8a6daa529d	2025-10-30 00:00:00	11:00	Indisponivel	Bruno	Indisponivel	2025-10-30 14:01:10.841	
27e58e93-6767-4819-bdc7-eab933131deb	2025-10-30 00:00:00	14:00	Ze neto 	Wallyson	local	2025-10-30 14:08:22.863	Cabelo
07d75c7f-b238-4279-b5a1-15c5931f15cd	2025-10-30 00:00:00	14:40	Galdino 	Wallyson	local	2025-10-30 14:11:49.381	Cabelo
cbf21cf2-3e0f-46cd-a0b9-2339b9a3af85	2025-11-01 00:00:00	14:40	junior	Bruno	558181192218@s.whatsapp.net	2025-10-30 00:00:00	Cabelo
7cf800d4-9f29-4ed1-a441-4949c581c895	2025-10-30 00:00:00	15:20	alan elias	Wallyson	558182284289@s.whatsapp.net	2025-10-30 00:00:00	Cabelo
c0e255ee-53bc-4942-bb0a-7c832b977e39	2025-10-30 00:00:00	14:00	Rafael	Bruno	local	2025-10-30 15:33:23.135	Cabelo
74cc86f3-8ad2-497a-b3a0-8c82acda52f2	2025-10-30 00:00:00	16:00	matheus	Wallyson	558196191710@s.whatsapp.net	2025-10-30 00:00:00	Cabelo+Sobrancelha
be2e774b-83fd-4070-bcc7-90f1a681f04d	2025-10-30 00:00:00	17:20	mayrlon	Wallyson	558196600679@s.whatsapp.net	2025-10-30 00:00:00	Cabelo+Sobrancelha
f6e981b2-15f1-4b0c-b036-04f3bb2d3c75	2025-11-04 00:00:00	18:00	wellington	Wallyson	558196852620@s.whatsapp.net	2025-10-30 00:00:00	Cabelo+Barba
61299c49-1321-40e9-b3f3-f213fe91fea1	2025-10-31 00:00:00	16:00	0	Wallyson	558195055274@s.whatsapp.net	2025-10-30 00:00:00	Cabelo+Sobrancelha
59333a8b-56c0-449a-9170-d0fec66b002f	2025-10-31 00:00:00	10:40	ruan	Wallyson	558179023903@s.whatsapp.net	2025-10-30 00:00:00	Cabelo
317a473a-64ca-4f98-8aa6-880a7e9fa870	2025-10-31 00:00:00	10:00	joaquim	Wallyson	558199504021@s.whatsapp.net	2025-10-31 00:00:00	Cabelo
9e80b3e5-461c-472f-834c-280fdb2a7b49	2025-10-31 00:00:00	11:20	levi gabriel	Wallyson	558199292453@s.whatsapp.net	2025-10-31 00:00:00	Cabelo
cdc8b6ce-1c7f-4950-b0a8-88bc3a865244	2025-10-31 00:00:00	16:40	Robson 	Wallyson	local	2025-10-31 12:15:17.227	Cabelo
70c2f54f-f002-4181-b399-6d7d8a941b11	2025-11-01 00:00:00	10:00	Osmar 	Wallyson	local	2025-10-31 12:57:41.476	Cabelo
d72ebf4e-d226-4c95-b550-dcc304a688a8	2025-11-01 00:00:00	11:20	breno	Wallyson	558198437880@s.whatsapp.net	2025-10-31 00:00:00	Cabelo+Sobrancelha
9707c38c-fcaf-4298-901d-1da92c311c28	2025-11-07 00:00:00	11:20	Nicolas 	Wallyson	local	2025-11-07 13:04:26.582	Cabelo
a233a655-1525-4992-a556-703c01f134dc	2025-11-01 00:00:00	12:00	gustavo	Wallyson	558199587573@s.whatsapp.net	2025-10-31 00:00:00	Cabelo+Sobrancelha
1f43863b-26b1-4395-910c-d27f2a81e82f	2025-11-01 00:00:00	10:40	anthony ricardo	Wallyson	558199684430@s.whatsapp.net	2025-10-31 00:00:00	Cabelo+Sobrancelha
b8cedd74-38bc-41cc-b253-0e69ea3ae040	2025-10-31 00:00:00	19:20	João Henrique 	Wallyson	local	2025-10-31 15:24:34.816	Cabelo
516d666b-2626-48cc-bb19-70ba2294e533	2025-10-31 00:00:00	20:00	Alberto 	Wallyson	local	2025-10-31 15:26:44.779	Cabelo
fea05cf8-9f7b-4466-8a2a-34fe9a507230	2025-11-03 00:00:00	13:20	esdras gabriel	Bruno	558198526844@s.whatsapp.net	2025-10-31 00:00:00	Cabelo+Barba
9f3c2af5-91db-4b24-9da2-8b3dd858abaf	2025-11-01 00:00:00	09:20	henrique	Wallyson	558182599443@s.whatsapp.net	2025-10-31 00:00:00	Cabelo
138231df-b06a-4ceb-9ba7-019a5734e340	2025-11-03 00:00:00	14:40	Italo 	Bruno	local	2025-10-31 16:24:37.2	Cabelo
e41d36c5-d990-4ab6-b679-145095386102	2025-11-07 00:00:00	19:20	Emanoel	Bruno	local	2025-10-31 17:25:22.951	Cabelo+Barba
597ba99e-4690-4aa7-ba7c-9ac6329cf18c	2025-11-14 00:00:00	20:00	Emanoel	Bruno	local	2025-10-31 17:25:52.814	Cabelo+Barba
10b24d17-d61a-4e38-a63d-fe89996f9637	2025-11-03 00:00:00	15:20	josé kaio	Bruno	558197806738@s.whatsapp.net	2025-10-31 00:00:00	Cabelo+Sobrancelha
00186736-be5f-47d8-9a06-1d6a8f63cabe	2025-11-25 00:00:00	15:20	Hiago 	Wallyson	local	2025-10-31 18:43:58.819	Cabelo
082bc02f-d398-46a3-a047-6aea62a37e2c	2025-11-01 00:00:00	14:40	samuel ferreira	Wallyson	558199862867@s.whatsapp.net	2025-10-31 00:00:00	Cabelo+Barba
b7e009ae-701f-4f37-88c1-adcd33827d92	2025-11-01 00:00:00	18:00	João Guilherme 	Wallyson	local	2025-10-31 20:10:21.577	Cabelo
d2a50c20-a41a-43cd-a3eb-c3d2890b2bdc	2025-11-01 00:00:00	18:00	wesley	Wallyson	73010165903543@lid	2025-10-31 00:00:00	Cabelo+Barba
f1972400-01c2-4533-9988-463b56785247	2025-11-21 00:00:00	18:00	Pedrão 	Wallyson	local	2025-10-31 21:42:53.971	Cabelo+Barba
cbadae04-55b5-4090-83f3-b88be6d1ab2d	2025-11-01 00:00:00	16:40	fábio cria	Wallyson	5521980058628@s.whatsapp.net	2025-10-31 00:00:00	Cabelo
34da9518-ca77-4a97-8e32-b49ef316b644	2025-11-08 00:00:00	10:00	joão henrique	Bruno	558187965953@s.whatsapp.net	2025-11-01 00:00:00	Cabelo
8bca1add-3b0a-43c9-bf79-2a1a107cf43e	2025-12-24 00:00:00	08:00	claudio figueiredo	Wallyson	202787501646016@lid	2025-11-01 00:00:00	Cabelo
4cac5266-16b9-4ba1-b398-30f91721e05f	2025-12-31 00:00:00	08:00	claudio figueiredo	Wallyson	202787501646016@lid	2025-11-01 00:00:00	Cabelo
142ec958-ed4c-4560-ad6f-84b8843c5c1f	2025-11-22 00:00:00	08:00	cláudio figueiredo	Wallyson	202787501646016@lid	2025-11-01 00:00:00	Cabelo
67fd0b88-5328-4f5a-80d0-f6744bdad895	2025-11-07 00:00:00	20:00	roberto botox  19:00hs	Bruno	558198028971@s.whatsapp.net	2025-11-01 00:00:00	Cabelo
dab26dc7-7de1-4955-b2fd-3389d8866acb	2025-11-03 00:00:00	18:40	guilherme	Bruno	82476391231711@lid	2025-11-01 00:00:00	Cabelo
08ad21f0-91e6-46b7-9de0-79359c4b580e	2025-11-04 00:00:00	09:00	heitor felipe	Bruno	558196988755@s.whatsapp.net	2025-11-01 00:00:00	Cabelo
71241e34-c76c-48bc-a363-04b540ff4cab	2025-11-03 00:00:00	16:00	Dorgyl 	Bruno	local	2025-11-01 15:57:39.882	Cabelo+Barba
38cc545d-888a-4869-b6d7-e406b009dd38	2025-11-04 00:00:00	17:20	marcos domingos da costa	Bruno	558196121499@s.whatsapp.net	2025-11-01 00:00:00	Cabelo
0770f322-a7e0-414f-8540-bb754c2b5e41	2025-11-03 00:00:00	18:00	nicolas nóbrega de lima	Bruno	558183927968@s.whatsapp.net	2025-11-01 00:00:00	Cabelo
6c809750-079d-4924-a615-95a8b8beb384	2025-11-04 00:00:00	19:20	erick vinícius	Bruno	558195786256@s.whatsapp.net	2025-11-01 00:00:00	Cabelo+Sobrancelha
81363dbf-e743-4c1b-abc6-4cd7b0cb7894	2025-11-05 00:00:00	16:00	Ruan 	Wallyson	local	2025-11-01 22:36:59.062	Cabelo
0e0f331e-7b0f-4d76-8943-ed92b852b0d9	2025-11-03 00:00:00	17:20	anthony rodrigues	Bruno	558199046289@s.whatsapp.net	2025-11-01 00:00:00	Cabelo+Sobrancelha
75eaba47-cd3b-44df-84ba-50a9e89d3913	2025-11-05 00:00:00	16:40	Breno 	Wallyson	local	2025-11-01 22:37:33.168	Cabelo
cb245ed9-df91-4db6-b51d-5110504e6ef1	2025-12-19 00:00:00	08:00	márcio	Wallyson	558199069172@s.whatsapp.net	2025-11-01 00:00:00	Cabelo
8322e1b4-96da-4037-95a6-77b45914e2ca	2025-11-03 00:00:00	14:00	renan	Bruno	558199282002@s.whatsapp.net	2025-11-02 00:00:00	Cabelo
9578e288-34af-4c1a-9da4-5fe0a146dd47	2025-11-07 00:00:00	15:20	joão lucas	Bruno	558189785404@s.whatsapp.net	2025-11-02 00:00:00	Cabelo+Sobrancelha
8c8430f6-d38c-4039-a564-7fe6dfaf3ad2	2025-11-05 00:00:00	18:00	alyson	Bruno	240587005534378@lid	2025-11-02 00:00:00	Cabelo+Barba
835f2ff8-6ad3-4702-b665-86ef3aa2274b	2025-11-05 00:00:00	14:00	miguel josé	Bruno	558196843988@s.whatsapp.net	2025-11-02 00:00:00	Cabelo
2e57742c-a6a4-484d-b3cc-ec4669038319	2025-11-04 00:00:00	13:20	guilherme	Wallyson	558196437778@s.whatsapp.net	2025-11-02 00:00:00	Cabelo
99333155-34af-4218-ac35-0d19158ccffd	2025-11-04 00:00:00	10:20	felipe silva	Bruno	558179158954@s.whatsapp.net	2025-11-02 00:00:00	Cabelo
332e2f2b-3204-4d09-8668-2967491c4668	2025-11-04 00:00:00	16:00	Indisponivel	Bruno	Indisponivel	2025-11-02 19:34:46.608	
fce671a6-baae-4ab6-90d1-0f691f5cb7d6	2025-11-04 00:00:00	16:40	Indisponivel	Bruno	Indisponivel	2025-11-02 19:34:46.709	
0f4bd807-dbdc-4879-b4e2-797b9b4001b0	2025-11-04 00:00:00	17:20	Indisponivel	Bruno	Indisponivel	2025-11-02 19:34:46.739	
67e4849e-83c4-4154-b558-e48a2f59c0ac	2025-11-04 00:00:00	18:00	Indisponivel	Bruno	Indisponivel	2025-11-02 19:34:46.775	
678247f7-2289-4455-a5c6-4e2b07dc2e92	2025-11-04 00:00:00	18:40	Indisponivel	Bruno	Indisponivel	2025-11-02 19:34:46.805	
9c5af8e8-21ce-417a-a942-15cfaac6bd66	2025-11-04 00:00:00	19:20	Indisponivel	Bruno	Indisponivel	2025-11-02 19:34:46.835	
1cb43ff8-ceff-4259-9f18-8866cb6caf05	2025-11-04 00:00:00	15:20	Ocupado	Bruno	local	2025-11-02 19:35:15.102	Cabelo
e9da4f8f-7592-445a-9ea9-fed84c84748e	2025-11-05 00:00:00	17:20	keven	Bruno	558189774392@s.whatsapp.net	2025-11-02 00:00:00	Cabelo+Sobrancelha
58c5f27a-32f9-4f13-9038-ccc7cc267f62	2025-11-22 00:00:00	08:00	enzo	Bruno	73302307541108@lid	2025-11-02 00:00:00	Cabelo
b24f1796-721a-4ced-98b0-e3672ef50899	2025-11-05 00:00:00	08:00	pedro lucas	Wallyson	558197832195@s.whatsapp.net	2025-11-03 00:00:00	Cabelo
0c209a33-829b-4975-b0ec-391496af724e	2025-11-03 00:00:00	14:00	pedro	Wallyson	558196440108@s.whatsapp.net	2025-11-03 00:00:00	Cabelo
a4cabd2c-7061-462d-a706-5c1669923ed3	2025-11-08 00:00:00	08:00	wallacy	Wallyson	90104202809537@lid	2025-11-03 00:00:00	Cabelo
eecf28d0-5df3-41e1-baa6-388bca70123c	2025-11-03 00:00:00	11:00	Wellington 	Wallyson	local	2025-11-03 10:30:38.885	Cabelo
acd69906-741d-452e-ae89-3d981551df92	2025-11-05 00:00:00	18:40	everson	Bruno	558179003193@s.whatsapp.net	2025-11-03 00:00:00	Cabelo
3e82ee29-dca1-4c4f-b585-eecf061b442a	2025-11-04 00:00:00	11:00	leonardo cabral	Bruno	558197413226@s.whatsapp.net	2025-11-03 00:00:00	Cabelo+Sobrancelha
165903d1-fefb-4aa4-84bd-b008aa7a9f48	2025-11-04 00:00:00	11:40	emanoel	Bruno	51329288405185@lid	2025-11-03 00:00:00	Cabelo+Barba
f8601839-f039-4f52-93ad-134eced8c5a5	2025-11-05 00:00:00	09:00	jackson	Bruno	558196412354@s.whatsapp.net	2025-11-03 00:00:00	Cabelo+Sobrancelha
55c0c011-63ae-469b-b5ef-bedac8fce421	2025-11-05 00:00:00	11:40	fernando	Bruno	558196035269@s.whatsapp.net	2025-11-03 00:00:00	Cabelo
3866cd9f-fe58-4622-8e93-1ddbefc0c274	2025-11-03 00:00:00	11:40	Indisponivel	Wallyson	Indisponivel	2025-11-03 13:33:19.983	
df4b3787-3fbd-442c-8c9a-e79d29e1aaf5	2025-11-03 00:00:00	13:20	Indisponivel	Wallyson	Indisponivel	2025-11-03 13:33:20.08	
cae6305c-90e3-4649-8266-0df55a050069	2025-11-03 00:00:00	14:40	Guilherme 	Wallyson	local	2025-11-03 14:26:39.778	Cabelo
2c600ad5-e19e-4e68-8e8a-2df0e797f613	2025-11-05 00:00:00	09:40	joão pedro	Bruno	558195049495@s.whatsapp.net	2025-11-03 00:00:00	Cabelo
fa124fe1-0826-420e-9d2e-2aef196f0f7c	2025-11-03 00:00:00	16:40	arthur	Wallyson	558198951857@s.whatsapp.net	2025-11-03 00:00:00	Cabelo
fc9ea71a-e62a-4e02-bb12-88632c558002	2025-11-05 00:00:00	16:40	renan	Bruno	558198296625@s.whatsapp.net	2025-11-03 00:00:00	Cabelo
e6bdbc58-46bf-4497-b88a-6eca3ddec7c1	2025-11-07 00:00:00	17:20	mateus miranda oliveira	Wallyson	558186880205@s.whatsapp.net	2025-11-03 00:00:00	Cabelo+Barba
7d0d9d56-88fe-49cd-ae5f-ec92effbbcb4	2025-11-08 00:00:00	08:40	wilson	Wallyson	558197148928@s.whatsapp.net	2025-11-03 00:00:00	Cabelo+Sobrancelha
453ce040-77fc-4199-ac5b-f4ef95fce65a	2025-11-05 00:00:00	14:40	eduarda	Wallyson	558199682841@s.whatsapp.net	2025-11-03 00:00:00	Cabelo
62400a59-7e3f-47de-a049-2ed80ebaca74	2025-11-05 00:00:00	13:20	sérgio	Bruno	558198288830@s.whatsapp.net	2025-11-03 00:00:00	Cabelo
14d388d8-e740-4159-8b76-0e485068db42	2025-11-03 00:00:00	15:20	Jeferson 	Wallyson	local	2025-11-03 17:02:27.075	Cabelo+Barba
bf59af4b-5d69-4269-977a-19d551dc122c	2025-11-07 00:00:00	13:20	esdras gabriel	Bruno	558198526844@s.whatsapp.net	2025-11-03 00:00:00	Barba
1fc17d9c-b15c-4392-803c-2f98dc5c6f38	2025-11-03 00:00:00	18:00	juininho	Wallyson	558194082765@s.whatsapp.net	2025-11-03 00:00:00	Cabelo
d6e969eb-5c74-4ff2-ac1f-6f4a00bc1834	2025-11-03 00:00:00	16:00	Arthur 	Wallyson	local	2025-11-03 17:46:42.693	Cabelo
b50c2fbc-1c67-4dd4-8778-4db09b438e73	2025-11-07 00:00:00	11:40	joão	Bruno	558195216795@s.whatsapp.net	2025-11-03 00:00:00	Cabelo
a1c9c6f6-3f2e-4824-9aa9-c61be55bff4e	2025-11-08 00:00:00	10:40	júnior bezerra	Bruno	83799190802676@lid	2025-11-03 00:00:00	Cabelo+Barba
92ca38f7-67c3-4688-94ef-e17929ec62d6	2025-11-05 00:00:00	14:40	joão neto	Bruno	558197626118@s.whatsapp.net	2025-11-03 00:00:00	Cabelo
1aca6872-171b-4919-9271-a80553b3c396	2025-11-07 00:00:00	17:20	arthur miguel	Bruno	27268881617131@lid	2025-11-03 00:00:00	Cabelo
e014e6c1-e8e4-439b-8575-ac07cc6daf44	2025-11-03 00:00:00	17:20	Pedro França 	Wallyson	local	2025-11-03 19:29:03.198	Cabelo
bd97bb3c-bb15-4329-b12f-56e49489f925	2025-11-04 00:00:00	18:40	carlos	Wallyson	558198314747@s.whatsapp.net	2025-11-03 00:00:00	Cabelo
c3bd7de2-b7ad-4c70-9106-a14bf45e585d	2025-11-08 00:00:00	14:00	paulo henrique	Bruno	558174004953@s.whatsapp.net	2025-11-03 00:00:00	Cabelo+Sobrancelha
87b90d13-35dd-4e42-b5f7-f0d74123069a	2025-12-29 00:00:00	16:00	gabriel	Bruno	558197699397@s.whatsapp.net	2025-11-03 00:00:00	Cabelo
718251be-63cc-43f6-9fc5-7bfac6cd2d71	2025-11-29 00:00:00	13:20	gabriel	Bruno	558197699397@s.whatsapp.net	2025-11-03 00:00:00	Cabelo
09890c94-b465-44c8-bcc9-e039b94cf423	2025-11-05 00:00:00	15:20	rhuan	Bruno	558195251500@s.whatsapp.net	2025-11-03 00:00:00	Cabelo+Sobrancelha
a846e2d6-259d-4311-89c3-d6366817e339	2025-11-06 00:00:00	18:00	éverton luan	Bruno	558195551855@s.whatsapp.net	2025-11-03 00:00:00	Cabelo
c5f1e553-986f-4e67-9c35-e169911f56db	2025-11-19 00:00:00	18:00	joão nycolas	Wallyson	558195129087@s.whatsapp.net	2025-11-03 00:00:00	Cabelo
0f1e5e83-baf6-45a9-be2d-7a0909e9266d	2025-11-04 00:00:00	14:00	lucas	Bruno	558182451503@s.whatsapp.net	2025-11-04 00:00:00	Cabelo+Sobrancelha
6a52e3c7-c0d4-467f-8103-2752a9ee41fa	2025-11-04 00:00:00	09:40	bernardo	Bruno	558185469353@s.whatsapp.net	2025-11-04 00:00:00	Cabelo
a5a6a473-59c7-41a9-b45f-1e055836160b	2025-11-06 00:00:00	17:20	pedro pimentel	Bruno	558192919702@s.whatsapp.net	2025-11-04 00:00:00	Cabelo
83f0f9d6-fd73-4688-bc7f-28af7dfcd5e8	2025-11-08 00:00:00	09:20	Cleiton 	Wallyson	local	2025-11-04 12:20:53.939	Cabelo
53281005-9b6f-4f89-a7fa-bdefef37474f	2025-11-04 00:00:00	10:00	henrique	Wallyson	558171101790@s.whatsapp.net	2025-11-04 00:00:00	Cabelo
7dc42c27-4140-4191-a27f-af8e76f56b06	2025-11-08 00:00:00	17:20	Rivaldo 	Wallyson	local	2025-11-04 12:22:25.722	Cabelo
617b1eb0-fab0-4eb5-a1f7-a002356d2446	2025-11-04 00:00:00	13:20	Caua	Bruno	local	2025-11-04 13:17:00.505	Cabelo
96452927-ced6-4aac-8c8b-faa692d4635b	2025-11-06 00:00:00	09:20	thiago	Wallyson	558199044022@s.whatsapp.net	2025-11-04 00:00:00	Cabelo
964c15fb-dd3e-41f3-9692-ed56dfa5ceb7	2025-11-06 00:00:00	14:40	matheus ryan	Bruno	558198446732@s.whatsapp.net	2025-11-04 00:00:00	Cabelo+Sobrancelha
1a202a4e-fa7b-4564-b24d-8fd24c344d46	2025-11-05 00:00:00	10:20	Érico franca 	Bruno	local	2025-11-04 16:01:11.406	Cabelo+Sobrancelha
79912919-060f-4a43-a054-a36ecfd09f2c	2025-11-08 00:00:00	18:00	carlos henrique	Wallyson	558197954525@s.whatsapp.net	2025-11-04 00:00:00	Cabelo
3702327a-74a0-4dfd-b687-2ffae4cd52d5	2025-11-08 00:00:00	16:00	mauricio	Wallyson	558197954525@s.whatsapp.net	2025-11-04 00:00:00	Cabelo
a869d5ea-8d80-4e3e-97d3-8d56adb0dd99	2025-11-06 00:00:00	18:00	letícia	Wallyson	558182158768@s.whatsapp.net	2025-11-04 00:00:00	Cabelo
1d447c11-0294-45f6-8525-4325ddc425e8	2025-11-05 00:00:00	16:00	joão gabriel sales de lima	Bruno	558197819965@s.whatsapp.net	2025-11-04 00:00:00	Cabelo
288015dd-fde4-4013-befb-d15d902e715e	2025-11-05 00:00:00	17:20	césar	Wallyson	558197520499@s.whatsapp.net	2025-11-04 00:00:00	Cabelo+Sobrancelha
e157b537-a8c8-4564-b5b4-ebe955abc83f	2025-11-07 00:00:00	14:00	miguel lucca	Bruno	558197478749@s.whatsapp.net	2025-11-04 00:00:00	Cabelo
f2d1e7ec-9457-4c3f-a23d-6ed0bd8c44b2	2025-12-04 00:00:00	13:20	geanderson ribeiro	Bruno	271489211330756@lid	2025-11-04 00:00:00	Cabelo
9b893526-cd01-48e5-8152-ca6367beaaac	2025-11-05 00:00:00	18:00	eduarda, mãe de joaquim	Wallyson	558196936841@s.whatsapp.net	2025-11-04 00:00:00	Cabelo
7b6c8ee6-86a4-4968-96f0-fbba86c7f22c	2025-11-08 00:00:00	15:20	ismael	Bruno	558199824318@s.whatsapp.net	2025-11-04 00:00:00	Cabelo
8b292ce6-e3b6-41a5-8349-43b0627a2e10	2025-11-06 00:00:00	18:40	denílson	Bruno	558197084296@s.whatsapp.net	2025-11-04 00:00:00	Barba
e589bc3e-a966-45d9-913e-7b94ae0d423d	2025-11-05 00:00:00	11:00	elivalter (luan)	Bruno	558196631822@s.whatsapp.net	2025-11-04 00:00:00	Cabelo
d48790ad-05dc-4089-a67b-7bedaad837a3	2025-11-06 00:00:00	10:20	ataliba	Bruno	558182671510@s.whatsapp.net	2025-11-04 00:00:00	Barba
7930091f-0ca8-456b-9caa-ec8df46e9ebd	2025-11-07 00:00:00	09:20	miguel silva	Wallyson	558181524707@s.whatsapp.net	2025-11-04 00:00:00	Cabelo
84362420-e9c7-46a7-9388-81698f843027	2025-11-08 00:00:00	16:40	samuel de andrade	Wallyson	558196256906@s.whatsapp.net	2025-11-04 00:00:00	Cabelo+Sobrancelha
38dec0bc-c06e-4668-9ca5-1a7a3b5ee820	2025-11-08 00:00:00	08:00	wesley 🫡	Bruno	558181016662@s.whatsapp.net	2025-11-04 00:00:00	Cabelo+Sobrancelha
710f093d-be44-4c89-9dcd-f240dcc003d7	2025-11-08 00:00:00	13:20	allef ryan	Bruno	558195740243@s.whatsapp.net	2025-11-05 00:00:00	Cabelo
a308ea1b-208c-45ff-8cb6-28cec9e730ae	2025-11-07 00:00:00	18:40	wesley	Bruno	558196817233@s.whatsapp.net	2025-11-05 00:00:00	Cabelo
13621458-54bd-410d-81bb-d219d23de54b	2025-11-06 00:00:00	15:20	Joao( Carmen )	Wallyson	local	2025-11-05 10:18:37.343	Cabelo
f47a11dc-1507-4e5b-a937-19daeb77f4e4	2025-11-06 00:00:00	16:00	ryan valério	Bruno	69153402691745@lid	2025-11-05 00:00:00	Cabelo+Barba
88f0f02a-bfbe-4bc2-bcd2-be9dc0e9458b	2025-11-06 00:00:00	09:40	gabriel	Bruno	558192417684@s.whatsapp.net	2025-11-05 00:00:00	Cabelo+Sobrancelha
bcfb9f13-f16b-4468-96e4-a8803312ec41	2025-11-05 00:00:00	14:00	Lucas 	Wallyson	local	2025-11-05 12:00:44.875	Cabelo
958f899c-dfe8-4a5d-b179-71d93c1d93b5	2025-11-05 00:00:00	10:40	Adegilson 	Wallyson	local	2025-11-05 12:03:47.182	Cabelo
b45262fc-09bc-408b-b89a-85e0bee45547	2025-11-08 00:00:00	10:00	cláudio henrique	Wallyson	558188482085@s.whatsapp.net	2025-11-05 00:00:00	Cabelo
4581b344-aba0-452c-9290-2868f285c37b	2025-11-08 00:00:00	16:00	josé júnior de souza	Bruno	558182704048@s.whatsapp.net	2025-11-05 00:00:00	Cabelo
4f1119f0-c3e0-421e-b2aa-1be22eb7a3c6	2025-11-06 00:00:00	11:40	joão paulo	Bruno	558179098531@s.whatsapp.net	2025-11-05 00:00:00	Cabelo+Barba
344072bc-3c06-45a4-bd9b-ab24c8972246	2025-11-07 00:00:00	11:00	renan silva	Bruno	558199185971@s.whatsapp.net	2025-11-05 00:00:00	Cabelo
dea21da0-b802-4059-adf5-cb15dd74ef4c	2025-11-06 00:00:00	15:20	Willian	Bruno	local	2025-11-05 13:14:49.158	Cabelo
4f049184-cb50-41d0-95c2-d17d71e79149	2025-11-08 00:00:00	15:20	Davi 	Wallyson	local	2025-11-05 13:42:47.118	Cabelo
9635e9f9-6e17-4c8c-a5b7-8f28bd47dead	2025-11-07 00:00:00	16:40	Lucian 	Wallyson	local	2025-11-05 14:08:54.057	Cabelo+Barba
acf1c3e2-5c6e-41d0-b810-c7106d45bb53	2025-11-07 00:00:00	09:00	neto	Bruno	558181091175@s.whatsapp.net	2025-11-05 00:00:00	Cabelo+Barba
05475ac5-cdb9-4cdc-9b6c-9fc6175169e9	2025-11-08 00:00:00	11:20	edigar	Bruno	558192957271@s.whatsapp.net	2025-11-05 00:00:00	Cabelo
41ce076e-927c-4610-83c3-a3ef135ca043	2025-11-06 00:00:00	17:20	pedro robson	Wallyson	558198929820@s.whatsapp.net	2025-11-05 00:00:00	Cabelo
ad0a37b4-915d-44da-ab8d-ef96f78ece46	2025-11-07 00:00:00	09:40	Vitin araujo 	Bruno	local	2025-11-05 17:01:59.377	Cabelo
05dd8fe8-6afb-4d6f-b08a-aadd78bfb8a4	2025-11-08 00:00:00	12:00	josé matheus barbosa sirino	Bruno	558199411635@s.whatsapp.net	2025-11-05 00:00:00	Cabelo+Sobrancelha
60514a87-3330-4402-ad52-5bd915f59461	2025-11-05 00:00:00	15:20	gabriel	Wallyson	558197917932@s.whatsapp.net	2025-11-05 00:00:00	Cabelo
8536a488-d5a6-4566-b4ad-5f23156b266e	2025-11-08 00:00:00	12:00	Vaninho 	Wallyson	local	2025-11-05 18:25:22.983	Cabelo+Barba
cd37505b-bd6f-4dc2-92c7-ae3bcc5c10cc	2025-11-08 00:00:00	13:20	Vaninho 	Wallyson	local	2025-11-05 18:27:44.093	Cabelo+Barba
f0211eb4-fc04-4c56-9b76-cf57fb2b33d6	2025-11-06 00:00:00	18:40	Davi 	Wallyson	local	2025-11-05 19:57:38.286	Cabelo
56407c4c-2711-429c-948a-9ca099c5f119	2025-11-06 00:00:00	16:40	Caio irmão de carlos 	Bruno	local	2025-11-05 22:06:06.363	Cabelo
0122a4d7-858d-424c-b6ae-90d15cc7c558	2025-11-06 00:00:00	16:00	vandinho	Wallyson	558197042471@s.whatsapp.net	2025-11-05 00:00:00	Cabelo+Sobrancelha
41e754f7-9cd1-4b42-96bc-683bd578faeb	2025-11-06 00:00:00	08:40	fernando correia da silva	Wallyson	558199732471@s.whatsapp.net	2025-11-05 00:00:00	Cabelo
bd8ee0ee-933f-4fe4-9e02-18e7bc5fd80c	2025-11-06 00:00:00	08:00	Fernando	Wallyson	local	2025-11-06 10:28:32.951	Cabelo
591c79da-9d10-4e2d-8afa-cfd8836d1ed9	2025-11-06 00:00:00	10:00	natacha	Wallyson	90581229396193@lid	2025-11-06 00:00:00	Cabelo
62715b34-1e04-4436-8c38-56373630498e	2025-11-07 00:00:00	10:20	maurycio	Bruno	558197162890@s.whatsapp.net	2025-11-06 00:00:00	Cabelo+Sobrancelha
27c2e21a-c936-4b81-9b31-0af124357f40	2025-11-06 00:00:00	11:00	bruno	Bruno	558189873832@s.whatsapp.net	2025-11-06 00:00:00	Cabelo
1d9cb6fa-c37a-4c9e-991a-db992e585a24	2025-11-07 00:00:00	08:40	Jhonatta 	Wallyson	local	2025-11-06 11:37:46.973	Cabelo
79b79db4-f010-497f-b5e8-ae96d8ae6fd5	2025-11-08 00:00:00	14:00	Francisco 	Wallyson	local	2025-11-06 11:38:20.737	Cabelo
5973bfd5-7ec3-411e-8ea6-71fe50ac3051	2025-11-07 00:00:00	14:40	mateus	Bruno	558196083218@s.whatsapp.net	2025-11-06 00:00:00	Cabelo+Barba
f61ad60a-9b26-4479-9ca4-4659e111fee3	2025-11-06 00:00:00	13:20	gerdo	Wallyson	558196275453@s.whatsapp.net	2025-11-06 00:00:00	Cabelo
1d76a705-2d98-4d7b-bb72-d987254b3895	2025-11-08 00:00:00	10:40	kayke	Wallyson	558197180683@s.whatsapp.net	2025-11-06 00:00:00	Cabelo+Barba
0bce27f6-eb93-4b94-a1ea-4ab026834074	2025-11-08 00:00:00	11:20	júnior	Wallyson	202787501646016@lid	2025-11-06 00:00:00	Cabelo
a929f16b-5d5b-498e-b180-e68322a18c99	2025-11-06 00:00:00	14:00	arthur miguel	Wallyson	558196555894@s.whatsapp.net	2025-11-06 00:00:00	Cabelo
b025f30a-385c-445c-8955-7e67e231eb7d	2025-11-06 00:00:00	13:20	Indisponivel	Bruno	Indisponivel	2025-11-06 14:20:55.326	
d3c00159-deed-4bdd-aa71-53ccb55fcd65	2025-11-06 00:00:00	14:00	pedro	Bruno	558194812226@s.whatsapp.net	2025-11-06 00:00:00	Cabelo
eb5deebf-04f9-447d-a9c5-1aa048ef7697	2025-11-15 00:00:00	14:00	willian anselmo	Bruno	558197347035@s.whatsapp.net	2025-11-06 00:00:00	Cabelo
f7abb145-390e-4b3d-8769-36a0551ed5d4	2025-11-07 00:00:00	20:00	ewerton adryan	Wallyson	558198289810@s.whatsapp.net	2025-11-06 00:00:00	Cabelo
d5087621-02b7-467f-8845-ebe1120474ae	2025-11-06 00:00:00	16:40	Lyaderson 	Wallyson	local	2025-11-06 16:44:30.172	Cabelo
5307c649-fc19-4306-bf6f-4d8f2863a493	2025-11-07 00:00:00	08:00	elysson	Wallyson	558199697267@s.whatsapp.net	2025-11-06 00:00:00	Cabelo+Sobrancelha
95161733-3d2c-4699-9a76-915a316e0659	2025-11-12 00:00:00	15:20	renan arquiles	Bruno	558198446732@s.whatsapp.net	2025-11-06 00:00:00	Cabelo
a768a9cc-bebe-499c-9352-0bc9582c18c0	2025-11-12 00:00:00	16:40	renan botox	Bruno	558198446732@s.whatsapp.net	2025-11-06 00:00:00	Cabelo
0b223fe7-acc5-48f4-b313-ffc122135fa8	2025-11-07 00:00:00	18:00	Lyaderson 	Wallyson	local	2025-11-06 18:38:33.689	Cabelo
84a6d82d-912b-4353-93c1-06ad1232fc06	2025-11-07 00:00:00	19:20	laércio	Wallyson	558196620184@s.whatsapp.net	2025-11-06 00:00:00	Cabelo
f3881fe0-201b-4f24-8518-cbe088f0c12c	2025-11-07 00:00:00	14:00	mathias	Wallyson	558187494403@s.whatsapp.net	2025-11-06 00:00:00	Cabelo+Barba
97a470dd-13fc-4c58-bd9c-8377fe745dc1	2025-11-07 00:00:00	14:40	gustavo	Wallyson	558198983986@s.whatsapp.net	2025-11-06 00:00:00	Cabelo
4d7c56b0-31f5-483a-94b2-fe19351a030e	2025-11-07 00:00:00	15:20	gustavo farias	Wallyson	558196195368@s.whatsapp.net	2025-11-06 00:00:00	Cabelo
d20c8377-cbde-466c-9c12-37e5ed8e4c15	2025-11-10 00:00:00	14:00	joão marcello	Bruno	558196393507@s.whatsapp.net	2025-11-06 00:00:00	Cabelo
b061e68e-9540-44b4-a81f-cb8d0bbf933d	2025-11-07 00:00:00	16:00	Leandro 	Wallyson	local	2025-11-07 03:09:39.412	Cabelo+Barba
8998f154-226f-446c-aae2-8a744337e743	2025-11-08 00:00:00	08:40	lucas josé	Bruno	558199311183@s.whatsapp.net	2025-11-07 00:00:00	Acabamento (Pezinho)
0da6cbb8-c78b-4448-9cb8-319213499c20	2025-11-14 00:00:00	11:00	jan	Bruno	558179136535@s.whatsapp.net	2025-11-07 00:00:00	Cabelo+Sobrancelha
ca92edf2-83a2-4f90-9168-bc831396f9c1	2025-11-07 00:00:00	18:00	manoel neto	Bruno	558195055212@s.whatsapp.net	2025-11-07 00:00:00	Cabelo+Barba
c69619c5-6d02-4f1f-b6bd-e1ae7144f9e7	2025-11-12 00:00:00	11:40	italo	Bruno	70411761017020@lid	2025-11-07 00:00:00	Cabelo
454b29ce-2a02-46aa-8355-85caba069dc7	2025-11-10 00:00:00	16:40	José Miguel criança 	Wallyson	local	2025-11-07 20:56:52.874	Cabelo
ede6d9b1-5fb5-47d7-ab69-4d83699001a3	2025-11-10 00:00:00	18:00	rennan	Bruno	558196502964@s.whatsapp.net	2025-11-07 00:00:00	Cabelo
ba116986-8cbf-454c-9a84-b143587630c9	2025-11-10 00:00:00	17:20	marcos domingos da costa	Bruno	558196121499@s.whatsapp.net	2025-11-07 00:00:00	Cabelo
d60e338e-ad3c-430e-9155-47f87bf127fc	2025-11-10 00:00:00	15:20	matheus vinicius	Wallyson	117119547142297@lid	2025-11-07 00:00:00	Cabelo
e4106da0-4445-4ad4-9da3-659374a2b94b	2025-11-10 00:00:00	14:40	luan	Bruno	558196003977@s.whatsapp.net	2025-11-08 00:00:00	Cabelo+Sobrancelha
b1d852bb-5786-449b-a728-d8043509b0aa	2025-11-10 00:00:00	18:40	joão guilherme	Bruno	558181673375@s.whatsapp.net	2025-11-08 00:00:00	Cabelo
c49a6043-a657-46a8-8653-9bf39892431d	2025-11-14 00:00:00	16:00	wellington	Bruno	135076889243782@lid	2025-11-08 00:00:00	Cabelo
b3d378b2-408d-4891-b7a0-9f9476ca23a7	2025-11-14 00:00:00	16:40	anthony	Bruno	135076889243782@lid	2025-11-08 00:00:00	Cabelo
9128aeeb-0b3e-42eb-a340-b6a667326c1e	2025-11-10 00:00:00	16:00	anderson	Bruno	217342676041951@lid	2025-11-08 00:00:00	Cabelo
df1f2b86-7808-4be2-94cb-2b109f1b2fc3	2025-11-10 00:00:00	13:20	luan victor	Wallyson	558181307345@s.whatsapp.net	2025-11-08 00:00:00	Cabelo+Sobrancelha
3d2c858a-be5f-4a07-9ad9-30520cbe29bd	2025-11-13 00:00:00	18:40	josé rafael	Bruno	558197031839@s.whatsapp.net	2025-11-08 00:00:00	Cabelo
fdd7a80b-7f3f-48a9-b3b7-f632e495bba0	2025-11-14 00:00:00	18:00	heytor	Bruno	558197714625@s.whatsapp.net	2025-11-09 00:00:00	Cabelo+Barba
4281f8ec-bcf8-4e26-8cb8-437fbca668e4	2025-11-10 00:00:00	09:40	kauê	Wallyson	558199937689@s.whatsapp.net	2025-11-09 00:00:00	Cabelo+Sobrancelha
61e71d71-f6b2-46d5-a7e4-7d3583520428	2025-11-13 00:00:00	09:00	Indisponivel	Bruno	Indisponivel	2025-11-09 13:43:16.86	
9a2ca5b3-bcd9-4eb2-90f6-547c5e999461	2025-11-13 00:00:00	09:40	Indisponivel	Bruno	Indisponivel	2025-11-09 13:43:16.941	
ad2f4f1a-1143-41af-8fc1-3830ec726fd7	2025-11-13 00:00:00	10:20	Indisponivel	Bruno	Indisponivel	2025-11-09 13:43:16.971	
1df56020-a12d-4623-99aa-2d3aae6a6b89	2025-11-13 00:00:00	11:00	Indisponivel	Bruno	Indisponivel	2025-11-09 13:43:16.999	
591c8d00-4b34-4087-aaa9-b14def47fba2	2025-11-13 00:00:00	11:40	Indisponivel	Bruno	Indisponivel	2025-11-09 13:43:17.027	
f2552a5f-562a-4351-ae44-0b3c516db87a	2025-11-13 00:00:00	13:20	Indisponivel	Bruno	Indisponivel	2025-11-09 13:43:17.058	
8e62e3d9-3659-43cc-892f-174b0dbeb4ce	2025-11-13 00:00:00	14:00	Indisponivel	Bruno	Indisponivel	2025-11-09 13:43:17.087	
444f2198-98a2-4c47-aedc-eaf054322d64	2025-11-13 00:00:00	14:40	Indisponivel	Bruno	Indisponivel	2025-11-09 13:43:17.117	
7c9aba0a-946b-4b36-87a9-68ba4a32e29f	2025-11-13 00:00:00	15:20	Indisponivel	Bruno	Indisponivel	2025-11-09 13:43:17.145	
54a73f96-7ec5-45d5-9aee-95ad017667dc	2025-11-13 00:00:00	16:00	Indisponivel	Bruno	Indisponivel	2025-11-09 13:43:17.173	
9c12375b-9a9e-4dee-bfaf-6bdec8420adf	2025-11-13 00:00:00	16:40	Indisponivel	Bruno	Indisponivel	2025-11-09 13:43:17.201	
de62ea82-55e3-4f14-be54-8e98e82a6192	2025-11-13 00:00:00	17:20	Indisponivel	Bruno	Indisponivel	2025-11-09 13:43:17.229	
765613da-fffb-48d9-a76f-8955a04ca403	2025-11-13 00:00:00	18:00	Indisponivel	Bruno	Indisponivel	2025-11-09 13:43:17.257	
bd868f5f-32a6-4424-97c1-b8b20d5152f7	2025-11-13 00:00:00	18:40	Indisponivel	Bruno	Indisponivel	2025-11-09 13:43:17.285	
73166e6f-43b8-4e32-a412-1dc01cccb507	2025-11-12 00:00:00	18:40	José Rafael 	Bruno	local	2025-11-09 14:46:39.607	Cabelo
bb67c902-4a68-42e6-81c7-a207244fda83	2025-11-11 00:00:00	18:40	gabriel	Bruno	223995781734568@lid	2025-11-09 00:00:00	Cabelo
e215bd0a-2376-4c17-960b-22a9dfcfe07b	2025-11-10 00:00:00	13:20	deyvson	Bruno	558195479577@s.whatsapp.net	2025-11-09 00:00:00	Cabelo
026b36e0-060e-4753-9626-ad12707d453b	2025-11-10 00:00:00	15:20	ocupado	Bruno	558198234779-1616200283@g.us	2025-11-09 00:00:00	Cabelo
59170fda-aacc-42e1-bc80-1880ed3bac8f	2025-11-10 00:00:00	16:40	Indisponivel	Bruno	Indisponivel	2025-11-09 21:02:59.52	
cb8ebcc8-b261-426e-a1ac-dec0a647a410	2025-11-10 00:00:00	11:40	Eudes 	Wallyson	local	2025-11-09 22:02:43.161	Cabelo
9f651633-54c2-4747-afc3-d55cedefd9d7	2025-11-11 00:00:00	11:00	ataliba albuquerque	Bruno	558182671510@s.whatsapp.net	2025-11-09 00:00:00	Barba
0637729c-1db5-46d6-afdb-e1fcab1b2b43	2025-11-10 00:00:00	11:00	horlean	Wallyson	558281363560@s.whatsapp.net	2025-11-09 00:00:00	Cabelo+Sobrancelha
3c6cb39a-151c-402c-8c3f-eab789f84c99	2025-11-27 00:00:00	14:00	paulo	Bruno	558199302136@s.whatsapp.net	2025-11-09 00:00:00	Cabelo
162d8408-aaa8-41f9-8a8b-3defbce3539c	2025-11-10 00:00:00	14:00	erik	Wallyson	558191948830@s.whatsapp.net	2025-11-10 00:00:00	Cabelo
2d8647d7-9b83-43cc-aa07-d002dc039a9f	2025-11-10 00:00:00	16:00	miguel	Wallyson	558198435034@s.whatsapp.net	2025-11-10 00:00:00	Cabelo
a74dac5c-66df-40f7-afa0-bac0be5db137	2025-11-10 00:00:00	09:00	marcos cipriano	Wallyson	204423414448239@lid	2025-11-10 00:00:00	Cabelo
d4efb6e8-17bd-4888-a962-e99b5082aa98	2025-11-10 00:00:00	10:20	alysson	Wallyson	558195985705@s.whatsapp.net	2025-11-10 00:00:00	Cabelo
cda3adb3-4bb1-4b55-b410-af32e01a71c7	2025-11-12 00:00:00	11:00	matheus	Bruno	558199843332@s.whatsapp.net	2025-11-10 00:00:00	Cabelo
b0d9f7c1-52ce-41ed-b62c-be6ae9fe72da	2025-11-10 00:00:00	14:40	Júnior 	Wallyson	local	2025-11-10 12:59:33.618	Cabelo+Barba
6e07c46c-f636-4bdc-9d11-123338795caa	2025-11-10 00:00:00	18:00	Dafnis 	Wallyson	local	2025-11-10 13:05:55.908	Cabelo
059981a5-d048-4643-9561-9f1e0794e5a6	2025-11-14 00:00:00	10:20	davi	Bruno	202735844606181@lid	2025-11-10 00:00:00	Cabelo+Sobrancelha
7933715f-58ee-4996-be17-a3396121e80c	2025-11-11 00:00:00	10:00	Paulo 	Wallyson	local	2025-11-10 14:08:35.318	Cabelo
1c865094-c15c-4f7f-9aed-c69ae702d5db	2025-11-12 00:00:00	09:20	joão emanuel	Wallyson	558199715446@s.whatsapp.net	2025-11-10 00:00:00	Cabelo
3673d8c6-e597-4353-84af-402db4a50068	2025-11-11 00:00:00	18:40	Júnior cm3	Wallyson	local	2025-11-10 15:58:30.235	Cabelo
b215f2ac-d8b3-4a25-bb57-aa19034c64e3	2025-11-17 00:00:00	14:40	pedro santos	Bruno	229351656280150@lid	2025-11-10 00:00:00	Cabelo+Barba
4f027066-4ae5-4785-83d7-bc40452f48f2	2025-11-14 00:00:00	13:20	esdras gabriel	Bruno	558198526844@s.whatsapp.net	2025-11-10 00:00:00	Cabelo+Barba
89d20e8e-c090-4531-ae29-9c1f01832c27	2025-11-11 00:00:00	17:20	Michell	Wallyson	local	2025-11-10 16:59:12.596	Cabelo
ffdd9389-a8d4-497b-b35c-33865642c187	2025-11-11 00:00:00	14:00	Márcia 	Bruno	local	2025-11-10 17:06:03.49	Cabelo
4c126091-1f13-494b-bf10-1f5f0ab38e4f	2025-11-11 00:00:00	14:00	thiago fiel romão da silva	Wallyson	558197822298@s.whatsapp.net	2025-11-10 00:00:00	Cabelo+Sobrancelha
8ebd7ae0-7c5a-40be-912d-bb813798ddc1	2025-11-11 00:00:00	17:20	Bruna ( Lucas)	Bruno	local	2025-11-10 18:20:54.54	Cabelo
0e593720-cdb1-49f1-8345-24ca40e6d72c	2025-11-11 00:00:00	11:40	sid	Bruno	558191536718@s.whatsapp.net	2025-11-10 00:00:00	Barba
c04700cb-8b18-40f2-99c4-054c2552c0d9	2025-11-11 00:00:00	18:00	Davi 	Wallyson	local	2025-11-10 18:59:28.86	Cabelo
92b7ed3f-9d69-4fa1-9e23-371950a0c5bf	2025-11-14 00:00:00	16:00	matheus vinicius	Wallyson	117119547142297@lid	2025-11-10 00:00:00	Cabelo
e506b729-451a-4f94-9dcc-6e64fb043a4b	2025-11-11 00:00:00	13:20	francisco	Wallyson	558182062970@s.whatsapp.net	2025-11-10 00:00:00	Cabelo
cb2dc7fa-3e44-4349-8b72-9dfac3dd7b03	2025-11-15 00:00:00	14:40	davi	Bruno	558173448482@s.whatsapp.net	2025-11-10 00:00:00	Cabelo
49ea7f8d-f517-4211-aadb-083862b2ce86	2025-11-12 00:00:00	10:20	pedro henrique	Bruno	558198446899@s.whatsapp.net	2025-11-10 00:00:00	Cabelo
05c16f9d-776e-4d9a-b570-bf9bc3647921	2025-11-14 00:00:00	14:00	dubolo	Bruno	558196647899@s.whatsapp.net	2025-11-10 00:00:00	Cabelo
16d578d4-a934-4155-8207-52dddb659769	2025-11-14 00:00:00	14:40	dubolo	Bruno	558196647899@s.whatsapp.net	2025-11-10 00:00:00	Cabelo
e36329d4-9146-49b6-9a6c-525b3d6048e6	2025-11-15 00:00:00	13:20	ullisses	Bruno	104475431854160@lid	2025-11-10 00:00:00	Cabelo+Barba
422a5427-196a-4d6f-9d17-d03fc58bc6ff	2025-11-11 00:00:00	08:40	pedro	Wallyson	40166651633741@lid	2025-11-10 00:00:00	Cabelo
ba996544-902b-4d07-813f-d88e1a763a40	2025-11-14 00:00:00	15:20	matheus	Bruno	558197941830@s.whatsapp.net	2025-11-10 00:00:00	Cabelo
f4a2d5eb-8f31-43e7-9ab1-24d9a7adedcc	2025-11-14 00:00:00	11:40	zaldinho lindao	Bruno	558198591039@s.whatsapp.net	2025-11-10 00:00:00	Cabelo
b03fcc81-ad5b-4f4a-8b52-ac14e8ee4054	2025-11-11 00:00:00	11:20	felipe	Wallyson	558181451150@s.whatsapp.net	2025-11-11 00:00:00	Cabelo+Sobrancelha
f175e5c2-4888-4735-a80c-5e705e00a367	2025-11-14 00:00:00	17:20	lucas josé	Bruno	558199311183@s.whatsapp.net	2025-11-11 00:00:00	Cabelo+Sobrancelha
ececee97-b823-4c8c-b4d5-de89ded447f8	2025-11-12 00:00:00	18:00	robert fernando	Bruno	82128733790305@lid	2025-11-11 00:00:00	Cabelo
fafa84d9-71f7-417f-bc1a-4f188ec21c98	2025-11-15 00:00:00	08:00	mathias	Bruno	558181310245@s.whatsapp.net	2025-11-11 00:00:00	Cabelo+Sobrancelha
f84ea127-6edc-4261-a864-2ab25c0c3926	2025-11-11 00:00:00	19:20	Indisponivel	Bruno	Indisponivel	2025-11-11 10:20:33.632	
7e6330eb-d448-4feb-b97f-1a2abb56b907	2025-11-12 00:00:00	15:20	weliton	Wallyson	70411761017020@lid	2025-11-11 00:00:00	Cabelo
972a045a-f9a5-4ded-ad82-33753588c404	2025-11-11 00:00:00	09:00	Indisponivel	Bruno	Indisponivel	2025-11-11 11:20:56.722	
71c313e8-a7d9-4a65-aed7-44333a7bdcd9	2025-11-11 00:00:00	09:40	Indisponivel	Bruno	Indisponivel	2025-11-11 11:20:56.853	
7c8e2511-1327-4794-b44f-09150ff33c96	2025-11-11 00:00:00	10:20	Indisponivel	Bruno	Indisponivel	2025-11-11 11:20:56.88	
a04191b2-d74f-4952-b160-15f9a60398ca	2025-11-12 00:00:00	18:00	Juninho compadre 	Wallyson	local	2025-11-11 12:06:22.973	Cabelo
af84a5ba-323f-412a-86c0-8c40da81bf93	2025-11-13 00:00:00	16:00	leandro	Wallyson	558195021216@s.whatsapp.net	2025-11-11 00:00:00	Cabelo
18815810-5f3d-4831-9327-1d296ce41fa0	2025-11-11 00:00:00	13:20	boa tarde irmão	Bruno	558198437880@s.whatsapp.net	2025-11-11 00:00:00	Cabelo+Sobrancelha
c014e98c-d788-4bfc-a9b2-8b801cbf665b	2025-11-12 00:00:00	08:00	Marcado 	Wallyson	local	2025-11-11 13:48:42.364	Cabelo
583de1be-da8c-4a9c-9b87-4d5281821218	2025-11-12 00:00:00	08:40	Rubens 	Wallyson	local	2025-11-11 13:48:59.065	Cabelo
428b4dcc-411a-42c6-9323-486d01c0a206	2025-11-11 00:00:00	16:40	Wellington 	Wallyson	local	2025-11-11 13:50:50.9	Cabelo
7ab6dc6c-8d26-4561-ae4b-d3f65eb48d88	2025-11-14 00:00:00	09:40	bruno gomes	Bruno	558196522258@s.whatsapp.net	2025-11-11 00:00:00	Cabelo
352b952f-75de-4310-a9c0-a85f71347179	2025-11-12 00:00:00	16:40	jeferson	Wallyson	558198265483@s.whatsapp.net	2025-11-11 00:00:00	Cabelo
fdc7efa0-1cff-4ee1-bae4-2636a5173e2e	2025-11-12 00:00:00	17:20	gonzaga neto	Bruno	558198514795@s.whatsapp.net	2025-11-11 00:00:00	Cabelo+Sobrancelha
330515f5-3b95-4875-83a3-48ad96fd4492	2025-11-12 00:00:00	13:20	arthur	Bruno	558194115511@s.whatsapp.net	2025-11-11 00:00:00	Cabelo+Barba
92c8f443-0e12-47c7-b387-a2f00c80b798	2025-11-11 00:00:00	16:40	nilton \narthur	Bruno	109023600885980@lid	2025-11-11 00:00:00	Cabelo
1eccfcb4-4043-4111-998f-2abc18cc1c9a	2025-11-11 00:00:00	14:40	Marcado	Wallyson	local	2025-11-11 16:06:10.515	Cabelo
7fa5f97f-88c4-47b0-ba60-4a2c66daac55	2025-11-11 00:00:00	15:20	pedro henrique	Wallyson	558195071416@s.whatsapp.net	2025-11-11 00:00:00	Cabelo+Sobrancelha
673edf74-f6da-4b1e-b2fc-0380bab10f13	2025-11-11 00:00:00	15:20	paulo césar	Bruno	558195254306@s.whatsapp.net	2025-11-11 00:00:00	Cabelo
ced6c9ce-d2b4-4c0d-b578-59f3967caffd	2025-11-12 00:00:00	10:00	Tierry 	Wallyson	local	2025-11-11 17:51:38.763	Cabelo
1671c1f1-4e52-4daf-af07-dc34fc11ceab	2025-11-14 00:00:00	18:40	fabiano	Bruno	558194610556@s.whatsapp.net	2025-11-11 00:00:00	Cabelo+Barba
c89b1dce-581f-421b-92f7-f5ec3ba42a7a	2025-11-11 00:00:00	16:00	anthony	Bruno	558198234779-1616200283@g.us	2025-11-11 00:00:00	Cabelo
8ac9a973-5a07-4337-b32d-9c2c9513c0d6	2025-11-12 00:00:00	09:00	Luan	Bruno	local	2025-11-11 18:43:09.44	Cabelo
0a9b50eb-a3fc-40d5-b7b4-df2dcc3c71c9	2025-11-12 00:00:00	16:00	lucas	Bruno	558197326785@s.whatsapp.net	2025-11-11 00:00:00	Cabelo
22f5aa6a-9b4a-46f3-8779-03f5a378f709	2025-11-13 00:00:00	17:20	lucas filho	Wallyson	558197326785@s.whatsapp.net	2025-11-11 00:00:00	Cabelo
ca106b86-45cb-4e2e-a73a-e1e09538974a	2025-11-13 00:00:00	16:40	Jaciel 	Wallyson	local	2025-11-11 21:51:46.598	Cabelo
1697a69b-3783-4310-becf-4376cbbc44d8	2025-11-12 00:00:00	17:20	samuel	Wallyson	117381657567382@lid	2025-11-11 00:00:00	Cabelo+Sobrancelha
b07a26ff-ae8f-44f3-b7dd-f5559209d752	2025-11-15 00:00:00	12:00	denílson	Bruno	173160313958584@lid	2025-11-11 00:00:00	Barba
c7e2951a-b6ee-4e48-896f-00f359e2805e	2025-11-14 00:00:00	09:00	thomas	Bruno	211076402684058@lid	2025-11-11 00:00:00	Cabelo
e1e39905-6875-47a6-abbd-aa12a875c5e6	2025-11-12 00:00:00	14:00	paulo	Bruno	558192692547@s.whatsapp.net	2025-11-11 00:00:00	Cabelo
6cfd101b-4d98-48e3-bff7-e5fba21b9bf1	2025-11-12 00:00:00	14:00	lucas pio	Wallyson	558181213267@s.whatsapp.net	2025-11-12 00:00:00	Cabelo
c530b8db-c450-4ac8-8af2-fc6e085826e1	2025-11-15 00:00:00	16:00	Ocupado 	Bruno	local	2025-11-12 09:27:58.417	Cabelo
14e8f778-49e9-4c85-9ca3-70a87a7f125f	2025-11-12 00:00:00	09:40	Lúcio 	Bruno	local	2025-11-12 09:28:26.483	Cabelo
45592070-9e91-403d-a1ae-e29863e2428a	2025-11-12 00:00:00	13:20	Valmir 	Wallyson	local	2025-11-12 11:59:29.038	Cabelo+Barba
c5fa98e7-cf02-455a-9adf-6774cd8711d8	2025-11-12 00:00:00	11:20	Rubens 	Wallyson	local	2025-11-12 12:49:09.216	Cabelo
d16a7bc5-9c31-4b00-9704-b4ea8b35082a	2025-11-14 00:00:00	17:20	leonardo	Wallyson	131147061289178@lid	2025-11-12 00:00:00	Cabelo
f6a24fa1-b32a-4de1-8dfa-ebf72f54249c	2025-11-12 00:00:00	14:40	Marcado 	Wallyson	local	2025-11-12 16:26:31.137	Cabelo
66ce0dc0-f417-4562-93fe-c482fee5da77	2025-11-22 00:00:00	14:00	neto	Bruno	558194759358@s.whatsapp.net	2025-11-12 00:00:00	Cabelo
62cb9bc5-8f26-42c5-beb2-2d1033973d1a	2025-11-12 00:00:00	14:40	pedro augusto	Bruno	558171185174@s.whatsapp.net	2025-11-12 00:00:00	Cabelo
312d0d88-37f4-4cb2-ac10-6147c987970e	2025-11-12 00:00:00	16:00	Pedro 	Wallyson	local	2025-11-12 17:26:28.722	Cabelo
f714ec4c-946b-4bad-8267-640325cf5474	2025-11-17 00:00:00	18:00	andre	Bruno	558198995821@s.whatsapp.net	2025-11-12 00:00:00	Cabelo+Sobrancelha
9a07ccdf-3bae-4556-9f80-a95f9061d5ee	2025-11-14 00:00:00	10:00	elysson	Wallyson	558199697267@s.whatsapp.net	2025-11-12 00:00:00	Cabelo+Sobrancelha
8d787627-ee41-4e29-b22f-ffe4c082f7c6	2025-11-14 00:00:00	16:40	matheus	Wallyson	558199697267@s.whatsapp.net	2025-11-12 00:00:00	Cabelo+Sobrancelha
0db50b9f-1a5e-485c-8c13-ba1834e8e922	2025-12-24 00:00:00	16:40	arthur sales	Bruno	558197065270@s.whatsapp.net	2025-11-12 00:00:00	Cabelo
a82c5224-8d25-4b54-927e-7c3a2975ed9c	2025-11-14 00:00:00	15:20	andrew	Wallyson	82832856764512@lid	2025-11-12 00:00:00	Cabelo
c8bc065f-b62b-4649-831b-a7738ff339c8	2025-11-14 00:00:00	14:40	anderson	Wallyson	82832856764512@lid	2025-11-12 00:00:00	Cabelo
51ccf670-26a0-4b37-91a4-05e7735113b0	2025-11-15 00:00:00	16:00	moisés	Wallyson	558171076971@s.whatsapp.net	2025-11-12 00:00:00	Cabelo+Barba
16ddb2b8-92da-40ab-95ab-61b2ed19e95c	2025-11-13 00:00:00	08:40	fernando correia da silva	Wallyson	71339574579213@lid	2025-11-12 00:00:00	Cabelo
d9f49a5a-7781-4655-a69d-574757d7a4c1	2025-11-14 00:00:00	18:00	joão	Wallyson	558196050355@s.whatsapp.net	2025-11-13 00:00:00	Cabelo+Barba
8c5a9414-ce41-456e-8dbf-f40495b46db6	2025-11-15 00:00:00	10:40	júlio césar	Wallyson	558196440108@s.whatsapp.net	2025-11-13 00:00:00	Cabelo+Sobrancelha
edcb6ccb-5ea0-4e9e-8225-1d934fe80177	2025-11-13 00:00:00	08:00	Marcado 	Wallyson	local	2025-11-13 10:36:06.454	Cabelo
9945c16d-7a4c-4040-9430-0cda097ab7e0	2025-11-13 00:00:00	18:00	Paulo 	Wallyson	local	2025-11-13 12:23:15.048	Cabelo
81f0ca3f-25cf-43cc-a935-58e8159b1b3c	2025-11-13 00:00:00	18:40	Cauã 	Wallyson	local	2025-11-13 12:24:23.245	Cabelo
f6ff5807-07b8-45ef-a596-7db4bc9738b8	2025-11-14 00:00:00	08:00	max	Wallyson	5566327955573@lid	2025-11-13 00:00:00	Cabelo
e4223ce5-517f-4770-b0b2-01fc2adf2877	2025-11-15 00:00:00	11:20	anderson carlos	Bruno	558196579148@s.whatsapp.net	2025-11-13 00:00:00	Cabelo
edcfb9b0-87f3-4ba5-b61a-1fba12403736	2025-11-15 00:00:00	15:20	felipe silva	Bruno	558179158954@s.whatsapp.net	2025-11-13 00:00:00	Cabelo
e29a69a5-5568-424a-9b9b-0e3b1cbfaa25	2025-11-18 00:00:00	13:20	Pedro Henrique ( o mago) 	Bruno	local	2025-11-13 16:34:45.267	Cabelo
89eb024a-2391-4545-bc84-69f85736356d	2025-11-20 00:00:00	14:00	filipi paixão	Bruno	161190189785197@lid	2025-11-13 00:00:00	Cabelo
e7903b81-8be4-41e1-9fbf-2d2f68f5e260	2025-11-13 00:00:00	14:00	fernando	Wallyson	71339574579213@lid	2025-11-13 00:00:00	Cabelo
7ec4c0fd-5c96-437f-862c-8bea5d9a77bc	2025-11-14 00:00:00	08:40	Eduardo 	Wallyson	local	2025-11-13 17:02:41.895	Cabelo
68f7464b-7f38-4422-aa51-9ea4fd80eee7	2025-11-13 00:00:00	15:20	Rodrigo 	Wallyson	local	2025-11-13 17:39:33.343	Cabelo
b348aaf0-5cfa-4422-bdcb-6099c54f5369	2025-11-14 00:00:00	11:20	Rodrigo 	Wallyson	local	2025-11-13 17:48:32.611	Cabelo
537e5651-8e57-426f-b789-731275577470	2025-11-15 00:00:00	10:40	lázaro rangel	Bruno	558195988560@s.whatsapp.net	2025-11-13 00:00:00	Cabelo
7c2fee05-73e9-42a0-b63f-7b1df0fba970	2025-11-15 00:00:00	08:40	victor	Bruno	558197610116@s.whatsapp.net	2025-11-13 00:00:00	Cabelo
fc417e77-f898-4a46-9737-d6bf623a4364	2025-11-15 00:00:00	14:00	carlos	Wallyson	558199700555@s.whatsapp.net	2025-11-13 00:00:00	Cabelo
a675e1ae-ff5a-4fd2-abc0-2b70bb0a8c9c	2025-11-17 00:00:00	14:40	Érika 	Wallyson	local	2025-11-13 20:06:53.181	Cabelo
674625ca-6b9c-4037-b5ee-724e16c31c13	2025-11-14 00:00:00	14:00	josé fernando	Wallyson	558197543337@s.whatsapp.net	2025-11-13 00:00:00	Cabelo
05c24a0c-b3e1-4369-89c9-f10195d49fea	2025-11-14 00:00:00	10:40	hugo	Wallyson	558197543337@s.whatsapp.net	2025-11-13 00:00:00	Cabelo
d37be4e2-07d8-4262-9598-b37ae79ecc2b	2025-11-15 00:00:00	10:00	diego santos	Wallyson	558173303801@s.whatsapp.net	2025-11-13 00:00:00	Cabelo
8a60bcb0-ac6e-41bb-85f3-2b61e383c401	2025-12-31 00:00:00	16:00	josé kaio	Bruno	194639411835016@lid	2025-11-13 00:00:00	Cabelo+Sobrancelha
1bb3bd34-18df-4c46-8f57-48067e6b44f6	2025-11-15 00:00:00	12:00	Marcado 	Wallyson	local	2025-11-13 22:28:22	Cabelo
3acb2c67-e1af-42d6-be4c-114449690991	2025-11-15 00:00:00	17:20	Adaias 	Wallyson	local	2025-11-13 22:28:48.559	Cabelo
7a0efd7c-7184-4a06-8354-550030ff3c88	2025-11-15 00:00:00	13:20	edinho	Wallyson	558198615843@s.whatsapp.net	2025-11-13 00:00:00	Cabelo
ebbb459a-be5a-4338-84cc-f3ded4a9ec47	2025-11-14 00:00:00	18:40	toin neto	Wallyson	558196049253@s.whatsapp.net	2025-11-13 00:00:00	Cabelo
22385f86-1de9-4b76-ab20-925e9d6dea0d	2025-11-17 00:00:00	16:40	shérgyo	Wallyson	214842988322879@lid	2025-11-14 00:00:00	Cabelo
43ffa1ad-f4bd-4b90-8e15-3ac39939e689	2025-11-15 00:00:00	10:00	itami	Bruno	558197175420@s.whatsapp.net	2025-11-14 00:00:00	Cabelo
8866deba-30ee-4e95-b9ee-5fc61dfadde6	2025-11-15 00:00:00	16:40	Adaias 	Wallyson	local	2025-11-14 10:06:08.194	Cabelo
882b6344-bb59-4887-8e50-d4ef69bc3f99	2025-11-15 00:00:00	15:20	Gustavo 	Wallyson	local	2025-11-14 10:07:51.466	Cabelo
605b555e-ee34-4aab-988d-102d1bfc6169	2025-11-14 00:00:00	09:20	Marcado 	Wallyson	local	2025-11-14 11:02:14.651	Cabelo
3db5da74-4ae2-45ce-bb5e-e09a91fa9f57	2025-11-18 00:00:00	09:00	lucas ravi	Bruno	558183245719@s.whatsapp.net	2025-11-14 00:00:00	Cabelo
2abea385-1536-48c0-9452-3395fb0e0480	2025-11-17 00:00:00	13:20	mateus	Bruno	558196083218@s.whatsapp.net	2025-11-14 00:00:00	Cabelo+Barba
e1e89b2e-568d-4fe2-9936-6f512f078c54	2025-11-15 00:00:00	18:00	Marcado 	Wallyson	local	2025-11-14 14:11:59.407	Cabelo
38aa1cd6-06bf-4b19-b3df-8865aefd43c1	2025-11-14 00:00:00	19:20	valney e davi	Wallyson	51488252526802@lid	2025-11-14 00:00:00	Cabelo
d69258c6-535b-44d9-b066-899466da22a8	2025-11-21 00:00:00	13:20	esdras gabriel	Bruno	558198526844@s.whatsapp.net	2025-11-14 00:00:00	Barba
2af7d0ff-986e-4a5f-8bee-3bc5aef92556	2025-11-17 00:00:00	13:20	Indisponivel	Bruno	Indisponivel	2025-11-14 18:03:20.241	
81119f32-82aa-4334-bec1-398fc11a231e	2025-11-17 00:00:00	14:00	Indisponivel	Bruno	Indisponivel	2025-11-14 18:03:20.33	
895cea1c-4255-466e-a497-75e1603fd906	2025-11-17 00:00:00	14:40	Indisponivel	Bruno	Indisponivel	2025-11-14 18:03:20.362	
81dc72af-e7cc-42c6-a380-4f30fda6f649	2025-11-17 00:00:00	15:20	Indisponivel	Bruno	Indisponivel	2025-11-14 18:03:20.393	
cca8552c-b630-4b63-92ac-907cea43a4e1	2025-11-17 00:00:00	16:00	Indisponivel	Bruno	Indisponivel	2025-11-14 18:03:20.424	
ea611eb8-f15c-486e-b512-d55baed06565	2025-11-17 00:00:00	16:40	Indisponivel	Bruno	Indisponivel	2025-11-14 18:03:20.456	
74d0779f-17ae-4cb2-af5c-6ea04c843f0e	2025-11-17 00:00:00	17:20	Indisponivel	Bruno	Indisponivel	2025-11-14 18:03:20.486	
a91967bf-5686-4c19-b637-e6e19e5fd9cb	2025-11-17 00:00:00	18:00	Indisponivel	Bruno	Indisponivel	2025-11-14 18:03:20.516	
8f4c7cfc-307d-4dcd-8b76-9f918acaa861	2025-11-17 00:00:00	18:40	Indisponivel	Bruno	Indisponivel	2025-11-14 18:03:20.548	
6dded474-eaed-4cf4-bde5-79df28e33aa8	2025-11-15 00:00:00	11:20	Miguel 	Wallyson	local	2025-11-14 18:16:35.579	Cabelo
d5184b1f-92d1-4912-921d-003d453a706a	2025-11-14 00:00:00	20:00	Édson 	Wallyson	local	2025-11-14 18:17:33.303	Cabelo
1637380b-8abf-4096-bb33-e53fd8371db9	2025-11-15 00:00:00	09:20	Édson 	Wallyson	local	2025-11-14 18:20:49.977	Cabelo
5b8e5b5f-e1ad-4285-9bce-18a889221a86	2025-12-29 00:00:00	18:00	denílson	Bruno	173160313958584@lid	2025-11-14 00:00:00	Cabelo+Barba
a80d1fee-5a59-4e43-8a6a-f269c9af982e	2025-11-15 00:00:00	14:40	neto	Wallyson	558196586838@s.whatsapp.net	2025-11-14 00:00:00	Cabelo
4914b16e-2467-4126-8b6b-7408c870c18e	2025-11-19 00:00:00	16:00	flavio	Bruno	5511992553806@s.whatsapp.net	2025-11-14 00:00:00	Cabelo
cbde116e-3b17-4c46-9413-34b07ea06e46	2025-11-21 00:00:00	16:00	carlos daniel do carmo santos	Bruno	558198034222@s.whatsapp.net	2025-11-14 00:00:00	Cabelo
695a5cf1-07b1-47f3-ab0f-6f3eccac1e32	2025-11-15 00:00:00	08:40	Júnior 	Wallyson	local	2025-11-14 22:50:05.926	Cabelo+Barba
5d124f7a-af4b-404d-ae1d-586ec53d89ca	2025-11-17 00:00:00	10:20	arthur	Wallyson	43138819317842@lid	2025-11-14 00:00:00	Cabelo
48ca8584-02c1-465e-9710-c53f189a5486	2025-11-18 00:00:00	11:00	emídio	Bruno	558181606802@s.whatsapp.net	2025-11-14 00:00:00	Cabelo
4abb7e17-137e-491b-8b5b-77d23a2bc0f4	2025-11-24 00:00:00	17:20	roberto guedes	Bruno	196800317227237@lid	2025-11-14 00:00:00	Cabelo
0b6f58e5-8d86-4744-9566-3e227ee1bb07	2025-11-17 00:00:00	18:00	Édson 	Wallyson	local	2025-11-15 10:11:44.82	Cabelo
4c5e439f-5fc1-4c1a-b8db-202b6b3bb657	2025-11-19 00:00:00	09:00	matheus lima	Bruno	272150653051023@lid	2025-11-15 00:00:00	Cabelo+Sobrancelha
f27df4ba-5e9e-42dd-bf16-7645df9f3b4a	2025-12-01 00:00:00	17:20	lucas gabriel	Wallyson	113958652526668@lid	2025-11-15 00:00:00	Cabelo+Sobrancelha
f3633bf4-b7f8-4ed2-8306-ee5300a4e616	2025-12-23 00:00:00	18:00	lucas gabriel	Wallyson	113958652526668@lid	2025-11-15 00:00:00	Cabelo+Sobrancelha
90995caf-05ad-47b0-8a80-3f25d5ee7b09	2025-11-18 00:00:00	19:20	roberto guedes	Bruno	196800317227237@lid	2025-11-15 00:00:00	Cabelo
a3cd947b-f489-4662-8a5b-6007f7005967	2025-12-03 00:00:00	18:40	roberto guedes	Bruno	196800317227237@lid	2025-11-15 00:00:00	Cabelo
580f5b85-dda5-42a4-b144-f59b75da0f8a	2025-12-20 00:00:00	08:00	roberto guedes	Bruno	196800317227237@lid	2025-11-15 00:00:00	Cabelo
7f303dfb-a9f5-49bc-8b78-c5426c2048f4	2025-12-31 00:00:00	09:00	roberto guedes	Bruno	196800317227237@lid	2025-11-15 00:00:00	Cabelo
2d43c8fc-b003-43e9-8660-3f437a17f6bb	2025-12-17 00:00:00	17:20	roberto guedes	Bruno	196800317227237@lid	2025-11-15 00:00:00	Cabelo
c98217d5-3b6a-4923-a861-4d8d02aa91ca	2025-11-18 00:00:00	15:20	kaio	Bruno	194639411835016@lid	2025-11-16 00:00:00	Cabelo+Sobrancelha
3fa93f85-9414-497a-8b8d-890ab0c6792a	2025-11-18 00:00:00	16:40	antônio	Bruno	145836218544182@lid	2025-11-16 00:00:00	Cabelo+Sobrancelha
651aafad-cdbe-425a-97b6-e8b942dba92c	2025-11-17 00:00:00	14:00	jeferson	Wallyson	558198265483@s.whatsapp.net	2025-11-16 00:00:00	Cabelo+Barba
456a139c-c704-48da-96fb-6d3d45946b27	2025-11-17 00:00:00	15:20	jorge luiz	Wallyson	18854956765248@lid	2025-11-16 00:00:00	Cabelo
56635b88-d4bf-40f7-b93c-1d309f60e32e	2025-11-18 00:00:00	09:40	henrique	Bruno	558198983986@s.whatsapp.net	2025-11-16 00:00:00	Cabelo
1e8261e2-997d-4acf-81fb-4a2aa06164b5	2025-11-21 00:00:00	15:20	rafael	Bruno	187720789975070@lid	2025-11-16 00:00:00	Cabelo
defa8689-2f20-464f-b7cf-e42b76d429fc	2025-11-24 00:00:00	18:00	anthony	Bruno	558197620059@s.whatsapp.net	2025-11-16 00:00:00	Cabelo
f8fe6e34-d98f-4e2e-8099-aa064a13ff5e	2025-11-18 00:00:00	18:40	ryan valério	Bruno	69153402691745@lid	2025-11-16 00:00:00	Cabelo+Barba
f15db6ce-56b6-43f5-91b4-59fccf1276ff	2025-11-19 00:00:00	17:20	joão pedro	Wallyson	165188770726138@lid	2025-11-16 00:00:00	Cabelo
1bc87165-0168-4a6b-a926-43c2230e41fc	2025-11-18 00:00:00	17:20	pedro henrique	Bruno	139638077423689@lid	2025-11-16 00:00:00	Cabelo
89f60d00-ff1b-4680-9c7e-792c3ee66f1c	2025-11-18 00:00:00	18:00	maykon	Bruno	558199870087@s.whatsapp.net	2025-11-16 00:00:00	Cabelo
40dfba86-5d92-4650-a568-1e8813ebba3a	2025-11-22 00:00:00	08:40	tiago	Bruno	40166651633741@lid	2025-11-16 00:00:00	Cabelo
88ab5761-ebe3-4772-8e08-f9e91ee3dff1	2025-11-17 00:00:00	11:40	eudes fera	Wallyson	558184793136@s.whatsapp.net	2025-11-16 00:00:00	Acabamento (Pezinho)
db586ef3-a66e-4131-80d0-6fe8a759ca41	2025-11-20 00:00:00	09:00	henrique	Bruno	558196639360@s.whatsapp.net	2025-11-16 00:00:00	Cabelo
28126318-2cdb-4c2a-9db9-96528cdbae56	2025-11-17 00:00:00	09:00	breno	Wallyson	558198437880@s.whatsapp.net	2025-11-16 00:00:00	Cabelo+Sobrancelha
\.


--
-- Data for Name: HorariosBruno; Type: TABLE DATA; Schema: public; Owner: agendamentos_42te_user
--

COPY public."HorariosBruno" ("diaSemana", horarios) FROM stdin;
Sexta	{09:00,09:40,10:20,11:00,11:40,13:20,14:00,14:40,15:20,16:00,16:40,17:20,18:00,18:40,19:20,20:00}
Quarta	{09:00,09:40,10:20,11:00,11:40,13:20,14:00,14:40,15:20,16:00,16:40,17:20,18:00,18:40}
Terca	{09:00,09:40,10:20,11:00,11:40,13:20,14:00,14:40,15:20,16:00,16:40,17:20,18:00,18:40,19:20}
Sabado	{08:00,08:40,10:00,10:40,11:20,12:00,13:20,14:00,14:40,15:20,16:00}
Quinta	{09:00,09:40,10:20,11:00,11:40,13:20,14:00,14:40,15:20,16:00,16:40,17:20,18:00,18:40}
Segunda	{13:20,14:00,14:40,15:20,16:00,16:40,17:20,18:00,18:40}
\.


--
-- Data for Name: HorariosWallyson; Type: TABLE DATA; Schema: public; Owner: agendamentos_42te_user
--

COPY public."HorariosWallyson" ("diaSemana", horarios) FROM stdin;
Quinta	{08:00,08:40,09:20,10:00,10:40,11:20,13:20,14:00,14:40,15:20,16:00,16:40,17:20,18:00,18:40}
Sexta	{08:00,08:40,09:20,10:00,10:40,11:20,14:00,14:40,15:20,16:00,16:40,17:20,18:00,18:40,19:20,20:00}
Terca	{08:40,09:20,10:00,10:40,11:20,13:20,14:00,14:40,15:20,16:00,16:40,17:20,18:00,18:40}
Segunda	{09:00,09:40,10:20,11:00,11:40,13:20,14:00,14:40,15:20,16:00,16:40,17:20,18:00}
Quarta	{08:00,08:40,09:20,10:00,10:40,11:20,13:20,14:00,14:40,15:20,16:00,16:40,17:20,18:00}
Sabado	{08:40,09:20,10:00,10:40,11:20,12:00,13:20,14:00,14:40,15:20,16:00,16:40,17:20,18:00}
\.


--
-- Data for Name: _prisma_migrations; Type: TABLE DATA; Schema: public; Owner: agendamentos_42te_user
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
-- Name: Agendamentos Agendamentos_pkey; Type: CONSTRAINT; Schema: public; Owner: agendamentos_42te_user
--

ALTER TABLE ONLY public."Agendamentos"
    ADD CONSTRAINT "Agendamentos_pkey" PRIMARY KEY (id);


--
-- Name: _prisma_migrations _prisma_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: agendamentos_42te_user
--

ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);


--
-- Name: HorariosBruno_diaSemana_key; Type: INDEX; Schema: public; Owner: agendamentos_42te_user
--

CREATE UNIQUE INDEX "HorariosBruno_diaSemana_key" ON public."HorariosBruno" USING btree ("diaSemana");


--
-- Name: HorariosWallyson_diaSemana_key; Type: INDEX; Schema: public; Owner: agendamentos_42te_user
--

CREATE UNIQUE INDEX "HorariosWallyson_diaSemana_key" ON public."HorariosWallyson" USING btree ("diaSemana");


--
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: -; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON SEQUENCES TO agendamentos_42te_user;


--
-- Name: DEFAULT PRIVILEGES FOR TYPES; Type: DEFAULT ACL; Schema: -; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TYPES TO agendamentos_42te_user;


--
-- Name: DEFAULT PRIVILEGES FOR FUNCTIONS; Type: DEFAULT ACL; Schema: -; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON FUNCTIONS TO agendamentos_42te_user;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: -; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TABLES TO agendamentos_42te_user;


--
-- PostgreSQL database dump complete
--

\unrestrict mydjmiWDpEingeqBemFlEwQieVgzcjyoVdBqPpqcFhCoRKkljewVzvHVifjI9PC


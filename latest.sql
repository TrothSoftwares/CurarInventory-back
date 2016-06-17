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

CREATE EXTENSION IF NOT EXISTS "plpgsql" WITH SCHEMA "pg_catalog";


--
-- Name: EXTENSION "plpgsql"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "plpgsql" IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

CREATE TABLE "ar_internal_metadata" (
    "key" character varying NOT NULL,
    "value" character varying,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO hkcwwvwtkynjbn;

--
-- Name: commontoolissuances; Type: TABLE; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

CREATE TABLE "commontoolissuances" (
    "id" integer NOT NULL,
    "status" character varying,
    "issuedate" "date",
    "employee_id" integer,
    "commontool_id" integer,
    "returndate" "date",
    "location" character varying,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL
);


ALTER TABLE public.commontoolissuances OWNER TO hkcwwvwtkynjbn;

--
-- Name: commontoolissuances_id_seq; Type: SEQUENCE; Schema: public; Owner: hkcwwvwtkynjbn
--

CREATE SEQUENCE "commontoolissuances_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.commontoolissuances_id_seq OWNER TO hkcwwvwtkynjbn;

--
-- Name: commontoolissuances_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hkcwwvwtkynjbn
--

ALTER SEQUENCE "commontoolissuances_id_seq" OWNED BY "commontoolissuances"."id";


--
-- Name: commontools; Type: TABLE; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

CREATE TABLE "commontools" (
    "id" integer NOT NULL,
    "slno" character varying,
    "name" character varying,
    "status" character varying,
    "issuedate" "date",
    "employee_id" integer,
    "returndate" "date",
    "location" character varying,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL
);


ALTER TABLE public.commontools OWNER TO hkcwwvwtkynjbn;

--
-- Name: commontools_id_seq; Type: SEQUENCE; Schema: public; Owner: hkcwwvwtkynjbn
--

CREATE SEQUENCE "commontools_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.commontools_id_seq OWNER TO hkcwwvwtkynjbn;

--
-- Name: commontools_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hkcwwvwtkynjbn
--

ALTER SEQUENCE "commontools_id_seq" OWNED BY "commontools"."id";


--
-- Name: customers; Type: TABLE; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

CREATE TABLE "customers" (
    "id" integer NOT NULL,
    "companyname" character varying,
    "companycode" character varying,
    "chargecode" character varying,
    "email" character varying,
    "address1" character varying,
    "address2" character varying,
    "suburb" character varying,
    "city" character varying,
    "state" character varying,
    "country" character varying,
    "zipcode" character varying,
    "phone" character varying,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL
);


ALTER TABLE public.customers OWNER TO hkcwwvwtkynjbn;

--
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: hkcwwvwtkynjbn
--

CREATE SEQUENCE "customers_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_id_seq OWNER TO hkcwwvwtkynjbn;

--
-- Name: customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hkcwwvwtkynjbn
--

ALTER SEQUENCE "customers_id_seq" OWNED BY "customers"."id";


--
-- Name: employees; Type: TABLE; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

CREATE TABLE "employees" (
    "id" integer NOT NULL,
    "slno" integer,
    "payroll" character varying,
    "name" character varying,
    "department" character varying,
    "workcontact" character varying,
    "personalcontact" character varying,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL
);


ALTER TABLE public.employees OWNER TO hkcwwvwtkynjbn;

--
-- Name: employees_id_seq; Type: SEQUENCE; Schema: public; Owner: hkcwwvwtkynjbn
--

CREATE SEQUENCE "employees_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.employees_id_seq OWNER TO hkcwwvwtkynjbn;

--
-- Name: employees_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hkcwwvwtkynjbn
--

ALTER SEQUENCE "employees_id_seq" OWNED BY "employees"."id";


--
-- Name: orderitems; Type: TABLE; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

CREATE TABLE "orderitems" (
    "id" integer NOT NULL,
    "product_id" integer,
    "quantity" integer,
    "total" integer,
    "orderitemstatus" character varying,
    "order_id" integer,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL
);


ALTER TABLE public.orderitems OWNER TO hkcwwvwtkynjbn;

--
-- Name: orderitems_id_seq; Type: SEQUENCE; Schema: public; Owner: hkcwwvwtkynjbn
--

CREATE SEQUENCE "orderitems_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orderitems_id_seq OWNER TO hkcwwvwtkynjbn;

--
-- Name: orderitems_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hkcwwvwtkynjbn
--

ALTER SEQUENCE "orderitems_id_seq" OWNED BY "orderitems"."id";


--
-- Name: orders; Type: TABLE; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

CREATE TABLE "orders" (
    "id" integer NOT NULL,
    "duedate" "date",
    "totalunits" integer,
    "totalcost" integer,
    "orderstatus" character varying,
    "customer_id" integer,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL,
    "mrf" character varying,
    "location" character varying,
    "natureofwork" character varying,
    "supplier_id" integer,
    "employee_id" integer,
    "issuancedate" "date",
    "requestedby_id" integer,
    "approvedby_id" integer
);


ALTER TABLE public.orders OWNER TO hkcwwvwtkynjbn;

--
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: hkcwwvwtkynjbn
--

CREATE SEQUENCE "orders_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_id_seq OWNER TO hkcwwvwtkynjbn;

--
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hkcwwvwtkynjbn
--

ALTER SEQUENCE "orders_id_seq" OWNED BY "orders"."id";


--
-- Name: probras; Type: TABLE; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

CREATE TABLE "probras" (
    "id" integer NOT NULL,
    "prr" character varying,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL
);


ALTER TABLE public.probras OWNER TO hkcwwvwtkynjbn;

--
-- Name: probras_id_seq; Type: SEQUENCE; Schema: public; Owner: hkcwwvwtkynjbn
--

CREATE SEQUENCE "probras_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.probras_id_seq OWNER TO hkcwwvwtkynjbn;

--
-- Name: probras_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hkcwwvwtkynjbn
--

ALTER SEQUENCE "probras_id_seq" OWNED BY "probras"."id";


--
-- Name: productbrands; Type: TABLE; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

CREATE TABLE "productbrands" (
    "id" integer NOT NULL,
    "brandname" character varying,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL
);


ALTER TABLE public.productbrands OWNER TO hkcwwvwtkynjbn;

--
-- Name: productbrands_id_seq; Type: SEQUENCE; Schema: public; Owner: hkcwwvwtkynjbn
--

CREATE SEQUENCE "productbrands_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.productbrands_id_seq OWNER TO hkcwwvwtkynjbn;

--
-- Name: productbrands_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hkcwwvwtkynjbn
--

ALTER SEQUENCE "productbrands_id_seq" OWNED BY "productbrands"."id";


--
-- Name: products; Type: TABLE; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

CREATE TABLE "products" (
    "id" integer NOT NULL,
    "itemcode" character varying,
    "productname" character varying,
    "initialstocklevel" integer,
    "initialcostprice" integer,
    "buyprice" integer,
    "retailprice" integer,
    "supplier_id" integer,
    "producttype_id" integer,
    "productbrand_id" integer
);


ALTER TABLE public.products OWNER TO hkcwwvwtkynjbn;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: hkcwwvwtkynjbn
--

CREATE SEQUENCE "products_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO hkcwwvwtkynjbn;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hkcwwvwtkynjbn
--

ALTER SEQUENCE "products_id_seq" OWNED BY "products"."id";


--
-- Name: producttypes; Type: TABLE; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

CREATE TABLE "producttypes" (
    "id" integer NOT NULL,
    "typename" character varying
);


ALTER TABLE public.producttypes OWNER TO hkcwwvwtkynjbn;

--
-- Name: producttypes_id_seq; Type: SEQUENCE; Schema: public; Owner: hkcwwvwtkynjbn
--

CREATE SEQUENCE "producttypes_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.producttypes_id_seq OWNER TO hkcwwvwtkynjbn;

--
-- Name: producttypes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hkcwwvwtkynjbn
--

ALTER SEQUENCE "producttypes_id_seq" OWNED BY "producttypes"."id";


--
-- Name: purchaseorderitems; Type: TABLE; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

CREATE TABLE "purchaseorderitems" (
    "id" integer NOT NULL,
    "product_id" integer,
    "quantity" integer,
    "total" integer,
    "poitemstatus" character varying,
    "recieveddate" "date",
    "purchaseorder_id" integer,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL
);


ALTER TABLE public.purchaseorderitems OWNER TO hkcwwvwtkynjbn;

--
-- Name: purchaseorderitems_id_seq; Type: SEQUENCE; Schema: public; Owner: hkcwwvwtkynjbn
--

CREATE SEQUENCE "purchaseorderitems_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.purchaseorderitems_id_seq OWNER TO hkcwwvwtkynjbn;

--
-- Name: purchaseorderitems_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hkcwwvwtkynjbn
--

ALTER SEQUENCE "purchaseorderitems_id_seq" OWNED BY "purchaseorderitems"."id";


--
-- Name: purchaseorders; Type: TABLE; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

CREATE TABLE "purchaseorders" (
    "id" integer NOT NULL,
    "duedate" "date",
    "recieveddate" "date",
    "totalunits" integer,
    "totalcost" integer,
    "postatus" character varying,
    "supplier_id" integer,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL
);


ALTER TABLE public.purchaseorders OWNER TO hkcwwvwtkynjbn;

--
-- Name: purchaseorders_id_seq; Type: SEQUENCE; Schema: public; Owner: hkcwwvwtkynjbn
--

CREATE SEQUENCE "purchaseorders_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.purchaseorders_id_seq OWNER TO hkcwwvwtkynjbn;

--
-- Name: purchaseorders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hkcwwvwtkynjbn
--

ALTER SEQUENCE "purchaseorders_id_seq" OWNED BY "purchaseorders"."id";


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

CREATE TABLE "schema_migrations" (
    "version" character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO hkcwwvwtkynjbn;

--
-- Name: stockadjustmentitems; Type: TABLE; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

CREATE TABLE "stockadjustmentitems" (
    "id" integer NOT NULL,
    "product_id" integer,
    "quantity" integer,
    "stockadjustment_id" integer,
    "total" integer,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL
);


ALTER TABLE public.stockadjustmentitems OWNER TO hkcwwvwtkynjbn;

--
-- Name: stockadjustmentitems_id_seq; Type: SEQUENCE; Schema: public; Owner: hkcwwvwtkynjbn
--

CREATE SEQUENCE "stockadjustmentitems_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stockadjustmentitems_id_seq OWNER TO hkcwwvwtkynjbn;

--
-- Name: stockadjustmentitems_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hkcwwvwtkynjbn
--

ALTER SEQUENCE "stockadjustmentitems_id_seq" OWNED BY "stockadjustmentitems"."id";


--
-- Name: stockadjustments; Type: TABLE; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

CREATE TABLE "stockadjustments" (
    "id" integer NOT NULL,
    "customer_id" integer,
    "reason" character varying,
    "notes" "text",
    "sastatus" character varying,
    "totalunits" integer,
    "totalcost" integer,
    "order_id" integer,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL
);


ALTER TABLE public.stockadjustments OWNER TO hkcwwvwtkynjbn;

--
-- Name: stockadjustments_id_seq; Type: SEQUENCE; Schema: public; Owner: hkcwwvwtkynjbn
--

CREATE SEQUENCE "stockadjustments_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stockadjustments_id_seq OWNER TO hkcwwvwtkynjbn;

--
-- Name: stockadjustments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hkcwwvwtkynjbn
--

ALTER SEQUENCE "stockadjustments_id_seq" OWNED BY "stockadjustments"."id";


--
-- Name: suppliers; Type: TABLE; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

CREATE TABLE "suppliers" (
    "id" integer NOT NULL,
    "companyname" character varying,
    "email" character varying,
    "address1" character varying,
    "address2" character varying,
    "suburb" character varying,
    "city" character varying,
    "state" character varying,
    "country" character varying,
    "zipcode" character varying,
    "phone" character varying,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL,
    "companycode" character varying,
    "chargecode" character varying
);


ALTER TABLE public.suppliers OWNER TO hkcwwvwtkynjbn;

--
-- Name: suppliers_id_seq; Type: SEQUENCE; Schema: public; Owner: hkcwwvwtkynjbn
--

CREATE SEQUENCE "suppliers_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.suppliers_id_seq OWNER TO hkcwwvwtkynjbn;

--
-- Name: suppliers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hkcwwvwtkynjbn
--

ALTER SEQUENCE "suppliers_id_seq" OWNED BY "suppliers"."id";


--
-- Name: tools; Type: TABLE; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

CREATE TABLE "tools" (
    "id" integer NOT NULL,
    "name" character varying,
    "status" character varying,
    "issuedate" "date",
    "employee_id" integer,
    "lostdate" "date",
    "damagedate" "date",
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL,
    "vendor" character varying,
    "invoiceno" character varying
);


ALTER TABLE public.tools OWNER TO hkcwwvwtkynjbn;

--
-- Name: tools_id_seq; Type: SEQUENCE; Schema: public; Owner: hkcwwvwtkynjbn
--

CREATE SEQUENCE "tools_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tools_id_seq OWNER TO hkcwwvwtkynjbn;

--
-- Name: tools_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hkcwwvwtkynjbn
--

ALTER SEQUENCE "tools_id_seq" OWNED BY "tools"."id";


--
-- Name: users; Type: TABLE; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

CREATE TABLE "users" (
    "id" integer NOT NULL,
    "email" character varying DEFAULT ''::character varying NOT NULL,
    "encrypted_password" character varying DEFAULT ''::character varying NOT NULL,
    "reset_password_token" character varying,
    "reset_password_sent_at" timestamp without time zone,
    "remember_created_at" timestamp without time zone,
    "sign_in_count" integer DEFAULT 0 NOT NULL,
    "current_sign_in_at" timestamp without time zone,
    "last_sign_in_at" timestamp without time zone,
    "current_sign_in_ip" character varying,
    "last_sign_in_ip" character varying,
    "authentication_token" character varying DEFAULT ''::character varying NOT NULL,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL
);


ALTER TABLE public.users OWNER TO hkcwwvwtkynjbn;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: hkcwwvwtkynjbn
--

CREATE SEQUENCE "users_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO hkcwwvwtkynjbn;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hkcwwvwtkynjbn
--

ALTER SEQUENCE "users_id_seq" OWNED BY "users"."id";


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hkcwwvwtkynjbn
--

ALTER TABLE ONLY "commontoolissuances" ALTER COLUMN "id" SET DEFAULT "nextval"('"commontoolissuances_id_seq"'::"regclass");


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hkcwwvwtkynjbn
--

ALTER TABLE ONLY "commontools" ALTER COLUMN "id" SET DEFAULT "nextval"('"commontools_id_seq"'::"regclass");


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hkcwwvwtkynjbn
--

ALTER TABLE ONLY "customers" ALTER COLUMN "id" SET DEFAULT "nextval"('"customers_id_seq"'::"regclass");


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hkcwwvwtkynjbn
--

ALTER TABLE ONLY "employees" ALTER COLUMN "id" SET DEFAULT "nextval"('"employees_id_seq"'::"regclass");


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hkcwwvwtkynjbn
--

ALTER TABLE ONLY "orderitems" ALTER COLUMN "id" SET DEFAULT "nextval"('"orderitems_id_seq"'::"regclass");


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hkcwwvwtkynjbn
--

ALTER TABLE ONLY "orders" ALTER COLUMN "id" SET DEFAULT "nextval"('"orders_id_seq"'::"regclass");


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hkcwwvwtkynjbn
--

ALTER TABLE ONLY "probras" ALTER COLUMN "id" SET DEFAULT "nextval"('"probras_id_seq"'::"regclass");


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hkcwwvwtkynjbn
--

ALTER TABLE ONLY "productbrands" ALTER COLUMN "id" SET DEFAULT "nextval"('"productbrands_id_seq"'::"regclass");


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hkcwwvwtkynjbn
--

ALTER TABLE ONLY "products" ALTER COLUMN "id" SET DEFAULT "nextval"('"products_id_seq"'::"regclass");


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hkcwwvwtkynjbn
--

ALTER TABLE ONLY "producttypes" ALTER COLUMN "id" SET DEFAULT "nextval"('"producttypes_id_seq"'::"regclass");


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hkcwwvwtkynjbn
--

ALTER TABLE ONLY "purchaseorderitems" ALTER COLUMN "id" SET DEFAULT "nextval"('"purchaseorderitems_id_seq"'::"regclass");


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hkcwwvwtkynjbn
--

ALTER TABLE ONLY "purchaseorders" ALTER COLUMN "id" SET DEFAULT "nextval"('"purchaseorders_id_seq"'::"regclass");


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hkcwwvwtkynjbn
--

ALTER TABLE ONLY "stockadjustmentitems" ALTER COLUMN "id" SET DEFAULT "nextval"('"stockadjustmentitems_id_seq"'::"regclass");


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hkcwwvwtkynjbn
--

ALTER TABLE ONLY "stockadjustments" ALTER COLUMN "id" SET DEFAULT "nextval"('"stockadjustments_id_seq"'::"regclass");


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hkcwwvwtkynjbn
--

ALTER TABLE ONLY "suppliers" ALTER COLUMN "id" SET DEFAULT "nextval"('"suppliers_id_seq"'::"regclass");


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hkcwwvwtkynjbn
--

ALTER TABLE ONLY "tools" ALTER COLUMN "id" SET DEFAULT "nextval"('"tools_id_seq"'::"regclass");


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hkcwwvwtkynjbn
--

ALTER TABLE ONLY "users" ALTER COLUMN "id" SET DEFAULT "nextval"('"users_id_seq"'::"regclass");


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: hkcwwvwtkynjbn
--

COPY "ar_internal_metadata" ("key", "value", "created_at", "updated_at") FROM stdin;
environment	production	2016-05-17 09:34:13.488261	2016-05-17 09:34:13.488261
\.


--
-- Data for Name: commontoolissuances; Type: TABLE DATA; Schema: public; Owner: hkcwwvwtkynjbn
--

COPY "commontoolissuances" ("id", "status", "issuedate", "employee_id", "commontool_id", "returndate", "location", "created_at", "updated_at") FROM stdin;
1		2016-05-18	1	1	2016-06-01	test location	2016-05-31 14:36:54.356773	2016-06-02 05:20:40.5778
2		\N	\N	1	\N		2016-06-02 05:20:52.342898	2016-06-02 05:20:52.342898
\.


--
-- Name: commontoolissuances_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hkcwwvwtkynjbn
--

SELECT pg_catalog.setval('"commontoolissuances_id_seq"', 2, true);


--
-- Data for Name: commontools; Type: TABLE DATA; Schema: public; Owner: hkcwwvwtkynjbn
--

COPY "commontools" ("id", "slno", "name", "status", "issuedate", "employee_id", "returndate", "location", "created_at", "updated_at") FROM stdin;
1	\N	Hilti	Issued	\N	2	\N	Yemen	2016-05-31 09:51:00.338526	2016-06-02 05:20:52.587726
\.


--
-- Name: commontools_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hkcwwvwtkynjbn
--

SELECT pg_catalog.setval('"commontools_id_seq"', 1, true);


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: hkcwwvwtkynjbn
--

COPY "customers" ("id", "companyname", "companycode", "chargecode", "email", "address1", "address2", "suburb", "city", "state", "country", "zipcode", "phone", "created_at", "updated_at") FROM stdin;
1	Select Customer	cust1	charge1	companyone@gmail.com	address1	address2	suburb	city	state	country	689672	04735253585	2016-05-17 09:34:43.374098	2016-05-17 09:34:43.374098
2	CMD Facility	01	24100078	msadiq@ocsarabia.com	\N	\N	\N	\N	\N	\N	\N	2319984	2016-05-18 12:59:13.428905	2016-05-18 12:59:13.428905
3	Ajil Murabehoon Center	122	999000.RH01.236598	sd	\N	\N	\N	\N	\N	\N	\N	ddsadas	2016-06-04 07:38:25.778328	2016-06-04 07:38:25.778328
\.


--
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hkcwwvwtkynjbn
--

SELECT pg_catalog.setval('"customers_id_seq"', 3, true);


--
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: hkcwwvwtkynjbn
--

COPY "employees" ("id", "slno", "payroll", "name", "department", "workcontact", "personalcontact", "created_at", "updated_at") FROM stdin;
1	\N	Payroll1	Employee One	Electrical	+87411981	+1815517447	2016-05-27 11:51:20.510727	2016-05-27 11:51:20.510727
2	1	8508	Sherly Welgedra	OCS	0515054738	0515054738	2016-05-27 11:52:24.581009	2016-06-04 07:44:21.118882
4	2	11735	M, Sadiq Baig	OCS	0515153846	0535783418	2016-06-04 07:40:53.123009	2016-06-04 07:44:38.641901
\.


--
-- Name: employees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hkcwwvwtkynjbn
--

SELECT pg_catalog.setval('"employees_id_seq"', 4, true);


--
-- Data for Name: orderitems; Type: TABLE DATA; Schema: public; Owner: hkcwwvwtkynjbn
--

COPY "orderitems" ("id", "product_id", "quantity", "total", "orderitemstatus", "order_id", "created_at", "updated_at") FROM stdin;
1	1	5	500	created	1	2016-05-17 09:34:43.568854	2016-05-17 09:34:43.568854
3	2	1	\N	\N	1	2016-05-18 12:59:36.64906	2016-05-18 12:59:36.64906
4	2	1	\N	\N	1	2016-05-18 12:59:45.197703	2016-05-18 12:59:45.197703
6	72	1	\N	\N	3	2016-05-18 13:07:55.856978	2016-05-18 13:08:16.143309
8	1	1	\N	\N	1	2016-05-19 07:07:44.275609	2016-05-19 07:07:44.275609
12	2	1	\N	\N	1	2016-05-19 07:22:45.86548	2016-05-19 07:22:45.86548
7	1	1	250	\N	2	2016-05-19 07:06:42.692321	2016-05-22 07:45:32.752168
15	1	1	250	\N	2	2016-05-22 07:45:01.22216	2016-05-22 07:45:33.198732
9	1	1	250	\N	2	2016-05-19 07:08:45.206998	2016-05-22 07:45:33.203552
10	1	1	250	\N	2	2016-05-19 07:08:59.399143	2016-05-22 07:45:33.20587
5	72	2	58	\N	2	2016-05-18 13:00:03.008688	2016-05-22 07:45:33.247511
11	1	1	250	\N	2	2016-05-19 07:09:15.038538	2016-05-22 07:45:33.27162
14	1	1	250	\N	2	2016-05-22 07:44:59.256694	2016-05-22 07:45:34.253782
13	1	1	250	\N	2	2016-05-22 07:44:58.685645	2016-05-22 07:45:34.567742
16	29	1	\N	\N	4	2016-05-31 10:01:13.965568	2016-05-31 10:01:30.474505
17	269	1	\N	\N	1	2016-05-31 14:19:23.145162	2016-05-31 14:19:23.145162
18	269	1	\N	\N	1	2016-06-04 07:13:52.377457	2016-06-04 07:13:52.377457
19	269	1	\N	\N	1	2016-06-04 07:15:38.630283	2016-06-04 07:15:38.630283
20	2	1	\N	\N	1	2016-06-04 07:47:07.858323	2016-06-04 07:47:07.858323
22	269	1	\N	\N	5	2016-06-05 06:05:41.192736	2016-06-05 06:10:07.199733
25	269	5	\N	\N	7	2016-06-05 06:25:50.086357	2016-06-05 06:26:57.993644
\.


--
-- Name: orderitems_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hkcwwvwtkynjbn
--

SELECT pg_catalog.setval('"orderitems_id_seq"', 27, true);


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: hkcwwvwtkynjbn
--

COPY "orders" ("id", "duedate", "totalunits", "totalcost", "orderstatus", "customer_id", "created_at", "updated_at", "mrf", "location", "natureofwork", "supplier_id", "employee_id", "issuancedate", "requestedby_id", "approvedby_id") FROM stdin;
1	2016-03-25	10	1000	created	1	2016-05-17 09:34:43.460355	2016-05-17 09:34:43.460355	\N	\N	\N	\N	\N	\N	\N	\N
3	2016-05-17	1	29	created	2	2016-05-18 13:08:13.065449	2016-05-18 13:08:13.065449	\N	\N	\N	\N	\N	\N	\N	\N
2	2016-05-17	9	1808	delivered	2	2016-05-18 13:00:43.043343	2016-05-28 10:38:20.215476	\N	\N		2	1	2016-05-04	\N	\N
4	\N	1	2	delivered	2	2016-05-31 10:01:29.833438	2016-05-31 10:01:43.626532	101	\N	Masonry	\N	2	2016-05-23	3	3
5	\N	1	10	created	2	2016-06-05 06:10:06.250783	2016-06-05 06:10:06.250783	18292	\N	Plumbing	\N	4	2016-06-04	2	2
6	\N	5	50	created	2	2016-06-05 06:26:54.297306	2016-06-05 06:26:54.297306	00036		Electrical	\N	4	2016-06-04	2	2
7	\N	5	50	created	2	2016-06-05 06:26:54.658637	2016-06-05 06:26:54.658637	00036		Electrical	\N	4	2016-06-04	2	2
\.


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hkcwwvwtkynjbn
--

SELECT pg_catalog.setval('"orders_id_seq"', 7, true);


--
-- Data for Name: probras; Type: TABLE DATA; Schema: public; Owner: hkcwwvwtkynjbn
--

COPY "probras" ("id", "prr", "created_at", "updated_at") FROM stdin;
\.


--
-- Name: probras_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hkcwwvwtkynjbn
--

SELECT pg_catalog.setval('"probras_id_seq"', 1, false);


--
-- Data for Name: productbrands; Type: TABLE DATA; Schema: public; Owner: hkcwwvwtkynjbn
--

COPY "productbrands" ("id", "brandname", "created_at", "updated_at") FROM stdin;
1	Select Brand	2016-05-17 09:34:43.213366	2016-05-17 09:34:43.213366
2	Generic	2016-05-17 09:49:59.586946	2016-05-17 09:49:59.586946
\.


--
-- Name: productbrands_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hkcwwvwtkynjbn
--

SELECT pg_catalog.setval('"productbrands_id_seq"', 2, true);


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: hkcwwvwtkynjbn
--

COPY "products" ("id", "itemcode", "productname", "initialstocklevel", "initialcostprice", "buyprice", "retailprice", "supplier_id", "producttype_id", "productbrand_id") FROM stdin;
2	AC01	A/C FAN MOTOR 1/2HP	1	362	362	362	2	2	2
3	AC02	A/C FAN MOTOR 1/3HP	5	300	300	300	2	2	2
4	AC03	A/C FAN MOTOR 1/5HP	3	180	180	180	2	2	2
5	AC04	D/C FAN MOTOR 1/2HP UNIVERSAL22	4	350	350	350	2	2	2
6	AC05	CAPACITOR 80UF	1	55	55	55	2	2	2
7	AC06	CAPACITOR 50UF	26	32	32	32	2	2	2
8	AC07	CAPACITOR 20 & 25UF	25	32	32	32	2	2	2
9	AC08	CAPACITOR 26 & 35UF	11	25	25	25	2	2	2
10	AC09	MOTOR-CAPACITOR 161-193UF	16	28	28	28	2	2	2
11	AC10	CAPACITOR 7.5UF	3	12	12	12	2	2	2
12	C01	SCREW  3/4, 1, 11/2, 2, 3''	99	25	25	25	2	3	2
13	AC11	CAPACITOR 2 , 2.5,  5UF	56	15	15	15	2	2	2
14	AC12	STARTING CAPACITOR 220V	14	16	16	16	2	2	2
15	AC13	FILTER DRYER FOR A/C 25G	6	9	9	9	2	2	2
16	C02	NAIL 1, 11/2, 2, 3, 4''	148	2	2	2	2	3	2
17	AC14	CHARGING VALVE	0	4	4	4	2	2	2
18	C03	CABINET HINGES IN & OUT	61	1	1	1	2	3	2
19	AC15	THERMOSTAT GUARD BOX	4	36	36	36	2	2	2
20	C04	DRAWER RUNNER 35, 45, 50CM	79	5	5	5	2	3	2
21	C05	DOOR HANDLE	7	30	30	30	2	3	2
22	AC16	BLOWER FAN MOTOR FOR FRIDGE.	5	31	31	31	2	2	2
23	AC17	DESERT COOLER PUMP SUBMERCIBEL	0	450	450	450	2	2	2
24	C06	ALUMINUM DOOR HANDLE	11	14	14	14	2	3	2
25	AC18	FREQUENCY FILTER USA	2	300	300	300	2	2	2
26	C07	DRAWER LOCK ARMSTRONG	215	9	9	9	2	3	2
27	C08	CYLINDER LOCK	21	26	26	26	2	3	2
28	AC19	BEARING 6201 (FOR A/C FAN MOTOR)	63	12	12	12	2	2	2
30	C09	DOOR LOCK YALE	2	50	50	50	2	3	2
31	AC21	A/C SELECTOR SWITCH	12	38	38	38	2	2	2
32	C10	DOOR STOPPER	3	29	29	29	2	3	2
33	C11	DRAWER KNOBS WOODEN AND PLASTIC	140	0	0	0	2	3	2
34	C12	WHEEL CASTER	26	5	5	5	2	3	2
35	AC22	A/C THERMOSTAT LG, YORK, & FALC	29	33	33	33	2	2	2
36	C13	DIGITAL LOCK	1	120	120	120	2	3	2
37	C14	DRAWER  LOCK  GLOBAL	18	3	3	3	2	3	2
38	AC23	TIME DELAY SWITCH	3	75	75	75	2	2	2
39	C15	DOOR CLOSER	1	90	90	90	2	3	2
40	AC24	DESERT COOLER BEARING	15	12	12	12	2	2	2
41	C16	RAILING WHEEL FOR GLASS DOOR	160	2	2	2	2	3	2
42	AC25	CARBON BRUSH FOR G.E.W/MACHINE	4	22	22	22	2	2	2
43	AC26	COPPER TUBE 5/8, 3/4, 1/2''	6	209	209	209	2	2	2
44	C17	CLOTH HANGER GOLDEN	6	19	19	19	2	3	2
45	AC27	COPPER TUBE 3/8, 1/4''	9	105	105	105	2	2	2
46	C18	PAD LOCK 30 - 38MM	2	7	7	7	2	3	2
47	C19	BARREL BOLT	11	3	3	3	2	3	2
48	AC28	HEATER ELEMENT & RELIVE VALVE	4	65	65	65	2	2	2
49	AC29	A/C FILTER FOAM	14	1	1	1	2	2	2
50	C20	CABINET DOOR HINGES	21	2	2	2	2	3	2
51	AC30	DESERT COOLER PUMP	2	33	33	33	2	2	2
52	AC31	DESERT COOLER WATER HOSE	2	45	45	45	2	2	2
53	C21	ALUMINUM DOOR LOCK DOMUS	8	34	34	34	2	3	2
54	AC32	COPPER WELDING ROD PLATED	19	1	1	1	2	2	2
55	C22	TABLE HOLE COVER	55	2	2	2	2	3	2
56	AC33	BRASS WELDING RODS	40	3	3	3	2	2	2
57	AC34	D/COOLER DRAIN OUTLET	17	3	3	3	2	2	2
58	C23	DOOR HINGES	27	4	4	4	2	3	2
59	AC35	D/C FAN MOTOR PULLEY	17	16	16	16	2	2	2
60	AC36	FREON GAS NO 11	1	200	200	200	2	2	2
61	C24	WHITE EDGING 18MM	9	20	20	20	2	3	2
62	C25	POLY  FOAM WEATHERSEAL	1	43	43	43	2	3	2
63	AC37	FREON GAS NO 410	0	411	411	411	2	2	2
64	C26	CABINET BARREL BOLT	9	3	3	3	2	3	2
65	AC38	FREON GAS NO 22 /13KG	0	350	350	350	2	2	2
66	AC39	FREON GAS NO134	1	700	700	700	2	2	2
67	C27	SANDIYAN EDGING	6	24	24	24	2	3	2
68	AC40	A/C COMPRESSOR 24BTU 59,-65LRA	1	480	480	480	2	2	2
69	C28	SCREW BIT	17	5	5	5	2	3	2
70	AC41	COPPER ELBOW 1, 3/4''	10	4	4	4	2	2	2
71	C29	BOLTS WITH NUTS 6''	6	4	4	4	2	3	2
73	C30	CEILING TILES 60X60CM	0	6	6	6	2	3	2
74	AC43	RUBBER INSULATION 5/8	106	2	2	2	2	2	2
75	C31	L'' BRACKETS 1''	1329	0	0	0	2	3	2
76	C32	DOOR STOPPER PLASTIC	15	2	2	2	2	3	2
77	C33	HASPAS & STAPLES	3	2	2	2	2	3	2
78	C34	DOOR LOCK ROUND TYPE  ITALY	10	67	67	67	2	3	2
79	C35	DOOR LOCK ROUND TYPE CHINA	8	44	44	44	2	3	2
80	C36	DRAWER KNOBS GOLD COLOR	9	3	3	3	2	3	2
81	C37	STEEL D/LOCK	1	70	70	70	2	3	2
82	C38	L'' BRACKET 20X25CM	18	4	4	4	2	3	2
83	C39	WOOD ADHESIVE 92-0302	4	31	31	31	2	3	2
84	C40	WOOD ADHESIVE  500G	5	5	5	5	2	3	2
85	C41	DRAWER FOR COM-KEY BOARD	2	35	35	35	2	3	2
86	B01	BULB 110&220V X E-27 & B-22	604	1	1	1	2	4	2
87	C42	ALUMINUM DOOR SCREEN	50	5	5	5	2	3	2
88	B02	FLOURESCENT TUBE 36W	92	3	3	3	2	4	2
89	B03	FLOURESCENT TUBE 40W	51	4	4	4	2	4	2
90	C43	SKIRTAIN BLACK & GRAY	74	10	10	10	2	3	2
91	B04	FLOURESCENT TUBE 20W	25	4	4	4	2	4	2
72	AC42	A/C CLEANING CHEMICLE	1	34	25	29	2	2	2
92	C44	DOOR BRUSH	3	9	9	9	2	3	2
97	B07	OSRAM BULB 110&220V/20W	182	8	8	8	2	4	2
102	B12	HALOGEN METAL HALIDE LAMP 70W	11	32	32	32	2	4	2
108	B18	HALOGEN LAMP ALU 12V/75W	37	21	21	21	2	4	2
93	B05	FLOURESCENT TUBE 18W	108	2	2	2	2	4	2
96	C46	ELECTRICAL DOOR LOCK YALE 60 IT	1	160	160	160	2	3	2
101	B11	HALOGEN METAL HALIDE LAMP 150W	0	30	30	30	2	4	2
104	B14	HALOGEN METAL HALIDE LAMP 400W	12	45	45	45	2	4	2
107	B17	HALOGEN LIGHT 220/100W	14	5	5	5	2	4	2
112	B20	HALOGEN HALOLUX  22V/25W	256	5	5	5	2	4	2
113	O03	LEATHER GLOVES	7	4	4	4	2	5	2
115	B21	HEAD RESISTANCE BULB	30	3	3	3	2	4	2
94	C45	FIBER MASH (NET FOR WATER PROOF	3	65	65	65	2	3	2
98	B08	HALOGEN DOCOSTAR 12V/50W	21	2	2	2	2	4	2
103	B13	HALOGEN DULUX 13W 2IPN	23	11	11	11	2	4	2
106	B16	HALOGEN LIGHT 110V/500W	13	9	9	9	2	4	2
111	O02	RUBBER GLOVES	1	4	4	4	2	5	2
95	B06	FLOURESCENT TUBE 10W	72	7	7	7	2	4	2
100	B10	BULB PHILIPS 220V/40W	50	2	2	2	2	4	2
109	O01	SILICONE WHITE, CLEAR & BLACK	39	6	6	6	2	5	2
110	B19	HALOGEN WARMWHITE 150W/WDL	23	72	72	72	2	4	2
114	O04	GATE WHEEL 4 &5''	19	29	29	29	2	5	2
99	B09	BULB CANDLE TYPE 110&220V/60W	40	1	1	1	2	4	2
105	B15	HALOGEN METAL HALIDE LAMP 250W	42	44	44	44	2	4	2
116	O05	GI WIRE NET	1	9	9	9	2	5	2
117	B22	HALOGEN LAMP SOPAR 110V/20W	10	4	4	4	2	4	2
118	B23	BULB CANDLE TYPE 110V/10W	24	5	5	5	2	4	2
119	O06	BICYCLE TYRE SIZE # 28	8	14	14	14	2	5	2
120	B24	SPOT LIGHT 220V/150W	10	17	17	17	2	4	2
121	O07	BICYCLE TUBE SIZE # 28	16	9	9	9	2	5	2
122	B25	SPOT LIGHT 110&220V / 60& 100W	40	2	2	2	2	4	2
123	O08	PATTEX GLUE - GERMANY	7	13	13	13	2	5	2
124	B26	MERCURY LAMP 220V/250W/E-27	16	16	16	16	2	4	2
125	O09	SOLDERING LEAD	3	15	15	15	2	5	2
126	B27	MERCURY LAMP 220V/175W/E-40	9	37	37	37	2	4	2
127	O10	HOOK FOR FIRE EXTINGUISHER	23	5	5	5	2	5	2
128	B28	MERCURY  LAMP TUNGSRAM TCF 250	11	45	45	45	2	4	2
129	O11	STEEL DOOR HINGES 4''	13	8	8	8	2	5	2
130	B29	MERCURY LAMP 220V/250W/E-40	4	16	16	16	2	4	2
131	B30	MERCURY LAMP 220V/500W/E-40	20	41	41	41	2	4	2
132	O12	STEEL DOOR HINGES 2 1/2''	20	1	1	1	2	5	2
133	B31	MERCURY LAMP 220V/400W/E-40	24	25	25	25	2	4	2
134	O13	JIG SAW BLADES MAKITA & ULTRA	20	16	16	16	2	5	2
135	B32	VERIABLE LED LIGHT FIXTURE 20W/	9	81	81	81	2	4	2
136	O14	HACKSAW BLADES 8D/18T & 10D/24T	243	0	0	0	2	5	2
137	O16	DRILL BIT 3, 4, 5, 6, 7, & 8MM	199	4	4	4	2	5	2
138	O17	WELDING RODS  2.6	5	43	43	43	2	5	2
139	O18	CUT-OFF BLADES 14''	16	13	13	13	2	5	2
140	O19	GRINDING DISK STEEL & STONE 7''	115	5	5	5	2	5	2
141	P01	SAND PAPERS 100, 150, 220, 400	262	1	1	1	2	6	2
142	O20	GRINDING DISK STEEL & STONE 4''	119	3	3	3	2	5	2
143	P02	CLEANING CLOTH	28	2	2	2	2	6	2
144	O21	GI ROUND CLAMP 1/2, 3/4, 1, 11/	976	0	0	0	2	5	2
145	P03	STEEL PUTTY	12	40	40	40	2	6	2
146	O22	GI  U'' CLAMP 1/2, 3/4, 1, 11/2	980	0	0	0	2	5	2
147	P04	HITH LUX WOOD STAIN	1	36	36	36	2	6	2
148	O23	MARBLE GLUE	1	10	10	10	2	5	2
149	P05	ROLLER SLEEVE 4''	81	1	1	1	2	6	2
150	O24	SUPPER GLUE SMALL  SIZE	9	2	2	2	2	5	2
151	P06	ROLLER HANDLE 4''	11	2	2	2	2	6	2
152	P07	WALL SCRAPER	27	6	6	6	2	6	2
153	O25	OVEN CLEANER	3	9	9	9	2	5	2
154	P08	PAINT BRUSH 1''	13	2	2	2	2	6	2
155	P09	PAINT BRUSH 2''	15	3	3	3	2	6	2
156	O26	SPRAY PAINT	25	3	3	3	2	5	2
158	P11	PAINT BRUSH 4''	0	8	8	8	2	6	2
159	O27	FOAM  FILL & FIX  SPRAY	0	8	8	8	2	5	2
160	P12	ROLLER HANDLE 9''	77	5	5	5	2	6	2
161	O28	WD - 40	21	9	9	9	2	5	2
162	O29	GLASS COVER FOR M-H- LAMP	6	25	25	25	2	5	2
163	P13	TINTING COLOURS	19	4	4	4	2	6	2
164	O30	REGULATER FOR GAS CYLINDER	7	12	12	12	2	5	2
165	P14	GYPSUM JOINT TAPE 2''	24	7	7	7	2	6	2
166	P15	MASKING TAPE 1"	31	1	1	1	2	6	2
167	O31	HOSE 3/8'' FOR GAS CYLINDER	37	2	2	2	2	5	2
168	P16	MASKING TAPE 2"	0	6	6	6	2	6	2
169	O32	WARNING TAPE	16	8	8	8	2	5	2
170	P17	LACQUER THINNER / SAFRA	7	88	88	88	2	6	2
171	S01	FULLMARK RIBBON SBP10	9	95	95	95	2	7	2
172	P18	ROLLER  STICK	3	7	7	7	2	6	2
173	P19	INTERIOR EMULSION WHITE	4	100	100	100	2	6	2
174	S02	PRINTER CARTRIDGE HP 13A Q 2613	6	275	275	275	2	7	2
175	P20	SEMI GLOSS PAINT	0	265	265	265	2	6	2
176	S03	VIDEO CASSETTE VHS - JVC	37	4	4	4	2	7	2
177	P21	EMULSION EXTERIOR BEIGE	21	61	61	61	2	6	2
178	P22	FLAT ENAMEL WHITE	3	68	68	68	2	6	2
179	T01	MEASURING TAPE SMALL	0	10	10	10	2	8	2
180	P23	DY/GLOSS ENAMEL WHITE	0	68	68	68	2	6	2
181	T02	SILICONE GUN	4	10	10	10	2	8	2
182	P24	PUTTY SAAF / MAJOON4EMULSION	6	55	55	55	2	6	2
183	P25	WATER PROOF JINDA	3	160	160	160	2	6	2
184	T03	KNIFE CUTTER	2	3	3	3	2	8	2
185	P26	POLYTHILENE PLASTIC ROLL BIG SI	6	7	7	7	2	6	2
186	W01	PLYWOOD ORDINARY 12MM	1	75	75	75	2	9	2
187	P27	NC PRIMER WHITE /A.D	0	55	55	55	2	6	2
188	W02	PLYWOOD ORDINARY 6MM	14	41	41	41	2	9	2
189	W03	PLYWOOD ORDINARY 18MM	3	130	130	130	2	9	2
157	P10	PAINT BRUSH 3''	16	4	4	4	2	6	2
190	W04	PLYWOOD BLACK 18MM	0	155	155	155	2	9	2
191	P28	PAINT GRAY 219 /SEALER	1	68	68	68	2	6	2
192	P29	POLYTHILENE PLASTIC ROLL	18	2	2	2	2	6	2
193	W05	MDF ORDINERY 2.5MM	26	11	11	11	2	9	2
194	P30	GUPA PUTTY 4 VARNISH	8	50	50	50	2	6	2
195	P31	PAINT  YELLOW 350/CANNERY	9	60	60	60	2	6	2
196	W06	SWEEDEN WOOD 2X8X420''	9	75	75	75	2	9	2
197	P32	SILVER PAINT 820	2	70	70	70	2	6	2
198	P33	VARNISH PAINT	10	44	44	44	2	6	2
199	W07	GYPSON BOARD   1X2M	20	16	16	16	2	9	2
200	P34	NC WHITE / PAINT HG	4	67	67	67	2	6	2
201	W08	CEMENT BOARD 12MMX1.20X2.40 M	5	95	95	95	2	9	2
202	P35	NC BLACK	8	68	68	68	2	6	2
203	W09	MDF FORMICA 18MM	2	95	95	95	2	9	2
204	P36	SEALER/SANDING SEALER	0	65	65	65	2	6	2
205	P37	NC CLEAR HG PAINT	3	65	65	65	2	6	2
217	E078	WATER HTR HEATING ELEMENT 110&	13	26	26	26	2	10	2
219	E001	BALLAST R/S DBL 110V&220V/40W	14	35	35	35	2	10	2
222	E081	EMT CONDUIT FITTINGS 1/2 & 3/4'	140	1	1	1	2	10	2
247	E017	SWITCH WITH NEON 45A/ 7X7CM	8	28	28	28	2	10	2
241	E089	CABLE 8 AWG	50	3	3	3	2	10	2
244	E090	CABLE SINGLE CORE 10 & 12 AWG	3049	1	1	1	2	10	2
206	P38	PRIMER GRAY 257	4	65	65	65	2	6	2
209	P41	A.D TOP COAT PAINT GREEN	0	33	33	33	2	6	2
225	E004	BALLAST SINGLE 110V&220V/20W	12	6	6	6	2	10	2
233	E086	CABLE 2X2.5/3X2.5/ 3X3.5MM	321	1	1	1	2	10	2
234	E009	BALLAST SET 220V/150W	2	103	103	103	2	10	2
230	E085	CABLE 2X4, 3X4 & 4X4MM	257	3	3	3	2	10	2
207	P39	PAINT RED 650 / COREL LIPS	7	68	68	68	2	6	2
210	P42	RED OXSIDE	9	50	50	50	2	6	2
221	E002	TRANS BALLAST 220V/ 2X20W	1	36	36	36	2	10	2
231	E007	BALLAST 220V/250W	35	55	55	55	2	10	2
232	E008	BALLAST 220V/150W	6	27	27	27	2	10	2
235	E087	CABLE 3X1.5MM	82	1	1	1	2	10	2
240	E013	M.K 3 PIN OUTLET 13 A	3	53	53	53	2	10	2
243	E015	IGNITOR  400W	12	15	15	15	2	10	2
215	E076	CIRCUIT BOARD (TUNE CARD) TELE	1	1700	1700	1700	2	10	2
227	E083	PRESURE GAUGE	5	23	23	23	2	10	2
228	E084	CABLE 3X6 & 2X6MM	222	4	4	4	2	10	2
246	E091	COMPUTER CABLE CAT - 6	22	1	1	1	2	10	2
208	P40	GREEN PAINT 555	4	62	62	62	2	6	2
224	E082	WATER PRESSURE SWITCH 8B	5	242	242	242	2	10	2
226	E005	BALLAST 110V&220V/12V/50W	64	9	9	9	2	10	2
229	E006	BALLAST 220V/400W	7	45	45	45	2	10	2
236	E010	BALLAST SET 220V/70W	4	45	45	45	2	10	2
237	E011	BALLAST 220V/70W	3	30	30	30	2	10	2
213	E075	UCP CIRCUIT BOARD FOR LG A/C	1	1870	1870	1870	2	10	2
211	P43	PAINT  BLUE 420	5	62	62	62	2	6	2
212	P44	KEROSENE / THINNER	6	10	10	10	2	6	2
216	E077	4 PIN ADAPTOR MALE&FEMALE H/DUT	30	58	58	58	2	10	2
218	E079	FLOUT SWITCH 5 MTR.	3	55	55	55	2	10	2
223	E003	BALLAST SINGLE 110V&220V/40W	40	9	9	9	2	10	2
239	E012	M.K BOX 7X7	3	13	13	13	2	10	2
242	E014	M.K STEAL SWITCH 32 A	1	85	85	85	2	10	2
245	E016	SWITCH WITHC NEON 45A/ 7X14CM	47	20	20	20	2	10	2
249	E018	TOGGLE SWITCH	31	6	6	6	2	10	2
251	E019	INSULATION RUBBER TAPE	2	20	20	20	2	10	2
252	E020	DOOR BELL SWITCH	3	7	7	7	2	10	2
253	E094	CALBLE 5X2.5	74	10	10	10	2	10	2
254	E021	ELECTRICAL  TAPE	36	2	2	2	2	10	2
255	E095	TELEPHONE FLAT CORD	99	0	0	0	2	10	2
258	E022	LIGHT SWITCH ONE GANG	35	4	4	4	2	10	2
259	E023	LIGHT SWITCH 2 GANG	18	8	8	8	2	10	2
261	E024	LIGHT SWITCH 3GANG	63	8	8	8	2	10	2
263	E025	LIGHT SWITCH 4GANG	22	18	18	18	2	10	2
265	E026	ELECTRICAL PLUGS 2&3PINS	216	4	4	4	2	10	2
267	E027	SPLITTER CONNECTORS	125	1	1	1	2	10	2
268	E028	COMPUTER OUTLETS	108	9	9	9	2	10	2
269	E029	2 PIN OUTLET SINGLE	129	10	10	10	2	10	2
270	E102	FISHER 10MM	1	5	5	5	2	10	2
271	E030	3 PIN OUTLET SINGLE	21	12	12	12	2	10	2
273	E031	3 PIN DOUBLE OUTLET  W/LIGHT	33	22	22	22	2	10	2
274	E032	M/ CONTACTOR  3 POLES 220V	6	100	100	100	2	10	2
275	E104	PVC BOX SINGL 7X14CM	33	3	3	3	2	10	2
276	E033	MAGNETIC CONTACTOR 2 POLES 220V	6	71	71	71	2	10	2
277	E105	PVC BOX SINGLE 7X7CM	23	1	1	1	2	10	2
279	E034	M/CONTACTOR WITH RELAY 110&220V	12	198	198	198	2	10	2
280	E107	GI BOX SINGLE 7X14CM	68	2	2	2	2	10	2
281	E035	MAGNETIC CONTACTOR  H/DUTY 50-8	1	360	360	360	2	10	2
282	E036	STARTER   S2 & S10	370	1	1	1	2	10	2
283	E037	TELEPHONE SMALL BOX	34	1	1	1	2	10	2
284	E038	TEL. OUTLET	44	7	7	7	2	10	2
286	E109	PVC ALLOCATION BOX	72	2	2	2	2	10	2
287	E110	PVC BLACK ELBOW 38MM	20	3	3	3	2	10	2
288	E111	PVC BLACK COUPLING & CONNECTOR	10	0	0	0	2	10	2
290	E113	PVC BLACK COUPLING/CONNECTOR 3/	658	0	0	0	2	10	2
295	E118	FLOURESCENT FIXTURE SINGLE 220V	36	16	16	16	2	10	2
296	E119	FLOURESCENT FIXTURE DBL 220V/36	12	61	61	61	2	10	2
298	E039	TELEPHONE LINEPRIVATE SWITCH	1	25	25	25	2	10	2
299	E040	TELEPHONE CORD - HAND SET	8	7	7	7	2	10	2
300	E040	TELEPHONE CORD - HAND SET	8	7	7	7	2	10	2
301	E040	TELEPHONE CORD - HAND SET	8	7	7	7	2	10	2
302	E041	TELEPHONE SINGL LINE PANASONIC	5	145	145	145	2	10	2
307	E042	TIMER SWITCH HAGER	6	135	135	135	2	10	2
309	E043	TICINO SWITCH 603	2	25	25	25	2	10	2
310	E044	TRANSFORMER 220V/24V/100A	8	82	82	82	2	10	2
314	E045	STABILIZER 1000W	3	412	412	412	2	10	2
315	E046	STABILIZER 220V/500W	1	220	220	220	2	10	2
316	E131	EXHAUST FAN 30CM STEEL (HYE SUN	1	150	150	150	2	10	2
317	E047	TV OUTLET	17	9	9	9	2	10	2
318	E132	WATER HEATER 120L/220V U.S.A	1	950	950	950	2	10	2
320	E048	PHOTO CONTROLLER SWITCH	9	35	35	35	2	10	2
220	E080	EMT ELBOW 1/2'' & 3/4''	9	3	3	3	2	10	2
238	E088	CABLE 2X1.5MM	355	1	1	1	2	10	2
248	E092	SATELLITE  CABLE RG-6	50	1	1	1	2	10	2
250	E093	TELEPHONE CABLE 2 & 3 PAIRS	250	0	0	0	2	10	2
256	E096	CABLE HEAT RESISTANCE	37	2	2	2	2	10	2
257	E097	SPOT LIGHT FIXTURE E-27	3	18	18	18	2	10	2
260	E098	SPOT LIGHT FIXTURE 12V/50W	96	4	4	4	2	10	2
262	E099	HALOGEN LIGHT FIXTURE 70W	5	13	13	13	2	10	2
264	E100	FISHER  5&6MM	68	2	2	2	2	10	2
266	E101	FISHER 8MM	31	4	4	4	2	10	2
272	E103	FISHER  12 & 14MM	20	2	2	2	2	10	2
278	E106	GI BOX SINGLE 10X10CM	119	3	3	3	2	10	2
289	E112	PVC BLACK ELBOW 1/2 & 3/4''	162	1	1	1	2	10	2
291	E114 	 PVC BLACK FLEXIBLE HOSE 1/2, 3/	17	5	5	5	2	10	2
292	E115	EXTENSION WIRE	6	20	20	20	2	10	2
293	E116	F/MIRROR LIGHT FIXTURE 220V/110	12	30	30	30	2	10	2
294	E117	FLOURESCENT FIXTURE SINGLE 220V	29	15	15	15	2	10	2
297	E120	FLOURESCENT FIXTURE 60X60CM 220	12	63	63	63	2	10	2
303	E121	WALL LIGHT FIXTURE 220V/60W	20	26	26	26	2	10	2
304	E122	VACUUM CLEANER HOSE & BRUSH	15	36	36	36	2	10	2
305	E123	METAL HALID FIXTURE 400W/220V	3	88	88	88	2	10	2
306	E124	FLOURESCENT TUBE FIXTURE 220V/2	7	14	14	14	2	10	2
308	E125	DOOM LIGHT FIXER 400W	2	135	135	135	2	10	2
311	E127	EXHAUST FAN 110/220V/30CM	1	45	45	45	2	10	2
312	E128	EXHAUST FAN 110V/220V/20CM	12	43	43	43	2	10	2
313	E129	KDK EXHAUST FAN CEILING TYPE 11	0	270	270	270	2	10	2
321	E133	WATER HEATER 100LTR	1	370	370	370	2	10	2
322	E134	CABLE TRUNKING 1/2, 3/4, & 11/4	68	8	8	8	2	10	2
323	E135	PVC BLACK PIPE 1/2 & 3/4''	12	3	3	3	2	10	2
324	E136	EMT ELECTRICAL PIPE	20	13	13	13	2	10	2
325	E137	PVC BLACK PIPE 38MM	16	6	6	6	2	10	2
326	P002	GI UNION 3/4"	7	10	10	10	2	13	2
328	P003	GI NIPPLE 1"	6	4	4	4	2	13	2
330	E049	GI BOX MARSHALL TUFFLEX	2	230	230	230	2	10	2
333	P004	GI NIPPLE 3/4"	5	3	3	3	2	13	2
345	P007	GI TEE 3/4"	10	5	5	5	2	13	2
350	P010	GI ELBOW 1/2"	7	2	2	2	2	13	2
352	E054	DOOR BEL SWITCH	7	2	2	2	2	10	2
354	E055	LIGHT HOLDER ROUND TYPE E-27	37	3	3	3	2	10	2
353	P011	GI FAUCET 3/4"	12	15	15	15	2	13	2
359	E060	PLASTIC COVER 7X7	43	1	1	1	2	10	2
362	E062	CABLE TIES  8, 10 &12''	4	26	26	26	2	10	2
366	P014	BALL VALVE & GATE VALVE 3/4"	10	25	25	25	2	13	2
368	E065	CABLE CONNECTOR 10,16,25MM	47	1	1	1	2	10	2
369	P016	BALL VALVE  1''	1	35	35	35	2	13	2
372	P017	CONSILD VALVE 3/4"	4	100	100	100	2	13	2
373	E068	CABLE CLIPS 8MM	6	4	4	4	2	10	2
389	P027	CPVC COUPLING 2''	5	2	2	2	2	13	2
394	P032	CPVC TEE 1/2''	41	1	1	1	2	13	2
327	E138	FUSE 5 & 10 A	389	0	0	0	2	10	2
331	E050	ELECTRICAL WATER PROOF OUTLET	12	10	10	10	2	10	2
332	E140	BATTERY  9V	24	11	11	11	2	10	2
336	E142	SATELLITE CONNECTOR RG-6	68	0	0	0	2	10	2
343	E146	USB PRINTER CABLE 	4	20	20	20	2	10	2
347	E149	ROUND TYPE LIGHT 20 CM	4	13	13	13	2	10	2
335	E051	BREAKER 3 POLES  / 50AMP	7	165	165	165	2	10	2
338	E052	BREAKER 2 POLES / 35A	2	75	75	75	2	10	2
339	P005	GI NIPPLE 1/2" / LONG NIPPLE	37	2	2	2	2	13	2
348	P008	GI MALE ELBOW 1"	8	5	5	5	2	13	2
349	P009	GI MALE ELBOW 3/4"	3	4	4	4	2	13	2
351	E053	BREAKER MITBSHI&L/ASTER   35,45	107	17	17	17	2	10	2
355	E056	FLORESCENT HOLDER  20 & 36W	155	1	1	1	2	10	2
356	E057	BULB HOLDER E-40	70	3	3	3	2	10	2
357	E058	LIGHT HOLDER E-27	41	1	1	1	2	10	2
358	E059	COOLER TAP	21	5	5	5	2	10	2
360	P012	GI FAUCET 1/2"	24	12	12	12	2	13	2
361	E061	BLACK CABLE CONNECTOR 40MM	27	10	10	10	2	10	2
363	E063	CABLE LUG 25, 30, 35MM	631	2	2	2	2	10	2
364	P013	GATE VALVE BRASS 1"	2	39	39	39	2	13	2
365	E064	CABLE LUG 70,95,240 MM	664	12	12	12	2	10	2
367	P015	GATE VALVE BRASS  1/2''	7	14	14	14	2	13	2
370	E066	RED WIRENUT CONNECTORS	9	28	28	28	2	10	2
371	E067	CABLE CLIPS 10 & 12MM	10	4	4	4	2	10	2
374	P018	BALL VALVE  2''	1	87	87	87	2	13	2
375	E069	CABLE CLIPS 5 & 6MM	12	3	3	3	2	10	2
376	E070	EMERGENCY LIGHT SET	6	73	73	73	2	10	2
377	P019	ANGLE VALVES  1/2''	12	25	25	25	2	13	2
378	E071	BREAKER 100-150A MITSUBISHI	2	503	503	503	2	10	2
379	P020	CPVC-COUPLING 1 1/2 "	25	5	5	5	2	13	2
380	E072	PRESSURE SWITCH FSG-2 GE	6	35	35	35	2	10	2
381	E073	PUMP MOTOR SAMNAN 1HP/220V	2	730	730	730	2	10	2
382	P021	WATER HEATER CHECK VALVE	20	10	10	10	2	13	2
383	E074	PUMP MOTOR SAMNAN 2HP/220V	1	1095	1095	1095	2	10	2
384	P022	CPVC MALE ADAPTER BRASS  1''	13	4	4	4	2	13	2
385	P023	PVC COUPLING 2''	19	2	2	2	2	13	2
386	P024	MALE ADAPTER BRASS  3/4''	17	4	4	4	2	13	2
387	P025	CPVC MALE ADAPTER BRASS  1/2''	14	2	2	2	2	13	2
388	P026	CPVC COUPLING 2''	10	5	5	5	2	13	2
390	P028	CPVC COUPLING   3/4''	48	1	1	1	2	13	2
391	P029	CPVC COUPLING 1/2''	41	1	1	1	2	13	2
392	P030	CPVC TEE 1''	16	2	2	2	2	13	2
393	P031	CPVC TEE 3/4''	36	1	1	1	2	13	2
395	P033	CPVC TEE BRASS  1/2''	20	4	4	4	2	13	2
396	P034	CPVC FEMALE ELBOW  & ADAPTOR 1'	16	7	7	7	2	13	2
397	P035	CPVC ELBOW BRASS  3/4'' X1/2"	48	2	2	2	2	13	2
398	P036	CPVC ELBOW  BRASS  1/2'' X1/2"	58	2	2	2	2	13	2
399	P037	BRASS FOOT VALVE 4''	5	116	116	116	2	13	2
400	P038	BRASS FOOT VALVE  3''	2	93	93	93	2	13	2
401	P039	BRASS FOOT VALVE 2''	4	110	110	110	2	13	2
402	P040	CPVC ELBOW  2'' & CPVC F/ELBOW	15	8	8	8	2	13	2
403	P041	CPVC ELBOW  1''	16	2	2	2	2	13	2
404	P042	CPVC ELBOW   3/4''	134	1	1	1	2	13	2
405	P043	CPVC ELBOW  1/2''	69	1	1	1	2	13	2
406	P044	CPVC TEE  BRASS 3/4 X 1/2''	8	2	2	2	2	13	2
407	P045	CPVC M/F ADAPTOR 11/4''	13	13	13	13	2	13	2
408	P046	GI MALE PLUG 1" & 3/4" & 1/2''	45	1	1	1	2	13	2
409	P047	PVC TEE  1/2''	19	3	3	3	2	13	2
410	P048	GI UNIOU 1/2''	24	6	6	6	2	13	2
411	P049	CHROME ADAPTER  1/2''X10MM	277	3	3	3	2	13	2
412	P050	GI TEE  1/2''	7	3	3	3	2	13	2
413	P051	CPVC UNION  1/2''	16	6	6	6	2	13	2
414	P052	GATE VALVE 11/4''  & 11/2"	7	60	60	60	2	13	2
415	P053	BALL VALVE 1/2''	12	13	13	13	2	13	2
416	P054	CPVC UNION 3/4''	5	7	7	7	2	13	2
417	P055	CPVC UNION 1''	11	5	5	5	2	13	2
418	P056	GI UNION 11/2, 11/4''	7	24	24	24	2	13	2
419	P057	FOOT/CHECK/1WAY- VALVE  1& 11/2	31	61	61	61	2	13	2
420	P058	GI UNION 2''	2	27	27	27	2	13	2
421	P059	GI NIPPLE 11/2''	5	9	9	9	2	13	2
422	P060	CHECK/1WAY- VALVE BRASS 3''	1	198	198	198	2	13	2
423	P061	PVC WHTE TEE 11/2''	23	2	2	2	2	13	2
424	P062	PVC WHITE TEE 2''	21	3	3	3	2	13	2
425	P063	PVC WYE 2''  & P-TRAP 2"	1	4	4	4	2	13	2
426	P064	PVC ELBOW 2''	31	2	2	2	2	13	2
427	P065	GI REPAIR COUPLING 75MM	1	91	91	91	2	13	2
428	P066	PVC REDUCER 2 1/2X11/2''	11	9	9	9	2	13	2
429	P067	PVC REDUCER 1 1/2X 1''	25	4	4	4	2	13	2
430	P068	PVC WHITE ELBOW 11/2'' & 11/4"	38	1	1	1	2	13	2
431	P069	PVC WHITE COUPLING 11/2''	32	1	1	1	2	13	2
432	P070	ADJUSTABLE NOZZLE CHROME	0	40	40	40	2	13	2
433	P071	CPVC CAPS ASSORTED SIZE	48	3	3	3	2	13	2
434	P072	CPVC REDUCER 2(1'',11/4&11/2)	10	5	5	5	2	13	2
435	P073	CPVC TEE 2''	5	9	9	9	2	13	2
436	P074	CPVC TEE 11/2''	5	7	7	7	2	13	2
437	P075	CPVC ELBOW 3''	9	31	31	31	2	13	2
438	P076	TEFLON TAPE  SMALL	270	0	0	\N	2	13	2
439	P077	W.C.  FLUSH TANK HANDLE CHROME	6	10	10	10	2	13	2
334	E141	TELEPHONE CONNECTOR	14	10	10	10	2	10	2
337	E143	TELEPHON CONNECTOR ROUND TYPE	16	10	10	10	2	10	2
340	E144	COMPUTER CONNECTOR	1	25	25	25	2	10	2
341	E145	CIRCUIT BREAKER 800-A/230-415V	1	2888	2888	2888	2	10	2
344	E147	NETWORK SWITCH 8 PORTS	4	60	60	60	2	10	2
346	E148	CABLE 3X10MM  & 2X10	13	9	9	9	2	10	2
440	P078	WASHBASIN STAINER BRASS 11/2''	17	7	7	7	2	13	2
442	P080	W/C RUBBER ADAPTOR 4''	8	8	8	8	2	13	2
447	P085	GI COUPLING 1/2''	19	2	2	2	2	13	2
450	P088	GI REDUCER 1X3/4''	23	3	3	3	2	13	2
451	P089	GI REDUCER 3/4X1/2''	3	3	3	3	2	13	2
459	P094	GI REPAIR COUPLING 1/2''	21	17	17	17	2	13	2
464	P098	CPVC UNION 2''	2	27	27	27	2	13	2
466	P141	TELEPHONE SHOWER SPRAY HEAD	5	35	35	35	2	13	2
471	P144	W/C DRAIN COVER  20X20CM	4	6	6	6	2	13	2
479	P149	PLASTIC SOAP DESPENCER 1 LTR.	6	45	45	45	2	13	2
480	P104	BALL VALVE BRASS  11/2"	4	38	38	38	2	13	2
485	P109	MIXER VALVE BRASS	10	8	8	8	2	13	2
488	P112	WASHBASIN COVER	3	4	4	4	2	13	2
493	P116	CPVC CEMENT 1KG	2	49	49	49	2	13	2
499	P119	PVC WHITE COUPLING 4''	14	5	5	5	2	13	2
441	P079	WASH BASIN BOLT SET	84	4	4	4	2	13	2
446	P084	GI COUPLING 3/4''	20	3	3	3	2	13	2
448	P086	GI REDUCER 2X11/2''	16	10	10	10	2	13	2
456	P138	TELEPHONE SHOWER SET	2	225	225	225	2	13	2
463	P139	BATHROOM ACCESSORY SET	2	121	121	121	2	13	2
465	P140	WASHBASIN MIXER GROHI	2	302	302	302	2	13	2
469	P099	ANGLE VALVE 11/2'' FOR FIRE HOS	2	70	70	70	2	13	2
481	P105	CPVC M/F ADAPTOR  11/2''	14	11	11	11	2	13	2
490	P114	CPVC CLEANER 1/2 KG	7	12	12	12	2	13	2
491	P115	CPVC CEMENT 1/2KG	5	29	29	29	2	13	2
470	P100	PVC UNION  11/2''	14	16	16	16	2	13	2
443	P081	GI TEE 2"	5	20	20	20	2	13	2
452	P090	GI REPAIR COUPLING 2''	2	65	65	65	2	13	2
462	P097	GI NIPPLE 2''	5	10	10	10	2	13	2
467	P142	FLEXIBLE PIPE WHITE 11/4'' & 11	21	5	5	5	2	13	2
476	P103	CPVC ELBOW 11/4''	35	7	7	7	2	13	2
477	P147	PVC TEE & WYE 4''	8	15	15	15	2	13	2
487	P111	CPVC FEMALE ADAPTOR 3/4 &1/2''	28	2	2	2	2	13	2
496	P118	TEFLON TAPE BIG SIZE	6	7	7	7	2	13	2
497	P152	KITCHEN SINK	4	81	81	81	2	13	2
444	P082	GI REPAIR COUPLING 3''	1	140	140	140	2	13	2
449	P087	GI REDUCER 11/2X1''(11/2"X11/4"	8	5	5	5	2	13	2
453	P136	TISSUE HOLDER	5	24	24	24	2	13	2
455	P137	SOAP DESPENSER	2	168	168	168	2	13	2
457	P092	GI REPAIR COUPLING 1''	15	29	29	29	2	13	2
458	P093	GI REPAIR COUPLING 3/4''	14	21	21	21	2	13	2
461	P096	GI ELBOW 2''	3	15	15	15	2	13	2
468	P143	FLOOR DRAIN 11/2'' ( 4" N 11/2"	1	8	8	8	2	13	2
473	P145	WATER METER GAUGE	1	316	316	316	2	13	2
475	P146	P - TRAP  4" (PVC SEHON 4") F/D	5	18	18	18	2	13	2
478	P148	PVC ELBOW 4''	23	10	10	10	2	13	2
483	P107	SLEEVE ANCHOR BOLT	164	0	0	0	2	13	2
486	P110	CPVC FEMALE ELBOW 1 1/2''	3	12	12	12	2	13	2
492	P150	TOILET TISSUE DISPENSER	1	70	70	70	2	13	2
495	P151	TILES 30X30	20	20	20	20	2	13	2
498	P153	RUBBER DIAPHRAGM 60/100LTR	6	158	158	158	2	13	2
445	P083	GI COUPLING 1''	11	4	4	4	2	13	2
454	P091	GI REPAIR COUPLING 11/2''	9	28	28	28	2	13	2
460	P095	GI ELBOW 11/2''	13	9	9	9	2	13	2
472	P101	CPVC ADAPTOR BRASS 3''	1	40	40	40	2	13	2
474	P102	CPVC ELBOW   11/2''	21	4	4	4	2	13	2
482	P106	CPVC M/F  ADAPTOR 2''	8	14	14	14	2	13	2
484	P108	CPVC REDUCER 1X1/2" (11/2"X3/4"	73	2	2	2	2	13	2
489	P113	SINK MIXER	4	77	77	77	2	13	2
494	P117	PVC WHITE CAPS 110/114-MM	3	3	3	3	2	13	2
500	P154	PRESSURE TANK 25LTR	0	115	115	115	2	13	2
501	P120	P - TRAP DOUBLE 11/2''	5	11	11	11	2	13	2
502	P121	P -  TRAP SINGLE 11/4''	6	16	16	16	2	13	2
503	P155	WASHBASIN ROUND TYPE CERAMIC	2	33	33	33	2	13	2
504	P156	GARDEN HOSE REEL	0	360	360	360	2	13	2
505	P157	GARDEN HOSE	2	154	154	154	2	13	2
506	P122	W/C SEAT COVER SAUDI CERAMIC	0	37	37	37	2	13	2
507	P123	W/C SEAT COVER  ITALY	2	72	72	72	2	13	2
508	P124	FLEXIBLE HOSE (FOR HAND SPRAY)	0	38	38	38	2	13	2
509	P158	SHOWER TRAY 70X70CM	9	150	150	150	2	13	2
510	P159	CPVC PIPE 1/2''	6	30	30	30	2	13	2
511	P125	HAND SPRAYS	0	43	43	43	2	13	2
512	P160	CPVC PIPE 3/4''	10	34	34	34	2	13	2
513	P161	CPVC PIPE 1''	6	50	50	50	2	13	2
514	P162	CPVC PIPE 11/2''	3	100	100	100	2	13	2
515	P126	W/C FLUSHTANK FITTINGS GROHI	1	120	120	120	2	13	2
516	P163	CPVC PIPE 2''	2	120	120	120	2	13	2
517	P127	W/C FLUSHTANK FITTINGS  ORDINAR	16	45	45	45	2	13	2
518	P164	PVC WHITE PIPE 11/2''	4	25	25	25	2	13	2
519	P128	FLOAT VAVLE 1/2 & 3/8''	3	5	5	5	2	13	2
521	P166	PVC WHITE PIPE 2''	4	28	28	28	2	13	2
522	P167	CPVC PIPE 11/4''	1	92	92	92	2	13	2
523	P129	FLEXIBLE PIPE  30/40/50/60CM	116	7	7	7	2	13	2
524	P130	BATHROOM SHELF CERAMIC	5	16	16	16	2	13	2
525	P131	GARDEN WATER SPRINKELS	11	72	72	72	2	13	2
526	P132	WATER FILTER 3/4''	3	25	25	25	2	13	2
527	P133	HAND SPRY SET GROHI	0	110	110	110	2	13	2
528	P134	SHOWER MIXER	1	290	290	290	2	13	2
529	O15	KNIFE BLADES	7	10	10	10	2	5	2
520	P165	PVC WHITE PIPE 4''	5	119	119	119	2	13	2
319	P001	GI UNION 1"	2	8	8	8	2	13	2
342	P006	GI TEE 1"	4	6	25	15	2	13	2
1	itemonecode	Select Product	97	100	200	250	1	1	1
285	E108	GI BOX SINGLE 7X7CM	25	1	1	1	2	10	2
329	E139	BATTERY AA 1.5V	15	2	2	2	2	10	2
29	AC20	A/C DUCT TAPE 2"  BLACK, GRA&S	54	2	2	2	2	2	2
\.


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hkcwwvwtkynjbn
--

SELECT pg_catalog.setval('"products_id_seq"', 529, true);


--
-- Data for Name: producttypes; Type: TABLE DATA; Schema: public; Owner: hkcwwvwtkynjbn
--

COPY "producttypes" ("id", "typename") FROM stdin;
1	Select Product Type
2	Air Condition
3	Carpentry
4	Bulb
5	Others
6	Paint
7	Stationary
8	Tools
9	Wood
10	Electrical
13	Plumbing
\.


--
-- Name: producttypes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hkcwwvwtkynjbn
--

SELECT pg_catalog.setval('"producttypes_id_seq"', 13, true);


--
-- Data for Name: purchaseorderitems; Type: TABLE DATA; Schema: public; Owner: hkcwwvwtkynjbn
--

COPY "purchaseorderitems" ("id", "product_id", "quantity", "total", "poitemstatus", "recieveddate", "purchaseorder_id", "created_at", "updated_at") FROM stdin;
1	1	5	500	created	2016-03-25	1	2016-05-17 09:34:43.512774	2016-05-17 09:34:43.512774
4	72	1	\N	\N	\N	3	2016-05-18 12:32:21.022499	2016-05-18 12:33:00.271361
7	1	1	\N	\N	\N	4	2016-05-18 12:38:06.692177	2016-05-18 12:38:14.118259
6	72	2	50	\N	\N	4	2016-05-18 12:37:52.709746	2016-05-18 12:50:33.084556
11	1	1	\N	\N	\N	1	2016-05-22 15:52:51.986709	2016-05-22 15:52:51.986709
12	1	1	\N	\N	\N	1	2016-05-22 15:52:55.348421	2016-05-22 15:52:55.348421
13	1	1	\N	\N	\N	1	2016-05-22 15:52:57.046054	2016-05-22 15:52:57.046054
14	2	1	\N	\N	\N	5	2016-05-29 10:39:46.965147	2016-05-29 10:39:50.189433
15	269	1	\N	\N	\N	1	2016-05-31 09:44:41.403546	2016-05-31 09:44:41.403546
17	269	1	\N	\N	\N	1	2016-05-31 09:54:20.255666	2016-05-31 09:54:20.255666
18	269	1	\N	\N	\N	1	2016-05-31 09:54:21.985373	2016-05-31 09:54:21.985373
19	269	1	\N	\N	\N	1	2016-05-31 10:13:03.919111	2016-05-31 10:13:03.919111
20	269	1	\N	\N	\N	1	2016-05-31 10:13:03.962775	2016-05-31 10:13:03.962775
21	269	1	\N	\N	\N	1	2016-05-31 14:17:00.687524	2016-05-31 14:17:00.687524
23	2	1	\N	\N	\N	3	2016-05-31 14:38:23.73166	2016-05-31 14:38:23.73166
24	2	1	\N	\N	\N	3	2016-05-31 14:38:24.260687	2016-05-31 14:38:24.260687
26	269	1	\N	\N	\N	1	2016-06-04 07:00:28.421641	2016-06-04 07:00:28.421641
27	269	1	\N	\N	\N	1	2016-06-04 07:01:06.705027	2016-06-04 07:01:06.705027
28	2	3	\N	\N	\N	6	2016-06-04 07:52:30.636415	2016-06-04 08:49:16.588174
29	2	1	\N	\N	\N	6	2016-06-04 08:48:56.575232	2016-06-04 08:49:17.118356
30	269	1	\N	\N	\N	1	2016-06-05 06:29:42.220799	2016-06-05 06:29:42.220799
31	527	3	\N	\N	\N	7	2016-06-05 11:59:03.296338	2016-06-05 11:59:25.09536
33	2	1	\N	\N	\N	1	2016-06-09 08:09:51.929208	2016-06-09 08:09:51.929208
\.


--
-- Name: purchaseorderitems_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hkcwwvwtkynjbn
--

SELECT pg_catalog.setval('"purchaseorderitems_id_seq"', 33, true);


--
-- Data for Name: purchaseorders; Type: TABLE DATA; Schema: public; Owner: hkcwwvwtkynjbn
--

COPY "purchaseorders" ("id", "duedate", "recieveddate", "totalunits", "totalcost", "postatus", "supplier_id", "created_at", "updated_at") FROM stdin;
1	2016-03-25	2016-03-24	10	1000	created	1	2016-05-17 09:34:43.412245	2016-05-17 09:34:43.412245
3	2016-05-17	\N	\N	\N	created	2	2016-05-18 12:32:58.662597	2016-05-18 12:32:58.662597
4	\N	\N	3	\N	received	2	2016-05-18 12:38:12.606594	2016-05-18 12:50:25.092486
5	2016-05-28	\N	\N	\N	created	1	2016-05-29 10:39:49.609526	2016-05-29 10:39:49.609526
6	2016-06-06	\N	\N	\N	created	3	2016-06-04 08:49:16.035424	2016-06-04 08:49:16.035424
7	2016-05-31	\N	\N	\N	created	3	2016-06-05 11:59:24.482722	2016-06-05 11:59:24.482722
\.


--
-- Name: purchaseorders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hkcwwvwtkynjbn
--

SELECT pg_catalog.setval('"purchaseorders_id_seq"', 7, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: hkcwwvwtkynjbn
--

COPY "schema_migrations" ("version") FROM stdin;
20160301044847
20160301101535
20160302045829
20160302052307
20160302052412
20160302053535
20160308054531
20160308055621
20160314122031
20160316060353
20160322071213
20160322071246
20160322071302
20160322071309
20160330090712
20160330090718
20160524043748
20160527042658
20160527070525
20160530075717
20160530092615
20160530092817
20160531100956
\.


--
-- Data for Name: stockadjustmentitems; Type: TABLE DATA; Schema: public; Owner: hkcwwvwtkynjbn
--

COPY "stockadjustmentitems" ("id", "product_id", "quantity", "stockadjustment_id", "total", "created_at", "updated_at") FROM stdin;
1	1	5	1	500	2016-05-17 09:34:43.547887	2016-05-17 09:34:43.547887
2	2	1	2	\N	2016-06-04 07:51:20.529043	2016-06-04 07:51:20.529043
\.


--
-- Name: stockadjustmentitems_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hkcwwvwtkynjbn
--

SELECT pg_catalog.setval('"stockadjustmentitems_id_seq"', 2, true);


--
-- Data for Name: stockadjustments; Type: TABLE DATA; Schema: public; Owner: hkcwwvwtkynjbn
--

COPY "stockadjustments" ("id", "customer_id", "reason", "notes", "sastatus", "totalunits", "totalcost", "order_id", "created_at", "updated_at") FROM stdin;
1	1	returned	Dummy notes	recieved	10	5000	1	2016-05-17 09:34:43.487437	2016-05-17 09:34:43.487437
2	1	fddd	\N	recieved	1	362	1	2016-06-04 07:51:20.009797	2016-06-04 07:51:32.353461
\.


--
-- Name: stockadjustments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hkcwwvwtkynjbn
--

SELECT pg_catalog.setval('"stockadjustments_id_seq"', 2, true);


--
-- Data for Name: suppliers; Type: TABLE DATA; Schema: public; Owner: hkcwwvwtkynjbn
--

COPY "suppliers" ("id", "companyname", "email", "address1", "address2", "suburb", "city", "state", "country", "zipcode", "phone", "created_at", "updated_at", "companycode", "chargecode") FROM stdin;
1	Select Supplier	companyone@gmail.com	address1	address2	suburb	city	state	country	689672	04735253585	2016-05-17 09:34:43.266476	2016-05-17 09:34:43.266476	supp1	supp1
3	Riyadh Material Co	alrajobia@hotmail.com	\N	\N	\N	\N	\N	\N	\N	052563694	2016-06-04 07:35:02.682242	2016-06-04 07:35:02.682242	001	0000
2	Zahret Al taweem	generic@generic.com								hghhh	2016-05-17 09:50:43.15512	2016-06-04 07:35:58.964426	gen01	gen01
\.


--
-- Name: suppliers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hkcwwvwtkynjbn
--

SELECT pg_catalog.setval('"suppliers_id_seq"', 3, true);


--
-- Data for Name: tools; Type: TABLE DATA; Schema: public; Owner: hkcwwvwtkynjbn
--

COPY "tools" ("id", "name", "status", "issuedate", "employee_id", "lostdate", "damagedate", "created_at", "updated_at", "vendor", "invoiceno") FROM stdin;
1	Driller	Running	2016-05-30	1	2016-05-30	2016-05-06	2016-05-27 11:55:23.769978	2016-05-27 11:55:23.769978	\N	\N
2	driller	Damaged	2016-05-09	1	2016-05-16	2016-05-16	2016-05-27 11:59:34.21393	2016-05-29 09:39:39.124575	\N	\N
4	sdf	Running	2016-05-02	1	\N	\N	2016-05-31 09:51:47.257476	2016-05-31 09:51:47.257476		
5	asd	Running	2016-05-03	1	\N	\N	2016-05-31 09:52:10.48887	2016-05-31 09:52:10.48887		123
3	Spanner	Damaged	2016-05-25	2	2016-05-16	2016-05-10	2016-05-27 12:00:04.332003	2016-05-31 09:54:00.293891	\N	\N
7	asa	Running	2016-05-11	3	\N	\N	2016-05-31 09:55:18.838992	2016-05-31 09:55:18.838992	asd	ads
8	Amin	Running	2016-05-31	1	\N	\N	2016-06-04 07:06:18.724818	2016-06-04 07:06:18.724818	Riyadh Material	100024369
\.


--
-- Name: tools_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hkcwwvwtkynjbn
--

SELECT pg_catalog.setval('"tools_id_seq"', 8, true);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: hkcwwvwtkynjbn
--

COPY "users" ("id", "email", "encrypted_password", "reset_password_token", "reset_password_sent_at", "remember_created_at", "sign_in_count", "current_sign_in_at", "last_sign_in_at", "current_sign_in_ip", "last_sign_in_ip", "authentication_token", "created_at", "updated_at") FROM stdin;
2	msadiq@ocsarabia.com.sa	$2a$11$EBJcPg80wjMl7jmhNkqkr.TebVoWrtlNmkT/k.i8ETpsVZAV6YhQm	\N	\N	\N	998	2016-06-07 08:42:47.343192	2016-05-24 15:00:13.192342	115.242.210.42	115.185.154.98	ER_k_km9ExgFzcwNTYHk	2016-05-17 09:34:43.009831	2016-06-07 08:42:47.352668
1	admin@test.com	$2a$11$7DCS1YxupZHg9DUJwmmBm.AYcfp3cbWIYv3pQnywBmEHqVyk4cGP.	\N	\N	\N	1395	2016-06-09 10:13:00.240842	2016-06-09 07:05:40.142932	103.17.110.98	103.17.110.98	bZB1Eo-EbkLsp145So7N	2016-05-17 09:34:42.844312	2016-06-09 10:13:00.245343
3	admin@ocsarabia.com.sa	$2a$11$scDTY4RSRThtGf6t5IukB.uQJM2z4EKJ5G1.RoMW/T.92x33RLgJq	\N	\N	\N	1810	2016-06-04 06:50:08.097909	2016-06-02 13:30:18.700929	212.107.109.226	2.89.204.253	tMjpcSkm_3uFGxztzZe6	2016-05-17 09:34:43.192073	2016-06-04 06:50:08.10137
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hkcwwvwtkynjbn
--

SELECT pg_catalog.setval('"users_id_seq"', 3, true);


--
-- Name: ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

ALTER TABLE ONLY "ar_internal_metadata"
    ADD CONSTRAINT "ar_internal_metadata_pkey" PRIMARY KEY ("key");


--
-- Name: commontoolissuances_pkey; Type: CONSTRAINT; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

ALTER TABLE ONLY "commontoolissuances"
    ADD CONSTRAINT "commontoolissuances_pkey" PRIMARY KEY ("id");


--
-- Name: commontools_pkey; Type: CONSTRAINT; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

ALTER TABLE ONLY "commontools"
    ADD CONSTRAINT "commontools_pkey" PRIMARY KEY ("id");


--
-- Name: customers_pkey; Type: CONSTRAINT; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

ALTER TABLE ONLY "customers"
    ADD CONSTRAINT "customers_pkey" PRIMARY KEY ("id");


--
-- Name: employees_pkey; Type: CONSTRAINT; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

ALTER TABLE ONLY "employees"
    ADD CONSTRAINT "employees_pkey" PRIMARY KEY ("id");


--
-- Name: orderitems_pkey; Type: CONSTRAINT; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

ALTER TABLE ONLY "orderitems"
    ADD CONSTRAINT "orderitems_pkey" PRIMARY KEY ("id");


--
-- Name: orders_pkey; Type: CONSTRAINT; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

ALTER TABLE ONLY "orders"
    ADD CONSTRAINT "orders_pkey" PRIMARY KEY ("id");


--
-- Name: probras_pkey; Type: CONSTRAINT; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

ALTER TABLE ONLY "probras"
    ADD CONSTRAINT "probras_pkey" PRIMARY KEY ("id");


--
-- Name: productbrands_pkey; Type: CONSTRAINT; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

ALTER TABLE ONLY "productbrands"
    ADD CONSTRAINT "productbrands_pkey" PRIMARY KEY ("id");


--
-- Name: products_pkey; Type: CONSTRAINT; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

ALTER TABLE ONLY "products"
    ADD CONSTRAINT "products_pkey" PRIMARY KEY ("id");


--
-- Name: producttypes_pkey; Type: CONSTRAINT; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

ALTER TABLE ONLY "producttypes"
    ADD CONSTRAINT "producttypes_pkey" PRIMARY KEY ("id");


--
-- Name: purchaseorderitems_pkey; Type: CONSTRAINT; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

ALTER TABLE ONLY "purchaseorderitems"
    ADD CONSTRAINT "purchaseorderitems_pkey" PRIMARY KEY ("id");


--
-- Name: purchaseorders_pkey; Type: CONSTRAINT; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

ALTER TABLE ONLY "purchaseorders"
    ADD CONSTRAINT "purchaseorders_pkey" PRIMARY KEY ("id");


--
-- Name: schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

ALTER TABLE ONLY "schema_migrations"
    ADD CONSTRAINT "schema_migrations_pkey" PRIMARY KEY ("version");


--
-- Name: stockadjustmentitems_pkey; Type: CONSTRAINT; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

ALTER TABLE ONLY "stockadjustmentitems"
    ADD CONSTRAINT "stockadjustmentitems_pkey" PRIMARY KEY ("id");


--
-- Name: stockadjustments_pkey; Type: CONSTRAINT; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

ALTER TABLE ONLY "stockadjustments"
    ADD CONSTRAINT "stockadjustments_pkey" PRIMARY KEY ("id");


--
-- Name: suppliers_pkey; Type: CONSTRAINT; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

ALTER TABLE ONLY "suppliers"
    ADD CONSTRAINT "suppliers_pkey" PRIMARY KEY ("id");


--
-- Name: tools_pkey; Type: CONSTRAINT; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

ALTER TABLE ONLY "tools"
    ADD CONSTRAINT "tools_pkey" PRIMARY KEY ("id");


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

ALTER TABLE ONLY "users"
    ADD CONSTRAINT "users_pkey" PRIMARY KEY ("id");


--
-- Name: index_commontoolissuances_on_commontool_id; Type: INDEX; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

CREATE INDEX "index_commontoolissuances_on_commontool_id" ON "commontoolissuances" USING "btree" ("commontool_id");


--
-- Name: index_commontoolissuances_on_employee_id; Type: INDEX; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

CREATE INDEX "index_commontoolissuances_on_employee_id" ON "commontoolissuances" USING "btree" ("employee_id");


--
-- Name: index_commontools_on_employee_id; Type: INDEX; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

CREATE INDEX "index_commontools_on_employee_id" ON "commontools" USING "btree" ("employee_id");


--
-- Name: index_orderitems_on_order_id; Type: INDEX; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

CREATE INDEX "index_orderitems_on_order_id" ON "orderitems" USING "btree" ("order_id");


--
-- Name: index_orderitems_on_product_id; Type: INDEX; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

CREATE INDEX "index_orderitems_on_product_id" ON "orderitems" USING "btree" ("product_id");


--
-- Name: index_orders_on_customer_id; Type: INDEX; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

CREATE INDEX "index_orders_on_customer_id" ON "orders" USING "btree" ("customer_id");


--
-- Name: index_orders_on_employee_id; Type: INDEX; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

CREATE INDEX "index_orders_on_employee_id" ON "orders" USING "btree" ("employee_id");


--
-- Name: index_orders_on_supplier_id; Type: INDEX; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

CREATE INDEX "index_orders_on_supplier_id" ON "orders" USING "btree" ("supplier_id");


--
-- Name: index_products_on_productbrand_id; Type: INDEX; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

CREATE INDEX "index_products_on_productbrand_id" ON "products" USING "btree" ("productbrand_id");


--
-- Name: index_products_on_producttype_id; Type: INDEX; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

CREATE INDEX "index_products_on_producttype_id" ON "products" USING "btree" ("producttype_id");


--
-- Name: index_products_on_supplier_id; Type: INDEX; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

CREATE INDEX "index_products_on_supplier_id" ON "products" USING "btree" ("supplier_id");


--
-- Name: index_purchaseorderitems_on_product_id; Type: INDEX; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

CREATE INDEX "index_purchaseorderitems_on_product_id" ON "purchaseorderitems" USING "btree" ("product_id");


--
-- Name: index_purchaseorderitems_on_purchaseorder_id; Type: INDEX; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

CREATE INDEX "index_purchaseorderitems_on_purchaseorder_id" ON "purchaseorderitems" USING "btree" ("purchaseorder_id");


--
-- Name: index_purchaseorders_on_supplier_id; Type: INDEX; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

CREATE INDEX "index_purchaseorders_on_supplier_id" ON "purchaseorders" USING "btree" ("supplier_id");


--
-- Name: index_stockadjustmentitems_on_product_id; Type: INDEX; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

CREATE INDEX "index_stockadjustmentitems_on_product_id" ON "stockadjustmentitems" USING "btree" ("product_id");


--
-- Name: index_stockadjustmentitems_on_stockadjustment_id; Type: INDEX; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

CREATE INDEX "index_stockadjustmentitems_on_stockadjustment_id" ON "stockadjustmentitems" USING "btree" ("stockadjustment_id");


--
-- Name: index_stockadjustments_on_customer_id; Type: INDEX; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

CREATE INDEX "index_stockadjustments_on_customer_id" ON "stockadjustments" USING "btree" ("customer_id");


--
-- Name: index_stockadjustments_on_order_id; Type: INDEX; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

CREATE INDEX "index_stockadjustments_on_order_id" ON "stockadjustments" USING "btree" ("order_id");


--
-- Name: index_tools_on_employee_id; Type: INDEX; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

CREATE INDEX "index_tools_on_employee_id" ON "tools" USING "btree" ("employee_id");


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

CREATE UNIQUE INDEX "index_users_on_email" ON "users" USING "btree" ("email");


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: hkcwwvwtkynjbn; Tablespace: 
--

CREATE UNIQUE INDEX "index_users_on_reset_password_token" ON "users" USING "btree" ("reset_password_token");


--
-- Name: fk_rails_1aa9b0116b; Type: FK CONSTRAINT; Schema: public; Owner: hkcwwvwtkynjbn
--

ALTER TABLE ONLY "products"
    ADD CONSTRAINT "fk_rails_1aa9b0116b" FOREIGN KEY ("supplier_id") REFERENCES "suppliers"("id");


--
-- Name: fk_rails_4608430842; Type: FK CONSTRAINT; Schema: public; Owner: hkcwwvwtkynjbn
--

ALTER TABLE ONLY "orders"
    ADD CONSTRAINT "fk_rails_4608430842" FOREIGN KEY ("employee_id") REFERENCES "employees"("id");


--
-- Name: fk_rails_879f0a4f0d; Type: FK CONSTRAINT; Schema: public; Owner: hkcwwvwtkynjbn
--

ALTER TABLE ONLY "products"
    ADD CONSTRAINT "fk_rails_879f0a4f0d" FOREIGN KEY ("productbrand_id") REFERENCES "productbrands"("id");


--
-- Name: fk_rails_c067cda291; Type: FK CONSTRAINT; Schema: public; Owner: hkcwwvwtkynjbn
--

ALTER TABLE ONLY "products"
    ADD CONSTRAINT "fk_rails_c067cda291" FOREIGN KEY ("producttype_id") REFERENCES "producttypes"("id");


--
-- Name: fk_rails_d426350910; Type: FK CONSTRAINT; Schema: public; Owner: hkcwwvwtkynjbn
--

ALTER TABLE ONLY "orders"
    ADD CONSTRAINT "fk_rails_d426350910" FOREIGN KEY ("supplier_id") REFERENCES "suppliers"("id");


--
-- PostgreSQL database dump complete
--


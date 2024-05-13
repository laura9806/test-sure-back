PGDMP     4        	            |         	   Sure_Bank    12.19    12.19 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    25248 	   Sure_Bank    DATABASE     �   CREATE DATABASE "Sure_Bank" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Colombia.1252' LC_CTYPE = 'Spanish_Colombia.1252';
    DROP DATABASE "Sure_Bank";
                postgres    false            �            1259    25570    Accounts_account    TABLE     C  CREATE TABLE public."Accounts_account" (
    id integer NOT NULL,
    account_number integer NOT NULL,
    password character varying(100) NOT NULL,
    balance numeric(10,2) NOT NULL,
    status_id integer NOT NULL,
    type_id integer NOT NULL,
    user_id integer NOT NULL,
    creation_date timestamp with time zone
);
 &   DROP TABLE public."Accounts_account";
       public         heap    postgres    false            �            1259    25568    Accounts_account_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Accounts_account_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."Accounts_account_id_seq";
       public          postgres    false    231            �           0    0    Accounts_account_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."Accounts_account_id_seq" OWNED BY public."Accounts_account".id;
          public          postgres    false    230            �            1259    25462    Accounts_status    TABLE     t   CREATE TABLE public."Accounts_status" (
    id integer NOT NULL,
    description character varying(255) NOT NULL
);
 %   DROP TABLE public."Accounts_status";
       public         heap    postgres    false            �            1259    25460    Accounts_status_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Accounts_status_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."Accounts_status_id_seq";
       public          postgres    false    222            �           0    0    Accounts_status_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."Accounts_status_id_seq" OWNED BY public."Accounts_status".id;
          public          postgres    false    221            �            1259    25470    Accounts_types    TABLE     s   CREATE TABLE public."Accounts_types" (
    id integer NOT NULL,
    description character varying(255) NOT NULL
);
 $   DROP TABLE public."Accounts_types";
       public         heap    postgres    false            �            1259    25468    Accounts_types_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Accounts_types_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."Accounts_types_id_seq";
       public          postgres    false    224            �           0    0    Accounts_types_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."Accounts_types_id_seq" OWNED BY public."Accounts_types".id;
          public          postgres    false    223            �            1259    25504    Record_movement_type    TABLE     y   CREATE TABLE public."Record_movement_type" (
    id integer NOT NULL,
    description character varying(255) NOT NULL
);
 *   DROP TABLE public."Record_movement_type";
       public         heap    postgres    false            �            1259    25502    Record_movement_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Record_movement_type_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."Record_movement_type_id_seq";
       public          postgres    false    226            �           0    0    Record_movement_type_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public."Record_movement_type_id_seq" OWNED BY public."Record_movement_type".id;
          public          postgres    false    225            �            1259    25512    Record_record    TABLE     �   CREATE TABLE public."Record_record" (
    id integer NOT NULL,
    date timestamp with time zone NOT NULL,
    amount integer NOT NULL,
    account_id integer NOT NULL,
    movement_type_id integer NOT NULL
);
 #   DROP TABLE public."Record_record";
       public         heap    postgres    false            �            1259    25510    Record_record_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Record_record_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."Record_record_id_seq";
       public          postgres    false    228            �           0    0    Record_record_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Record_record_id_seq" OWNED BY public."Record_record".id;
          public          postgres    false    227            �            1259    25280 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    25278    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    209            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    208            �            1259    25290    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    25288    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    211            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    210            �            1259    25272    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    25270    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    207            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    206            �            1259    25298 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    25308    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    25306    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    215            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    214            �            1259    25296    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    213            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    212            �            1259    25316    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    25314 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    217            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    216            �            1259    25551    authtoken_token    TABLE     �   CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);
 #   DROP TABLE public.authtoken_token;
       public         heap    postgres    false            �            1259    25418    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    25416    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    219            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    218            �            1259    25262    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    25260    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    205            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    204            �            1259    25251    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    25249    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    203            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    202            �            1259    25449    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �
           2604    25573    Accounts_account id    DEFAULT     ~   ALTER TABLE ONLY public."Accounts_account" ALTER COLUMN id SET DEFAULT nextval('public."Accounts_account_id_seq"'::regclass);
 D   ALTER TABLE public."Accounts_account" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231            �
           2604    25465    Accounts_status id    DEFAULT     |   ALTER TABLE ONLY public."Accounts_status" ALTER COLUMN id SET DEFAULT nextval('public."Accounts_status_id_seq"'::regclass);
 C   ALTER TABLE public."Accounts_status" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            �
           2604    25473    Accounts_types id    DEFAULT     z   ALTER TABLE ONLY public."Accounts_types" ALTER COLUMN id SET DEFAULT nextval('public."Accounts_types_id_seq"'::regclass);
 B   ALTER TABLE public."Accounts_types" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            �
           2604    25507    Record_movement_type id    DEFAULT     �   ALTER TABLE ONLY public."Record_movement_type" ALTER COLUMN id SET DEFAULT nextval('public."Record_movement_type_id_seq"'::regclass);
 H   ALTER TABLE public."Record_movement_type" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226            �
           2604    25515    Record_record id    DEFAULT     x   ALTER TABLE ONLY public."Record_record" ALTER COLUMN id SET DEFAULT nextval('public."Record_record_id_seq"'::regclass);
 A   ALTER TABLE public."Record_record" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    228    228            �
           2604    25283    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            �
           2604    25293    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            �
           2604    25275    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            �
           2604    25301    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            �
           2604    25311    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �
           2604    25319    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �
           2604    25421    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �
           2604    25265    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            �
           2604    25254    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            �          0    25570    Accounts_account 
   TABLE DATA              COPY public."Accounts_account" (id, account_number, password, balance, status_id, type_id, user_id, creation_date) FROM stdin;
    public          postgres    false    231   ��       �          0    25462    Accounts_status 
   TABLE DATA           <   COPY public."Accounts_status" (id, description) FROM stdin;
    public          postgres    false    222   ��       �          0    25470    Accounts_types 
   TABLE DATA           ;   COPY public."Accounts_types" (id, description) FROM stdin;
    public          postgres    false    224   ι       �          0    25504    Record_movement_type 
   TABLE DATA           A   COPY public."Record_movement_type" (id, description) FROM stdin;
    public          postgres    false    226   ��       �          0    25512    Record_record 
   TABLE DATA           Y   COPY public."Record_record" (id, date, amount, account_id, movement_type_id) FROM stdin;
    public          postgres    false    228   C�       �          0    25280 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    209   `�       �          0    25290    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    211   }�       �          0    25272    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    207   ��       �          0    25298 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    213   ��       �          0    25308    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    215   ��       �          0    25316    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    217   ܼ       �          0    25551    authtoken_token 
   TABLE DATA           @   COPY public.authtoken_token (key, created, user_id) FROM stdin;
    public          postgres    false    229   ��       �          0    25418    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    219   �       �          0    25262    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    205   3�       �          0    25251    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    203   ٽ       �          0    25449    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    220   �       �           0    0    Accounts_account_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."Accounts_account_id_seq"', 5, true);
          public          postgres    false    230            �           0    0    Accounts_status_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Accounts_status_id_seq"', 4, true);
          public          postgres    false    221            �           0    0    Accounts_types_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Accounts_types_id_seq"', 2, true);
          public          postgres    false    223            �           0    0    Record_movement_type_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."Record_movement_type_id_seq"', 4, true);
          public          postgres    false    225            �           0    0    Record_record_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Record_record_id_seq"', 66, true);
          public          postgres    false    227            �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    208            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    210            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 52, true);
          public          postgres    false    206            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    214            �           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 11, true);
          public          postgres    false    212            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    216            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          postgres    false    218            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 13, true);
          public          postgres    false    204            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 24, true);
          public          postgres    false    202            '           2606    25575 &   Accounts_account Accounts_account_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."Accounts_account"
    ADD CONSTRAINT "Accounts_account_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."Accounts_account" DROP CONSTRAINT "Accounts_account_pkey";
       public            postgres    false    231                       2606    25467 $   Accounts_status Accounts_status_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."Accounts_status"
    ADD CONSTRAINT "Accounts_status_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."Accounts_status" DROP CONSTRAINT "Accounts_status_pkey";
       public            postgres    false    222                       2606    25475 "   Accounts_types Accounts_types_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."Accounts_types"
    ADD CONSTRAINT "Accounts_types_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."Accounts_types" DROP CONSTRAINT "Accounts_types_pkey";
       public            postgres    false    224                       2606    25509 .   Record_movement_type Record_movement_type_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public."Record_movement_type"
    ADD CONSTRAINT "Record_movement_type_pkey" PRIMARY KEY (id);
 \   ALTER TABLE ONLY public."Record_movement_type" DROP CONSTRAINT "Record_movement_type_pkey";
       public            postgres    false    226                        2606    25517     Record_record Record_record_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Record_record"
    ADD CONSTRAINT "Record_record_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."Record_record" DROP CONSTRAINT "Record_record_pkey";
       public            postgres    false    228            �
           2606    25447    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    209            �
           2606    25332 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    211    211            �
           2606    25295 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    211            �
           2606    25285    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    209            �
           2606    25323 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    207    207            �
           2606    25277 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    207                       2606    25313 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    215                       2606    25347 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    215    215            �
           2606    25303    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    213                       2606    25321 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    217                       2606    25361 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    217    217                       2606    25441     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    213            #           2606    25555 $   authtoken_token authtoken_token_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);
 N   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_pkey;
       public            postgres    false    229            %           2606    25557 +   authtoken_token authtoken_token_user_id_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);
 U   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_user_id_key;
       public            postgres    false    229                       2606    25427 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    219            �
           2606    25269 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    205    205            �
           2606    25267 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    205            �
           2606    25259 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    203                       2606    25456 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    220                       1259    25528 !   Record_record_account_id_8ab18ffc    INDEX     e   CREATE INDEX "Record_record_account_id_8ab18ffc" ON public."Record_record" USING btree (account_id);
 7   DROP INDEX public."Record_record_account_id_8ab18ffc";
       public            postgres    false    228                       1259    25529 '   Record_record_movement_type_id_6ccd0f9c    INDEX     q   CREATE INDEX "Record_record_movement_type_id_6ccd0f9c" ON public."Record_record" USING btree (movement_type_id);
 =   DROP INDEX public."Record_record_movement_type_id_6ccd0f9c";
       public            postgres    false    228            �
           1259    25448    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    209            �
           1259    25343 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    211            �
           1259    25344 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    211            �
           1259    25329 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    207                       1259    25359 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    215                       1259    25358 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    215            	           1259    25373 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    217                       1259    25372 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    217                        1259    25442     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    213            !           1259    25563 !   authtoken_token_key_10f0b77e_like    INDEX     p   CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);
 5   DROP INDEX public.authtoken_token_key_10f0b77e_like;
       public            postgres    false    229                       1259    25438 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    219                       1259    25439 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    219                       1259    25458 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    220                       1259    25457 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    220            1           2606    25523 B   Record_record Record_record_movement_type_id_6ccd0f9c_fk_Record_mo    FK CONSTRAINT     �   ALTER TABLE ONLY public."Record_record"
    ADD CONSTRAINT "Record_record_movement_type_id_6ccd0f9c_fk_Record_mo" FOREIGN KEY (movement_type_id) REFERENCES public."Record_movement_type"(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public."Record_record" DROP CONSTRAINT "Record_record_movement_type_id_6ccd0f9c_fk_Record_mo";
       public          postgres    false    226    2844    228            *           2606    25338 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    2802    207    211            )           2606    25333 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    209    2807    211            (           2606    25324 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    205    207    2797            ,           2606    25353 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    2807    209    215            +           2606    25348 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    2815    215    213            .           2606    25367 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    217    207    2802            -           2606    25362 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    213    2815    217            2           2606    25558 @   authtoken_token authtoken_token_user_id_35299eff_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_user_id_35299eff_fk_auth_user_id;
       public          postgres    false    2815    213    229            /           2606    25428 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    205    219    2797            0           2606    25433 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    2815    213    219            �      x������ � �      �      x�3�tL.�,K�2���K�0c���� ]��      �       x�3�t��/*��2�tҙ�y%�\1z\\\ h�H      �   5   x�3�t��+.�)I�2�J-�,��2�e��%&gޜ�e��\�
e��qqq ���      �      x������ � �      �      x������ � �      �      x������ � �      �   �  x�e�I��0E��)|��5xZ�
��d�1�I�o��y'��g�ٮ��n�u���3_wi���P�e���ikB���pM��-/�3��-[�n�����b�H��6M�<���t#��agأ�s,{REG����by����X�Y�2���::@jU) Y`܈�sJchI`}�Uk���3������n��j��>�����G
{2�ֺ����r��zmx�Y�~S�M����zJ��H�X�ޕ��`�vŠ'�i]!�DK��n~N��B���K\��ȵ-P�d��U h��{5���sl\�e ��@��� ������}~s8�V�qM+�\ي�E0ӷB�#�V~�_�t��q-_��Lv)�ƥ�z��C���C���Z��z�Z���<^Bſ����_(�u�e�W��
�տ�?i����"�.zJm̸�)�1c��{�)�ǍZ<��o���ʪ ���� �߁��C�~���$      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�]��
1�ϙ���{�<R�a]�MiSq�ޥEV�$3�$�l��@O8h��![�N��s%�kdHR"�͔�	;rt��9��)sM�����I	:#�Z2��8-�6��;I=yy���o��1_��i��<8P�0�?�I��+ �mU%      �     x����n�0���)��<������e7�0kLռ�CI�%��3�XE��h�/��h׻�L[ Cze���Z�Z�#N�ӿ,��'�B9��_M�>>q����ST�S����8�9!�	ԭ?���E���S�^��iDg��2���r�4��^��欛wm���ܷ����Y_����Mg�QWT�IGm�h�l��8�%�yݙO������E��a�Tm(���1=lg\��R%J��C������C��CL҂�!n��ޥΦv���\�Lv�M.lz�w=Kۇ`���A�Zʇi��D�<}����h�wOɎ�2�6\�+�fR�d��H�GO�J�ږ_$`+��4<E��SjÀ��d��!���ͅ��#�"��l�̀�M���dW����VU�v=��2��'���N�{������9�o��p�{�d쨤d�y\nh���m�/��9�G�%Aք�{��$C��}D����K�\�y`��
Jȃ�s<�F���      �      x��W�+�����W+N4@2i�M�{/\@H��֟�F��gj�@��D�0�P�F0"�`0�m�xč��E�^[	 Hʍ(�hX��!fT��Lw����$EO)J�4Τ=��!���Fu�ܼ�=����A � =D��2�2�~&����񱪢��Ņ� ���0I�:�M���]�oɷ�R��M*br���]�+Z�[c�N�������ͿV�d�~�D�D_��AkL�:�	���y,�Ud�Ɗ[��w�q.�{�71Rzf�����г;�������^�M�}�bԳ>We2�~���תyE}Pz�tNy	MT�(e*j�ʴW�n佇�c;��x�n��?)"Ó�M5:��O�������!���[�VU=�TZ@�7@3OM�<�"��q���UH��R�h\���6~d��;N���A��9��U�c��?V���䘊7a�lu)㹚a��(s��h�b������X�w�m+��?��I~�F�ލ�`ڷ6s��|X�%*N����6���J���Ώ{��=�fL�W����z�T��t}�s~1�� ��E�K�i#��$Rl7�~~,���X�f�I���Qų�1��c��� ��~1?bk�`f5:�\m�b�_���`a�w�ЈKx�{�z���u`.���¿���%��FB���
C��(�1�#i �MT���A��8Nj�F��3�4����o=�R�=b1x^n9����f���5��<�DX�%�AJ����C��s'TH���܏D�7MG�*����l�����lg<Nt�-f�L�?Ok]�O��I��?��V#�u?��I��I]T�T:jiy�G�je1wO1�@t�M�ˇA�-��+k�ş=���T�~����Z�NE|ě���m������jn��pu����[�����'I+��x�äR'�{�U�V�=_ܳ�����T�q]�gv�����QuQo��c�*���F[_Rv��~1��{4�i���Me����6�?�=��!�A#�6�&Rl�Vi���H�E)�CZ����k��� +�pe�6��@�i{��dCk���Lpx�z����U�"2D?�A*ބ��酵)	�����4y��Oø�JBē-~�{.����P=-ɽ�}�z>v�؍c������>	Q��(��]&tݰ[C�q�ƕ����)�˰�|f%��!Sn��[�x��j����E�}�� i`�� $u��P9��<��+��*�4Qf�PT���q�&�JB#E�'�)���h�����Xw>;_�y���jQ����|²~(E��wN�a_�27M���9��� ��֩��S&+y��<�}T�s�p���1�6��rҹ�l���X���Z�<���r$�;%��̂UQ���$(���4SK-/�y4�ץ�1��+âf�6���[0/�$�z ��	�#a�~���u��ȶL��֫�(K�i���W�p�SOwK{�&��I��p�է7`��{�������%�C$���SG��c[����PbQ]��R��S���ﴡ[&�e�Y�t���j:L�f�U�8��y/���?��kT�����JDz
�#���b�H��Ԍc]I,�*���;=��ȧ��>���3��������K��6Kg��[~='��	�� �|�E�w:�������E{6�K��%�����u]����l�7�:��o���}}��祦1t*�c�:E���*��?	���']V��eU�z�%%yYeM%5%b��1 .I����P4�+A]��}�I�!���E�:)�I����&j�4^�a�I�W�H9�л���(��$�-hXv���dX�����ig�/
y�X�m��,���s��[4��z?���Ys{�V���>	�N��PD}ǲT����)�;h^��P�P��$�F�dv2As:�h�:h���j)b�y:T�eK�G�s�����2zI{I��:�L�����Ԫj�GI�6��H��J���&;,w��
8�ܜ��܌�c�S��g�5ڏ�|������X���v�<��b-7��Ro$��y )
��Y��h�wՑ�����Kk]�e�NF�h �ť2zlv���A`���?V}U���wT5v*$:�	pnx����L%�c"��_���R��"{�?Zƍ�`�~b)G�е��M��r��y���s�v��b�YC�ۀE/N�Qo=�*Y�7CY�%�[҃(�T���t8�|
�y�䙯��y��=r�x(vꮎ�}��>��V��A�-�z�=��hg����ވ4(_��z�Ja�u\�Wo���Ӹ��n������A�( CI�],���)�uVqd���kH_w�� �$�'"}*�kG�z���a������ż7���e�I{V�yUx�'"��t����{61��k��X7���F)o"O�NDF)�W�[?�o����]4��I4:�QMM��3 g�����+�~ ����-n�*Ÿ���/�8�� ա��_�Ѽ����%ʏ��$&���ߙ���A$��- .:d�'c�ODTF�G�j��N��9�	$�1#�~չ��_Ih�g�Cd�<?]_���d���އU\XӬJ��i�1~� �_��G`�ɈwM�r9bVi�"�Y՜డГb��ʿ�vg͐�j��A}p��ߕ���R�=��E=���<��bp]�����O�� �1�A���a��"�� bm\�	bT�LOAY�ڡ��5��r������ZNn��1�6�*�aP�E�,��C��U��IՒ�A���(4EHr����8)���0�uٽ����d9�3S�\��R4�g�!�Ol1�_e�?�K�{?R�0��K� �i��M�F����՛��b�Bj��+���|�rE�<�,7Un��8�j1ٟ���E����C�k��r�$�nϼ��&F�H� pT���@��U���+�������Q6=�tay��V��Q>��i��"�r\���g`B��uD�7��2]���kn���iZ����+�oWyЄ9j���*�YZG�U8�k�p������lG+�ӊ:w����o	9�0j�$tq&R�"\s��Xd�z�[|%�Q:��қ��L��l�(\���t�,x�
k4[���W�#ȴO+�d�� �;w��L�
I1Y�꠶U]G�))Q��K��})p=���QΚ^�T���|�ʩ>��7}���@���_VĻ??�.	~��_Q��Ӻa�J�;Y^d�n�Jo}�Fi+����<߼�T��K7ؕ���TL�����	�g�K�iE��~�������\}���l�(���A�I�6#������ƺ����Ue����d*v���XR��BR^4��i~F�� ����~�j��8N�We�A[W"�s�_�h��dM�����^9�����n�+�����J۟"��L�g}�3/���(ῂݴ�N�W)�m�龫{��NbW^�0�ND�FN��X�>�q��}݆�����f�|�hN4���>�?;�2!?r
��ZS�-�@��]{�1Xi0+�ply����;5�{���Ǘ����%OLܛN��*X���.���-��Gi�?I�R���Vd;�mk8��\'���U-���T"�ND-����8�2O��-�]F����X�b���j��-�D������h 韼�TE��]�o6%T��U3���~%�1��V��pX�'I���{�u������T? ��~��Mp�D�e����o�'KPI���$�I%R[�̌�"n]����NDt [9U�2�f���.5c�.�7R������["$4]�W%!�t1��#��s�0q�kN�V�v'�J+�S+U�Έ6���_L�����}���rH���(��ny�G	ٶ��?}]��y�i���M�Bns�IQW�q�W���F׾U��,��w�p��}�Kk�4N�e"6��z���$(oU�V��ԱCD� �W$����K<��mf���^�S(E,�ٗ�9�É�V�BZ�|����_�=r�$tt�Fe)=��tg�7�!�$�LB���B��2Ҭp��ZU������Y@k��;-��>�}^�tb�{��U-�Ϻ��ڕ2&����W�B�    �\�:s����I��):�a�B���m)�c�dƗ"J�x���i�=G˺>����Pn9_t�_FlVxS�	z���[I��Gb�z�@��XT�Q4)��i�N���i��߉h��3���G�vN��z�:�Y�<�Uw��3��s���9��_V$�v��:�[�b%�b�mR�b�_*E����;���ư��@F�DR�Ŷg,����4���dvg�����'"���w�㻺��6��V��O=�ys�Q�Ғ�ڀ�Y�oJy1X6�VBx��p`-/�IT7���}ݑ����ѽ�YQ#�UH ��EfN�6i�E�*ֺN]	��V��m}'�m%�mGb����;��nFx�G�����0{kǩ�WD�2�?���^6mB����]!'�v����1���.�ˇ��N�8���x\�?cG�i�r^��n�B���ǟ:��W+���n[VvhBd�S���v����iZt����j��:��O�&�[A.I�9�C�x�@;�,˂W��.���o�iRG.�]
R�)�p�Rh6L��yD4>sٳ�qo>��uq8�V�>�'1rع�Na���l�y�OD]@�?]�H��"�'Z�Z���G-Aւ��K��_��O~������W��ҙ�gW�j�B2�fRR,�tg��`�Y��2�k����p
+aD���b���h��"�N����D��$kƓI�7J3�<�59��c�5�4�A�3�l|[hG��6X,�pySU��q�葹q݊M�+7�$���^���gZ�x1,��<�6���_�n0Z��?�а:.*)���b3��f}L�y��^<�v��f/F�N�ՠ������қ�om�{E��v���6���@[��8�篝�����
��FL��5��1����7kO�Ҽ���	����Lk�
�l'xjd�4��r̀�+��f�W3�}�{]�aS�n�e�A���I!Q�	�VR�z-H2%D���Ԍ����!X]=�����%�<wS}���~�W���:�f�1�p�{m�c-��x�b!�Hh�<��ѐ �R�f��f�u -����zX��� �֌rŸ�i�7h6���_�D�K�ⷓ�g�7����U���WD��䨌���ft-��`m�E�/�����x��jk��A��6j�;����$��.G��}�ESͫr,����7 j�[Ye�J%M���?v�\�=WRm����pt~�nOpl�ZeQ��{�pK2d�ӌ�K�sAدJku�Ǎ)2���X�k跥W&F-I&�R3�.�dO�U���DSfd�
����L/�<��q=����8�>�AY"?�S�{dM$��JpBlGUMCؕ�v�h�T$�_Z�b�ϥCt��X���=��
����	٣m�ZDɆ�ͧ7�����I�q�m��(��X���TY�M`rը�[�e[��m��6]���Ok�H'R�u��;?�N�����b����<�S�R��3�Rg9oPo�-�6�]��q>5��a�u�s3�w|;L�M�֣#��H��QV�r���ܫQ��͜*�=_E<���ެ�wl�ot�^Y6)z��<)39�p�u����Q����(��r|��OC¯� q���@�؊���u5?E��
S�|R�V��f>�����!����4�FU�VPj{w���^|�R;��F�߆$�@9�����i���a����U��8ԕ�B������sZnN�ao�-]��w|�W_�U4��f�|�}�~����
���|�hE�Y��=7��+M��>�#�;[��1��K���T���5���U���u��U0]�tկ���ӌȻ�&8��Gf�H�Y��3�a�p�4���5#"�߳"n��]������J�ۜCĲƍX�D�xIlg�7�y76q���3٪�'�*�w"�0w�z����t�WP���4������Y��N��ySB�*��4�+�e�hݛt�������o�.|�m�p(.N�<�N�^7�!�WnD !����")C6n�\7)o��fIQ��)v:����c:�6Y<LJ4�����l����*Wg8��{�8b���E��|JU�����(m-y5��zY�����7�3h�ga���p0�ɴn�
{���43��>r������<�͈���)J����&h��0xn�4�U3Ӹ�Jg4�����Sm��ʵӟ���._���[�r;��mzޜ'�aT�H�jY��"�|x�R1,�@8q� ��V4	�Qv=,��}զWe���S�Un��Ro���Z����Y}2@/1�0!��_SM2�(��S�(.�$�c��o�j~�����Xgp�I۩ۋF��m��@o��d�xTz��GM�໅b��iH�˺�f�(�R1��Amd!#�o4��{�\$F�ǖ5�\fژ�N/[w�I»���E'2/��b/��$��wu�.���:+�Ĵ *�$4��e��u�|#���ȳE4�o�zowz�*��;�FO�EZw0W7�
^{s�_��?�{�& �p�;]�@G9�L��j�,RR/vJ�7���	-�V����hr댞Q�!HH��*�^����;8[�	�����r"�#(@�mC��2R�B%���c�6�i�P2��$t��s�������hNχâsKR���_Tk���߄�`���;}�
U:=�	��P��U���U���W[Z�H^�P�Lz�A���z,�9��y �g�޻0wb*�^���)���W��u���t�y�]E�E�6�4R��+	��|�����f������;����4�뗝���4ZF7f^/m�oB��N��@���|57Ku"�,�ѝ�ؾ�H4�NB�|ʹA��{M$��j�ô�h�$4��;��5�Н�1F��	���~k�� MЅ�R��жU��(<�L4'���Ϲ`����:?E�i�/����h�����;�9;���4��I��2��'�8����U���B�2D�F���W�C9�b�د���g�j�Q~<^��z�w�c;7#]��hZ�u�o@�w��R�v�8k�'YU��$�a�q�B�IIh"��r~��2�L��d���%Q���DG���%3��/�����/����_7�@�!�L2��5n��b�)I����L��P��ۃ�vt]�����G۵aO܋5٪�P���w;�?	I�r5�Lz�CI�P����ѥ��'x��e���:�NB����b���k��6�9�A|��z�Oz�#����.Yc�eC�V���j�߻�fЅi�gI�;T-�v��Z/����;��Ry@�"�����3oWs5����F��7�45�v/��T�?	�׬}D� �~H�A%i�ÈY�$H	��HͶ�B�H��Ш/�"�4v�d3�p>J�,HV�h��M���\=���������?//h�m�m�$�Uuߎ���k���ڗ��m��O�A�_Ţ���efޏ�zYjˡ2��cN���߄��Q��Cy�6��Q��*33c��*�"�΄qT�W{֑�JV{�D9�7���S�
צG������vٻ�.�~ǲ�DNG�ch5b�o� 3-j�3����&��'��!�7m��Zt����KI�w㨿�>	�W>D��]@��ͥL�۴�**yfn�A����;3�)�[���{" "/�ٲp������wۭ�U�,Q�_��oBҫ�m�iTg^�8��*�P�Em��U�o#��˜\��W�6IG��[j��"�.��څU%mD�]gٵ\��5���nW�c��c�a�nQ�������8���S�O5��/�m��Q��d�>ݴ�^�}���~$Mz6�����~]�}��-5���=��n�!�E�b���8H0�JB3_�*%����q�����e��`v����o6޹W�s�z�}���^#L���IU�r/-�H��<K��[^@�Fꯜ�X��>�ų�菎��kmSX�*� 1�\���E81����'���UD�-�q�H�I
�փTŁ��P+�@�~��P�\z��6Bv;k�I=5���Z턶SS�6��G�cӷ���C���){�P����4jj׆mj E  �1S�"��W�/�YmS2����ڶ1��іus{���Z��4ڋj����xυ?�q�;1�sZ�a���l��1��&^�Ձh�r\��˶�(L?O"7��RpX�!�E���)�;?P �"��jՋЫ���RƷi�Zv�;@��8,�Z��j����|����.�ܜWk���r�F��*Fͅ��f=lᡢS�j��"�.�c���A<m�Aj�Jjx�gش2��a��T���#��t'O�S��4�}$n����y����_���M���jA�}�2�?�ILz
��8`��D1Phd�g�(�jV��w6X/�����s�{��g��I��E���)�ZmAq)��A7�7"����_gݔ8J�DM�$�2��H+��R�ʯ�;[���O�����w���|����p�z�N��N%���i�.ޟ �5��)	���+�'�lR�/�,���5'ń(�����H>{���_D��mF���Wԕbֵ��G'q�w�	�v�>!���qJ�*?�Ӑ��5q��k�/`_K�6����X�A�خǦ��Um�}1����9y���_N^]�A���;Sb��O���M�d��i�*��+62s�|-�;�O�\�/������.6��z�9���}��_?������	�y�����m�[�T� Ȑ���zV����^J[�b�f޸�Q����M� ��/8?��C�������|R�W �42�>�+�l�.'���:���bP�M���B$OO[�³���t2~��Ii�u4k��2O�6��f�J�orp��?׬��Z�K~��Y�4dq�s�],�֒�{)����qqS��E��Y�J6(�6U�'�~��.<���)I�-I����pK
��	¨����P�ji9�Bv�����w����H�s����"�ϖ����w6����������=���������a@0�>Ƀ\7�
 ��0�����ZIk5��_~'�������p;�=��{�����u?:>�	�fS7���C������t�����'E�����L:w�#V��j�	��ҋ�g<�G�A�Bb���(��}��y�U���X\����Z|� u���s*~�A�Z*rM2��wb��:(]5*�+A�Z_:��<���ۓ�:П�s�jڶ��N��9���j�Xn��r>2��#`�W����4���VӐYA�FyI/�/e4Y��>7��mہ�:����-�)v'�}d�HY��0�T7��^�d8����n�������9(���yڄ�z�2�_�h��|q��}�}N�@vV�AU(�����7���>[���6O��y����� �13t�jÉE��ϺMƵ�_�h1��V?��i��ǵ���2��{u��`�M��Xd+�J���Ɉ������"�0"�3/2��	�����ǥ<�$�[�h9��^���jn���9�'�usc�D�`�G;��$@[��D�_ D)�m�-M�Nn ��ZM��X^� �v�aE�jF+SNE`O���kG�T4���u��[
�#���x�;���ػ�����o
���~y��Ѥ�E["u��sQ})��*_�c;�k}OUSQ
�l�Q��*��g��+�����6ѫ3�t����;�}؄��a�՚V/,����<��V��v'�4�4&��x@�.&�2[�Uw!=�v�Fִ�����N��o��Dy�HS�[��¯;��x�g{�|'���&��B��^���U��Mwl���r<؋ ��`;Z��>/6��s\0��v��n�"�l�13)�%��Z��΃�ʿ/k�;ysV�!p���u�Wm�y����NV�bP���>������7���e-B���-�Z%�k�n�� �����4�2�x���U-C��|���{}�U{KL�����'�G���>s�]����5C�]��� �H�։e(�A,����з]�;��~W[�Ce�m����k~����I�fѩ��rh�"O��٧7C�=�۪��\�8����M�G&l�c�.m�Zտ�:T��klb����}[�gc���Z{���R��/�JO�����z.HF~�/ez���x�CU�4��"o�@]��wU��8m�~�L�w����f��܆-Sza��x����S�?|�zщ�wI0�(�")�A#���`�}�6i��]4�ύ����Mt����X�E�>�B5�F�}a�����~�rD��W���7GQ۰��*9JK"�r�0�s5�.��������w��ֆ�x��IDrc
,�K�uh�_|�+��NV��x
�&(�a��f�0i��-��������;�ysO/o|�`�} ��&z�5��]��ri.O�e���W�@�~o�����I}ӊ|_r۸�u����~J��}�����9��M5(�[���fa�)���;�m8�����#C�y_�_ ��� �z��j���J��JSHMs=HR�K%8�;����P�q�˭4·A���N��`�6������#I�ut !���k1�l7EXY�+	+���B̀E�~)����Į�`=���f����)z=������C��6�>I�'��aQ8��`�����jY��&z�cN�.�j�tz�9�:	�ޙm[g�\׻I>�����J��G�Թ)m�#�|���W��*(Q��YJ[/4��ZM�u+})������Q�.XR��ذ�G��r�s	���\�j�4F���/R��SY
l��˭\�H�8h�Z*�&VD�+N�w2����z���.t�m.��y��ҥ?���:�������>mov�d�^��8��w�(���u�Q�k���f��gT�.���`(�eC����ΐ�B�J�0h�q�+�<�W�o/���^g�@Iz�s������XH��     
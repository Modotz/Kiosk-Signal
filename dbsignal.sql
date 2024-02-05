PGDMP         	                  |            dbsignal    14.4    14.4 1    '           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            (           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            )           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            *           1262    32789    dbsignal    DATABASE     l   CREATE DATABASE dbsignal WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE dbsignal;
                postgres    false            �            1259    32978    __EFMigrationsHistory    TABLE     �   CREATE TABLE public."__EFMigrationsHistory" (
    "MigrationId" character varying(150) NOT NULL,
    "ProductVersion" character varying(32) NOT NULL
);
 +   DROP TABLE public."__EFMigrationsHistory";
       public         heap    postgres    false            �            1259    32984    branches    TABLE     O  CREATE TABLE public.branches (
    id integer NOT NULL,
    branch_id text,
    branch_name text,
    address text,
    latitude text,
    longitude text,
    status integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    last_updated_at timestamp without time zone,
    created_by text
);
    DROP TABLE public.branches;
       public         heap    postgres    false            �            1259    32983    branches_id_seq    SEQUENCE     �   CREATE SEQUENCE public.branches_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.branches_id_seq;
       public          postgres    false    211            +           0    0    branches_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.branches_id_seq OWNED BY public.branches.id;
          public          postgres    false    210            �            1259    32993    clients    TABLE     �  CREATE TABLE public.clients (
    id integer NOT NULL,
    branch_id text,
    client_id text,
    group_id text,
    client_name text,
    client_type text,
    connection_id text,
    connection_status text,
    status integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    last_updated_at timestamp without time zone,
    created_by text
);
    DROP TABLE public.clients;
       public         heap    postgres    false            �            1259    32992    clients_id_seq    SEQUENCE     �   CREATE SEQUENCE public.clients_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.clients_id_seq;
       public          postgres    false    213            ,           0    0    clients_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.clients_id_seq OWNED BY public.clients.id;
          public          postgres    false    212            �            1259    33002 
   connetions    TABLE     �   CREATE TABLE public.connetions (
    id integer NOT NULL,
    client_key text,
    connection_id text,
    ip_address text,
    mac_address text,
    created_at timestamp without time zone
);
    DROP TABLE public.connetions;
       public         heap    postgres    false            �            1259    33001    connetions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.connetions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.connetions_id_seq;
       public          postgres    false    215            -           0    0    connetions_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.connetions_id_seq OWNED BY public.connetions.id;
          public          postgres    false    214            �            1259    33011    connetions_logs    TABLE     �   CREATE TABLE public.connetions_logs (
    id integer NOT NULL,
    client_key text,
    status text,
    created_at timestamp without time zone
);
 #   DROP TABLE public.connetions_logs;
       public         heap    postgres    false            �            1259    33010    connetions_logs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.connetions_logs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.connetions_logs_id_seq;
       public          postgres    false    217            .           0    0    connetions_logs_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.connetions_logs_id_seq OWNED BY public.connetions_logs.id;
          public          postgres    false    216            �            1259    33020    loggers    TABLE     �   CREATE TABLE public.loggers (
    id integer NOT NULL,
    client_id text,
    module text,
    message text,
    created_at timestamp without time zone
);
    DROP TABLE public.loggers;
       public         heap    postgres    false            �            1259    33019    loggers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.loggers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.loggers_id_seq;
       public          postgres    false    219            /           0    0    loggers_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.loggers_id_seq OWNED BY public.loggers.id;
          public          postgres    false    218            �            1259    33029    users    TABLE     f  CREATE TABLE public.users (
    id integer NOT NULL,
    branch_id text,
    user_id text,
    username text,
    email text,
    telepon text,
    role text,
    password text,
    status integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    last_updated_at timestamp without time zone,
    created_by text
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    33028    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    221            0           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    220            y           2604    32987    branches id    DEFAULT     j   ALTER TABLE ONLY public.branches ALTER COLUMN id SET DEFAULT nextval('public.branches_id_seq'::regclass);
 :   ALTER TABLE public.branches ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            z           2604    32996 
   clients id    DEFAULT     h   ALTER TABLE ONLY public.clients ALTER COLUMN id SET DEFAULT nextval('public.clients_id_seq'::regclass);
 9   ALTER TABLE public.clients ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            {           2604    33005    connetions id    DEFAULT     n   ALTER TABLE ONLY public.connetions ALTER COLUMN id SET DEFAULT nextval('public.connetions_id_seq'::regclass);
 <   ALTER TABLE public.connetions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            |           2604    33014    connetions_logs id    DEFAULT     x   ALTER TABLE ONLY public.connetions_logs ALTER COLUMN id SET DEFAULT nextval('public.connetions_logs_id_seq'::regclass);
 A   ALTER TABLE public.connetions_logs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            }           2604    33023 
   loggers id    DEFAULT     h   ALTER TABLE ONLY public.loggers ALTER COLUMN id SET DEFAULT nextval('public.loggers_id_seq'::regclass);
 9   ALTER TABLE public.loggers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            ~           2604    33032    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221                      0    32978    __EFMigrationsHistory 
   TABLE DATA           R   COPY public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") FROM stdin;
    public          postgres    false    209   �7                 0    32984    branches 
   TABLE DATA           �   COPY public.branches (id, branch_id, branch_name, address, latitude, longitude, status, created_at, updated_at, last_updated_at, created_by) FROM stdin;
    public          postgres    false    211   �7                 0    32993    clients 
   TABLE DATA           �   COPY public.clients (id, branch_id, client_id, group_id, client_name, client_type, connection_id, connection_status, status, created_at, updated_at, last_updated_at, created_by) FROM stdin;
    public          postgres    false    213   z8                 0    33002 
   connetions 
   TABLE DATA           h   COPY public.connetions (id, client_key, connection_id, ip_address, mac_address, created_at) FROM stdin;
    public          postgres    false    215   �9                  0    33011    connetions_logs 
   TABLE DATA           M   COPY public.connetions_logs (id, client_key, status, created_at) FROM stdin;
    public          postgres    false    217   �:       "          0    33020    loggers 
   TABLE DATA           M   COPY public.loggers (id, client_id, module, message, created_at) FROM stdin;
    public          postgres    false    219   �:       $          0    33029    users 
   TABLE DATA           �   COPY public.users (id, branch_id, user_id, username, email, telepon, role, password, status, created_at, updated_at, last_updated_at, created_by) FROM stdin;
    public          postgres    false    221   	;       1           0    0    branches_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.branches_id_seq', 1, false);
          public          postgres    false    210            2           0    0    clients_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.clients_id_seq', 13, true);
          public          postgres    false    212            3           0    0    connetions_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.connetions_id_seq', 6, true);
          public          postgres    false    214            4           0    0    connetions_logs_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.connetions_logs_id_seq', 1, false);
          public          postgres    false    216            5           0    0    loggers_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.loggers_id_seq', 1, false);
          public          postgres    false    218            6           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public          postgres    false    220            �           2606    32982 .   __EFMigrationsHistory PK___EFMigrationsHistory 
   CONSTRAINT     {   ALTER TABLE ONLY public."__EFMigrationsHistory"
    ADD CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId");
 \   ALTER TABLE ONLY public."__EFMigrationsHistory" DROP CONSTRAINT "PK___EFMigrationsHistory";
       public            postgres    false    209            �           2606    32991    branches PK_branches 
   CONSTRAINT     T   ALTER TABLE ONLY public.branches
    ADD CONSTRAINT "PK_branches" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.branches DROP CONSTRAINT "PK_branches";
       public            postgres    false    211            �           2606    33000    clients PK_clients 
   CONSTRAINT     R   ALTER TABLE ONLY public.clients
    ADD CONSTRAINT "PK_clients" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.clients DROP CONSTRAINT "PK_clients";
       public            postgres    false    213            �           2606    33009    connetions PK_connetions 
   CONSTRAINT     X   ALTER TABLE ONLY public.connetions
    ADD CONSTRAINT "PK_connetions" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.connetions DROP CONSTRAINT "PK_connetions";
       public            postgres    false    215            �           2606    33018 "   connetions_logs PK_connetions_logs 
   CONSTRAINT     b   ALTER TABLE ONLY public.connetions_logs
    ADD CONSTRAINT "PK_connetions_logs" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.connetions_logs DROP CONSTRAINT "PK_connetions_logs";
       public            postgres    false    217            �           2606    33027    loggers PK_loggers 
   CONSTRAINT     R   ALTER TABLE ONLY public.loggers
    ADD CONSTRAINT "PK_loggers" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.loggers DROP CONSTRAINT "PK_loggers";
       public            postgres    false    219            �           2606    33036    users PK_users 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT "PK_users" PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT "PK_users";
       public            postgres    false    221               3   x�32021042641546����,�L�qI,ILJ,N�4�3�34����� ��
�         �   x���
�0@���+�2�Gkw5fP����M��"dQ��X�g}	|ml�7�gw���1V��[N��;�]��/�\��g./���߼��sY� ذ�Ul����z�i{� ����!]դ�R?�OR            x����JCA���)�&��$g7׍�n܈=����}<K���d����V�
QcHL6
I4��2<�K�G.���e�\��RLU���?p���|^׏�|<��^�k����8����y`��F��M� ��d
a"񀑙�Di���7%Z>�[̡'��UJC�sA�0���m_!�V�2��bA.�'�|�������L��(��z����!�CG�u" �m '�V���&H�s%�v��ͯ����zn}w�@\�(���SR�R`�`I��&���j�E�*           x����n�0е���D�x<cgG�(���A��.�K	����u����,�ՂYk��k@2�g>��LV`f\���󩜪�h6��j�.W�i+� )���6�h��Ɂ����� �fh`��mְY,k3貜(���"i�ժ\"�7��������߹]񒘽%&��2�<e��2�� LmA8@�~����sv�j���Tw���1�� �����M9o�:Z��UM��Gϡ˺�P�@9I������5!=�F�8>�����Z����F˗XJ�r-y#             x������ � �      "      x������ � �      $   !  x����N1�u�)X�����3-+�E�!�� ���
caPxz!ą1Ɯ�8���1�҂�%�P�r"J�Eu~�p�(T���r\�:�#J�c
$+�/���jCv�=�̛I��n��P�8�ݘ����X���6�[u��wH�EZ�t~��{G?t���y8�����L.a@ᔋ
e%�j�k(�qu.͆Y������5���9a#���Lh�AQ�b$W�o��޾)����1\��45�E�T�(���>%���#ݶ^y�ߟ��{��k�?(� RF� � ��n�     
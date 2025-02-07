PGDMP      %            	    {            hw_week9_rakamin    16.0    16.0     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16396    hw_week9_rakamin    DATABASE     �   CREATE DATABASE hw_week9_rakamin WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';
     DROP DATABASE hw_week9_rakamin;
                postgres    false            �            1259    16397    movies    TABLE     �   CREATE TABLE public.movies (
    title character varying(150),
    genres character varying(50),
    year character varying(50),
    id integer NOT NULL
);
    DROP TABLE public.movies;
       public         heap    postgres    false            �            1259    16438    movies_new_id_seq    SEQUENCE     �   CREATE SEQUENCE public.movies_new_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.movies_new_id_seq;
       public          postgres    false    215            �           0    0    movies_new_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.movies_new_id_seq OWNED BY public.movies.id;
          public          postgres    false    217            �            1259    16400    users    TABLE     �   CREATE TABLE public.users (
    email character varying(50),
    gender character varying(50),
    password character varying(50),
    role character varying(50),
    id integer NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16456    users_new_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_new_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.users_new_id_seq;
       public          postgres    false    216            �           0    0    users_new_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.users_new_id_seq OWNED BY public.users.id;
          public          postgres    false    218            U           2604    16439 	   movies id    DEFAULT     j   ALTER TABLE ONLY public.movies ALTER COLUMN id SET DEFAULT nextval('public.movies_new_id_seq'::regclass);
 8   ALTER TABLE public.movies ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    215            V           2604    16457    users id    DEFAULT     h   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_new_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    216            �          0    16397    movies 
   TABLE DATA           9   COPY public.movies (title, genres, year, id) FROM stdin;
    public          postgres    false    215          �          0    16400    users 
   TABLE DATA           B   COPY public.users (email, gender, password, role, id) FROM stdin;
    public          postgres    false    216   n       �           0    0    movies_new_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.movies_new_id_seq', 100, true);
          public          postgres    false    217            �           0    0    users_new_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.users_new_id_seq', 101, true);
          public          postgres    false    218            X           2606    16441    movies movies_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.movies DROP CONSTRAINT movies_pkey;
       public            postgres    false    215            Z           2606    16459    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    216            �   K  x��X�r�8]_��L�S�HQ|dgY��Ċݖ{<�D�b
Ѐ�c��%��^�b����9 )����T%�������sr#҇\9�K�U/c×��F/�J��}�x�n!�l��ԏ���w�����$C��S#�-� c��K�,7�{���'�U�~G�ލ.٪d�%�>/$���U�9�q�>I���Ij�V/'�#� �K��Gآr	F$�c�dt�������4�5χ�v!��\�<g�b.���gw/�ʈt�KU��*�gF���:�x}�	72��L����d������[���I>���0�PRk�<�!�Sa�Q���Obz'�r� �7cu��Mx��F���Б��ܧ��I�oȀx}z�^�f�-�(`����[Ft>��z=�y#rnEFN�\�6�OG���^#�L���[��PǪ�XH�ې�R5e�i !NK6=f��]��{vR��NZدoH�!���{��R�{�������7�-��w�K6�u�����\�!�Bze�CI�0	���ﱻl�醂�,� �Vl��+k?B�|��w�Ƽ=��`_�|a��(��7]:֔��Ji�H'�ߧ�2m�m�E��m�J�uZglj���<��cv.g���+�ې�>�V�.��H�A@~����~
������e�dz����m0��=x�\����������X&}`w<�����C��c�>�?���/��[����L����L�4?��`�L��ӯ���MD-S����F?���Q���T[�l���Tl*]2���ݫ�<z�s�
�6띻���|s�Y!�x�R7���B��6 �#h,�����}�]��1gϥdO����u�6IP����c��S�4�֫�����C2@G�
��&m���ׄ�V4�Z�=̧��D����aQWs)�A��dөE��3.���2	��e��{��O/;�H7�>	<��e���h]��5�v*�H0@.���%0��}���k�d���r�OK��K^�a�(��w���G䣆��kH��Yx���2e5FE=m�')o��n��$����ݑ�#�T�;�a��^C5�����q�Վz`��S���=�0$þ�)��h����fD{+xͣN`�~_/0uֲ1�u�j:�˙����Y§�x�1��>�����L��a���׺Y�n�Z�L�wn���m x������a�) ��_��.��8A]�����>�>����i��0�Ff;yE�[��A�؝@�Ns!Vh�5�;t�O+��[ٍ�wx��+�z����I�nM3�;8D$��`�7L���O+W�HW�AG�$��`:���_�dˋO�':7��lW�$@��Z���Z���ɔ��vf�/em��8h/]qJu�(�)܋��z�g]��pH'�~��f+���p�+���.��\m�u���f�s�����a�ߚ$���Ԁ��Ղ0����>[���뿕�A�%.����5C�1S�.��0��X�μ��צS~SV�Y;X�n`x��O�@��SX�b����εa ��Go1v��s*�ȧ��]'��GGz��%�s��c�n5Vc��~��� !��m�;ˎ�E��s���6��"h��֥�5����k�Z@&ҩ��r�+�(첻�]I"�N�Σ����"Ȟ̜'�r�@�ҬE/��I�	z_D��3��"�\�;�Q��%�wm�������^��W��b�� o�S8lx82d�/�M�(�f�S�T�o��G"���G��H[�E74�����pz�N3Ыln�g���`	) ?��%]W��B������h#�[d{�ؠ�H�;�}����8j��.큝�MC�!R#�&�3�Ek6��XbxE�O����u�� $�`\��8����עԑ{��<zV�{�4N�
\c�8.�ݹF�3+��G{��	��V"��\���Ә$����'����1[j�;��I
3S )�:>���0�#ھ��G��2�;��M����ŭ����]G0Pf��<�����C_���R�@�L3�g�':tW��YڜGF9&��1�����v��83���ǔ���y�d      �   �
  x�uX[w��}6�����EP��Zmm�U{��K "�`*��3��	�}q��2�d�g�=(*dȵE|MEha�+��ֈ�4�G�:v�:��.����&ׅ�%��T:溅Q�%e�[0a�j_|��'���s��w/je($��mdĞ�s��c%s��J�i���V�,[�ڏD����F4ԜK*�ģZrC%��K�����\Aܾ+�w�5L J_P�� �i�w����#�#�^xf�p7��FJ�e��E�.�"��z��cJ7�0hM.R�+�r�����	�d���"�̷��+9l��'�ԯ�z���x��B�y�*�F��>*���;m=���I⒔C�@h^;�h���8ڵ�$�^
y���TH}�'[������R���Mp�j-$<M��~L��?����$Ͽ+������N`��A)��
�|��"m\ט��^�7=�.�Ќ�0U��h��
�O"&��M=rq���m�p�
n�8�"�r �*�*��9����E�1����"��0����!������Kn/#wі�B�)������f-Vw�ڴc� ��2$%Ou�h�k�7k?�t���6�M��'��\#M����e�3������ا���b]1=�XR���e�+��jP�6��Qr��WA[�T
\�R�F�z�%�:H
�Z3���}��3�l)8rIs!c!�|G�F�a/��vv�6F���<Jԕ)V�]�e�v��c�l	#8�TJ�T��+�)�׮�r��gw�3�m� @*%I�l�2y�Q�^��f��cO}d��=C�2�84W���a�w�h>,j���(5�:�<#���:~����������B-���H	�zBV�W[&���[�d=��I!y�	�A�J�z�*��/�f���O�Z�q�}�/?Ov?�����=uN?L��=���$5����M�M,��mi�6���Ox���mv���<�m �
y��=)U�W�~��X݌�~�"Z3��p�cԶ�� �Ϲ�`v��i�F��ט��7�\m��A��#񔊡� Wf��t��G��A>+�nI �*|�������2�(.9,�H�k����:���k�9(d 	��Fl}gH��㟜����)��j��`)�$���s"c+g)]��Vc t�YB�M���j��)
�iP��>ڦ����61**�Ok�����u,�nAD*��ќ�|�8gWT��{��)�I���w�r�3�~��a �*|L����e���(Sڃ��!)$����p\��^qn��z��1����'4���u���&�>~l�K|�Q�!�E���?��" d���ID�4�j�}�։��m3�#�AiX$��c
hT��<{�3������N:=e�;(�G�#A�k�:Y���nX���[�6��@±W�>����V���
���J�a��<`~�EcF�H��+�o��z��Yv��aUX��ӵ��@��9�++��h�����y��lU�����Q���U��y>1W����E���(�<�
��+������2���a�}����~��qD8\�JE]�����W��K��P� A��#=�'�WCޝ�(��y�`���?�N�qn�0��� `^��1�1I��6�o��..��K���
@�}^��M�E���x]��D�E�b*��K�_6F��G~,{X�nQP�`��Ys@7�MW��(x���c!��
�%��;E�[7"�`���گ��͏�q��R�'
²����+�ҊE��Ƶ�]�x�P�a��
�ؠ	?/���0W��t@��\VJ�u���6�qn�}sk��[L�J���a�D�j��+�35:�C���>�958'޷.~DX�ѿ���"BX��W�"#�oY�ZN�K_�/_���Q?2xOr���C����5ٍ	�>�$��+��8��+Z��/j3�����}���x%>�Y��PK�&�O�u�ğiX��K�� ����p��w��!8���0�C��xA��)=���E!oFw�_��������	��E.@�5c,���H�F��`l��	��lա�������N�'� hؠm�qڪB��� �s�^���e�~��@G�}J�1�M����U�I��V�W��<s�"g^���S������"�3u�>�B%�/�My��|Thw��T��L�-b<��7����\���H#Zr�<��W�̛4�kQ��L�9������g��w.�l�����ڃ���.��x�eg*)��)8��n�~]��Q�s~�+����>#h��o����~�����)1>��E `5���A0�7�ͦ�iۅ��Vrf{Ĉ�}X�ewj˼�A,'.m� SǼ�j����N�ۗߧ�"�U����Xz���W���������Hs$a1J8��!$�`����b��f6�ekniF���1 Ҁ(��jB�����f���N�o$v(�w������?�d��3���>ɢ���A:����"���\���-��jD�N2k�h��1�'�={K2F*�m!�I#������J��v�m/E�u\�׏棟���FPoQ-bvR��>}�����%��ϵ�N	o���I���ﵪ�Ea�KcK+�^x���z�^�j
�wPn�jZP���a��4�|pf���2���/8
LPSv�E=��]��~�g��z�?�� � B��=��紡����M�_����"!�w��}9��~������y��PA��z.��pʯ_la��+���O�-     
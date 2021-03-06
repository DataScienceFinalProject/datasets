PGDMP                          v            Q_DW    9.4.18    10.4     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    16436    Q_DW    DATABASE     �   CREATE DATABASE "Q_DW" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE "Q_DW";
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6            �           0    0    SCHEMA public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6                        3079    11855    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16446 	   dim_cargo    TABLE     ?   CREATE TABLE public.dim_cargo (
    cargo character varying
);
    DROP TABLE public.dim_cargo;
       public         postgres    false    6            �            1259    16452 
   dim_person    TABLE     z   CREATE TABLE public.dim_person (
    nome character varying,
    genero character varying,
    cargo character varying
);
    DROP TABLE public.dim_person;
       public         postgres    false    6            �            1259    16458 	   dim_tempo    TABLE     =   CREATE TABLE public.dim_tempo (
    ano character varying
);
    DROP TABLE public.dim_tempo;
       public         postgres    false    6            �            1259    16437    q_fact    TABLE     r  CREATE TABLE public.q_fact (
    ano character varying,
    q_corretude_qtdpobres double precision,
    q_corretude_pib double precision,
    q_corretude_campi double precision,
    nome character varying,
    cargo character varying,
    q_completude_pobres_quantidade double precision,
    q_completude_pib double precision,
    q_completude_campi double precision
);
    DROP TABLE public.q_fact;
       public         postgres    false    6            �          0    16446 	   dim_cargo 
   TABLE DATA               *   COPY public.dim_cargo (cargo) FROM stdin;
    public       postgres    false    174   i       �          0    16452 
   dim_person 
   TABLE DATA               9   COPY public.dim_person (nome, genero, cargo) FROM stdin;
    public       postgres    false    175   {       �          0    16458 	   dim_tempo 
   TABLE DATA               (   COPY public.dim_tempo (ano) FROM stdin;
    public       postgres    false    176   5       �          0    16437    q_fact 
   TABLE DATA               �   COPY public.q_fact (ano, q_corretude_qtdpobres, q_corretude_pib, q_corretude_campi, nome, cargo, q_completude_pobres_quantidade, q_completude_pib, q_completude_campi) FROM stdin;
    public       postgres    false    173   �       �     x�uQ�N�@����(8��{I�H'N���l�[�dy"|=�$��t�x��+	��c��NH��u`=����M�썚��<�N9I����ᚕZ�s ��D�3(�6��`b�(�U��V(����LV��ّZ�W3��er���(�he����E����bHpqi~V��0>E}eMg��ŵ�m��!N��_�KO��`d�o�&�`qe���2��a�qTs���.:O�rv���qϖ�Op��;��}t�#_�����s ���      �   �  x��S�N�@<��bn���d��v%���i��q�y@��\�%���KO��0x���媮�ك��^�g��Pρ��l��*�O�1R�r
�J-~d�%K�U�Ut�0�^���X";��]��@��h�Rlȴh�'t�c�Gz�P"�6�F~����\wt�O������,d����N}�6��J�4�?s�/ʉ4��?M��u���kq%��_�R�&��<Du"��Y�<t1b��6�m%"�PLș[�����=�E?�0̔��5�������/����1�q��أjނ���r�W]"����	ϗ�����P���R��b3�D��>�����g�S�l�+��ӊ��1a|a��|�+`���=R:x?�w�;b]}0P��G:��P����Ó�b��a�I�_U�R����o���y�0      �   r   x��� 1B���槽l�ulm셁�H�cXt	�BOK�@: ��t/�`#1Y�0���x$�|�ס�`!1�Nzs���$4aY�>��k,�JX�.]�(���������N�      �   �  x��Z�R�0]'_�]w�'����C:����4��V+;La�/鲿�%��ʁ,E��@��s�}��J	#�w����XE<���$�wɠ 3�K�ν�ߑt�x�21�&�C�����ٿ_�SB�ʦ�b�md`;�n��m������ŧ9G��p��e���MIz�,n��ϔ}V��.1+o{�	ه���0���e��s�~�$�e��<I8�h����S�r�m-E$[jCi���ʱl)�7U��E�`\���F>Hy#�o�N|�a��hl�:c;�h�KXOK�aO���D�4)�B�T���Q'��,��rQa�솭p�)��ȶ����ա��G�?��|F������ �-h�䄏�b9�YVϥ���$|���.E�Q��*CR�؄����ڒUk��6��Խ�֐􂪊ꮁ���{�� %lq�ty��jT�.��e����
\��o�Z��3���Y=AX.��CWk��\x��0Y-��$zޭyܼz#(���B�l$eE����O��Qdl�Q3o$$Y@�؋��@Np�BF���Ļ�ʪg�}�QY�������A�$�L��$��p����CU�!I3_�eQ�|�����Px<z�Q�kut�B��K��Q$�������h��r�k3J���q���S�C?�����R1-�|�~��W�j�6�4˶��l����t���+��ԝn���&:�t�u&I1b;Efj\&L�|g�O:�b;i�z\�Mtpu��V'Y��2d�\��`��/�!|_���0��Fz<淗�ˆ��ly1���'{G�f���T�5����|�M!�%esʶ�[��P��T���q��Z;S�քj��S\d������#^s��j�m����j���s���w��|��ƴ�!
�>W� �f-m�*l�=W��������!     
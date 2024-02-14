CREATE TABLE Users
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY (INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1),
    name text COLLATE pg_catalog."default" NOT NULL,
    email text COLLATE pg_catalog."default" NOT NULL,
    phone text,
    profile_picture text  NULL,
    description text  NULL,
    CONSTRAINT Users_pkey PRIMARY KEY (id)
);


-- Cambio de propietario de la tabla
ALTER TABLE public.Users OWNER TO postgres;

-- Concesión de permisos
GRANT ALL ON TABLE public.Users TO anon;
GRANT ALL ON TABLE public.Users TO authenticated;
GRANT ALL ON TABLE public.Users TO postgres;
GRANT ALL ON TABLE public.Users TO service_role;
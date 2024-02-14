CREATE TABLE saludos
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY (INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1),
    saludo text COLLATE pg_catalog."default",
    autor text COLLATE pg_catalog."default",
    CONSTRAINT saludos_pkey PRIMARY KEY (id)
    
);

-- Cambio de propietario de la tabla
ALTER TABLE public.saludos OWNER TO postgres;

-- Concesión de permisos
GRANT ALL ON TABLE public.saludos TO anon;
GRANT ALL ON TABLE public.saludos TO authenticated;
GRANT ALL ON TABLE public.saludos TO postgres;
GRANT ALL ON TABLE public.saludos TO service_role;
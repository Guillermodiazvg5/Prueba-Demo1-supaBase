CREATE TABLE Payment
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY (INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1),
    Match_id integer NOT NULL,
    type text COLLATE pg_catalog."default"  NOT NULL,
    description text COLLATE pg_catalog."default"  NOT NULL,
    payment_url text COLLATE pg_catalog."default"  NOT NULL,
    payment_id text COLLATE pg_catalog."default"  NOT NULL,
    amount numeric NOT NULL,
    status text COLLATE pg_catalog."default"  NOT NULL,
   
    CONSTRAINT  Payment_pkey PRIMARY KEY (id),
    CONSTRAINT fk_Match FOREIGN KEY (Match_id) REFERENCES Match (id) ON DELETE CASCADE
);


-- Cambio de propietario de la tabla
ALTER TABLE public.Payment OWNER TO postgres;

-- Concesión de permisos
GRANT ALL ON TABLE public.Payment TO anon;
GRANT ALL ON TABLE public.Payment TO authenticated;
GRANT ALL ON TABLE public.Payment TO postgres;
GRANT ALL ON TABLE public.Payment TO service_role;
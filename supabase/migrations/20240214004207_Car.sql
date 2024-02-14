CREATE TABLE Car
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY (INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1),
    Users_id integer NOT NULL,
    picture text COLLATE pg_catalog."default"  NOT NULL,
    brand text COLLATE pg_catalog."default"  NOT NULL,
    type text COLLATE pg_catalog."default"  NOT NULL,
    color text COLLATE pg_catalog."default"  NOT NULL,
    soat_date date NOT NULL,
    insurance_date date NOT NULL,

    CONSTRAINT Car_pkey PRIMARY KEY (id),
    CONSTRAINT fk_Users FOREIGN KEY (Users_id) REFERENCES Users (id) ON DELETE CASCADE
);


-- Cambio de propietario de la tabla
ALTER TABLE public.Car OWNER TO postgres;

-- Concesión de permisos
GRANT ALL ON TABLE public.Car TO anon;
GRANT ALL ON TABLE public.Car TO authenticated;
GRANT ALL ON TABLE public.Car TO postgres;
GRANT ALL ON TABLE public.Car TO service_role;
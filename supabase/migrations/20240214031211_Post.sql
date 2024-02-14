CREATE TABLE Post
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY (INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1),
   
    Users_id integer NOT NULL,

    from_trip text COLLATE pg_catalog."default"  NOT NULL,
    to_trip text COLLATE pg_catalog."default"  NOT NULL,

    date timestamp NOT NULL,
     
    description text COLLATE pg_catalog."default" NULL,

    seats numeric NOT NULL,

    CONSTRAINT  Post_pkey PRIMARY KEY (id),
    CONSTRAINT fk_Users FOREIGN KEY (Users_id) REFERENCES Users (id) ON DELETE CASCADE
);


-- Cambio de propietario de la tabla
ALTER TABLE public.Post OWNER TO postgres;

-- Concesión de permisos
GRANT ALL ON TABLE public.Post TO anon;
GRANT ALL ON TABLE public.Post TO authenticated;
GRANT ALL ON TABLE public.Post TO postgres;
GRANT ALL ON TABLE public.Post TO service_role;
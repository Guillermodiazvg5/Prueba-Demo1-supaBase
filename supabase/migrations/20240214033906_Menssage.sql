CREATE TABLE Menssage
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY (INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1),
   
    Match_id integer NOT NULL,
    Users_id integer NOT NULL,
    mensaje text COLLATE pg_catalog."default"  NOT NULL,
    date timestamp NOT NULL,
   
    CONSTRAINT  Menssage_pkey PRIMARY KEY (id),
  
    CONSTRAINT fk_Users FOREIGN KEY (Users_id) REFERENCES Users (id) ON DELETE CASCADE,
    CONSTRAINT fk_Match FOREIGN KEY (Match_id) REFERENCES Match (id) ON DELETE CASCADE
    
);


-- Cambio de propietario de la tabla
ALTER TABLE public.Menssage OWNER TO postgres;

-- Concesión de permisos
GRANT ALL ON TABLE public.Menssage TO anon;
GRANT ALL ON TABLE public.Menssage TO authenticated;
GRANT ALL ON TABLE public.Menssage TO postgres;
GRANT ALL ON TABLE public.Menssage TO service_role;
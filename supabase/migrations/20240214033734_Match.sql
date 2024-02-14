
CREATE TABLE Match
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY (INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1),
   
    Trip_id integer NOT NULL,
    Post_id integer NOT NULL,

    status text NOT NULL CHECK (status IN ('matched', 'paid', 'paid pending')),
    passanger_accepted boolean NOT NUll  ,
    driver_accepted boolean NOT NULL ,
   
    CONSTRAINT  Match_pkey PRIMARY KEY (id),
    
     CONSTRAINT fk_Trip FOREIGN KEY (Trip_id) REFERENCES Trip (id) ON DELETE CASCADE,  
   CONSTRAINT fk_Post FOREIGN KEY (Post_id) REFERENCES Post (id) ON DELETE CASCADE
    
    
    
);


-- Cambio de propietario de la tabla
ALTER TABLE public.Match OWNER TO postgres;

-- Concesión de permisos
GRANT ALL ON TABLE public.Match TO anon;
GRANT ALL ON TABLE public.Match TO authenticated;
GRANT ALL ON TABLE public.Match TO postgres;
GRANT ALL ON TABLE public.Match TO service_role;
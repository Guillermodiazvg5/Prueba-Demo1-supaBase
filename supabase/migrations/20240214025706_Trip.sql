CREATE TABLE Trip
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY (INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1),
   
    Driver_id integer NOT NULL,

    empty_seats numeric NOT NULL,
    seats numeric NOT NULL,
    cost_per_seat numeric NOT NULL,

    from_trip text COLLATE pg_catalog."default"  NOT NULL,
    to_trip text COLLATE pg_catalog."default"  NOT NULL,
    
    date timestamp NOT NULL,

    CONSTRAINT  Trip_pkey PRIMARY KEY (id),
    CONSTRAINT fk_Driver FOREIGN KEY (Driver_id) REFERENCES Users (id) ON DELETE CASCADE
);


-- Cambio de propietario de la tabla
ALTER TABLE public.Trip OWNER TO postgres;

-- Concesión de permisos
GRANT ALL ON TABLE public.Trip TO anon;
GRANT ALL ON TABLE public.Trip TO authenticated;
GRANT ALL ON TABLE public.Trip TO postgres;
GRANT ALL ON TABLE public.Trip TO service_role;
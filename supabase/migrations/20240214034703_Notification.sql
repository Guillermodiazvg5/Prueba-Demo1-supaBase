CREATE TABLE Notification
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY (INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1),
    Users_id integer NOT NULL,
    type text COLLATE pg_catalog."default"  NOT NULL,
    status text COLLATE pg_catalog."default"  NOT NULL,
    message text COLLATE pg_catalog."default"  NOT NULL,
    

    CONSTRAINT Notification_pkey PRIMARY KEY (id),
    CONSTRAINT fk_Users FOREIGN KEY (Users_id) REFERENCES Users (id) ON DELETE CASCADE
);


-- Cambio de propietario de la tabla
ALTER TABLE public.Notification OWNER TO postgres;

-- Concesión de permisos
GRANT ALL ON TABLE public.Notification TO anon;
GRANT ALL ON TABLE public.Notification TO authenticated;
GRANT ALL ON TABLE public.Notification TO postgres;
GRANT ALL ON TABLE public.Notification TO service_role;
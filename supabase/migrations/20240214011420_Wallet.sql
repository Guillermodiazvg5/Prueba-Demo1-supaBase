CREATE TABLE Wallet
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY (INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1),
   
    amount numeric NOT NULL,
    currency text COLLATE pg_catalog."default"  NOT NULL,
   
    Users_id integer NOT NULL,


    CONSTRAINT  Wallet_pkey PRIMARY KEY (id),
    CONSTRAINT fk_Users FOREIGN KEY (Users_id) REFERENCES Users (id) ON DELETE CASCADE
);


-- Cambio de propietario de la tabla
ALTER TABLE public.Wallet OWNER TO postgres;

-- Concesión de permisos
GRANT ALL ON TABLE public.Wallet TO anon;
GRANT ALL ON TABLE public.Wallet TO authenticated;
GRANT ALL ON TABLE public.Wallet TO postgres;
GRANT ALL ON TABLE public.Wallet TO service_role;